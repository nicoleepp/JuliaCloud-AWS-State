module aws_schemas
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: schemas

"""
Get tags for resource.
"""
ListTagsForResource(ResourceArn) = schemas("GET", "/tags/$resource-arn")

"""
Delete a schema definition.
"""
DeleteSchema(RegistryName, SchemaName) = schemas("DELETE", "/v1/registries/name/$registryName/schemas/name/$schemaName")

"""
Deletes a Registry.
"""
DeleteRegistry(RegistryName) = schemas("DELETE", "/v1/registries/name/$registryName")

"""
Get the discovered schema that was generated based on sampled events.
"""
GetDiscoveredSchema(Type, Events) = schemas("POST", "/v1/discover")

"""
Search the schemas
"""
SearchSchemas(RegistryName, Keywords) = schemas("GET", "/v1/registries/name/$registryName/schemas/search")

"""

"""
UnlockServiceLinkedRole(RoleArn) = schemas("POST", "/slr-deletion/unlock")

"""
List the discoverers.
"""
ListDiscoverers() = schemas("GET", "/v1/discoverers")

"""
Creates a registry.
"""
CreateRegistry(RegistryName) = schemas("POST", "/v1/registries/name/$registryName")

"""
List the registries.
"""
ListRegistries() = schemas("GET", "/v1/registries")

"""
Describe the code binding URI.
"""
DescribeCodeBinding(RegistryName, SchemaName, Language) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language")

"""
Delete the schema version definition
"""
DeleteSchemaVersion(SchemaVersion, RegistryName, SchemaName) = schemas("DELETE", "/v1/registries/name/$registryName/schemas/name/$schemaName/version/$schemaVersion")

"""

"""
LockServiceLinkedRole(Timeout, RoleArn) = schemas("POST", "/slr-deletion/lock")

"""
Creates a discoverer.
"""
CreateDiscoverer(SourceArn) = schemas("POST", "/v1/discoverers")

"""
Describes the registry.
"""
DescribeRegistry(RegistryName) = schemas("GET", "/v1/registries/name/$registryName")

"""
Updates the discoverer
"""
UpdateDiscoverer(DiscovererId) = schemas("PUT", "/v1/discoverers/id/$discovererId")

"""
Provides a list of the schema versions and related information.
"""
ListSchemaVersions(RegistryName, SchemaName) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/versions")

"""
Get the code binding source URI.
"""
GetCodeBindingSource(RegistryName, SchemaName, Language) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language/source")

"""
Retrieve the schema definition.
"""
DescribeSchema(RegistryName, SchemaName) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName")

"""
Add tags to a resource.
"""
TagResource(ResourceArn, Tags) = schemas("POST", "/tags/$resource-arn")

"""
Removes tags from a resource.
"""
UntagResource(TagKeys, ResourceArn) = schemas("DELETE", "/tags/$resource-arn")

"""
Updates the schema definition
"""
UpdateSchema(RegistryName, SchemaName) = schemas("PUT", "/v1/registries/name/$registryName/schemas/name/$schemaName")

"""
Put code binding URI
"""
PutCodeBinding(RegistryName, SchemaName, Language) = schemas("POST", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language")

"""
Creates a schema definition.
"""
CreateSchema(RegistryName, SchemaName, Type, Content) = schemas("POST", "/v1/registries/name/$registryName/schemas/name/$schemaName")

"""
Deletes a discoverer.
"""
DeleteDiscoverer(DiscovererId) = schemas("DELETE", "/v1/discoverers/id/$discovererId")

"""
Describes the discoverer.
"""
DescribeDiscoverer(DiscovererId) = schemas("GET", "/v1/discoverers/id/$discovererId")

"""
List the schemas.
"""
ListSchemas(RegistryName) = schemas("GET", "/v1/registries/name/$registryName/schemas")

"""
Starts the discoverer
"""
StartDiscoverer(DiscovererId) = schemas("POST", "/v1/discoverers/id/$discovererId/start")

"""
Updates a registry.
"""
UpdateRegistry(RegistryName) = schemas("PUT", "/v1/registries/name/$registryName")

"""
Stops the discoverer
"""
StopDiscoverer(DiscovererId) = schemas("POST", "/v1/discoverers/id/$discovererId/stop")
end
