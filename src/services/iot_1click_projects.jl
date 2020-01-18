module aws_iot_1click_projects
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iot_1click_projects

"""
Lists the tags (metadata key/value pairs) which you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iot_1click_projects("GET", "/tags/$resourceArn")

"""
Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 
"""
DeletePlacement(placementName, projectName) = iot_1click_projects("DELETE", "/projects/$projectName/placements/$placementName")

"""
Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
"""
UpdateProject(projectName) = iot_1click_projects("PUT", "/projects/$projectName")

"""
Associates a physical device with a placement.
"""
AssociateDeviceWithPlacement(projectName, placementName, deviceId, deviceTemplateName) = iot_1click_projects("PUT", "/projects/$projectName/placements/$placementName/devices/$deviceTemplateName")

"""
Returns an object describing a project.
"""
DescribeProject(projectName) = iot_1click_projects("GET", "/projects/$projectName")

"""
Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
"""
CreateProject(projectName) = iot_1click_projects("POST", "/projects")

"""
Lists the placement(s) of a project.
"""
ListPlacements(projectName) = iot_1click_projects("GET", "/projects/$projectName/placements")

"""
Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
"""
UpdatePlacement(placementName, projectName) = iot_1click_projects("PUT", "/projects/$projectName/placements/$placementName")

"""
Creates an empty placement.
"""
CreatePlacement(placementName, projectName) = iot_1click_projects("POST", "/projects/$projectName/placements")

"""
Describes a placement in a project.
"""
DescribePlacement(placementName, projectName) = iot_1click_projects("GET", "/projects/$projectName/placements/$placementName")

"""
Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
"""
ListProjects() = iot_1click_projects("GET", "/projects")

"""
Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
"""
TagResource(resourceArn, tags) = iot_1click_projects("POST", "/tags/$resourceArn")

"""
Removes one or more tags (metadata key/value pairs) from a resource.
"""
UntagResource(resourceArn, tagKeys) = iot_1click_projects("DELETE", "/tags/$resourceArn")

"""
Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 
"""
DeleteProject(projectName) = iot_1click_projects("DELETE", "/projects/$projectName")

"""
Removes a physical device from a placement.
"""
DisassociateDeviceFromPlacement(projectName, placementName, deviceTemplateName) = iot_1click_projects("DELETE", "/projects/$projectName/placements/$placementName/devices/$deviceTemplateName")

"""
Returns an object enumerating the devices in a placement.
"""
GetDevicesInPlacement(projectName, placementName) = iot_1click_projects("GET", "/projects/$projectName/placements/$placementName/devices")
end
