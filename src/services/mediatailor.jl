module aws_mediatailor
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mediatailor

"""
Returns a list of the tags assigned to the specified playback configuration resource. 
"""
ListTagsForResource(ResourceArn) = mediatailor("GET", "/tags/$ResourceArn")

"""
Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. 
"""
ListPlaybackConfigurations() = mediatailor("GET", "/playbackConfigurations")

"""
Deletes the playback configuration for the specified name. 
"""
DeletePlaybackConfiguration(Name) = mediatailor("DELETE", "/playbackConfiguration/$Name")

"""
Adds a new playback configuration to AWS Elemental MediaTailor. 
"""
PutPlaybackConfiguration() = mediatailor("PUT", "/playbackConfiguration")

"""
Returns the playback configuration for the specified name. 
"""
GetPlaybackConfiguration(Name) = mediatailor("GET", "/playbackConfiguration/$Name")

"""
Adds tags to the specified playback configuration resource. You can specify one or more tags to add. 
"""
TagResource(ResourceArn, Tags) = mediatailor("POST", "/tags/$ResourceArn")

"""
Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. 
"""
UntagResource(ResourceArn, TagKeys) = mediatailor("DELETE", "/tags/$ResourceArn")
end
