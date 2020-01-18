module aws_signer
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: signer

"""
Returns a list of the tags associated with a signing profile resource.
"""
ListTagsForResource(resourceArn) = signer("GET", "/tags/$resourceArn")

"""
Returns information on a specific signing profile.
"""
GetSigningProfile(profileName) = signer("GET", "/signing-profiles/$profileName")

"""
Returns information on a specific signing platform.
"""
GetSigningPlatform(platformId) = signer("GET", "/signing-platforms/$platformId")

"""
Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
"""
ListSigningPlatforms() = signer("GET", "/signing-platforms")

"""
Changes the state of an ACTIVE signing profile to CANCELED. A canceled profile is still viewable with the ListSigningProfiles operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.
"""
CancelSigningProfile(profileName) = signer("DELETE", "/signing-profiles/$profileName")

"""
Adds one or more tags to a signing profile. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the signing profile using its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.
"""
TagResource(resourceArn, tags) = signer("POST", "/tags/$resourceArn")

"""
Remove one or more tags from a signing profile. Specify a list of tag keys to remove the tags.
"""
UntagResource(resourceArn, tagKeys) = signer("DELETE", "/tags/$resourceArn")

"""
Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned. 
"""
ListSigningJobs() = signer("GET", "/signing-jobs")

"""
Returns information about a specific code signing job. You specify the job by using the jobId value that is returned by the StartSigningJob operation. 
"""
DescribeSigningJob(jobId) = signer("GET", "/signing-jobs/$jobId")

"""
Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
"""
ListSigningProfiles() = signer("GET", "/signing-profiles")

"""
Creates a signing profile. A signing profile is a code signing template that can be used to carry out a pre-defined signing job. For more information, see http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html 
"""
PutSigningProfile(profileName, signingMaterial, platformId) = signer("PUT", "/signing-profiles/$profileName")

"""
Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the ListSigningJobs operation for two years after they are performed. Note the following requirements:     You must create an Amazon S3 source bucket. For more information, see Create a Bucket in the Amazon S3 Getting Started Guide.    Your S3 source bucket must be version enabled.   You must create an S3 destination bucket. Code signing uses your S3 destination bucket to write your signed code.   You specify the name of the source and destination buckets when calling the StartSigningJob operation.   You must also specify a request token that identifies your request to code signing.   You can call the DescribeSigningJob and the ListSigningJobs actions after you call StartSigningJob. For a Java example that shows how to use this action, see http://docs.aws.amazon.com/acm/latest/userguide/ 
"""
StartSigningJob(source, destination, clientRequestToken) = signer("POST", "/signing-jobs")
end
