
using Test
using ExportWebAssembly

myfun(x) = sum((x, x, 1.0))

write_bitcode("myfun.bc", myfun, Tuple{Float64})

f() = @extern(:myfun, Int32, Tuple{Float64, Int64}, 1.1, 3)
@code_llvm f()