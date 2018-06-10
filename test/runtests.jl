
using Test
using ExportWebAssembly

myfun(x) = sum((x, x, 1.0))

export_bitcode("myfun.bc", myfun, Tuple{Float64})
