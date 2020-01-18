module aws_guardduty
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: guardduty

"""
Retrieves an Amazon GuardDuty detector specified by the detectorId.
"""
GetDetector(DetectorId) = guardduty("GET", "/detector/$detectorId")

"""
Creates a new IPSet, called Trusted IP list in the consoler user interface. An IPSet is a list IP addresses trusted for secure communication with AWS infrastructure and applications. GuardDuty does not generate findings for IP addresses included in IPSets. Only users from the master account can use this operation.
"""
CreateIPSet(DetectorId, Name, Format, Location, Activate) = guardduty("POST", "/detector/$detectorId/ipset")

"""
Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
"""
CreateMembers(DetectorId, AccountDetails) = guardduty("POST", "/detector/$detectorId/member")

"""
Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each region that you enable the service. You can have only one detector per account per region.
"""
CreateDetector(Enable) = guardduty("POST", "/detector")

"""
Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
"""
GetInvitationsCount() = guardduty("GET", "/invitation/count")

"""
Adds tags to a resource.
"""
TagResource(ResourceArn, Tags) = guardduty("POST", "/tags/$resourceArn")

"""
Deletes the filter specified by the filter name.
"""
DeleteFilter(DetectorId, FilterName) = guardduty("DELETE", "/detector/$detectorId/filter/$filterName")

"""
Deletes ThreatIntelSet specified by the ThreatIntelSet ID.
"""
DeleteThreatIntelSet(DetectorId, ThreatIntelSetId) = guardduty("DELETE", "/detector/$detectorId/threatintelset/$threatIntelSetId")

"""
Returns a paginated list of the current filters.
"""
ListFilters(DetectorId) = guardduty("GET", "/detector/$detectorId/filter")

"""
Lists Amazon GuardDuty findings' statistics for the specified detector ID.
"""
GetFindingsStatistics(DetectorId, FindingStatisticTypes) = guardduty("POST", "/detector/$detectorId/findings/statistics")

"""
Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.
"""
ListThreatIntelSets(DetectorId) = guardduty("GET", "/detector/$detectorId/threatintelset")

"""
Lists Amazon GuardDuty findings for the specified detector ID.
"""
ListFindings(DetectorId) = guardduty("POST", "/detector/$detectorId/findings")

"""
Lists all GuardDuty membership invitations that were sent to the current AWS account.
"""
ListInvitations() = guardduty("GET", "/invitation")

"""
Unarchives GuardDuty findings specified by the findingIds.
"""
UnarchiveFindings(DetectorId, FindingIds) = guardduty("POST", "/detector/$detectorId/findings/unarchive")

"""
Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.
"""
ListIPSets(DetectorId) = guardduty("GET", "/detector/$detectorId/ipset")

"""
Returns information about the publishing destination specified by the provided destinationId.
"""
DescribePublishingDestination(DetectorId, DestinationId) = guardduty("GET", "/detector/$detectorId/publishingDestination/$destinationId")

"""
Updates information about the publishing destination specified by the destinationId.
"""
UpdatePublishingDestination(DetectorId, DestinationId) = guardduty("POST", "/detector/$detectorId/publishingDestination/$destinationId")

