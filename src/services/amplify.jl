module aws_amplify
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: amplify

"""
 List tags for resource. 
"""
ListTagsForResource(resourceArn) = amplify("GET", "/tags/$resourceArn")

"""
 Stop a job that is in progress, for an Amplify branch, part of Amplify App. 
"""
StopJob(appId, branchName, jobId) = amplify("DELETE", "/apps/$appId/branches/$branchName/jobs/$jobId/stop")

"""
 Create a new DomainAssociation on an App 
"""
UpdateDomainAssociation(appId, domainName, subDomainSettings) = amplify("POST", "/apps/$appId/domains/$domainName")

"""
 Start a deployment for manual deploy apps. (Apps are not connected to repository) 
"""
StartDeployment(appId, branchName) = amplify("POST", "/apps/$appId/branches/$branchName/deployments/start")

"""
 Create a deployment for manual deploy apps. (Apps are not connected to repository) 
"""
CreateDeployment(appId, branchName) = amplify("POST", "/apps/$appId/branches/$branchName/deployments")

"""
 Retrieves webhook info that corresponds to a webhookId. 
"""
GetWebhook(webhookId) = amplify("GET", "/webhooks/$webhookId")

"""
 Delete an existing Amplify App by appId. 
"""
DeleteApp(appId) = amplify("DELETE", "/apps/$appId")

"""
 Retrieves a backend environment for an Amplify App. 
"""
GetBackendEnvironment(appId, environmentName) = amplify("GET", "/apps/$appId/backendenvironments/$environmentName")

"""
 Starts a new job for a branch, part of an Amplify App. 
"""
StartJob(appId, branchName, jobType) = amplify("POST", "/apps/$appId/branches/$branchName/jobs")

"""
 Lists existing Amplify Apps. 
"""
ListApps() = amplify("GET", "/apps")

"""
 Creates a new Branch for an Amplify App. 
"""
CreateBranch(appId, branchName) = amplify("POST", "/apps/$appId/branches")

"""
 List webhooks with an app. 
"""
ListWebhooks(appId) = amplify("GET", "/apps/$appId/webhooks")

"""
 Tag resource with tag key and value. 
"""
TagResource(resourceArn, tags) = amplify("POST", "/tags/$resourceArn")

"""
 Delete backend environment for an Amplify App. 
"""
DeleteBackendEnvironment(appId, environmentName) = amplify("DELETE", "/apps/$appId/backendenvironments/$environmentName")

"""
 Create a new webhook on an App. 
"""
CreateWebhook(appId, branchName) = amplify("POST", "/apps/$appId/webhooks")

"""
 Deletes a webhook. 
"""
DeleteWebhook(webhookId) = amplify("DELETE", "/webhooks/$webhookId")

"""
 Retrieve website access logs for a specific time range via a pre-signed URL. 
"""
GenerateAccessLogs(domainName, appId) = amplify("POST", "/apps/$appId/accesslogs")

"""
 Get a job for a branch, part of an Amplify App. 
"""
GetJob(appId, branchName, jobId) = amplify("GET", "/apps/$appId/branches/$branchName/jobs/$jobId")

"""
 Untag resource with resourceArn. 
"""
UntagResource(resourceArn, tagKeys) = amplify("DELETE", "/tags/$resourceArn")

"""
 Updates an existing Amplify App. 
"""
UpdateApp(appId) = amplify("POST", "/apps/$appId")

"""
 Updates a branch for an Amplify App. 
"""
UpdateBranch(appId, branchName) = amplify("POST", "/apps/$appId/branches/$branchName")

"""
 Creates a new backend environment for an Amplify App. 
"""
CreateBackendEnvironment(appId, environmentName) = amplify("POST", "/apps/$appId/backendenvironments")

"""
 Retrieves a branch for an Amplify App. 
"""
GetBranch(appId, branchName) = amplify("GET", "/apps/$appId/branches/$branchName")

"""
 List domains with an app 
"""
ListDomainAssociations(appId) = amplify("GET", "/apps/$appId/domains")

"""
 Creates a new Amplify App. 
"""
CreateApp(name) = amplify("POST", "/apps")

"""
 Update a webhook. 
"""
UpdateWebhook(webhookId) = amplify("POST", "/webhooks/$webhookId")

"""
 Retrieves domain info that corresponds to an appId and domainName. 
"""
GetDomainAssociation(appId, domainName) = amplify("GET", "/apps/$appId/domains/$domainName")

"""
 Retrieves artifact info that corresponds to a artifactId. 
"""
GetArtifactUrl(artifactId) = amplify("GET", "/artifacts/$artifactId")

"""
 Deletes a DomainAssociation. 
"""
DeleteDomainAssociation(appId, domainName) = amplify("DELETE", "/apps/$appId/domains/$domainName")

"""
 Lists branches for an Amplify App. 
"""
ListBranches(appId) = amplify("GET", "/apps/$appId/branches")

"""
 Delete a job, for an Amplify branch, part of Amplify App. 
"""
DeleteJob(appId, branchName, jobId) = amplify("DELETE", "/apps/$appId/branches/$branchName/jobs/$jobId")

"""
 Retrieves an existing Amplify App by appId. 
"""
GetApp(appId) = amplify("GET", "/apps/$appId")

"""
 Deletes a branch for an Amplify App. 
"""
DeleteBranch(appId, branchName) = amplify("DELETE", "/apps/$appId/branches/$branchName")

"""
 List artifacts with an app, a branch, a job and an artifact type. 
"""
ListArtifacts(appId, branchName, jobId) = amplify("GET", "/apps/$appId/branches/$branchName/jobs/$jobId/artifacts")

"""
 Lists backend environments for an Amplify App. 
"""
ListBackendEnvironments(appId) = amplify("GET", "/apps/$appId/backendenvironments")

"""
 List Jobs for a branch, part of an Amplify App. 
"""
ListJobs(appId, branchName) = amplify("GET", "/apps/$appId/branches/$branchName/jobs")

"""
 Create a new DomainAssociation on an App 
"""
CreateDomainAssociation(appId, domainName, subDomainSettings) = amplify("POST", "/apps/$appId/domains")
end
