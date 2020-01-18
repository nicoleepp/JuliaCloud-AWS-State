module aws_dataexchange
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: dataexchange

"""
This operation lists the tags on the resource.
"""
ListTagsForResource(ResourceArn) = dataexchange("GET", "/tags/$resource-arn")

"""
This operation returns information about a data set.
"""
GetDataSet(DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId")

"""
This operation creates a revision for a data set.
"""
CreateRevision(DataSetId) = dataexchange("POST", "/v1/data-sets/$DataSetId/revisions")

"""
This operation returns information about a revision.
"""
GetRevision(RevisionId, DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId")

"""
This operation lists a data set's revisions sorted by CreatedAt in descending order.
"""
ListDataSetRevisions(DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions")

"""
This operation returns information about an asset.
"""
GetAsset(RevisionId, AssetId, DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId")

"""
This operation deletes an asset.
"""
DeleteAsset(RevisionId, AssetId, DataSetId) = dataexchange("DELETE", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId")

"""
This operation starts a job.
"""
StartJob(JobId) = dataexchange("PATCH", "/v1/jobs/$JobId")

"""
This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
"""
CancelJob(JobId) = dataexchange("DELETE", "/v1/jobs/$JobId")

"""
This operation creates a job.
"""
CreateJob(Type, Details) = dataexchange("POST", "/v1/jobs")

"""
This operation tags a resource.
"""
TagResource(ResourceArn, Tags) = dataexchange("POST", "/tags/$resource-arn")

"""
This operation creates a data set.
"""
CreateDataSet(AssetType, Description, Name) = dataexchange("POST", "/v1/data-sets")

"""
This operation removes one or more tags from a resource.
"""
UntagResource(TagKeys, ResourceArn) = dataexchange("DELETE", "/tags/$resource-arn")

"""
This operation returns information about a job.
"""
GetJob(JobId) = dataexchange("GET", "/v1/jobs/$JobId")

"""
This operation deletes a data set.
"""
DeleteDataSet(DataSetId) = dataexchange("DELETE", "/v1/data-sets/$DataSetId")

"""
This operation lists a revision's assets sorted alphabetically in descending order.
"""
ListRevisionAssets(RevisionId, DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets")

"""
This operation deletes a revision.
"""
DeleteRevision(RevisionId, DataSetId) = dataexchange("DELETE", "/v1/data-sets/$DataSetId/revisions/$RevisionId")

"""
This operation updates a revision.
"""
UpdateRevision(RevisionId, DataSetId) = dataexchange("PATCH", "/v1/data-sets/$DataSetId/revisions/$RevisionId")

"""
This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
"""
ListDataSets() = dataexchange("GET", "/v1/data-sets")

"""
This operation lists your jobs sorted by CreatedAt in descending order.
"""
ListJobs() = dataexchange("GET", "/v1/jobs")

"""
This operation updates an asset.
"""
UpdateAsset(RevisionId, AssetId, DataSetId, Name) = dataexchange("PATCH", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId")

"""
This operation updates a data set.
"""
UpdateDataSet(DataSetId) = dataexchange("PATCH", "/v1/data-sets/$DataSetId")
end
