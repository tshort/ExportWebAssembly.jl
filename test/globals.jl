

@testset "serialize" begin
    ctx = ExportWebAssembly.SerializeContext()
    a = Any["abcdg", ["hi", "bye"], 3333, Int32(44), 314f0, 3.14, (1, 3.3f0)]
    e = ExportWebAssembly.serialize(ctx, a)
    g = eval(:(Vptr -> $e))
    v = take!(ctx.io)
    GC.enable(false)
    res = g(pointer(v))
    GC.enable(true)
    @test res == a
end


const a = ["abcdg", "asdfl", 123, 3.14, ["a", "asdf"], (1, 3.63)]

@testset "globals" begin
    # f() = "asdf"
    # d = ExportWebAssembly.find_globals(f, Tuple{})
    # d = ExportWebAssembly.find_globals(sin, Tuple{Float64})

    f() = a
    d = ExportWebAssembly.find_globals(f, Tuple{})
    m = irgen(f, Tuple{})
    ExportWebAssembly.fix_globals!(m, d)
    ExportWebAssembly.optimize!(m)
    verify(m)
    
    write(m, "test.bc")
    bindir = string(Sys.BINDIR, "/../tools")
    libpath = "./test.bc"
    dylibpath = abspath("test.so")
    
    run(`$bindir/llc -filetype=obj -o=test.o -relocation-model=pic test.bc`, wait = true)
    run(`gcc -shared -fPIC -o test.so -L$bindir/../lib -ljulia test.o`, wait = true)
    dylib = Libdl.dlopen(dylibpath)
    
    GC.enable(false)
    ccall(Libdl.dlsym(dylib, "jl_init_globals"), Cvoid, ())
    funname = first(filter(s->startswith(s, "julia"), LLVM.name.(functions(m))))
    str = ccall(Libdl.dlsym(dylib, funname), Any, ())
    Libdl.dlclose(dylib)
    GC.enable(true)
    @test str == a
end
