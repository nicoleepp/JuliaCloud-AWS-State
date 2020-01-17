module AWSCoreServices

include("AWSCorePrototype.jl")

# Define each service here
const s3 = AWSCorePrototype.RestXMLService("s3", "2006-03-01")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2019-03-26")
const route53 = AWSCorePrototype.RestXMLService("route53", "2013-04-01")

end