
module ExportWebAssembly

export irgen, write_bitcode, @extern

using LLVM


const jlctx = Ref{LLVM.Context}()

function __init__()
    jlctx[] = LLVM.Context(convert(LLVM.API.LLVMContextRef,
                                   cglobal(:jl_LLVMContext, Nothing)))
end

function module_setup(mod::LLVM.Module)
    triple!(mod, "wasm32-unknown-unknown-wasm")
    datalayout!(mod, "e-m:e-p:32:32-i64:64-n32:64-S128")
end

# make function names safe
safe_fn(fn::String) = replace(fn, r"[^aA-zZ0-9_]", "_")
safe_fn(f::Core.Function) = safe_fn(String(typeof(f).name.mt.name))
safe_fn(f::LLVM.Function) = safe_fn(LLVM.name(f))

# needed?
function raise_exception(insblock::BasicBlock, ex::Value)
end


function irgen(@nospecialize(func), @nospecialize(tt); optimize = true)
    # get the method instance
    isa(func, Core.Builtin) && error("function is not a generic function")
    world = typemax(UInt)
    meth = which(func, tt)
    sig_tt = Tuple{typeof(func), tt.parameters...}
    (ti, env) = ccall(:jl_type_intersection_with_env, Any,
                      (Any, Any), sig_tt, meth.sig)::Core.SimpleVector
    meth = Base.func_for_method_checked(meth, ti)
    linfo = ccall(:jl_specializations_get_linfo, Ref{Core.MethodInstance},
                  (Any, Any, Any, UInt), meth, ti, env, world)

    # set-up the compiler interface
    function hook_module_setup(ref::Ptr{Cvoid})
        ref = convert(LLVM.API.LLVMModuleRef, ref)
        module_setup(LLVM.Module(ref))
    end
    function hook_raise_exception(insblock::Ptr{Cvoid}, ex::Ptr{Cvoid})
        insblock = convert(LLVM.API.LLVMValueRef, insblock)
        ex = convert(LLVM.API.LLVMValueRef, ex)
        raise_exception(BasicBlock(insblock), Value(ex))
    end
    dependencies = Vector{LLVM.Module}()
    function hook_module_activation(ref::Ptr{Cvoid})
        ref = convert(LLVM.API.LLVMModuleRef, ref)
        push!(dependencies, LLVM.Module(ref))
    end
    params = Base.CodegenParams(cached=false,
                                track_allocations=false,
                                code_coverage=false,
                                static_alloc=false,
                                prefer_specsig=true,
                                module_setup=hook_module_setup,
                                module_activation=hook_module_activation,
                                raise_exception=hook_raise_exception)

    # get the code
    mod = let
        ref = ccall(:jl_get_llvmf_defn, LLVM.API.LLVMValueRef,
                    (Any, UInt, Bool, Bool, Base.CodegenParams),
                    linfo, world, #=wrapper=#false, #=optimize=#false, params)
        if ref == C_NULL
            error(jlctx[], "the Julia compiler could not generate LLVM IR")
        end

        llvmf = LLVM.Function(ref)
        LLVM.parent(llvmf)
    end

    # the main module should contain a single jfptr_ function definition,
    # e.g. jlcall_kernel_vadd_62977
    @show isdeclaration(first(functions(mod)))
    # @show length(functions(mod))
    # definitions = filter(f->!isdeclaration(f), functions(mod))
    definitions = filter(f->!isdeclaration(f), collect(functions(mod)))
    # definitions = collect(functions(mod))
    wrapper = let
        fs = collect(filter(f->startswith(LLVM.name(f), "jfptr_"), definitions))
        @assert length(fs) == 1
        fs[1]
    end

    # the jlcall wrapper function should point us to the actual entry-point,
    # e.g. julia_kernel_vadd_62984
    entry_tag = let
        m = match(r"jfptr_(.+)_\d+", LLVM.name(wrapper))
        @assert m != nothing
        m.captures[1]
    end
    unsafe_delete!(mod, wrapper)
    entry = let
        re = Regex("julia_$(entry_tag)_\\d+")
        llvmcall_re = Regex("julia_$(entry_tag)_\\d+u\\d+")
        fs = collect(filter(f->occursin(re, LLVM.name(f)) &&
                               !occursin(llvmcall_re, LLVM.name(f)), definitions))
        if length(fs) != 1
            compiler_error(f, tt, cap, "could not find single entry-point";
                           entry=>entry_tag, available=>[LLVM.name.(definitions)])
        end
        fs[1]
    end

    # link in dependent modules
    link!.(Ref(mod), dependencies)

    # clean up incompatibilities
    for llvmf in functions(mod)
        # only occurs in debug builds
        delete!(function_attributes(llvmf), EnumAttribute("sspreq", 0, jlctx[]))

        # make function names safe for ptxas
        # (LLVM ought to do this, see eg. D17738 and D19126), but fails
        # TODO: fix all globals?
        llvmfn = LLVM.name(llvmf)
        if !isdeclaration(llvmf)
            llvmfn′ = safe_fn(llvmf)
            if llvmfn != llvmfn′
                LLVM.name!(llvmf, llvmfn′)
            end
        end
    end

    # tm = machine(jlctx[].cap, triple(mod))
    triple = "wasm32-unknown-unknown-wasm"
    triple = "x86_64-unknown-linux-gnu"
    tm = TargetMachine(Target(triple), triple)

    # GPU code is _very_ sensitive to register pressure and local memory usage,
    # so forcibly inline every function definition into the entry point
    # and internalize all other functions (enabling ABI-breaking optimizations).
    # FIXME: this is too coarse. use a proper inliner tuned for GPUs
    optimize && ModulePassManager() do pm
        no_inline = EnumAttribute("noinline", 0, jlctx[])
        always_inline = EnumAttribute("alwaysinline", 0, jlctx[])
        for f in filter(f->f!=entry && !isdeclaration(f), collect(functions(mod)))
            attrs = function_attributes(f)
            if !(no_inline in collect(attrs))
                push!(attrs, always_inline)
            end
            linkage!(f, LLVM.API.LLVMInternalLinkage)
        end
        always_inliner!(pm)
        run!(pm, mod)
    end

    optimize && ModulePassManager() do pm
        # add_library_info!(pm, triple(mod))
        add_transform_info!(pm, tm)
        ccall(:jl_add_optimization_passes, Cvoid,
              (LLVM.API.LLVMPassManagerRef, Cint),
              LLVM.ref(pm), Base.JLOptions().opt_level)

        # CUDAnative's JIT internalizes non-inlined child functions, making it possible
        # to rewrite them (whereas the Julia JIT caches those functions exactly);
        # this opens up some more optimization opportunities
        dead_arg_elimination!(pm)   # parent doesn't use return value --> ret void

        global_optimizer!(pm)
        global_dce!(pm)
        strip_dead_prototypes!(pm)

        run!(pm, mod)
    end
    return mod
end


jltype(x::Symbol) = eval(x)
llvmtype(x) = LLVMType(ccall(:julia_type_to_llvm, LLVM.API.LLVMTypeRef, (Any, Bool), x, false))
llvmtype(x::Symbol) = llvmtype(jltype(x))

"""
    @extern(fun, returntype, argtypes, args...)

Creates a call to an external function meant to be defined at link time. 
    
The symbol `fun` is the external function with a return type `returntype` 
and arguments given as a tuple type given by `argtypes`.

Note that the types must be base types handled by LLVM (mainly bits types). 
Julia boxed types cannot be used. This includes arrays.

Note that arguments are not autoconverted to the proper type like `ccall`.
"""
macro extern(funname, returntype, argtypes, args...)
    funname = funname.value
    llvmreturntype = llvmtype(returntype)
    llvmargtypes = llvmtype.(tuple(argtypes.args[2:end]...))
    llvmargs = join(("$a %$(idx-1)" for (idx, a) in enumerate(llvmargtypes)), ", ")
    declarationstr = "declare $llvmreturntype @$funname$llvmargtypes"
    runstr = """
        %ret = call $llvmreturntype @$funname($llvmargs)
        ret $llvmreturntype %ret
        """
    esc(Expr(:call, Base.llvmcall, (declarationstr, runstr), returntype, Tuple{jltype.(argtypes.args[2:end])...}, args...))
end

module Utils
    include("../deps/deps.jl")
end
include("io.jl")

end # module
