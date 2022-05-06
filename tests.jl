using Test

include("awesome.jl")

@testset "Tests AwsomeAlgorithm" begin
    @test AwsomeAlgorithm([1, 2, 4, 4, 4, 1]) == 12
    # Add some more tests here...
end