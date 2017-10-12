
module ExportWebAssembly

export irgen, export_bitcode

using LLVM


const jlctx = Ref{LLVM.Context}()

function __init__()
    jlctx[] = LLVM.Context(convert(LLVM.API.LLVMContextRef,
                                   cglobal(:jl_LLVMContext, Void)))
end

function module_setup(mod::LLVM.Module)
    triple!(mod, "wasm32-unknown-unknown")
    datalayout!(mod, "e-m:e-p:32:32-i64:64-n32:64-S128")
end

# make function names safe
safe_fn(fn::String) = replace(fn, r"[^aA-zZ0-9_]", "_")
safe_fn(f::Core.Function) = safe_fn(String(typeof(f).name.mt.name))
safe_fn(f::LLVM.Function) = safe_fn(LLVM.name(f))


function llvmrettype(typ::Type)
    isboxed_ref = Ref{Bool}()
    llvmtyp = LLVMType(ccall(:julia_type_to_llvm, LLVM.API.LLVMTypeRef,
                             (Any, Ptr{Bool}), typ, isboxed_ref))
    if !isboxed_ref[]
        return llvmtyp, typ
    else
        return llvmtype(Int32), Int32 
    end
end

llvmtype(x) = string(LLVMType(ccall(:julia_type_to_llvm, LLVM.API.LLVMTypeRef, (Any, Bool), x, false)))


replace_ccalls!(x) = nothing
function replace_ccalls!(e::Expr) 
    if e.head == :foreigncall
        e.head = :call
        nargs = e.args[5]
        funname = e.args[1].value
        println("************ $(e.args[1].value)")
        rettype, jlrettype = llvmrettype(e.args[2])
        argtypes = llvmtype.([e.args[3]...])
        argstrdeclr = join(argtypes, ", ")
        argstrs = [string(argtypes[i], " %", i-1) for i in 1:length(argtypes)]
        argstr = join(argstrs, ", ")
        callstr = ("""
		   %jl_value_t = type opaque
		   declare $rettype @$funname($argstrdeclr)
		   """, 
		   """
                   %$(nargs+1) = call $rettype @$funname($argstr)
                   ret $rettype %$(nargs+1)
                   """)
        e.args = Any[Base.llvmcall, callstr, jlrettype, Tuple{e.args[3]...}, e.args[6:6+nargs-1]...]
        if jlrettype != e.args[2]   # Boxed variable, so wrap in unsafe_pointer_to_objref()
            e.args = Any[:unsafe_pointer_to_objref, Expr(:call, e.args...)]
	end
        @show e
    else
        replace_ccalls!.(e.args)
    end
end


function irgen(@nospecialize(func), @nospecialize(tt); optimize = true, check = true)
    # collect all modules of IR
    function hook_module_setup(ref::Ptr{Void})
        ref = convert(LLVM.API.LLVMModuleRef, ref)
	global gref = ref
        module_setup(LLVM.Module(ref))
    end
    function hook_raise_exception(insblock::Ptr{Void}, ex::Ptr{Void})
        insblock = convert(LLVM.API.LLVMValueRef, insblock)
        ex = convert(LLVM.API.LLVMValueRef, ex)
        raise_exception(BasicBlock(insblock), Value(ex))
    end
    global irmods = Vector{LLVM.Module}()
    function hook_module_activation(ref::Ptr{Void})
        ref = convert(LLVM.API.LLVMModuleRef, ref)
        push!(irmods, LLVM.Module(ref))
    end
    function hook_after_inference(src)
        #dump(src)
        replace_ccalls!.(src.code)
        return
    end
    params = Base.CodegenParams(cached=false,
                                track_allocations=false,
                                code_coverage=false,
                                static_alloc=false,
                                prefer_specsig=true,
				imaging_mode=true,
                                module_setup=hook_module_setup,
                                module_activation=hook_module_activation,
                                after_inference=hook_after_inference)
    let irmod = parse(LLVM.Module,
                      Base._dump_function(func, tt,
                                          #=native=#false, #=wrapper=#false, #=strip=#false,
                                          #=dump_module=#true, #=syntax=#:att, #=optimize=#false,
                                          params),
                      jlctx[])
        unshift!(irmods, irmod)
    end

    # FIXME: Julia doesn't honor the module_setup hook, and module_activation isn't called
    #        for every module (causing us to re-parse the top-level module)

    # link all the modules
    global mod = LLVM.Module(safe_fn(func), jlctx[])
    module_setup(mod)
    for irmod in irmods
        module_setup(irmod) # FIXME
        link!(mod, irmod)
    end

    funname = string(typeof(func).name.mt.name)

    # clean up incompatibilities
    for llvmf in functions(mod)
        llvmfn = LLVM.name(llvmf)
        if startswith(llvmfn, "jlcall_")
            # we don't need the generic wrapper
            unsafe_delete!(mod, llvmf)
        elseif startswith(llvmfn, "julia_$funname")
            delete!(function_attributes(llvmf), EnumAttribute("sspreq"))
            # change the function name to match the Julian name
            LLVM.name!(llvmf, funname)
            # Add the "used" attribute to keep Emscripten from throwing out this function
            # Well, I would if I could. It's not a simple attribute. You have to add to `@llvm.used`.
        else
            # only occurs in debug builds
            delete!(function_attributes(llvmf), EnumAttribute("sspreq"))
            # make function names safe
            # (LLVM ought to do this, see eg. D17738 and D19126), but fails
            # TODO: fix all globals?
            if !isdeclaration(llvmf)
                llvmfn′ = safe_fn(llvmf)
                if llvmfn != llvmfn′
                    LLVM.name!(llvmf, llvmfn′)
                end
            end
        end
    end
    tm = TargetMachine(Target("i686-pc-linux-gnu"), "i686-pc-linux-gnu")
    # tm = TargetMachine(Target("nvptx-nvidia-cuda"), "nvptx-nvidia-cuda")
    # ptls_pass = ModulePass("RemovePTLS", remove_ptls)
    ModulePassManager() do pm
        # add!(pm, ptls_pass)
        add_library_info!(pm, triple(mod))
        global_optimizer!(pm)
        global_dce!(pm)
        strip_dead_prototypes!(pm)
        add_transform_info!(pm, tm)
        ccall(:jl_add_optimization_passes, Void,
              (LLVM.API.LLVMPassManagerRef, Cint),
              LLVM.ref(pm), Base.JLOptions().opt_level)
        dead_arg_elimination!(pm)   # parent doesn't use return value --> ret void
        optimize && run!(pm, mod)
    end
    check && verify(mod)
    return mod
end


"""
    export_bitcode(filename, func, tt)

Export function `func` to LLVM bitcode in `filename`. 
Specify the argument types as a Tuple{} in the `tt` argument.
The bitcode is in WebAssembly-compatible format that can be converted to WebAssembly with Emscripten.

Example: 
```
myfun(x) = sum((x, x, 1.0))
export_bitcode("myfun.bc", myfun, Tuple{Float64})
```
"""
function export_bitcode(filename, mod::LLVM.Module)
    open(filename, "w") do io 
        write(io, mod)
    end
    return
end
export_bitcode(filename, @nospecialize(func), tt; vargs...) =
    export_bitcode(filename, irgen(func, tt, vargs...))

end # module
