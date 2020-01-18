module aws_api_gateway
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: api_gateway

"""
Creates a new Stage resource that references a pre-existing Deployment for the API. 
"""
CreateStage(restApiId, stageName, deploymentId) = api_gateway("POST", "/restapis/$restapi_id/stages")

"""
Lists the RestApi resource in the collection.
"""
GetRestApi(restApiId) = api_gateway("GET", "/restapis/$restapi_id")

"""
Add a method to an existing Resource resource.
"""
PutMethod(restApiId, resourceId, httpMethod, authorizationType) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")

"""

"""
UpdateDocumentationPart(restApiId, documentationPartId) = api_gateway("PATCH", "/restapis/$restapi_id/documentation/parts/$part_id")

"""
Deletes a Stage resource.
"""
DeleteStage(restApiId, stageName) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name")

"""
Import API keys from an external source, such as a CSV-formatted file.
"""
ImportApiKeys(body, format) = api_gateway("POST", "/apikeys?mode=import")

"""
Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
"""
UpdateUsage(usagePlanId, keyId) = api_gateway("PATCH", "/usageplans/$usageplanId/keys/$keyId/usage")

"""
Creates a new RestApi resource.
"""
CreateRestApi(name) = api_gateway("POST", "/restapis")

"""
Updates an existing VpcLink of a specified identifier.
"""
UpdateVpcLink(vpcLinkId) = api_gateway("PATCH", "/vpclinks/$vpclink_id")

"""
Creates a new domain name.
"""
CreateDomainName(domainName) = api_gateway("POST", "/domainnames")

"""
Describes an existing model defined for a RestApi resource.
"""
GetModel(restApiId, modelName) = api_gateway("GET", "/restapis/$restapi_id/models/$model_name")

"""
Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
"""
CreateVpcLink(name, targetArns) = api_gateway("POST", "/vpclinks")

"""
Gets information about a Stage resource.
"""
GetStage(restApiId, stageName) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name")

"""
Updates an existing Method resource.
"""
UpdateMethod(restApiId, resourceId, httpMethod) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")

"""
Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
"""
GetGatewayResponses(restApiId) = api_gateway("GET", "/restapis/$restapi_id/gatewayresponses")

"""
Gets a usage plan of a given plan identifier.
"""
GetUsagePlan(usagePlanId) = api_gateway("GET", "/usageplans/$usageplanId")

"""
Describe an existing Authorizer resource. AWS CLI
"""
GetAuthorizer(restApiId, authorizerId) = api_gateway("GET", "/restapis/$restapi_id/authorizers/$authorizer_id")

"""

"""
GetDocumentationPart(restApiId, documentationPartId) = api_gateway("GET", "/restapis/$restapi_id/documentation/parts/$part_id")

"""
Describes existing Models defined for a RestApi resource.
"""
GetModels(restApiId) = api_gateway("GET", "/restapis/$restapi_id/models")

"""
Adds or updates a tag on a given resource.
"""
TagResource(resourceArn, tags) = api_gateway("PUT", "/tags/$resource_arn")

"""
Represents a delete integration response.
"""
DeleteIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")

"""
Gets information about the current Account resource.
"""
GetAccount() = api_gateway("GET", "/account")

"""

"""
GetSdkTypes() = api_gateway("GET", "/sdktypes")

"""
Changes information about an ApiKey resource.
"""
UpdateApiKey(apiKey) = api_gateway("PATCH", "/apikeys/$api_Key")

"""
Creates a Resource resource.
"""
CreateResource(restApiId, parentId, pathPart) = api_gateway("POST", "/restapis/$restapi_id/resources/$parent_id")

"""
Represents a collection of BasePathMapping resources.
"""
GetBasePathMappings(domainName) = api_gateway("GET", "/domainnames/$domain_name/basepathmappings")

"""
Adds a MethodResponse to an existing Method resource.
"""
PutMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")

"""
Updates an existing Authorizer resource. AWS CLI
"""
UpdateAuthorizer(restApiId, authorizerId) = api_gateway("PATCH", "/restapis/$restapi_id/authorizers/$authorizer_id")

"""

"""
GetDocumentationVersions(restApiId) = api_gateway("GET", "/restapis/$restapi_id/documentation/versions")

"""
Changes information about the DomainName resource.
"""
UpdateDomainName(domainName) = api_gateway("PATCH", "/domainnames/$domain_name")

"""

"""
GetDocumentationParts(restApiId) = api_gateway("GET", "/restapis/$restapi_id/documentation/parts")