"""
Removes tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = guardduty("DELETE", "/tags/$resourceArn")

"""
Lists details about all member accounts for the current GuardDuty master account.
"""
ListMembers(DetectorId) = guardduty("GET", "/detector/$detectorId/member")

"""
Retrieves the IPSet specified by the ipSetId.
"""
GetIPSet(DetectorId, IpSetId) = guardduty("GET", "/detector/$detectorId/ipset/$ipSetId")

"""
Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
"""
DeleteInvitations(AccountIds) = guardduty("POST", "/invitation/delete")

"""
Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
"""
DeleteMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/delete")

"""
Provides the details for the GuardDuty master account associated with the current GuardDuty member account.
"""
GetMasterAccount(DetectorId) = guardduty("GET", "/detector/$detectorId/master")

"""
Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
"""
CreateSampleFindings(DetectorId) = guardduty("POST", "/detector/$detectorId/findings/create")

"""
Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and Threat Intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource..
"""
ListTagsForResource(ResourceArn) = guardduty("GET", "/tags/$resourceArn")

"""
Marks the specified GuardDuty findings as useful or not useful.
"""
UpdateFindingsFeedback(DetectorId, FindingIds, Feedback) = guardduty("POST", "/detector/$detectorId/findings/feedback")

"""
Updates the IPSet specified by the IPSet ID.
"""
UpdateIPSet(DetectorId, IpSetId) = guardduty("POST", "/detector/$detectorId/ipset/$ipSetId")

"""
Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
"""
InviteMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/invite")

"""
Updates the filter specified by the filter name.
"""
UpdateFilter(DetectorId, FilterName) = guardduty("POST", "/detector/$detectorId/filter/$filterName")

"""
Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
"""
GetThreatIntelSet(DetectorId, ThreatIntelSetId) = guardduty("GET", "/detector/$detectorId/threatintelset/$threatIntelSetId")

"""
Creates a publishing destination to send findings to. The resource to send findings to must exist before you use this operation.
"""
CreatePublishingDestination(DetectorId, DestinationType, DestinationProperties) = guardduty("POST", "/detector/$detectorId/publishingDestination")

"""
Accepts the invitation to be monitored by a master GuardDuty account.
"""
AcceptInvitation(DetectorId, MasterId, InvitationId) = guardduty("POST", "/detector/$detectorId/master")

"""
Disassociates the current GuardDuty member account from its master account.
"""
DisassociateFromMasterAccount(DetectorId) = guardduty("POST", "/detector/$detectorId/master/disassociate")

"""
Lists detectorIds of all the existing Amazon GuardDuty detector resources.
"""
ListDetectors() = guardduty("GET", "/detector")

"""
Updates the ThreatIntelSet specified by ThreatIntelSet ID.
"""
UpdateThreatIntelSet(DetectorId, ThreatIntelSetId) = guardduty("POST", "/detector/$detectorId/threatintelset/$threatIntelSetId")

"""
Describes Amazon GuardDuty findings specified by finding IDs.
"""
GetFindings(DetectorId, FindingIds) = guardduty("POST", "/detector/$detectorId/findings/get")

"""
Deletes the publishing definition with the specified destinationId.
"""
DeletePublishingDestination(DetectorId, DestinationId) = guardduty("DELETE", "/detector/$detectorId/publishingDestination/$destinationId")

"""
Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
"""
DisassociateMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/disassociate")

"""
Returns a list of publishing destinations associated with the specified dectectorId.
"""
ListPublishingDestinations(DetectorId) = guardduty("GET", "/detector/$detectorId/publishingDestination")

"""
Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.
"""
CreateThreatIntelSet(DetectorId, Name, Format, Location, Activate) = guardduty("POST", "/detector/$detectorId/threatintelset")

"""
Deletes a Amazon GuardDuty detector specified by the detector ID.
"""
DeleteDetector(DetectorId) = guardduty("DELETE", "/detector/$detectorId")

"""
Returns the details of the filter specified by the filter name.
"""
GetFilter(DetectorId, FilterName) = guardduty("GET", "/detector/$detectorId/filter/$filterName")

"""
Archives GuardDuty findings specified by the list of finding IDs.  Only the master account can archive findings. Member accounts do not have permission to archive findings from their accounts. 
"""
ArchiveFindings(DetectorId, FindingIds) = guardduty("POST", "/detector/$detectorId/findings/archive")

"""
Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.
"""
StartMonitoringMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/start")

"""
Declines invitations sent to the current member account by AWS account specified by their account IDs.
"""
DeclineInvitations(AccountIds) = guardduty("POST", "/invitation/decline")

"""
Stops GuardDuty monitoring for the specified member accounnts. Use the StartMonitoringMembers to restart monitoring for those accounts.
"""
StopMonitoringMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/stop")

"""
Deletes the IPSet specified by the ipSetId. IPSets are called Trusted IP lists in the console user interface.
"""
DeleteIPSet(DetectorId, IpSetId) = guardduty("DELETE", "/detector/$detectorId/ipset/$ipSetId")

"""
Creates a filter using the specified finding criteria.
"""
CreateFilter(DetectorId, Name, FindingCriteria) = guardduty("POST", "/detector/$detectorId/filter")

"""
Updates the Amazon GuardDuty detector specified by the detectorId.
"""
UpdateDetector(DetectorId) = guardduty("POST", "/detector/$detectorId")

"""
Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
"""
GetMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/get")
end
