include("AWSCorePrototypeServices.jl")
s3 = AWSCorePrototypeServices.s3

function low_level_main()
    buckets = s3("GET", "/")
    println(buckets)
end