"""

"""
CreateDocumentationPart(restApiId, location, properties) = api_gateway("POST", "/restapis/$restapi_id/documentation/parts")

"""
Deletes the ApiKey resource.
"""
DeleteApiKey(apiKey) = api_gateway("DELETE", "/apikeys/$api_Key")

"""
Deletes an existing MethodResponse resource.
"""
DeleteMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")

"""
Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
"""
PutGatewayResponse(restApiId, responseType) = api_gateway("PUT", "/restapis/$restapi_id/gatewayresponses/$response_type")

"""
Gets information about a Deployment resource.
"""
GetDeployment(restApiId, deploymentId) = api_gateway("GET", "/restapis/$restapi_id/deployments/$deployment_id")

"""
Creates a Deployment resource, which makes a specified RestApi callable over the internet.
"""
CreateDeployment(restApiId) = api_gateway("POST", "/restapis/$restapi_id/deployments")

"""
Updates a usage plan of a given plan Id.
"""
UpdateUsagePlan(usagePlanId) = api_gateway("PATCH", "/usageplans/$usageplanId")

"""
Gets all the usage plans of the caller's account.
"""
GetUsagePlans() = api_gateway("GET", "/usageplans")

"""
Deletes an existing Method resource.
"""
DeleteMethod(restApiId, resourceId, httpMethod) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")

"""
Deletes a Resource resource.
"""
DeleteResource(restApiId, resourceId) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id")

"""
Describe an existing Authorizers resource. AWS CLI
"""
GetAuthorizers(restApiId) = api_gateway("GET", "/restapis/$restapi_id/authorizers")

"""
Deletes the DomainName resource.
"""
DeleteDomainName(domainName) = api_gateway("DELETE", "/domainnames/$domain_name")

"""
Represents a collection of DomainName resources.
"""
GetDomainNames() = api_gateway("GET", "/domainnames")

"""
Changes information about the current Account resource.
"""
UpdateAccount() = api_gateway("PATCH", "/account")

"""
Flushes all authorizer cache entries on a stage.
"""
FlushStageAuthorizersCache(restApiId, stageName) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name/cache/authorizers")

"""
Deletes an existing VpcLink of a specified identifier.
"""
DeleteVpcLink(vpcLinkId) = api_gateway("DELETE", "/vpclinks/$vpclink_id")

"""
Removes a tag from a given resource.
"""
UntagResource(resourceArn, tagKeys) = api_gateway("DELETE", "/tags/$resource_arn")

"""
Adds a new Model resource to an existing RestApi resource.
"""
CreateModel(restApiId, name, contentType) = api_gateway("POST", "/restapis/$restapi_id/models")

"""
Gets a collection of ClientCertificate resources.
"""
GetClientCertificates() = api_gateway("GET", "/clientcertificates")

