
using Test
using ExportWebAssembly
using MicroLogging

configure_logging(min_level=:info)
# configure_logging(min_level=:debug)

sum_tuple(x) = sum((x, x, 1))

write_js("sum_tuple.js", sum_tuple, Tuple{Int}, include_init = false)

array_max(x) = maximum(Int[3,x])

write_js("array_max.js", array_max, Tuple{Int}, include_init = true)

function test_arrays(x)
    y = fill(2pi, 5)
    push!(y, 3x)
    z = reverse(y)
    zz = y .+ z.^2
    return maximum(zz)
end

write_js("test_arrays.js", test_arrays, Tuple{Float64}, include_init = true)
