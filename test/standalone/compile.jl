using ExportWebAssembly
using Test
using Formatting

twox(x) = 2x
arraysum(x) = sum([x, 1])
myrand() = rand()

# const a = [Complex(4, 5), Complex(2,3)]
# arrayfun(x) = x + real(a[1]) + imag(a[2])
const a = [4, 5]
arrayfun(x) = x + a[1] + a[2]
jsin(x) = sin(x)
# using ODE
include("ode.jl")
fode() = ode23s((t,y)->2.0t^2, 0.0, [0:.001:2;], initstep = 1e-4)[2][end]
function arridx(i)
    a = collect(1.0:0.1:10.0)
    @inbounds i > 3 ? a[1] : a[5]
end
fsimple() = [[1.6, 3.3, 2.2],[1.6, 3.3, 2.2]][2][end]
# fsimple() = [1.6, 3.3, 2.2][end]
fsimple() = Float64[0:.001:2;][end]
const rng = Float64[0:.001:2;]
fsimple() = rng[end]

funcs = [
    # (twox, Tuple{Int}, 4),
    # (arrayfun, Tuple{Int}, 4),
    # (jsin, Tuple{Float64}, 0.5),
    # (arridx, Tuple{Int}, 4),
    (fode, Tuple{}, ()),      # broken
    # (fsimple, Tuple{}, ()),
]


Ctemplate = """
#include <stdio.h> 
#include <julia.h> 

extern CRETTYPE FUNNAME(CARGTYPES);
extern void jl_init_with_image(const char *, const char *);
extern void jl_init_globals(void);

int main()
{
   jl_init_with_image(".", "blank.ji");
   jl_init_globals();
   printf("RETFORMAT", FUNNAME(FUNARG));
   jl_atexit_hook(0);
   return 0;
}
"""

Cmap = Dict(
    Cint => "int",
    Clong => "long",
    Cdouble => "double",
    Nothing => "void",
)
Cformatmap = Dict(
    Cint => "%d",
    Clong => "%ld",
    Cdouble => "%e",
)

totext(x) = string(x)
totext(x::Nothing) = ""
totext(x::Tuple{}) = ""

dir = @__DIR__
bindir = string(Sys.BINDIR, "/../tools")

for (func, tt, val) in funcs
    fname = nameof(func)
    rettype = Base.return_types(func, tt)[1]
    argtype = length(tt.types) > 0 ? tt.types[1] : Nothing
    fmt = Cformatmap[rettype]
    Ctxt = foldl(replace, 
                 (
                  "FUNNAME" => fname, 
                  "CRETTYPE" => Cmap[rettype], 
                  "RETFORMAT" => fmt, 
                  "CARGTYPES" => Cmap[argtype], 
                  "FUNARG" => totext(val),
                 ), 
                 init = Ctemplate)
    write("$fname.c", Ctxt)
    m = ExportWebAssembly.irgen(func, tt)
    # @show m
    # ExportWebAssembly.optimize!(m)
    ExportWebAssembly.fix_globals!(m)
    ExportWebAssembly.optimize!(m)
    # @show m
    write(m, "$fname.bc")
    run(`$bindir/llc -filetype=obj -o=$fname.o -relocation-model=pic $fname.bc`, wait = true)
    run(`gcc -shared -fpic $fname.o -o lib$fname.so`)
    run(`gcc -c -std=gnu99 -I$bindir/../include/julia -DJULIA_ENABLE_THREADING=1 -fPIC $fname.c`)
    run(`gcc -o $fname $fname.o -L$dir -L$bindir/../lib -Wl,--unresolved-symbols=ignore-in-object-files -Wl,-rpath,'.' -Wl,-rpath,$bindir/../lib -ljulia -l$fname`)
    @test Formatting.sprintf1(fmt, func(val...)) == read(`./$fname`, String)
end
