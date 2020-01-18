module aws_securityhub
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: securityhub

"""
Returns a list of compliance standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.
"""
DescribeStandardsControls(StandardsSubscriptionArn) = securityhub("GET", "/standards/controls/$StandardsSubscriptionArn+")

"""
Returns a list of the standards that are currently enabled.
"""
GetEnabledStandards() = securityhub("POST", "/standards/get")

"""
Returns a list of tags associated with a resource.
"""
ListTagsForResource(ResourceArn) = securityhub("GET", "/tags/$ResourceArn")

"""
Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.
"""
UpdateFindings(Filters) = securityhub("PATCH", "/findings")

"""
Updates the name and description of a custom action target in Security Hub.
"""
UpdateActionTarget(ActionTargetArn) = securityhub("PATCH", "/actionTargets/$ActionTargetArn+")

"""
Lists all Security Hub membership invitations that were sent to the current AWS account. 
"""
ListInvitations() = securityhub("GET", "/invitations")

"""
Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. To successfully create a member, you must use this action from an account that already has Security Hub enabled. You can use the EnableSecurityHub to enable Security Hub. After you use CreateMembers to create member account associations in Security Hub, you need to use the InviteMembers action, which invites the accounts to enable Security Hub and become member accounts in Security Hub. If the invitation is accepted by the account owner, the account becomes a member account in Security Hub, and a permission policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in the invited account, findings start being sent to both the member and master accounts. You can remove the association between the master and member accounts by using the DisassociateFromMasterAccount or DisassociateMembers operation.
"""
CreateMembers() = securityhub("POST", "/members")

"""
Updates the Security Hub insight that the insight ARN specifies.
"""
UpdateInsight(InsightArn) = securityhub("PATCH", "/insights/$InsightArn+")

"""
Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.
"""
CreateActionTarget(Name, Description, Id) = securityhub("POST", "/actionTargets")

"""
Lists all findings-generating solutions (products) whose findings you have subscribed to receive in Security Hub.
"""
ListEnabledProductsForImport() = securityhub("GET", "/productSubscriptions")

"""
Declines invitations to become a member account.
"""
DeclineInvitations(AccountIds) = securityhub("POST", "/invitations/decline")

"""
Used to control whether an individual compliance standard control is enabled or disabled.
"""
UpdateStandardsControl(StandardsControlArn) = securityhub("PATCH", "/standards/control/$StandardsControlArn+")

"""
Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. Before you can use this action to invite a member, you must first create the member account in Security Hub by using the CreateMembers action. When the account owner accepts the invitation to become a member account and enables Security Hub, the master account can view the findings generated from member account.
"""
InviteMembers() = securityhub("POST", "/members/invite")

"""
Returns a list of the custom action targets in Security Hub in your account.
"""
DescribeActionTargets() = securityhub("POST", "/actionTargets/get")

"""
Enables the standards specified by the provided standardsArn. In this release, only CIS AWS Foundations standards are supported. For more information, see Standards Supported in AWS Security Hub.
"""
BatchEnableStandards(StandardsSubscriptionRequests) = securityhub("POST", "/standards/register")

"""
Lists and describes insights that insight ARNs specify.
"""
GetInsights() = securityhub("POST", "/insights/get")

"""
Deletes a custom action target from Security Hub. Deleting a custom action target doesn't affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.
"""
DeleteActionTarget(ActionTargetArn) = securityhub("DELETE", "/actionTargets/$ActionTargetArn+")

"""
Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and can't be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.
"""
DisableSecurityHub() = securityhub("DELETE", "/accounts")

"""
Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
"""
GetInvitationsCount() = securityhub("GET", "/invitations/count")

"""
Lists details about all member accounts for the current Security Hub master account.
"""
ListMembers() = securityhub("GET", "/members")

"""
Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. Use the GroupByAttribute to group the related findings in the insight.
"""
CreateInsight(Name, Filters, GroupByAttribute) = securityhub("POST", "/insights")

"""
Adds one or more tags to a resource.
"""
TagResource(ResourceArn, Tags) = securityhub("POST", "/tags/$ResourceArn")

"""
Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.
"""
DescribeHub() = securityhub("GET", "/accounts")

"""
Removes one or more tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = securityhub("DELETE", "/tags/$ResourceArn")

"""
Deletes invitations received by the AWS account to become a member account.
"""
DeleteInvitations(AccountIds) = securityhub("POST", "/invitations/delete")

"""
Deletes the specified member accounts from Security Hub.
"""
DeleteMembers() = securityhub("POST", "/members/delete")

"""
Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.
"""
AcceptInvitation(MasterId, InvitationId) = securityhub("POST", "/master")

"""
Disassociates the current Security Hub member account from the associated master account.
"""
DisassociateFromMasterAccount() = securityhub("POST", "/master/disassociate")

"""
Provides the details for the Security Hub master account to the current member account. 
"""
GetMasterAccount() = securityhub("GET", "/master")

"""
Returns information about the products available that you can subscribe to and integrate with Security Hub to consolidate findings.
"""
DescribeProducts() = securityhub("GET", "/products")

"""
Deletes the insight specified by the InsightArn.
"""
DeleteInsight(InsightArn) = securityhub("DELETE", "/insights/$InsightArn+")

"""
Returns a list of findings that match the specified criteria.
"""
GetFindings() = securityhub("POST", "/findings")

"""
Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permission policy that grants permission for the product to send findings to Security Hub is applied.
"""
EnableImportFindingsForProduct(ProductArn) = securityhub("POST", "/productSubscriptions")

"""
Enables Security Hub for your account in the current Region or the Region you specify in the request. Enabling Security Hub also enables the CIS AWS Foundations standard. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from AWS Config, Amazon GuardDuty, Amazon Inspector, and Amazon Macie. To learn more, see Setting Up AWS Security Hub.
"""
EnableSecurityHub() = securityhub("POST", "/accounts")

"""
Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Standards Supported in AWS Security Hub.
"""
BatchDisableStandards(StandardsSubscriptionArns) = securityhub("POST", "/standards/deregister")

"""
Disassociates the specified member accounts from the associated master account.
"""
DisassociateMembers() = securityhub("POST", "/members/disassociate")

"""
Disables the integration of the specified product with Security Hub. Findings from that product are no longer sent to Security Hub after the integration is disabled.
"""
DisableImportFindingsForProduct(ProductSubscriptionArn) = securityhub("DELETE", "/productSubscriptions/$ProductSubscriptionArn+")

"""
Lists the results of the Security Hub insight that the insight ARN specifies.
"""
GetInsightResults(InsightArn) = securityhub("GET", "/insights/results/$InsightArn+")

"""
Returns the details on the Security Hub member accounts that the account IDs specify.
"""
GetMembers(AccountIds) = securityhub("POST", "/members/get")

"""
Imports security findings generated from an integrated third-party product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb.
"""
BatchImportFindings(Findings) = securityhub("POST", "/findings/import")
end