"""
Deletes a RequestValidator of a given RestApi.
"""
DeleteRequestValidator(restApiId, requestValidatorId) = api_gateway("DELETE", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id")

"""
Changes information about the specified API.
"""
UpdateRestApi(restApiId) = api_gateway("PATCH", "/restapis/$restapi_id")

"""
Creates a usage plan key for adding an existing API key to a usage plan.
"""
CreateUsagePlanKey(usagePlanId, keyId, keyType) = api_gateway("POST", "/usageplans/$usageplanId/keys")

"""
A feature of the API Gateway control service for creating a new API from an external API definition file.
"""
ImportRestApi(body) = api_gateway("POST", "/restapis?mode=import")

"""
Changes information about a Stage resource.
"""
UpdateStage(restApiId, stageName) = api_gateway("PATCH", "/restapis/$restapi_id/stages/$stage_name")

"""
Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. 
"""
CreateUsagePlan(name) = api_gateway("POST", "/usageplans")

"""
Gets a specified VPC link under the caller's account in a region.
"""
GetVpcLink(vpcLinkId) = api_gateway("GET", "/vpclinks/$vpclink_id")

"""
Exports a deployed version of a RestApi in a specified format.
"""
GetExport(restApiId, stageName, exportType) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name/exports/$export_type")

"""
Gets the VpcLinks collection under the caller's account in a selected region.
"""
GetVpcLinks() = api_gateway("GET", "/vpclinks")

"""
Describe an existing Method resource.
"""
GetMethod(restApiId, resourceId, httpMethod) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")

"""
Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.  Use Lambda Function as Authorizer Use Cognito User Pool as Authorizer 
"""
TestInvokeAuthorizer(restApiId, authorizerId) = api_gateway("POST", "/restapis/$restapi_id/authorizers/$authorizer_id")

"""
Represents an update integration response.
"""
UpdateIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")

"""
Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
"""
DeleteDeployment(restApiId, deploymentId) = api_gateway("DELETE", "/restapis/$restapi_id/deployments/$deployment_id")

"""
Lists information about a collection of Resource resources.
"""
GetResources(restApiId) = api_gateway("GET", "/restapis/$restapi_id/resources")

"""
Lists the RestApis resources for your collection.
"""
GetRestApis() = api_gateway("GET", "/restapis")

"""

"""
DeleteDocumentationVersion(restApiId, documentationVersion) = api_gateway("DELETE", "/restapis/$restapi_id/documentation/versions/$doc_version")

"""
Gets information about a Deployments collection.
"""
GetDeployments(restApiId) = api_gateway("GET", "/restapis/$restapi_id/deployments")

"""
Gets the Tags collection for a given resource.
"""
GetTags(resourceArn) = api_gateway("GET", "/tags/$resource_arn")

"""
Represents a get integration response.
"""
GetIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")

"""
Get the integration settings.
"""
GetIntegration(restApiId, resourceId, httpMethod) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")

"""
Gets the usage data of a usage plan in a specified time interval.
"""
GetUsage(usagePlanId, startDate, endDate) = api_gateway("GET", "/usageplans/$usageplanId/usage")

"""

"""
GetSdkType(id) = api_gateway("GET", "/sdktypes/$sdktype_id")

"""
Gets information about the current ClientCertificate resource.
"""
GetClientCertificate(clientCertificateId) = api_gateway("GET", "/clientcertificates/$clientcertificate_id")

"""
Creates a ReqeustValidator of a given RestApi.
"""
CreateRequestValidator(restApiId) = api_gateway("POST", "/restapis/$restapi_id/requestvalidators")

"""
Gets information about one or more Stage resources.
"""
GetStages(restApiId) = api_gateway("GET", "/restapis/$restapi_id/stages")

"""
Gets information about the current ApiKeys resource.
"""
GetApiKeys() = api_gateway("GET", "/apikeys")

"""
Adds a new Authorizer resource to an existing RestApi resource. AWS CLI
"""
CreateAuthorizer(restApiId, name, type) = api_gateway("POST", "/restapis/$restapi_id/authorizers")

"""
Gets a usage plan key of a given key identifier.
"""
GetUsagePlanKey(usagePlanId, keyId) = api_gateway("GET", "/usageplans/$usageplanId/keys/$keyId")

"""
Lists information about a resource.
"""
GetResource(restApiId, resourceId) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id")

"""
Gets a GatewayResponse of a specified response type on the given RestApi.
"""
GetGatewayResponse(restApiId, responseType) = api_gateway("GET", "/restapis/$restapi_id/gatewayresponses/$response_type")

"""

"""
DeleteDocumentationPart(restApiId, documentationPartId) = api_gateway("DELETE", "/restapis/$restapi_id/documentation/parts/$part_id")

"""
Updates an existing MethodResponse resource.
"""
UpdateMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")

"""
Deletes a usage plan of a given plan Id.
"""
DeleteUsagePlan(usagePlanId) = api_gateway("DELETE", "/usageplans/$usageplanId")

"""
Generates a sample mapping template that can be used to transform a payload into the structure of a model.
"""
GetModelTemplate(restApiId, modelName) = api_gateway("GET", "/restapis/$restapi_id/models/$model_name/default_template")

"""
Changes information about an ClientCertificate resource.
"""
UpdateClientCertificate(clientCertificateId) = api_gateway("PATCH", "/clientcertificates/$clientcertificate_id")

"""
Changes information about a Deployment resource.
"""
UpdateDeployment(restApiId, deploymentId) = api_gateway("PATCH", "/restapis/$restapi_id/deployments/$deployment_id")

"""
Generates a ClientCertificate resource.
"""
GenerateClientCertificate() = api_gateway("POST", "/clientcertificates")

"""
Describe a BasePathMapping resource.
"""
GetBasePathMapping(domainName, basePath) = api_gateway("GET", "/domainnames/$domain_name/basepathmappings/$base_path")

"""
Gets information about the current ApiKey resource.
"""
GetApiKey(apiKey) = api_gateway("GET", "/apikeys/$api_Key")

"""
Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
"""
DeleteGatewayResponse(restApiId, responseType) = api_gateway("DELETE", "/restapis/$restapi_id/gatewayresponses/$response_type")

"""

"""
UpdateDocumentationVersion(restApiId, documentationVersion) = api_gateway("PATCH", "/restapis/$restapi_id/documentation/versions/$doc_version")

"""
Deletes the BasePathMapping resource.
"""
DeleteBasePathMapping(domainName, basePath) = api_gateway("DELETE", "/domainnames/$domain_name/basepathmappings/$base_path")

"""
Flushes a stage's cache.
"""
FlushStageCache(restApiId, stageName) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name/cache/data")

"""
A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
"""
PutRestApi(restApiId, body) = api_gateway("PUT", "/restapis/$restapi_id")

"""
Updates a GatewayResponse of a specified response type on the given RestApi.
"""
UpdateGatewayResponse(restApiId, responseType) = api_gateway("PATCH", "/restapis/$restapi_id/gatewayresponses/$response_type")

"""
Gets all the usage plan keys representing the API keys added to a specified usage plan.
"""
GetUsagePlanKeys(usagePlanId) = api_gateway("GET", "/usageplans/$usageplanId/keys")

"""
Create an ApiKey resource.  AWS CLI
"""
CreateApiKey() = api_gateway("POST", "/apikeys")

"""
Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
"""
GetDomainName(domainName) = api_gateway("GET", "/domainnames/$domain_name")

"""
Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body.
"""
TestInvokeMethod(restApiId, resourceId, httpMethod) = api_gateway("POST", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")

"""
Deletes a usage plan key and remove the underlying API key from the associated usage plan.
"""
DeleteUsagePlanKey(usagePlanId, keyId) = api_gateway("DELETE", "/usageplans/$usageplanId/keys/$keyId")

"""
Gets a RequestValidator of a given RestApi.
"""
GetRequestValidator(restApiId, requestValidatorId) = api_gateway("GET", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id")

"""
Represents a delete integration.
"""
DeleteIntegration(restApiId, resourceId, httpMethod) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")

"""
Deletes the specified API.
"""
DeleteRestApi(restApiId) = api_gateway("DELETE", "/restapis/$restapi_id")

"""
Sets up a method's integration.
"""
PutIntegration(restApiId, resourceId, httpMethod, type) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")

"""
Deletes a model.
"""
DeleteModel(restApiId, modelName) = api_gateway("DELETE", "/restapis/$restapi_id/models/$model_name")

"""
Changes information about a model.
"""
UpdateModel(restApiId, modelName) = api_gateway("PATCH", "/restapis/$restapi_id/models/$model_name")

"""
Describes a MethodResponse resource.
"""
GetMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")

"""
Generates a client SDK for a RestApi and Stage.
"""
GetSdk(restApiId, stageName, sdkType) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name/sdks/$sdk_type")

"""
Changes information about the BasePathMapping resource.
"""
UpdateBasePathMapping(domainName, basePath) = api_gateway("PATCH", "/domainnames/$domain_name/basepathmappings/$base_path")

"""
Changes information about a Resource resource.
"""
UpdateResource(restApiId, resourceId) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id")

"""
Updates a RequestValidator of a given RestApi.
"""
UpdateRequestValidator(restApiId, requestValidatorId) = api_gateway("PATCH", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id")

"""
Represents a put integration.
"""
PutIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")

"""
Gets the RequestValidators collection of a given RestApi.
"""
GetRequestValidators(restApiId) = api_gateway("GET", "/restapis/$restapi_id/requestvalidators")

"""

"""
ImportDocumentationParts(restApiId, body) = api_gateway("PUT", "/restapis/$restapi_id/documentation/parts")

"""
Represents an update integration.
"""
UpdateIntegration(restApiId, resourceId, httpMethod) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")

"""

"""
GetDocumentationVersion(restApiId, documentationVersion) = api_gateway("GET", "/restapis/$restapi_id/documentation/versions/$doc_version")

"""

"""
CreateDocumentationVersion(restApiId, documentationVersion) = api_gateway("POST", "/restapis/$restapi_id/documentation/versions")

"""
Creates a new BasePathMapping resource.
"""
CreateBasePathMapping(domainName, restApiId) = api_gateway("POST", "/domainnames/$domain_name/basepathmappings")

"""
Deletes the ClientCertificate resource.
"""
DeleteClientCertificate(clientCertificateId) = api_gateway("DELETE", "/clientcertificates/$clientcertificate_id")

"""
Deletes an existing Authorizer resource. AWS CLI
"""
DeleteAuthorizer(restApiId, authorizerId) = api_gateway("DELETE", "/restapis/$restapi_id/authorizers/$authorizer_id")
end
