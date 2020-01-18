include("AWSCorePrototypeServices.jl")
s3 = AWSCoreServices.s3

res = s3("GET", "/")

println(res)
