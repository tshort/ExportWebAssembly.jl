
# d = find_ccalls(Threads.nthreads, Tuple{})
# d = find_ccalls(time, Tuple{})
# d = find_ccalls(muladd, Tuple{Array{Float64,2},Array{Float64,2},Array{Float64,2}})

@testset "ccalls" begin
    f1() = ccall(:usleep, Int, (Int,), 11)
    f2() = ccall(:usleep, Int, (Int, Int), 21, 22)
    f3() = ccall(:usleep, Int, (Int, Int, Int), 31, 32, 33)
    m1 = irgen(f1, Tuple{})
    m2 = irgen(f2, Tuple{})
    m3 = irgen(f3, Tuple{})
    verify(m1)
    verify(m2)
    verify(m3)
end