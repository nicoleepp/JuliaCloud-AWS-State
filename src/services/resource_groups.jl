module aws_resource_groups
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: resource_groups

"""
Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.
"""
DeleteGroup(GroupName) = resource_groups("DELETE", "/groups/$GroupName")

"""
Returns information about a specified resource group.
"""
GetGroup(GroupName) = resource_groups("GET", "/groups/$GroupName")

"""
Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.
"""
Tag(Arn, Tags) = resource_groups("PUT", "/resources/$Arn/tags")

"""
Returns a list of tags that are associated with a resource group, specified by an ARN.
"""
GetTags(Arn) = resource_groups("GET", "/resources/$Arn/tags")

"""
Deletes specified tags from a specified resource.
"""
Untag(Arn, Keys) = resource_groups("PATCH", "/resources/$Arn/tags")

"""
Updates the resource query of a group.
"""
UpdateGroupQuery(GroupName, ResourceQuery) = resource_groups("PUT", "/groups/$GroupName/query")

"""
Returns a list of ARNs of resources that are members of a specified resource group.
"""
ListGroupResources(GroupName) = resource_groups("POST", "/groups/$GroupName/resource-identifiers-list")

"""
Returns the resource query associated with the specified resource group.
"""
GetGroupQuery(GroupName) = resource_groups("GET", "/groups/$GroupName/query")

"""
Creates a group with a specified name, description, and resource query.
"""
CreateGroup(Name, ResourceQuery) = resource_groups("POST", "/groups")

"""
Returns a list of existing resource groups in your account.
"""
ListGroups() = resource_groups("POST", "/groups-list")

"""
Updates an existing group with a new or changed description. You cannot update the name of a resource group.
"""
UpdateGroup(GroupName) = resource_groups("PUT", "/groups/$GroupName")

"""
Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
"""
SearchResources(ResourceQuery) = resource_groups("POST", "/resources/search")
end
