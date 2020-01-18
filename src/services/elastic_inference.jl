module aws_elastic_inference
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: elastic_inference

"""
Returns all tags of an Elastic Inference Accelerator.
"""
ListTagsForResource(resourceArn) = elastic_inference("GET", "/tags/$resourceArn")

"""
Adds the specified tag(s) to an Elastic Inference Accelerator.
"""
TagResource(resourceArn, tags) = elastic_inference("POST", "/tags/$resourceArn")

"""
Removes the specified tag(s) from an Elastic Inference Accelerator.
"""
UntagResource(resourceArn, tagKeys) = elastic_inference("DELETE", "/tags/$resourceArn")
end
