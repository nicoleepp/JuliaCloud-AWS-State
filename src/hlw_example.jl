include("services/s3.jl")
using .aws_s3

res = aws_s3.ListBuckets()
println(res)