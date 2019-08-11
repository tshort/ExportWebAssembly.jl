using ExportWebAssembly

twox(x) = 2x
arraysum(x) = sum([x, 1])
myrand() = rand()

const a = [Complex(4, 5), Complex(2,3)]
arrayfun(x) = x + real(a[1]) + imag(a[2])

funcs = [
    "twox" => (twox, Tuple{Int}),
    "arrayfun" => (arrayfun, Tuple{Int}),
#    "arraysum" => (arraysum, Tuple{Int}),
#    "myrand" => (myrand, Tuple{}),
]

dir = @__DIR__
bindir = string(Sys.BINDIR, "/../tools")

for (fname, (func, tt)) in funcs
    m = ExportWebAssembly.irgen(func, tt)
    d = ExportWebAssembly.find_globals(func, tt)
    length(d) > 0 && ExportWebAssembly.fix_globals!(m, d)
    ExportWebAssembly.optimize!(m)
    @show m
    write(m, "$fname.bc")
    run(`$bindir/llc -filetype=obj -o=$fname.o -relocation-model=pic $fname.bc`, wait = true)
    run(`gcc -shared -fpic $fname.o -o lib$fname.so`)
    run(`gcc -c -std=gnu99 -I$bindir/../include/julia -DJULIA_ENABLE_THREADING=1 -fPIC $fname.c`)
    run(`gcc -o $fname $fname.o -L$dir -L$bindir/../lib -Wl,--unresolved-symbols=ignore-in-object-files -Wl,-rpath,'.' -Wl,-rpath,$bindir/../lib -ljulia -l$fname`)
end
