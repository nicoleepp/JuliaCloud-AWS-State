module aws_serverlessapplicationrepository
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: serverlessapplicationrepository

"""
Lists versions for the specified application.
"""
ListApplicationVersions(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId/versions")

"""
Gets the specified application.
"""
GetApplication(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId")

"""
Gets the specified AWS CloudFormation template.
"""
GetCloudFormationTemplate(ApplicationId, TemplateId) = serverlessapplicationrepository("GET", "/applications/$applicationId/templates/$templateId")

"""
Deletes the specified application.
"""
DeleteApplication(ApplicationId) = serverlessapplicationrepository("DELETE", "/applications/$applicationId")

"""
Sets the permission policy for an application. For the list of actions supported for this operation, see
 Application 
 Permissions
 .
"""
PutApplicationPolicy(ApplicationId, Statements) = serverlessapplicationrepository("PUT", "/applications/$applicationId/policy")

"""
Retrieves the list of applications nested in the containing application.
"""
ListApplicationDependencies(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId/dependencies")

"""
Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
"""
CreateApplication(Description, Name, Author) = serverlessapplicationrepository("POST", "/applications")

"""
Updates the specified application.
"""
UpdateApplication(ApplicationId) = serverlessapplicationrepository("PATCH", "/applications/$applicationId")

"""
Creates an AWS CloudFormation template.
"""
CreateCloudFormationTemplate(ApplicationId) = serverlessapplicationrepository("POST", "/applications/$applicationId/templates")

"""
Lists applications owned by the requester.
"""
ListApplications() = serverlessapplicationrepository("GET", "/applications")

"""
Creates an AWS CloudFormation change set for the given application.
"""
CreateCloudFormationChangeSet(ApplicationId, StackName) = serverlessapplicationrepository("POST", "/applications/$applicationId/changesets")

"""
Retrieves the policy for the application.
"""
GetApplicationPolicy(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId/policy")

"""
Creates an application version.
"""
CreateApplicationVersion(ApplicationId, SemanticVersion) = serverlessapplicationrepository("PUT", "/applications/$applicationId/versions/$semanticVersion")
end
