module aws_quicksight
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: quicksight

"""
Lists member users in a group.
"""
ListGroupMemberships(GroupName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members")

"""
Removes a user group from Amazon QuickSight. 
"""
DeleteGroup(GroupName, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName")

"""
Creates a template from an existing QuickSight analysis or template. You can use the resulting template to create a dashboard. A template is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create s dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with the analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.
"""
CreateTemplate(AwsAccountId, TemplateId, SourceEntity) = quicksight("POST", "/accounts/$AwsAccountId/templates/$TemplateId")

"""
Provides a summary for a dashboard.
"""
DescribeDashboard(AwsAccountId, DashboardId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId")

"""
Describes a dataset. 
"""
DescribeDataSet(AwsAccountId, DataSetId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId")

"""
Updates the template alias of a template.
"""
UpdateTemplateAlias(AwsAccountId, TemplateId, AliasName, TemplateVersionNumber) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")

"""
Assigns one or more tags (key-value pairs) to the specified QuickSight resource.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. QuickSight supports tagging on data set, data source, dashboard, and template.  Tagging for QuickSight works in a similar way to tagging for other AWS services, except for the following:   You can't use tags to track AWS costs for QuickSight. This restriction is because QuickSight costs are based on users and SPICE capacity, which aren't taggable resources.   QuickSight doesn't currently support the Tag Editor for AWS Resource Groups.  
"""
TagResource(ResourceArn, Tags) = quicksight("POST", "/resources/$ResourceArn/tags")

"""
Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN). This policy will be assigned to specified groups or users of Amazon QuickSight. The users and groups need to be in the same namespace. 
"""
CreateIAMPolicyAssignment(AwsAccountId, AssignmentName, AssignmentStatus, Namespace) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/")

"""
Creates and starts a new SPICE ingestion on a dataset Any ingestions operating on tagged datasets inherit the same tags automatically for use in access control. For an example, see How do I create an IAM policy to control access to Amazon EC2 resources using tags? in the AWS Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.
"""
CreateIngestion(DataSetId, IngestionId, AwsAccountId) = quicksight("PUT", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId")

"""
Creates a dashboard from a template. To first create a template, see the CreateTemplate API operation. A dashboard is an entity in QuickSight that identifies QuickSight reports, created from analyses. You can share QuickSight dashboards. With the right permissions, you can create scheduled email reports from them. The CreateDashboard, DescribeDashboard, and ListDashboardsByUser API operations act on the dashboard entity. If you have the correct permissions, you can create a dashboard from a template that exists in a different AWS account.
"""
CreateDashboard(AwsAccountId, DashboardId, Name, SourceEntity) = quicksight("POST", "/accounts/$AwsAccountId/dashboards/$DashboardId")

"""
Generates a server-side embeddable URL and authorization code. For this process to work properly, first configure the dashboards and user permissions. For more information, see Embedding Amazon QuickSight Dashboards in the Amazon QuickSight User Guide or Embedding Amazon QuickSight Dashboards in the Amazon QuickSight API Reference. Currently, you can use GetDashboardEmbedURL only from the server, not from the user’s browser.
"""
GetDashboardEmbedUrl(AwsAccountId, DashboardId, IdentityType) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/embed-url")

"""
Updates an existing IAM policy assignment. This operation updates only the optional parameter or parameters that are specified in the request.
"""
UpdateIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/$AssignmentName")

"""
Updates a data source.
"""
UpdateDataSource(AwsAccountId, DataSourceId, Name) = quicksight("PUT", "/accounts/$AwsAccountId/data-sources/$DataSourceId")

"""
Lists all the versions of the templates in the current Amazon QuickSight account.
"""
ListTemplateVersions(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/versions")

"""
Adds an Amazon QuickSight user to an Amazon QuickSight group. 
"""
CreateGroupMembership(MemberName, GroupName, AwsAccountId, Namespace) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members/$MemberName")

"""
Describes a template's metadata.
"""
DescribeTemplate(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId")

"""
Deletes the item that the specified template alias points to. If you provide a specific alias, you delete the version of the template that the alias points to.
"""
DeleteTemplateAlias(AwsAccountId, TemplateId, AliasName) = quicksight("DELETE", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")

"""
Deletes the data source permanently. This action breaks all the datasets that reference the deleted data source.
"""
DeleteDataSource(AwsAccountId, DataSourceId) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sources/$DataSourceId")

"""
Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request. 
"""
RegisterUser(IdentityType, Email, UserRole, AwsAccountId, Namespace) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/users")

"""
Updates the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.
"""
UpdateDataSetPermissions(AwsAccountId, DataSetId) = quicksight("POST", "/accounts/$AwsAccountId/data-sets/$DataSetId/permissions")

"""
Updates the permissions to a data source.
"""
UpdateDataSourcePermissions(AwsAccountId, DataSourceId) = quicksight("POST", "/accounts/$AwsAccountId/data-sources/$DataSourceId/permissions")

"""
Updates a template from an existing Amazon QuickSight analysis or another template.
"""
UpdateTemplate(AwsAccountId, TemplateId, SourceEntity) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId")

"""
Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call. 
"""
DeleteUser(UserName, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName")

"""
Removes a tag or tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = quicksight("DELETE", "/resources/$ResourceArn/tags")

"""
Creates a dataset.
"""
CreateDataSet(AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode) = quicksight("POST", "/accounts/$AwsAccountId/data-sets")

"""
Lists data sources in current AWS Region that belong to this AWS account.
"""
ListDataSources(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/data-sources")

"""
Describes a SPICE ingestion.
"""
DescribeIngestion(AwsAccountId, DataSetId, IngestionId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId")

"""
Updates a dashboard in an AWS account.
"""
UpdateDashboard(AwsAccountId, DashboardId, Name, SourceEntity) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId")

"""
Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.
"""
CreateGroup(GroupName, AwsAccountId, Namespace) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/groups")

"""
Creates a data source.
"""
CreateDataSource(AwsAccountId, DataSourceId, Name, Type) = quicksight("POST", "/accounts/$AwsAccountId/data-sources")

"""
Describes read and write permissions on a template.
"""
DescribeTemplatePermissions(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/permissions")

"""
Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
"""
ListDataSets(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets")

"""
Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.
"""
ListUserGroups(UserName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName/groups")

"""
Lists all the aliases of a template.
"""
ListTemplateAliases(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/aliases")

"""
Deletes a dashboard.
"""
DeleteDashboard(AwsAccountId, DashboardId) = quicksight("DELETE", "/accounts/$AwsAccountId/dashboards/$DashboardId")

"""
Lists the tags assigned to a resource.
"""
ListTagsForResource(ResourceArn) = quicksight("GET", "/resources/$ResourceArn/tags")

"""
Updates an Amazon QuickSight user.
"""
UpdateUser(UserName, AwsAccountId, Namespace, Email, Role) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName")

"""
Updates the published version of a dashboard.
"""
UpdateDashboardPublishedVersion(AwsAccountId, DashboardId, VersionNumber) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId/versions/$VersionNumber")

"""
Lists the history of SPICE ingestions for a dataset.
"""
ListIngestions(DataSetId, AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions")

"""
Deletes a user identified by its principal ID. 
"""
DeleteUserByPrincipalId(PrincipalId, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/user-principals/$PrincipalId")

"""
Deletes a template.
"""
DeleteTemplate(AwsAccountId, TemplateId) = quicksight("DELETE", "/accounts/$AwsAccountId/templates/$TemplateId")

"""
Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM policies assigned to the specified user and group or groups that the user belongs to.
"""
ListIAMPolicyAssignmentsForUser(AwsAccountId, UserName, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName/iam-policy-assignments")

"""
Removes a user from a group so that the user is no longer a member of the group.
"""
DeleteGroupMembership(MemberName, GroupName, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members/$MemberName")

"""
Describes read and write permissions for a dashboard.
"""
DescribeDashboardPermissions(AwsAccountId, DashboardId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/permissions")

"""
Returns a list of all of the Amazon QuickSight users belonging to this account. 
"""
ListUsers(AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users")

"""
Deletes a dataset.
"""
DeleteDataSet(AwsAccountId, DataSetId) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sets/$DataSetId")

"""
Deletes an existing IAM policy assignment.
"""
DeleteIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespace/$Namespace/iam-policy-assignments/$AssignmentName")

"""
Lists all user groups in Amazon QuickSight. 
"""
ListGroups(AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups")

"""
Lists all the templates in the current Amazon QuickSight account.
"""
ListTemplates(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/templates")

"""
Returns information about a user, given the user name. 
"""
DescribeUser(UserName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName")

"""
Updates a dataset.
"""
UpdateDataSet(AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode) = quicksight("PUT", "/accounts/$AwsAccountId/data-sets/$DataSetId")

"""
Describes an existing IAM policy assignment, as specified by the assignment name.
"""
DescribeIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/$AssignmentName")

"""
Updates read and write permissions on a dashboard.
"""
UpdateDashboardPermissions(AwsAccountId, DashboardId) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId/permissions")

"""
Creates a template alias for a template.
"""
CreateTemplateAlias(AwsAccountId, TemplateId, AliasName, TemplateVersionNumber) = quicksight("POST", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")

"""
Describes the resource permissions for a data source.
"""
DescribeDataSourcePermissions(AwsAccountId, DataSourceId) = quicksight("GET", "/accounts/$AwsAccountId/data-sources/$DataSourceId/permissions")

"""
Lists IAM policy assignments in the current Amazon QuickSight account.
"""
ListIAMPolicyAssignments(AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments")

"""
Describes the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.
"""
DescribeDataSetPermissions(AwsAccountId, DataSetId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/permissions")

"""
Describes the template alias for a template.
"""
DescribeTemplateAlias(AwsAccountId, TemplateId, AliasName) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")

"""
Describes a data source.
"""
DescribeDataSource(AwsAccountId, DataSourceId) = quicksight("GET", "/accounts/$AwsAccountId/data-sources/$DataSourceId")

"""
Lists all the versions of the dashboards in the QuickSight subscription.
"""
ListDashboardVersions(AwsAccountId, DashboardId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/versions")

"""
Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). 
"""
DescribeGroup(GroupName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName")

"""
Lists dashboards in an AWS account.
"""
ListDashboards(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards")

"""
Cancels an ongoing ingestion of data into SPICE.
"""
CancelIngestion(AwsAccountId, DataSetId, IngestionId) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId")

"""
Updates the resource permissions for a template.
"""
UpdateTemplatePermissions(AwsAccountId, TemplateId) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId/permissions")

"""
Changes a group description. 
"""
UpdateGroup(GroupName, AwsAccountId, Namespace) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName")
end
