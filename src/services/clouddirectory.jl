module aws_clouddirectory
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: clouddirectory

"""
Adds a new Facet to an object. An object can have more than one facet applied on it.
"""
AddFacetToObject(DirectoryArn, SchemaFacet, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets")

"""
Attaches a typed link to a specified source and target object. For more information, see Typed Links.
"""
AttachTypedLink(DirectoryArn, SourceObjectReference, TargetObjectReference, TypedLinkFacet, Attributes) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach")

"""
Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
"""
ListPublishedSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/published")

"""
Retrieves attributes that are associated with a typed link.
"""
GetLinkAttributes(DirectoryArn, TypedLinkSpecifier, AttributeNames) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get")

"""
Performs all the read operations in a batch. 
"""
BatchRead(DirectoryArn, Operations) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/batchread")

"""
An API operation for adding tags to a resource.
"""
TagResource(ResourceArn, Tags) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/add")

"""
Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted. The maximum number of attributes that can be deleted during an object deletion is 30. For more information, see Amazon Cloud Directory Limits.
"""
DeleteObject(DirectoryArn, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/delete")

"""
Returns current applied schema version ARN, including the minor version in use.
"""
GetAppliedSchemaVersion(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema")

"""
Lists indices attached to the specified object.
"""
ListAttachedIndices(DirectoryArn, TargetReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/indices")

"""
Updates the schema name with a new name. Only development schema names can be updated.
"""
UpdateSchema(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/update")

"""
Creates a TypedLinkFacet. For more information, see Typed Links.
"""
CreateTypedLinkFacet(SchemaArn, Facet) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create")

"""
Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
"""
ListAppliedSchemaArns(DirectoryArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/applied")

"""
Detaches a policy from an object.
"""
DetachPolicy(DirectoryArn, PolicyReference, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/detach")

"""
Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.
"""
LookupPolicy(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/lookup")

"""
Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
"""
ListManagedSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/managed")

"""
Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed Links.
"""
ListTypedLinkFacetNames(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list")

"""
Returns a paginated list of child objects that are associated with a given object.
"""
ListObjectChildren(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/children")

"""
Retrieves attributes attached to the facet.
"""
ListFacetAttributes(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/attributes")

"""
Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.
"""
GetFacet(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet")

"""
Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed Links.
"""
ListOutgoingTypedLinks(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing")

"""
Returns a paginated list of all the incoming TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed Links.
"""
ListIncomingTypedLinks(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming")

"""
An API operation for removing tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/remove")

"""
Creates a Directory by copying the published schema into the directory. A directory cannot be created without a schema. You can also quickly create a directory using a managed schema, called the QuickStartSchema. For more information, see Managed Schema in the Amazon Cloud Directory Developer Guide.
"""
CreateDirectory(Name, SchemaArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/create")

"""
Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
"""
ListDevelopmentSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/development")

"""
Updates a given object's attributes.
"""
UpdateObjectAttributes(DirectoryArn, ObjectReference, AttributeUpdates) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/update")

"""
Attaches the specified object to the specified index.
"""
AttachToIndex(DirectoryArn, IndexReference, TargetReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/attach")

"""
Lists directories created within an account.
"""
ListDirectories() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/list")

"""
Performs all the write operations in a batch. Either all the operations succeed or none.
"""
BatchWrite(DirectoryArn, Operations) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/batchwrite")

"""
Creates a new schema in a development state. A schema can exist in three phases:    Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.    Published: Published schemas are immutable and have a version associated with them.    Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.   
"""
CreateSchema(Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/create")

"""
Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.
"""
DisableDirectory(DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/disable")

"""
Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.
"""
DeleteDirectory(DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory")

"""
Returns policies attached to an object in pagination fashion.
"""
ListObjectPolicies(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/policy")

"""
Deletes a given Facet. All attributes and Rules that are associated with the facet will be deleted. Only development schema facets are allowed deletion.
"""
DeleteFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/delete")

"""
Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
"""
ListTagsForResource(ResourceArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/tags")

"""
Deletes a given schema. Schemas in a development and published state can only be deleted. 
"""
DeleteSchema(SchemaArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema")

"""
Creates a new Facet in a schema. Facet creation is allowed only in development or applied schemas.
"""
CreateFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/create")

"""
Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.
"""
DetachObject(DirectoryArn, ParentReference, LinkName) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/detach")

"""
Retrieves attributes within a facet that are associated with an object.
"""
GetObjectAttributes(DirectoryArn, ObjectReference, SchemaFacet, AttributeNames) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes/get")

"""
Retrieves a JSON representation of the schema. See JSON Schema Format for more information.
"""
GetSchemaAsJson(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/json")

"""
Removes the specified facet from the specified object.
"""
RemoveFacetFromObject(DirectoryArn, SchemaFacet, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete")

"""
Attaches a policy object to a regular object. An object can have a limited number of attached policies.
"""
AttachPolicy(DirectoryArn, PolicyReference, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/attach")

"""
Retrieves the names of facets that exist in a schema.
"""
ListFacetNames(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/list")

"""
Does the following:   Adds new Attributes, Rules, or ObjectTypes.   Updates existing Attributes, Rules, or ObjectTypes.   Deletes existing Attributes, Rules, or ObjectTypes.  
"""
UpdateFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet")

"""
Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.
"""
UpgradePublishedSchema(DevelopmentSchemaArn, PublishedSchemaArn, MinorVersion) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished")

"""
Lists all attributes that are associated with an object. 
"""
ListObjectAttributes(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes")

"""
Publishes a development schema with a major version and a recommended minor version.
"""
PublishSchema(DevelopmentSchemaArn, Version) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/publish")

"""
Attaches an existing object to another object. An object can be accessed in two ways:   Using the path   Using ObjectIdentifier   
"""
AttachObject(DirectoryArn, ParentReference, ChildReference, LinkName) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/attach")

"""
Updates a TypedLinkFacet. For more information, see Typed Links.
"""
UpdateTypedLinkFacet(SchemaArn, Name, AttributeUpdates, IdentityAttributeOrder) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet")

"""
Creates an index object. See Indexing and search for more information.
"""
CreateIndex(DirectoryArn, OrderedIndexedAttributeList, IsUnique) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index")

"""
Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
"""
ListObjectParentPaths(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parentpaths")

"""
Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.
"""
UpgradeAppliedSchema(PublishedSchemaArn, DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied")

"""
Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.
"""
EnableDirectory(DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/enable")

"""
Detaches a typed link from a specified source and target object. For more information, see Typed Links.
"""
DetachTypedLink(DirectoryArn, TypedLinkSpecifier) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach")

"""
Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed Links.
"""
ListTypedLinkFacetAttributes(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes")

"""
Retrieves metadata about a directory.
"""
GetDirectory(DirectoryArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/get")

"""
Lists parent objects that are associated with a given object in pagination fashion.
"""
ListObjectParents(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parent")

"""
Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema.
"""
ApplySchema(PublishedSchemaArn, DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/apply")

"""
Allows a schema to be updated using JSON upload. Only available for development schemas. See JSON Schema Format for more information.
"""
PutSchemaFromJson(SchemaArn, Document) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/json")

"""
Creates an object in a Directory. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of Facet attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. 
"""
CreateObject(DirectoryArn, SchemaFacets) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object")

"""
Returns the identity attribute order for a specific TypedLinkFacet. For more information, see Typed Links.
"""
GetTypedLinkFacetInformation(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get")

"""
Deletes a TypedLinkFacet. For more information, see Typed Links.
"""
DeleteTypedLinkFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete")

"""
Detaches the specified object from the specified index.
"""
DetachFromIndex(DirectoryArn, IndexReference, TargetReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/detach")

"""
Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.
"""
UpdateLinkAttributes(DirectoryArn, TypedLinkSpecifier, AttributeUpdates) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update")

"""
Returns all of the ObjectIdentifiers to which a given policy is attached.
"""
ListPolicyAttachments(DirectoryArn, PolicyReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/attachment")

"""
Retrieves metadata about an object.
"""
GetObjectInformation(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/information")

"""
Lists objects attached to the specified index.
"""
ListIndex(DirectoryArn, IndexReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/index/targets")
end
