module aws_apigatewayv2
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: apigatewayv2

"""
Creates a Stage for an API.
"""
CreateStage(ApiId, StageName) = apigatewayv2("POST", "/v2/apis/$apiId/stages")

"""
Deletes a Stage.
"""
DeleteStage(StageName, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/stages/$stageName")

"""
Creates an Api resource.
"""
CreateApi(ProtocolType, Name) = apigatewayv2("POST", "/v2/apis")

"""
Creates a domain name.
"""
CreateDomainName(DomainName) = apigatewayv2("POST", "/v2/domainnames")

"""
Gets a Model.
"""
GetModel(ModelId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/models/$modelId")

"""
Gets a Stage.
"""
GetStage(StageName, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/stages/$stageName")

"""
Creates a new Tag resource to represent a tag.
"""
TagResource(ResourceArn) = apigatewayv2("POST", "/v2/tags/$resource-arn")

"""
Updates a domain name.
"""
UpdateDomainName(DomainName) = apigatewayv2("PATCH", "/v2/domainnames/$domainName")

"""
Gets an Authorizer.
"""
GetAuthorizer(AuthorizerId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/authorizers/$authorizerId")

"""
Gets the Models for an API.
"""
GetModels(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/models")

"""
Deletes an IntegrationResponses.
"""
DeleteIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId) = apigatewayv2("DELETE", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId")

"""
Updates an Authorizer.
"""
UpdateAuthorizer(AuthorizerId, ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId/authorizers/$authorizerId")

"""
Creates a Route for an API.
"""
CreateRoute(ApiId, RouteKey) = apigatewayv2("POST", "/v2/apis/$apiId/routes")

"""
Creates an Integration.
"""
CreateIntegration(ApiId, IntegrationType) = apigatewayv2("POST", "/v2/apis/$apiId/integrations")

"""
Deletes the RouteSettings for a stage.
"""
DeleteRouteSettings(StageName, RouteKey, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/stages/$stageName/routesettings/$routeKey")

"""
Gets the Integrations for an API.
"""
GetIntegrations(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations")

"""
Gets the Routes for an API.
"""
GetRoutes(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/routes")

"""
The API mapping.
"""
UpdateApiMapping(ApiMappingId, ApiId, DomainName) = apigatewayv2("PATCH", "/v2/domainnames/$domainName/apimappings/$apiMappingId")

"""
Gets a Deployment.
"""
GetDeployment(ApiId, DeploymentId) = apigatewayv2("GET", "/v2/apis/$apiId/deployments/$deploymentId")

"""
Creates a Deployment for an API.
"""
CreateDeployment(ApiId) = apigatewayv2("POST", "/v2/apis/$apiId/deployments")

"""
Deletes an API mapping.
"""
DeleteApiMapping(ApiMappingId, DomainName) = apigatewayv2("DELETE", "/v2/domainnames/$domainName/apimappings/$apiMappingId")

"""
Gets the Authorizers for an API.
"""
GetAuthorizers(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/authorizers")

"""
Deletes a domain name.
"""
DeleteDomainName(DomainName) = apigatewayv2("DELETE", "/v2/domainnames/$domainName")

"""
Gets the domain names for an AWS account.
"""
GetDomainNames() = apigatewayv2("GET", "/v2/domainnames")

"""
Deletes a Tag.
"""
UntagResource(ResourceArn, TagKeys) = apigatewayv2("DELETE", "/v2/tags/$resource-arn")

"""
Creates a Model for an API.
"""
CreateModel(ApiId, Schema, Name) = apigatewayv2("POST", "/v2/apis/$apiId/models")

"""
Deletes a RouteResponse.
"""
DeleteRouteResponse(RouteResponseId, ApiId, RouteId) = apigatewayv2("DELETE", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId")

"""
Updates a Stage.
"""
UpdateStage(StageName, ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId/stages/$stageName")

"""
Updates an Api resource.
"""
UpdateApi(ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId")

"""
Updates a RouteResponse.
"""
UpdateRouteResponse(RouteResponseId, ApiId, RouteId) = apigatewayv2("PATCH", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId")

"""
Updates an IntegrationResponses.
"""
UpdateIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId) = apigatewayv2("PATCH", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId")

"""
Deletes a Deployment.
"""
DeleteDeployment(ApiId, DeploymentId) = apigatewayv2("DELETE", "/v2/apis/$apiId/deployments/$deploymentId")

"""
Imports an API.
"""
ImportApi(Body) = apigatewayv2("PUT", "/v2/apis")

"""
Gets an API mapping.
"""
GetApiMapping(ApiMappingId, DomainName) = apigatewayv2("GET", "/v2/domainnames/$domainName/apimappings/$apiMappingId")

"""
Gets the Deployments for an API.
"""
GetDeployments(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/deployments")

"""
Gets an IntegrationResponses.
"""
GetIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId")

"""
Gets the RouteResponses for a Route.
"""
GetRouteResponses(RouteId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId/routeresponses")

"""
Gets a collection of Tag resources.
"""
GetTags(ResourceArn) = apigatewayv2("GET", "/v2/tags/$resource-arn")

"""
Gets an Integration.
"""
GetIntegration(ApiId, IntegrationId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId")

"""
Gets an Api resource.
"""
GetApi(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId")

"""
Gets the Stages for an API.
"""
GetStages(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/stages")

"""
Creates an Authorizer for an API.
"""
CreateAuthorizer(ApiId, AuthorizerType, IdentitySource, Name) = apigatewayv2("POST", "/v2/apis/$apiId/authorizers")

"""
Gets a collection of Api resources.
"""
GetApis() = apigatewayv2("GET", "/v2/apis")

"""
Deletes a Route.
"""
DeleteRoute(ApiId, RouteId) = apigatewayv2("DELETE", "/v2/apis/$apiId/routes/$routeId")

"""
Creates a RouteResponse for a Route.
"""
CreateRouteResponse(ApiId, RouteId, RouteResponseKey) = apigatewayv2("POST", "/v2/apis/$apiId/routes/$routeId/routeresponses")

"""
Updates a Route.
"""
UpdateRoute(ApiId, RouteId) = apigatewayv2("PATCH", "/v2/apis/$apiId/routes/$routeId")

"""
Gets a model template.
"""
GetModelTemplate(ModelId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/models/$modelId/template")

"""
Updates a Deployment.
"""
UpdateDeployment(ApiId, DeploymentId) = apigatewayv2("PATCH", "/v2/apis/$apiId/deployments/$deploymentId")

"""
Gets the IntegrationResponses for an Integration.
"""
GetIntegrationResponses(IntegrationId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses")

"""
Gets a RouteResponse.
"""
GetRouteResponse(RouteResponseId, ApiId, RouteId) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId")

"""
Gets API mappings.
"""
GetApiMappings(DomainName) = apigatewayv2("GET", "/v2/domainnames/$domainName/apimappings")

"""
Gets a Route.
"""
GetRoute(ApiId, RouteId) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId")

"""
Gets a domain name.
"""
GetDomainName(DomainName) = apigatewayv2("GET", "/v2/domainnames/$domainName")

"""
Deletes an Integration.
"""
DeleteIntegration(ApiId, IntegrationId) = apigatewayv2("DELETE", "/v2/apis/$apiId/integrations/$integrationId")

"""
Deletes a Model.
"""
DeleteModel(ModelId, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/models/$modelId")

"""
Creates an API mapping.
"""
CreateApiMapping(DomainName, Stage, ApiId) = apigatewayv2("POST", "/v2/domainnames/$domainName/apimappings")

"""
Updates a Model.
"""
UpdateModel(ModelId, ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId/models/$modelId")

"""
Deletes an Api resource.
"""
DeleteApi(ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId")

"""
Updates an Integration.
"""
UpdateIntegration(ApiId, IntegrationId) = apigatewayv2("PATCH", "/v2/apis/$apiId/integrations/$integrationId")

"""
Creates an IntegrationResponses.
"""
CreateIntegrationResponse(ApiId, IntegrationId, IntegrationResponseKey) = apigatewayv2("POST", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses")

"""
Puts an Api resource.
"""
ReimportApi(ApiId, Body) = apigatewayv2("PUT", "/v2/apis/$apiId")

"""
Deletes a CORS configuration.
"""
DeleteCorsConfiguration(ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/cors")

"""
Deletes an Authorizer.
"""
DeleteAuthorizer(AuthorizerId, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/authorizers/$authorizerId")
end
