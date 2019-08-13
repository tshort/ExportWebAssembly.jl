using ExportWebAssembly, LLVM, Libdl
const tn = Int.name
f() = tn
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
res = ccall(Libdl.dlsym(dylib, funname), Any, ())
# res = ccall(Libdl.dlsym(dylib, "f"), Any, ())
Libdl.dlclose(dylib)
GC.enable(true)
nothing
