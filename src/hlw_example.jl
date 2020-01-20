include("services/s3.jl")
using .aws_s3

buckets = aws_s3.ListBuckets()
println(buckets)