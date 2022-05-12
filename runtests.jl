using Test

include("myvector.jl")

@testset "Tests AwsomeAlgorithm" begin
    x₁ = MyVector([3, 2, 1])
    x₂ = MyVector([2, 1, 1])
    x₃ = x₁ + x₂
    @test x₃.vector == [4, 1, 3]
    # What happens with arrays of strings?

    x₁ = MyVector(["toto", "tata"])
    x₂ = MyVector(["titi", "tutu"])
    x₃ = x₁ + x₂
end