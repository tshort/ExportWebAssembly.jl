
using Test
using ExportWebAssembly

sum_tuple(x) = sum((x, x, 1))

write_js("sum_tuple.js", sum_tuple, Tuple{Int}, include_init = false)

array_max(x) = maximum(Int[3,x])

write_js("array_max.js", array_max, Tuple{Int}, include_init = true)
