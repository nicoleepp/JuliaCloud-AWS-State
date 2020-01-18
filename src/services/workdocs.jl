module aws_workdocs
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: workdocs

"""
Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Subscribe to Notifications in the Amazon WorkDocs Developer Guide.
"""
CreateNotificationSubscription(OrganizationId, Endpoint, Protocol, SubscriptionType) = workdocs("POST", "/api/v1/organizations/$OrganizationId/subscriptions")

"""
Deletes custom metadata from the specified resource.
"""
DeleteCustomMetadata(ResourceId) = workdocs("DELETE", "/api/v1/resources/$ResourceId/customMetadata")

"""
Lists the specified notification subscriptions.
"""
DescribeNotificationSubscriptions(OrganizationId) = workdocs("GET", "/api/v1/organizations/$OrganizationId/subscriptions")

"""
Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
"""
GetResources() = workdocs("GET", "/api/v1/resources")

"""
Deletes the specified subscription from the specified organization.
"""
DeleteNotificationSubscription(SubscriptionId, OrganizationId) = workdocs("DELETE", "/api/v1/organizations/$OrganizationId/subscriptions/$SubscriptionId")

"""
Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
"""
CreateUser(Username, GivenName, Surname, Password) = workdocs("POST", "/api/v1/users")

"""
Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
"""
DescribeRootFolders(AuthenticationToken) = workdocs("GET", "/api/v1/me/root")

"""
Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.
"""
InitiateDocumentVersionUpload(ParentFolderId) = workdocs("POST", "/api/v1/documents")

"""
Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
"""
GetDocumentPath(DocumentId) = workdocs("GET", "/api/v1/documents/$DocumentId/path")

"""
Deletes the contents of the specified folder.
"""
DeleteFolderContents(FolderId) = workdocs("DELETE", "/api/v1/folders/$FolderId/contents")

"""
Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
"""
UpdateUser(UserId) = workdocs("PATCH", "/api/v1/users/$UserId")

"""
Creates a folder with the specified name and parent folder.
"""
CreateFolder(ParentFolderId) = workdocs("POST", "/api/v1/folders")

"""
Deletes the specified list of labels from a resource.
"""
DeleteLabels(ResourceId) = workdocs("DELETE", "/api/v1/resources/$ResourceId/labels")

"""
Adds a new comment to the specified document version.
"""
CreateComment(DocumentId, VersionId, Text) = workdocs("POST", "/api/v1/documents/$DocumentId/versions/$VersionId/comment")

"""
Adds the specified list of labels to the given resource (a document or folder)
"""
CreateLabels(ResourceId, Labels) = workdocs("PUT", "/api/v1/resources/$ResourceId/labels")

"""
Removes all the permissions from the specified resource.
"""
RemoveAllResourcePermissions(ResourceId) = workdocs("DELETE", "/api/v1/resources/$ResourceId/permissions")

"""
Retrieves details of a document.
"""
GetDocument(DocumentId) = workdocs("GET", "/api/v1/documents/$DocumentId")

"""
Deletes the specified user from a Simple AD or Microsoft AD directory.
"""
DeleteUser(UserId) = workdocs("DELETE", "/api/v1/users/$UserId")

"""
Retrieves version metadata for the specified document.
"""
GetDocumentVersion(DocumentId, VersionId) = workdocs("GET", "/api/v1/documents/$DocumentId/versions/$VersionId")

"""
Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
"""
UpdateFolder(FolderId) = workdocs("PATCH", "/api/v1/folders/$FolderId")

"""
Retrieves the metadata of the specified folder.
"""
GetFolder(FolderId) = workdocs("GET", "/api/v1/folders/$FolderId")

"""
Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
"""
DescribeGroups(SearchQuery) = workdocs("GET", "/api/v1/groups")

"""
Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload. 
"""
UpdateDocumentVersion(DocumentId, VersionId) = workdocs("PATCH", "/api/v1/documents/$DocumentId/versions/$VersionId")

"""
Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
"""
GetFolderPath(FolderId) = workdocs("GET", "/api/v1/folders/$FolderId/path")

"""
Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
"""
AbortDocumentVersionUpload(DocumentId, VersionId) = workdocs("DELETE", "/api/v1/documents/$DocumentId/versions/$VersionId")

"""
List all the comments for the specified document version.
"""
DescribeComments(DocumentId, VersionId) = workdocs("GET", "/api/v1/documents/$DocumentId/versions/$VersionId/comments")

"""
Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
"""
AddResourcePermissions(ResourceId, Principals) = workdocs("POST", "/api/v1/resources/$ResourceId/permissions")

"""
Describes the user activities in a specified time period.
"""
DescribeActivities() = workdocs("GET", "/api/v1/activities")

"""
Permanently deletes the specified folder and its contents.
"""
DeleteFolder(FolderId) = workdocs("DELETE", "/api/v1/folders/$FolderId")

"""
Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
"""
DescribeFolderContents(FolderId) = workdocs("GET", "/api/v1/folders/$FolderId/contents")

"""
Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
"""
UpdateDocument(DocumentId) = workdocs("PATCH", "/api/v1/documents/$DocumentId")

"""
Activates the specified user. Only active users can access Amazon WorkDocs.
"""
ActivateUser(UserId) = workdocs("POST", "/api/v1/users/$UserId/activation")

"""
Permanently deletes the specified document and its associated metadata.
"""
DeleteDocument(DocumentId) = workdocs("DELETE", "/api/v1/documents/$DocumentId")

"""
Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients.
"""
GetCurrentUser(AuthenticationToken) = workdocs("GET", "/api/v1/me")

"""
Adds one or more custom properties to the specified resource (a folder, document, or version).
"""
CreateCustomMetadata(ResourceId, CustomMetadata) = workdocs("PUT", "/api/v1/resources/$ResourceId/customMetadata")

"""
Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
"""
DeactivateUser(UserId) = workdocs("DELETE", "/api/v1/users/$UserId/activation")

"""
Deletes the specified comment from the document version.
"""
DeleteComment(DocumentId, VersionId, CommentId) = workdocs("DELETE", "/api/v1/documents/$DocumentId/versions/$VersionId/comment/$CommentId")

"""
Describes the permissions of a specified resource.
"""
DescribeResourcePermissions(ResourceId) = workdocs("GET", "/api/v1/resources/$ResourceId/permissions")

"""
Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
"""
DescribeUsers() = workdocs("GET", "/api/v1/users")

"""
Removes the permission for the specified principal from the specified resource.
"""
RemoveResourcePermission(ResourceId, PrincipalId) = workdocs("DELETE", "/api/v1/resources/$ResourceId/permissions/$PrincipalId")

"""
Retrieves the document versions for the specified document. By default, only active versions are returned.
"""
DescribeDocumentVersions(DocumentId) = workdocs("GET", "/api/v1/documents/$DocumentId/versions")
end
