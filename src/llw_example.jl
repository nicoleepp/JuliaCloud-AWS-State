include("AWSCorePrototypeServices.jl")

s3 = AWSCoreServices.s3

println(s3("GET", "/"))