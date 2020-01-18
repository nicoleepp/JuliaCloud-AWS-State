module aws_appconfig
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: appconfig

"""
Retrieve information about a deployment strategy. A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
"""
GetDeploymentStrategy(DeploymentStrategyId) = appconfig("GET", "/deploymentstrategies/$DeploymentStrategyId")

"""
Retrieves the list of key-value tags assigned to the resource.
"""
ListTagsForResource(ResourceArn) = appconfig("GET", "/tags/$ResourceArn")

"""
Stops a deployment. This API action works only on deployments that have a status of DEPLOYING. This action moves the deployment to a status of ROLLED_BACK.
"""
StopDeployment(ApplicationId, EnvironmentId, DeploymentNumber) = appconfig("DELETE", "/applications/$ApplicationId/environments/$EnvironmentId/deployments/$DeploymentNumber")

"""
A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
"""
CreateDeploymentStrategy(Name, DeploymentDurationInMinutes, GrowthFactor, ReplicateTo) = appconfig("POST", "/deploymentstrategies")

"""
Delete a deployment strategy. Deleting a deployment strategy does not delete a configuration from a host.
"""
DeleteDeploymentStrategy(DeploymentStrategyId) = appconfig("DELETE", "/deployementstrategies/$DeploymentStrategyId")

"""
Starts a deployment.
"""
StartDeployment(ApplicationId, EnvironmentId, DeploymentStrategyId, ConfigurationProfileId, ConfigurationVersion) = appconfig("POST", "/applications/$ApplicationId/environments/$EnvironmentId/deployments")

"""
Retrieve information about an application.
"""
GetApplication(ApplicationId) = appconfig("GET", "/applications/$ApplicationId")

"""
Updates a deployment strategy.
"""
UpdateDeploymentStrategy(DeploymentStrategyId) = appconfig("PATCH", "/deploymentstrategies/$DeploymentStrategyId")

"""
Delete an application. Deleting an application does not delete a configuration from a host.
"""
DeleteApplication(ApplicationId) = appconfig("DELETE", "/applications/$ApplicationId")

"""
Retrieve information about a configuration deployment.
"""
GetDeployment(ApplicationId, EnvironmentId, DeploymentNumber) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId/deployments/$DeploymentNumber")

"""
For each application, you define one or more environments. An environment is a logical deployment group of AppConfig targets, such as applications in a Beta or Production environment. You can also define environments for application subcomponents such as the Web, Mobile and Back-end components for your application. You can configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a configuration deployment. If an alarm is triggered, the system rolls back the configuration.
"""
CreateEnvironment(ApplicationId, Name) = appconfig("POST", "/applications/$ApplicationId/environments")

"""
Retrieve information about an environment. An environment is a logical deployment group of AppConfig applications, such as applications in a Production environment or in an EU_Region environment. Each configuration deployment targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is triggered during a deployment, AppConfig roles back the configuration.
"""
GetEnvironment(ApplicationId, EnvironmentId) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId")

"""
An application in AppConfig is a logical unit of code that provides capabilities for your customers. For example, an application can be a microservice that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless application using Amazon API Gateway and AWS Lambda, or any system you run on behalf of others.
"""
CreateApplication(Name) = appconfig("POST", "/applications")

"""
Updates an application.
"""
UpdateApplication(ApplicationId) = appconfig("PATCH", "/applications/$ApplicationId")

"""
Delete a configuration profile. Deleting a configuration profile does not delete a configuration from a host.
"""
DeleteConfigurationProfile(ApplicationId, ConfigurationProfileId) = appconfig("DELETE", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId")

"""
Uses the validators in a configuration profile to validate a configuration.
"""
ValidateConfiguration(ApplicationId, ConfigurationProfileId, ConfigurationVersion) = appconfig("POST", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId/validators")

"""
List deployment strategies.
"""
ListDeploymentStrategies() = appconfig("GET", "/deploymentstrategies")

"""
Metadata to assign to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which you define. You can specify a maximum of 50 tags for a resource.
"""
TagResource(ResourceArn, Tags) = appconfig("POST", "/tags/$ResourceArn")

"""
Deletes a tag key and value from an AppConfig resource.
"""
UntagResource(ResourceArn, TagKeys) = appconfig("DELETE", "/tags/$ResourceArn")

"""
Retrieve information about a configuration.
"""
GetConfiguration(Application, Environment, Configuration, ClientId) = appconfig("GET", "/applications/$Application/environments/$Environment/configurations/$Configuration")

"""
Delete an environment. Deleting an environment does not delete a configuration from a host.
"""
DeleteEnvironment(ApplicationId, EnvironmentId) = appconfig("DELETE", "/applications/$ApplicationId/environments/$EnvironmentId")

"""
List the environments for an application.
"""
ListEnvironments(ApplicationId) = appconfig("GET", "/applications/$ApplicationId/environments")

"""
List all applications in your AWS account.
"""
ListApplications() = appconfig("GET", "/applications")

"""
Updates an environment.
"""
UpdateEnvironment(ApplicationId, EnvironmentId) = appconfig("PATCH", "/applications/$ApplicationId/environments/$EnvironmentId")

"""
Retrieve information about a configuration profile.
"""
GetConfigurationProfile(ApplicationId, ConfigurationProfileId) = appconfig("GET", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId")

"""
Information that enables AppConfig to access the configuration source. Valid configuration sources include Systems Manager (SSM) documents and SSM Parameter Store parameters. A configuration profile includes the following information.   The Uri location of the configuration data.   The AWS Identity and Access Management (IAM) role that provides access to the configuration data.   A validator for the configuration data. Available validators include either a JSON Schema or an AWS Lambda function.  
"""
CreateConfigurationProfile(ApplicationId, Name, LocationUri, RetrievalRoleArn) = appconfig("POST", "/applications/$ApplicationId/configurationprofiles")

"""
Lists the configuration profiles for an application.
"""
ListConfigurationProfiles(ApplicationId) = appconfig("GET", "/applications/$ApplicationId/configurationprofiles")

"""
Lists the deployments for an environment.
"""
ListDeployments(ApplicationId, EnvironmentId) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId/deployments")

"""
Updates a configuration profile.
"""
UpdateConfigurationProfile(ApplicationId, ConfigurationProfileId) = appconfig("PATCH", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId")
end
