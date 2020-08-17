using Test
using ThesisTools
using PyPlot

@testset "save_thesis" begin
    fig, ax = subplots()
    ax.plot(rand(10), rand(10))
    save_thesis("testfig", fig, dir = @__DIR__)
    @test isfile(joinpath(@__DIR__, "testfig.tikz"))
end
