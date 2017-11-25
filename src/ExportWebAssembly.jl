
module ExportWebAssembly

export irgen, write_js, write_wasm

using CodeGen 
using LLVM


const triple = Dict{Symbol, String}(
    :wasm => "wasm32-unknown-unknown",
    :asmjs => "asmjs-unknown-emscripten"
)
const datalayout = Dict{Symbol, String}(
    :wasm => "e-m:e-p:32:32-i64:64-n32:64-S128",
    :asmjs => "e-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-p:32:32:32-v128:32:128-n32-S128"
)

function irgen(@nospecialize(fun), @nospecialize(argtypes), args...; 
    flavor = :asmjs, 
    optimize_lowering = true, 
    optimize_bitcode = true, 
    triple = triple[flavor], 
    datalayout = datalayout[flavor], 
    include_init = true
)     
    ci, dt = code_typed(fun, argtypes, optimize = optimize_lowering)[1]
    names = [string(Base.function_name(fun))]
    sig = first(methods(fun, argtypes)).sig
    cg = CodeGen.CodeCtx(names[1], ci, dt, argtypes, sig, triple = triple, datalayout = datalayout)
    m = codegen!(cg)
    n = length(args)
    assert(iseven(n))
    for i in 1:2:n
        push!(names, string(Base.function_name(args[i])))
        codegen!(cg, args[i], args[i+1])
    end
    if include_init 
        push!(names, "init_julia_")
        codegen!(cg, init_julia, Tuple{})
        codegen!(cg, sigaltstack, Tuple{Int32,Int32}) # init_julia needs this
    end
    if optimize_bitcode
        CodeGen.optimize!(cg.mod)
    end
    # LLVM.verify(cg.mod)
    return cg.mod, names
end

sigaltstack(a, b) = 0x00000001

function init_julia()
    ccall(:jl_init_timing, Void, ())
    ccall(:jl_get_ptls_states, Int32, ())
    ccall(:jl_safepoint_init, Void, ())
    ccall(:libsupport_init, Void, ())
    ccall(:jl_init_signal_async, Void, ())
    ccall(:jl_getpagesize, Int32, ())
    ccall(:uv_get_total_memory, UInt64, ())
    # ccall(:jl_find_stack_bottom, Void, ())
    ccall(:jl_init_threading, Void, ())
    ccall(:jl_gc_init, Void, ())
    ccall(:jl_gc_enable, Void, (Int,), 0)
    ccall(:jl_init_types, Void, ())
    return
end

function write_js(filename, @nospecialize(fun), @nospecialize(argtypes), args...; 
    flavor = :asmjs, 
    optimize_lowering = true, 
    optimize_bitcode = true, 
    triple = triple[flavor], 
    datalayout = datalayout[flavor], 
    include_init = true,
    memsize = 1073741824,
    libdir = ".",
    emcc_env = "",
    emcc_args = ""
)    
    mod, names = irgen(fun, argtypes, args...; 
                       flavor = flavor, optimize_lowering = optimize_lowering, optimize_bitcode = optimize_bitcode,
                       triple = triple, datalayout = datalayout, include_init = include_init)
    modfilename = string(filename, ".bc")
    CodeGen.write(modfilename, mod)
    jsnames = join(["'_$x'" for x in names], ", ") 
    Base.run(`emcc $modfilename $libdir/libjulia.bc $libdir/libuv.bc -o $filename -s EXPORTED_FUNCTIONS="[$jsnames]" -s TOTAL_MEMORY=$memsize`)
end

write_wasm(@nospecialize(fun), @nospecialize(argtypes), args...; oargs...) =
    write_js(filename, fun, result_type, argtypes, args...; flavor = :wasm, emcc_args = "-s WASM=1", oargs...)


end # module
