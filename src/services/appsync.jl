module aws_appsync
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: appsync

"""
Lists the tags for a resource.
"""
ListTagsForResource(resourceArn) = appsync("GET", "/v1/tags/$resourceArn")

"""
Updates a Function object.
"""
UpdateFunction(apiId, name, functionId, dataSourceName, requestMappingTemplate, functionVersion) = appsync("POST", "/v1/apis/$apiId/functions/$functionId")

"""
Get a Function.
"""
GetFunction(apiId, functionId) = appsync("GET", "/v1/apis/$apiId/functions/$functionId")

"""
Retrieves a GraphqlApi object.
"""
GetGraphqlApi(apiId) = appsync("GET", "/v1/apis/$apiId")

"""
Deletes a Resolver object.
"""
DeleteResolver(apiId, typeName, fieldName) = appsync("DELETE", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName")

"""
Flushes an ApiCache object.
"""
FlushApiCache(apiId) = appsync("DELETE", "/v1/apis/$apiId/FlushCache")

"""
Lists the types for a given API.
"""
ListTypes(apiId, format) = appsync("GET", "/v1/apis/$apiId/types")

"""
Deletes a DataSource object.
"""
DeleteDataSource(apiId, name) = appsync("DELETE", "/v1/apis/$apiId/datasources/$name")

"""
Deletes a GraphqlApi object.
"""
DeleteGraphqlApi(apiId) = appsync("DELETE", "/v1/apis/$apiId")

"""
Updates a Resolver object.
"""
UpdateResolver(apiId, typeName, fieldName, requestMappingTemplate) = appsync("POST", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName")

"""
Creates a unique key that you can distribute to clients who are executing your API.
"""
CreateApiKey(apiId) = appsync("POST", "/v1/apis/$apiId/apikeys")

"""
Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
"""
CreateFunction(apiId, name, dataSourceName, requestMappingTemplate, functionVersion) = appsync("POST", "/v1/apis/$apiId/functions")

"""
Creates a Type object.
"""
CreateType(apiId, definition, format) = appsync("POST", "/v1/apis/$apiId/types")

"""
Retrieves a DataSource object.
"""
GetDataSource(apiId, name) = appsync("GET", "/v1/apis/$apiId/datasources/$name")

"""
Deletes an ApiCache object.
"""
DeleteApiCache(apiId) = appsync("DELETE", "/v1/apis/$apiId/ApiCaches")

"""
Retrieves a Resolver object.
"""
GetResolver(apiId, typeName, fieldName) = appsync("GET", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName")

"""
Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 
"""
ListApiKeys(apiId) = appsync("GET", "/v1/apis/$apiId/apikeys")

"""
Retrieves an ApiCache object.
"""
GetApiCache(apiId) = appsync("GET", "/v1/apis/$apiId/ApiCaches")

"""
Lists the resolvers for a given API and type.
"""
ListResolvers(apiId, typeName) = appsync("GET", "/v1/apis/$apiId/types/$typeName/resolvers")

"""
Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
"""
StartSchemaCreation(apiId, definition) = appsync("POST", "/v1/apis/$apiId/schemacreation")

"""
Deletes a Type object.
"""
DeleteType(apiId, typeName) = appsync("DELETE", "/v1/apis/$apiId/types/$typeName")

"""
Lists the data sources for a given API.
"""
ListDataSources(apiId) = appsync("GET", "/v1/apis/$apiId/datasources")

"""
Tags a resource with user-supplied tags.
"""
TagResource(resourceArn, tags) = appsync("POST", "/v1/tags/$resourceArn")

"""
Untags a resource.
"""
UntagResource(resourceArn, tagKeys) = appsync("DELETE", "/v1/tags/$resourceArn")

"""
Updates an API key.
"""
UpdateApiKey(apiId, id) = appsync("POST", "/v1/apis/$apiId/apikeys/$id")

"""
Updates a GraphqlApi object.
"""
UpdateGraphqlApi(apiId, name) = appsync("POST", "/v1/apis/$apiId")

"""
Creates a cache for the GraphQL API.
"""
CreateApiCache(apiId, ttl, apiCachingBehavior, type) = appsync("POST", "/v1/apis/$apiId/ApiCaches")

"""
Retrieves the current status of a schema creation operation.
"""
GetSchemaCreationStatus(apiId) = appsync("GET", "/v1/apis/$apiId/schemacreation")

"""
Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
"""
CreateResolver(apiId, typeName, fieldName, requestMappingTemplate) = appsync("POST", "/v1/apis/$apiId/types/$typeName/resolvers")

"""
Creates a DataSource object.
"""
CreateDataSource(apiId, name, type) = appsync("POST", "/v1/apis/$apiId/datasources")

"""
Retrieves the introspection schema for a GraphQL API.
"""
GetIntrospectionSchema(apiId, format) = appsync("GET", "/v1/apis/$apiId/schema")

"""
List multiple functions.
"""
ListFunctions(apiId) = appsync("GET", "/v1/apis/$apiId/functions")

"""
Deletes an API key.
"""
DeleteApiKey(apiId, id) = appsync("DELETE", "/v1/apis/$apiId/apikeys/$id")

"""
Deletes a Function.
"""
DeleteFunction(apiId, functionId) = appsync("DELETE", "/v1/apis/$apiId/functions/$functionId")

"""
List the resolvers that are associated with a specific function.
"""
ListResolversByFunction(apiId, functionId) = appsync("GET", "/v1/apis/$apiId/functions/$functionId/resolvers")

"""
Updates the cache for the GraphQL API.
"""
UpdateApiCache(apiId, ttl, apiCachingBehavior, type) = appsync("POST", "/v1/apis/$apiId/ApiCaches/update")

"""
Lists your GraphQL APIs.
"""
ListGraphqlApis() = appsync("GET", "/v1/apis")

"""
Retrieves a Type object.
"""
GetType(apiId, typeName, format) = appsync("GET", "/v1/apis/$apiId/types/$typeName")

"""
Creates a GraphqlApi object.
"""
CreateGraphqlApi(name, authenticationType) = appsync("POST", "/v1/apis")

"""
Updates a DataSource object.
"""
UpdateDataSource(apiId, name, type) = appsync("POST", "/v1/apis/$apiId/datasources/$name")

"""
Updates a Type object.
"""
UpdateType(apiId, typeName, format) = appsync("POST", "/v1/apis/$apiId/types/$typeName")
end
