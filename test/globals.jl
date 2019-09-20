using Test, ExportWebAssembly, Libdl
import LLVM

# @testset "serialize" begin
#     ctx = ExportWebAssembly.SerializeContext()
#     a = Any["abcdg", ["hi", "bye"], 3333, Int32(44), 314f0, 3.14, (1, 3.3f0), Core.svec(9.9, 9), :sym, :sym, :a]
#     e = ExportWebAssembly.serialize(ctx, a)
#     g = eval(:(Vptr -> $e))
#     v = take!(ctx.io)
#     GC.enable(false)
#     res = g(pointer(v))
#     GC.enable(true)
#     @test res == a
# end


# const a = ["abcdg", "asdfl", 123, 3.14, ["a", "asdf"], (1, 3.63), [1, 3.63]]
const a = ["abcdg", "asdxf"]
const b = "B"

@testset "globals" begin
    f(x) = @inbounds a[1][3] > b[1] ? 2x : x
    m = irgen(f, Tuple{Int})
    # @show m
    ExportWebAssembly.fix_globals!(m)
    # @show m
    ExportWebAssembly.optimize!(m)
    # @show m
    LLVM.verify(m)
    
    write(m, "test.bc")
    bindir = string(Sys.BINDIR, "/../tools")
    libpath = "./test.bc"
    dylibpath = abspath("test.so")
    
    run(`$bindir/llc -filetype=obj -o=test.o -relocation-model=pic test.bc`, wait = true)
    run(`gcc -shared -fPIC -o test.so -L$bindir/../lib -ljulia test.o`, wait = true)
    dylib = Libdl.dlopen(dylibpath)
    
    GC.enable(false)
    ccall(Libdl.dlsym(dylib, "jl_init_globals"), Cvoid, ())
    num = ccall(Libdl.dlsym(dylib, "f"), Int, (Int,), 3)
    Libdl.dlclose(dylib)
    GC.enable(true)
    @test num == num
end

const x = [1.33, 35.0]

@testset "globals2" begin
    f(i) = @inbounds x[1] > x[2] ? 2i : i
    m = irgen(f, Tuple{Int})
    # @show m
    ExportWebAssembly.fix_globals!(m)
    # @show m
    ExportWebAssembly.optimize!(m)
    # @show m
    LLVM.verify(m)
    
    write(m, "test.bc")
    bindir = string(Sys.BINDIR, "/../tools")
    libpath = "./test.bc"
    dylibpath = abspath("test.so")
    
    run(`$bindir/llc -filetype=obj -o=test.o -relocation-model=pic test.bc`, wait = true)
    run(`gcc -shared -fPIC -o test.so -L$bindir/../lib -ljulia test.o`, wait = true)
    dylib = Libdl.dlopen(dylibpath)
    
    GC.enable(false)
    ccall(Libdl.dlsym(dylib, "jl_init_globals"), Cvoid, ())
    num = ccall(Libdl.dlsym(dylib, "f"), Int, (Int,), 3)
    Libdl.dlclose(dylib)
    GC.enable(true)
    @test num == f(3)
end

const xi = [3, 5]

@testset "globals3" begin
    f(i) = @inbounds xi[1] == 3 ? i : 2i
    m = irgen(f, Tuple{Int})
    # @show m
    ExportWebAssembly.fix_globals!(m)
    # @show m
    ExportWebAssembly.optimize!(m)
    # @show m
    LLVM.verify(m)
    
    write(m, "test.bc")
    bindir = string(Sys.BINDIR, "/../tools")
    libpath = "./test.bc"
    dylibpath = abspath("test.so")
    
    run(`$bindir/llc -filetype=obj -o=test.o -relocation-model=pic test.bc`, wait = true)
    run(`gcc -shared -fPIC -o test.so -L$bindir/../lib -ljulia test.o`, wait = true)
    dylib = Libdl.dlopen(dylibpath)
    
    GC.enable(false)
    ccall(Libdl.dlsym(dylib, "jl_init_globals"), Cvoid, ())
    num = ccall(Libdl.dlsym(dylib, "f"), Int, (Int,), 3)
    Libdl.dlclose(dylib)
    GC.enable(true)
    @test num == f(3)
end

@testset "type" begin
    f() = Complex{Float64}
    m = irgen(f, Tuple{})
    # @show m
    ExportWebAssembly.fix_globals!(m)
    ExportWebAssembly.optimize!(m)
    # @show m
    LLVM.verify(m)
    write(m, "test.bc")
    bindir = string(Sys.BINDIR, "/../tools")
    libpath = "./test.bc"
    dylibpath = abspath("test.so")
  
    run(`$bindir/llc -filetype=obj -o=test.o -relocation-model=pic test.bc`, wait = true)
    run(`gcc -shared -fPIC -o test.so -L$bindir/../lib -ljulia test.o`, wait = true)
    dylib = Libdl.dlopen(dylibpath)
  
    GC.enable(false)
    ccall(Libdl.dlsym(dylib, "jl_init_globals"), Cvoid, ())
    res = ccall(Libdl.dlsym(dylib, "f"), Any, ())
    Libdl.dlclose(dylib)
    GC.enable(true)
    # @test string(res) == "Complex{Float64}" 

    f(@nospecialize(x)) = isa(x, Number) ? 1 : 0
    m = irgen(f, Tuple{Any})
    # @show m
    ExportWebAssembly.fix_globals!(m)
    ExportWebAssembly.optimize!(m)
    # @show m
    LLVM.verify(m)
    write(m, "test.bc")
    bindir = string(Sys.BINDIR, "/../tools")
    libpath = "./test.bc"
    dylibpath = abspath("test.so")
  
    run(`$bindir/llc -filetype=obj -o=test.o -relocation-model=pic test.bc`, wait = true)
    run(`gcc -shared -fPIC -o test.so -L$bindir/../lib -ljulia test.o`, wait = true)
    dylib = Libdl.dlopen(dylibpath)
  
    GC.enable(false)
    ccall(Libdl.dlsym(dylib, "jl_init_globals"), Cvoid, ())
    res = ccall(Libdl.dlsym(dylib, "f"), Int, (Any,), 4.0im)
    Libdl.dlclose(dylib)
    GC.enable(true)
end
