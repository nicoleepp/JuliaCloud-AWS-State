module aws_mobile
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mobile

"""
 List all available bundles. 
"""
ListBundles() = mobile("GET", "/bundles")

"""
 Creates an AWS Mobile Hub project. 
"""
CreateProject() = mobile("POST", "/projects")

"""
 Get the bundle details for the requested bundle id. 
"""
DescribeBundle(bundleId) = mobile("GET", "/bundles/$bundleId")

"""
 Delets a project in AWS Mobile Hub. 
"""
DeleteProject(projectId) = mobile("DELETE", "/projects/$projectId")

"""
 Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. 
"""
ExportBundle(bundleId) = mobile("POST", "/bundles/$bundleId")

"""
 Update an existing project. 
"""
UpdateProject(projectId) = mobile("POST", "/update")

"""
 Lists projects in AWS Mobile Hub. 
"""
ListProjects() = mobile("GET", "/projects")

"""
 Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. 
"""
ExportProject(projectId) = mobile("POST", "/exports/$projectId")

"""
 Gets details about a project in AWS Mobile Hub. 
"""
DescribeProject(projectId) = mobile("GET", "/project")
end
