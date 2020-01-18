module aws_mediapackage
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mediapackage

"""

"""
ListTagsForResource(ResourceArn) = mediapackage("GET", "/tags/$resource-arn")

"""
Gets details about an existing OriginEndpoint.
"""
DescribeOriginEndpoint(Id) = mediapackage("GET", "/origin_endpoints/$id")

"""
Returns a collection of Channels.
"""
ListChannels() = mediapackage("GET", "/channels")

"""
Returns a collection of HarvestJob records.
"""
ListHarvestJobs() = mediapackage("GET", "/harvest_jobs")

"""
Updates an existing Channel.
"""
UpdateChannel(Id) = mediapackage("PUT", "/channels/$id")

"""
Updates an existing OriginEndpoint.
"""
UpdateOriginEndpoint(Id) = mediapackage("PUT", "/origin_endpoints/$id")

"""
Creates a new Channel.
"""
CreateChannel(Id) = mediapackage("POST", "/channels")

"""
Creates a new HarvestJob record.
"""
CreateHarvestJob(S3Destination, EndTime, OriginEndpointId, StartTime, Id) = mediapackage("POST", "/harvest_jobs")

"""
Deletes an existing OriginEndpoint.
"""
DeleteOriginEndpoint(Id) = mediapackage("DELETE", "/origin_endpoints/$id")

"""
Gets details about a Channel.
"""
DescribeChannel(Id) = mediapackage("GET", "/channels/$id")

"""
Deletes an existing Channel.
"""
DeleteChannel(Id) = mediapackage("DELETE", "/channels/$id")

"""

"""
TagResource(ResourceArn, Tags) = mediapackage("POST", "/tags/$resource-arn")

"""
Gets details about an existing HarvestJob.
"""
DescribeHarvestJob(Id) = mediapackage("GET", "/harvest_jobs/$id")

"""

"""
UntagResource(TagKeys, ResourceArn) = mediapackage("DELETE", "/tags/$resource-arn")

"""
Creates a new OriginEndpoint record.
"""
CreateOriginEndpoint(Id, ChannelId) = mediapackage("POST", "/origin_endpoints")

"""
Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
"""
RotateChannelCredentials(Id) = mediapackage("PUT", "/channels/$id/credentials")

"""
Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
"""
RotateIngestEndpointCredentials(IngestEndpointId, Id) = mediapackage("PUT", "/channels/$id/ingest_endpoints/$ingest_endpoint_id/credentials")

"""
Returns a collection of OriginEndpoint records.
"""
ListOriginEndpoints() = mediapackage("GET", "/origin_endpoints")
end
