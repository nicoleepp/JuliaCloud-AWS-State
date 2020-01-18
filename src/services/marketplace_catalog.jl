module aws_marketplace_catalog
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: marketplace_catalog

"""
Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
"""
ListChangeSets(Catalog) = marketplace_catalog("POST", "/ListChangeSets")

"""
Provides information about a given change set.
"""
DescribeChangeSet(Catalog, ChangeSetId) = marketplace_catalog("GET", "/DescribeChangeSet")

"""
Returns the metadata and content of the entity.
"""
DescribeEntity(Catalog, EntityId) = marketplace_catalog("GET", "/DescribeEntity")

"""
Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.
"""
CancelChangeSet(Catalog, ChangeSetId) = marketplace_catalog("PATCH", "/CancelChangeSet")

"""
Provides the list of entities of a given type.
"""
ListEntities(Catalog, EntityType) = marketplace_catalog("POST", "/ListEntities")

"""
This operation allows you to request changes in your entities.
"""
StartChangeSet(Catalog, ChangeSet) = marketplace_catalog("POST", "/StartChangeSet")
end
