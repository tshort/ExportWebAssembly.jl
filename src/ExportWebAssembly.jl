
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
                                          #=dump_module=#true, #=syntax=#:att, #=optimize=#false,
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
            # change the function name to match the Julian name
            LLVM.name!(llvmf, funname)
        else
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

    return mod
end

function export_bitcode(filename, func::ANY, tt)
    mod = irgen(func, tt)
    bitcode = convert(Vector{UInt8}, mod)
    open(filename, "w") do io 
        write(io, bitcode)
    end
end

end # module
