using MyPackage
using Test

@testset "Testing " begin
    # Write your tests here.
    for distribution in [
        Normal()
    ]
        @test pdf(distribution, 0.0) > 0
        @test cdf(distribution, Inf) ≈ 1.0
        @test isapprox(cdf(distribution, Inf), 1.0)
    end
end
