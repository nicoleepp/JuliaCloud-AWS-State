include("AWSCorePrototypeServices.jl")
s3 = AWSCorePrototypeServices.s3

buckets = s3("GET", "/")
println(buckets)