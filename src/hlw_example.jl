include("services/s3.jl")
using .aws_s3

function high_level_main()
    buckets = aws_s3.ListBuckets()
    println(buckets)
end