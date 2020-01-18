module aws_greengrass
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: greengrass

"""
Updates a Lambda function definition.
"""
UpdateFunctionDefinition(FunctionDefinitionId) = greengrass("PUT", "/greengrass/definition/functions/$FunctionDefinitionId")

"""
Deletes a group.
"""
DeleteGroup(GroupId) = greengrass("DELETE", "/greengrass/groups/$GroupId")

"""
Retrieves information about a group.
"""
GetGroup(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId")

"""
Lists the versions of a subscription definition.
"""
ListSubscriptionDefinitionVersions(SubscriptionDefinitionId) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions")

"""
Disassociates the service role from your account. Without a service role, deployments will not work.
"""
DisassociateServiceRoleFromAccount() = greengrass("DELETE", "/greengrass/servicerole")

"""
Retrieves information about a device definition version.
"""
GetDeviceDefinitionVersion(DeviceDefinitionVersionId, DeviceDefinitionId) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId/versions/$DeviceDefinitionVersionId")

"""
Updates a resource definition.
"""
UpdateResourceDefinition(ResourceDefinitionId) = greengrass("PUT", "/greengrass/definition/resources/$ResourceDefinitionId")

"""
Updates a logger definition.
"""
UpdateLoggerDefinition(LoggerDefinitionId) = greengrass("PUT", "/greengrass/definition/loggers/$LoggerDefinitionId")

"""
Deletes a core definition.
"""
DeleteCoreDefinition(CoreDefinitionId) = greengrass("DELETE", "/greengrass/definition/cores/$CoreDefinitionId")

"""
Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
"""
TagResource(ResourceArn) = greengrass("POST", "/tags/$resource-arn")

"""
Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
"""
GetConnectorDefinitionVersion(ConnectorDefinitionId, ConnectorDefinitionVersionId) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions/$ConnectorDefinitionVersionId")

"""
Retrieves information about a resource definition, including its creation time and latest version.
"""
GetResourceDefinition(ResourceDefinitionId) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId")

"""
Lists the versions of a Lambda function definition.
"""
ListFunctionDefinitionVersions(FunctionDefinitionId) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId/versions")

"""
Retrieves information about a subscription definition version.
"""
GetSubscriptionDefinitionVersion(SubscriptionDefinitionId, SubscriptionDefinitionVersionId) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions/$SubscriptionDefinitionVersionId")

"""
Returns a history of deployments for the group.
"""
ListDeployments(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/deployments")

"""
Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
"""
CreateConnectorDefinition() = greengrass("POST", "/greengrass/definition/connectors")

"""
Retrieves information about a logger definition.
"""
GetLoggerDefinition(LoggerDefinitionId) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId")

"""
Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
"""
CreateDeployment(GroupId, DeploymentType) = greengrass("POST", "/greengrass/groups/$GroupId/deployments")

"""
Disassociates the role from a group.
"""
DisassociateRoleFromGroup(GroupId) = greengrass("DELETE", "/greengrass/groups/$GroupId/role")

"""
Lists the versions of a core definition.
"""
ListCoreDefinitionVersions(CoreDefinitionId) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId/versions")

"""
Lists the versions of a resource definition.
"""
ListResourceDefinitionVersions(ResourceDefinitionId) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId/versions")

"""
Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
"""
StopBulkDeployment(BulkDeploymentId) = greengrass("PUT", "/greengrass/bulk/deployments/$BulkDeploymentId/$stop")

"""
Retrieves information about a subscription definition.
"""
GetSubscriptionDefinition(SubscriptionDefinitionId) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId")

"""
Retrieves a list of subscription definitions.
"""
ListSubscriptionDefinitions() = greengrass("GET", "/greengrass/definition/subscriptions")

"""
Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
"""
CreateCoreDefinition() = greengrass("POST", "/greengrass/definition/cores")

"""
Retrieves a list of logger definitions.
"""
ListLoggerDefinitions() = greengrass("GET", "/greengrass/definition/loggers")

"""
Remove resource tags from a Greengrass Resource.
"""
UntagResource(TagKeys, ResourceArn) = greengrass("DELETE", "/tags/$resource-arn")

"""
Retrieves information about a device definition.
"""
GetDeviceDefinition(DeviceDefinitionId) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId")

"""
Creates a version of a logger definition that has already been defined.
"""
CreateLoggerDefinitionVersion(LoggerDefinitionId) = greengrass("POST", "/greengrass/definition/loggers/$LoggerDefinitionId/versions")

"""
Lists the versions of a device definition.
"""
ListDeviceDefinitionVersions(DeviceDefinitionId) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId/versions")

"""
Creates a version of a resource definition that has already been defined.
"""
CreateResourceDefinitionVersion(ResourceDefinitionId) = greengrass("POST", "/greengrass/definition/resources/$ResourceDefinitionId/versions")

"""
Retrieves the service role that is attached to your account.
"""
GetServiceRoleForAccount() = greengrass("GET", "/greengrass/servicerole")

"""
Retrieves information about a logger definition version.
"""
GetLoggerDefinitionVersion(LoggerDefinitionVersionId, LoggerDefinitionId) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId/versions/$LoggerDefinitionVersionId")

"""
Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
"""
CreateGroup() = greengrass("POST", "/greengrass/groups")

"""
Deletes a connector definition.
"""
DeleteConnectorDefinition(ConnectorDefinitionId) = greengrass("DELETE", "/greengrass/definition/connectors/$ConnectorDefinitionId")

"""
Lists the versions of a logger definition.
"""
ListLoggerDefinitionVersions(LoggerDefinitionId) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId/versions")

"""
Lists the versions of a group.
"""
ListGroupVersions(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/versions")

"""
Creates a version of a group which has already been defined.
"""
CreateGroupVersion(GroupId) = greengrass("POST", "/greengrass/groups/$GroupId/versions")

"""
Retrieves information about a connector definition.
"""
GetConnectorDefinition(ConnectorDefinitionId) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId")

"""
Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
"""
AssociateServiceRoleToAccount(RoleArn) = greengrass("PUT", "/greengrass/servicerole")

"""
Retrieves the role associated with a particular group.
"""
GetAssociatedRole(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/role")

"""
Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.
"""
StartBulkDeployment(ExecutionRoleArn, InputFileUri) = greengrass("POST", "/greengrass/bulk/deployments")

"""
Updates a device definition.
"""
UpdateDeviceDefinition(DeviceDefinitionId) = greengrass("PUT", "/greengrass/definition/devices/$DeviceDefinitionId")

"""
Retrieves a list of resource tags for a resource arn.
"""
ListTagsForResource(ResourceArn) = greengrass("GET", "/tags/$resource-arn")

"""
Retrieves information about a group version.
"""
GetGroupVersion(GroupVersionId, GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/versions/$GroupVersionId")

"""
Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
"""
ListBulkDeploymentDetailedReports(BulkDeploymentId) = greengrass("GET", "/greengrass/bulk/deployments/$BulkDeploymentId/detailed-reports")

"""
Retrieves information about a core definition version.
"""
GetCoreDefinition(CoreDefinitionId) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId")

"""
Retrieves the current CAs for a group.
"""
ListGroupCertificateAuthorities(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities")

"""
Retrieves the current configuration for the CA used by the group.
"""
GetGroupCertificateConfiguration(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities/configuration/expiry")

"""
Returns the status of a bulk deployment.
"""
GetBulkDeploymentStatus(BulkDeploymentId) = greengrass("GET", "/greengrass/bulk/deployments/$BulkDeploymentId/status")

"""
Deletes a device definition.
"""
DeleteDeviceDefinition(DeviceDefinitionId) = greengrass("DELETE", "/greengrass/definition/devices/$DeviceDefinitionId")

"""
Retrieves information about a resource definition version, including which resources are included in the version.
"""
GetResourceDefinitionVersion(ResourceDefinitionVersionId, ResourceDefinitionId) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId/versions/$ResourceDefinitionVersionId")

"""
Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
"""
AssociateRoleToGroup(GroupId, RoleArn) = greengrass("PUT", "/greengrass/groups/$GroupId/role")

"""
Updates a subscription definition.
"""
UpdateSubscriptionDefinition(SubscriptionDefinitionId) = greengrass("PUT", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId")

"""
Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
"""
ListConnectorDefinitionVersions(ConnectorDefinitionId) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions")

"""
Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
"""
CreateResourceDefinition() = greengrass("POST", "/greengrass/definition/resources")

"""
Deletes a logger definition.
"""
DeleteLoggerDefinition(LoggerDefinitionId) = greengrass("DELETE", "/greengrass/definition/loggers/$LoggerDefinitionId")

"""
Creates a version of a subscription definition which has already been defined.
"""
CreateSubscriptionDefinitionVersion(SubscriptionDefinitionId) = greengrass("POST", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions")

"""
Deletes a subscription definition.
"""
DeleteSubscriptionDefinition(SubscriptionDefinitionId) = greengrass("DELETE", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId")

"""
Retrieves information about a Lambda function definition, including its creation time and latest version.
"""
GetFunctionDefinition(FunctionDefinitionId) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId")

"""
Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
"""
CreateLoggerDefinition() = greengrass("POST", "/greengrass/definition/loggers")

"""
Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
"""
CreateDeviceDefinition() = greengrass("POST", "/greengrass/definition/devices")

"""
Retrieves a list of core definitions.
"""
ListCoreDefinitions() = greengrass("GET", "/greengrass/definition/cores")

"""
Updates a core definition.
"""
UpdateCoreDefinition(CoreDefinitionId) = greengrass("PUT", "/greengrass/definition/cores/$CoreDefinitionId")

"""
Retrieves a list of groups.
"""
ListGroups() = greengrass("GET", "/greengrass/groups")

"""
Returns the status of a deployment.
"""
GetDeploymentStatus(GroupId, DeploymentId) = greengrass("GET", "/greengrass/groups/$GroupId/deployments/$DeploymentId/status")

"""
Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
"""
UpdateConnectivityInfo(ThingName) = greengrass("PUT", "/greengrass/things/$ThingName/connectivityInfo")

"""
Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
"""
CreateGroupCertificateAuthority(GroupId) = greengrass("POST", "/greengrass/groups/$GroupId/certificateauthorities")

"""
Retrieves information about a core definition version.
"""
GetCoreDefinitionVersion(CoreDefinitionId, CoreDefinitionVersionId) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId/versions/$CoreDefinitionVersionId")

"""
Updates a connector definition.
"""
UpdateConnectorDefinition(ConnectorDefinitionId) = greengrass("PUT", "/greengrass/definition/connectors/$ConnectorDefinitionId")

"""
Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
"""
CreateSubscriptionDefinition() = greengrass("POST", "/greengrass/definition/subscriptions")

"""
Deletes a Lambda function definition.
"""
DeleteFunctionDefinition(FunctionDefinitionId) = greengrass("DELETE", "/greengrass/definition/functions/$FunctionDefinitionId")

"""
Resets a group's deployments.
"""
ResetDeployments(GroupId) = greengrass("POST", "/greengrass/groups/$GroupId/deployments/$reset")

"""
Retreives the CA associated with a group. Returns the public key of the CA.
"""
GetGroupCertificateAuthority(CertificateAuthorityId, GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities/$CertificateAuthorityId")

"""
Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
"""
GetFunctionDefinitionVersion(FunctionDefinitionId, FunctionDefinitionVersionId) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId/versions/$FunctionDefinitionVersionId")

"""
Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
"""
CreateCoreDefinitionVersion(CoreDefinitionId) = greengrass("POST", "/greengrass/definition/cores/$CoreDefinitionId/versions")

"""
Creates a version of a Lambda function definition that has already been defined.
"""
CreateFunctionDefinitionVersion(FunctionDefinitionId) = greengrass("POST", "/greengrass/definition/functions/$FunctionDefinitionId/versions")

"""
Retrieves a list of device definitions.
"""
ListDeviceDefinitions() = greengrass("GET", "/greengrass/definition/devices")

"""
Creates a version of a device definition that has already been defined.
"""
CreateDeviceDefinitionVersion(DeviceDefinitionId) = greengrass("POST", "/greengrass/definition/devices/$DeviceDefinitionId/versions")

"""
Retrieves a list of Lambda function definitions.
"""
ListFunctionDefinitions() = greengrass("GET", "/greengrass/definition/functions")

"""
Retrieves a list of connector definitions.
"""
ListConnectorDefinitions() = greengrass("GET", "/greengrass/definition/connectors")

"""
Updates the Certificate expiry time for a group.
"""
UpdateGroupCertificateConfiguration(GroupId) = greengrass("PUT", "/greengrass/groups/$GroupId/certificateauthorities/configuration/expiry")

"""
Deletes a resource definition.
"""
DeleteResourceDefinition(ResourceDefinitionId) = greengrass("DELETE", "/greengrass/definition/resources/$ResourceDefinitionId")

"""
Retrieves the connectivity information for a core.
"""
GetConnectivityInfo(ThingName) = greengrass("GET", "/greengrass/things/$ThingName/connectivityInfo")

"""
Returns a list of bulk deployments.
"""
ListBulkDeployments() = greengrass("GET", "/greengrass/bulk/deployments")

"""
Retrieves a list of resource definitions.
"""
ListResourceDefinitions() = greengrass("GET", "/greengrass/definition/resources")

"""
Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
"""
CreateSoftwareUpdateJob(S3UrlSignerRole, UpdateTargetsArchitecture, SoftwareToUpdate, UpdateTargets, UpdateTargetsOperatingSystem) = greengrass("POST", "/greengrass/updates")

"""
Updates a group.
"""
UpdateGroup(GroupId) = greengrass("PUT", "/greengrass/groups/$GroupId")

"""
Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
"""
CreateFunctionDefinition() = greengrass("POST", "/greengrass/definition/functions")

"""
Creates a version of a connector definition which has already been defined.
"""
CreateConnectorDefinitionVersion(ConnectorDefinitionId) = greengrass("POST", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions")
end
