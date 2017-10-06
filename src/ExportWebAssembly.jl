
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

# needed?
function raise_exception(insblock::BasicBlock, ex::Value)
end


function irgen(func::ANY, tt::ANY)
    # collect all modules of IR
    function hook_module_setup(ref::Ptr{Void})
        ref = convert(LLVM.API.LLVMModuleRef, ref)
        module_setup(LLVM.Module(ref))
    end
    function hook_raise_exception(insblock::Ptr{Void}, ex::Ptr{Void})
        insblock = convert(LLVM.API.LLVMValueRef, insblock)
        ex = convert(LLVM.API.LLVMValueRef, ex)
        raise_exception(BasicBlock(insblock), Value(ex))
    end
    irmods = Vector{LLVM.Module}()
    function hook_module_activation(ref::Ptr{Void})
        ref = convert(LLVM.API.LLVMModuleRef, ref)
        push!(irmods, LLVM.Module(ref))
    end
    if VERSION >= v"0.7.0-DEV.1669"
        params = Base.CodegenParams(cached=false,
                                    track_allocations=false,
                                    code_coverage=false,
                                    static_alloc=false,
                                    prefer_specsig=true,
                                    module_setup=hook_module_setup,
                                    module_activation=hook_module_activation,
                                    raise_exception=hook_raise_exception)
    else
        hooks = Base.CodegenHooks(module_setup=hook_module_setup,
                                  module_activation=hook_module_activation,
                                  raise_exception=hook_raise_exception)
        params = Base.CodegenParams(cached=false,
                                    track_allocations=false,
                                    code_coverage=false,
                                    static_alloc=false,
                                    hooks=hooks)
    end
    let irmod = parse(LLVM.Module,
                      Base._dump_function(func, tt,
                                          #=native=#false, #=wrapper=#false, #=strip=#false,
                                          #=dump_module=#true, #=syntax=#:att, #=optimize=#true,
                                          params),
                      jlctx[])
        unshift!(irmods, irmod)
    end

    # FIXME: Julia doesn't honor the module_setup hook, and module_activation isn't called
    #        for every module (causing us to re-parse the top-level module)

    # link all the modules
    mod = LLVM.Module(safe_fn(func), jlctx[])
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
    ModulePassManager() do pm
        # eliminate all unused internal functions
        #
        # this isn't necessary, as we do the same in optimize! to inline kernel wrappers,
        # but it results _much_ smaller modules which are easier to handle on optimize=false
        global_optimizer!(pm)
        global_dce!(pm)
        strip_dead_prototypes!(pm)
        add_transform_info!(pm, tm)
        # TLI added by PMB
        ccall(:LLVMAddLowerGCFramePass, Void,
              (LLVM.API.LLVMPassManagerRef,), LLVM.ref(pm))
        ccall(:LLVMAddLowerPTLSPass, Void,
              (LLVM.API.LLVMPassManagerRef, Cint), LLVM.ref(pm), 1)

        PassManagerBuilder() do pmb
            always_inliner!(pm)
            populate!(pm, pmb)
        end
        run!(pm, mod)
    end
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
function export_bitcode(filename, func::ANY, tt)
    mod = irgen(func, tt)
    bitcode = convert(Vector{UInt8}, mod)
    open(filename, "w") do io 
        write(io, bitcode)
    end
end

end # module
