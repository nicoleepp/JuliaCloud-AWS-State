module aws_detective
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: detective

"""
Amazon Detective is currently in preview. Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by a member account that has the INVITED status.
"""
RejectInvitation(GraphArn) = detective("POST", "/invitation/removal")

"""
Amazon Detective is currently in preview. Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
"""
ListInvitations() = detective("POST", "/invitations/list")

"""
Amazon Detective is currently in preview. Sends a request to invite the specified AWS accounts to be member accounts in the behavior graph. This operation can only be called by the master account for a behavior graph.   CreateMembers verifies the accounts and then sends invitations to the verified accounts. The request provides the behavior graph ARN and the list of accounts to invite. The response separates the requested accounts into two lists:   The accounts that CreateMembers was able to start the verification for. This list includes member accounts that are being verified, that have passed verification and are being sent an invitation, and that have failed verification.   The accounts that CreateMembers was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.  
"""
CreateMembers(GraphArn, Accounts) = detective("POST", "/graph/members")

"""
Amazon Detective is currently in preview. Disables the specified behavior graph and queues it to be deleted. This operation removes the graph from each member account's list of behavior graphs.  DeleteGraph can only be called by the master account for a behavior graph.
"""
DeleteGraph(GraphArn) = detective("POST", "/graph/removal")

"""
Amazon Detective is currently in preview. Removes the member account from the specified behavior graph. This operation can only be called by a member account that has the ENABLED status.
"""
DisassociateMembership(GraphArn) = detective("POST", "/membership/removal")

"""
Amazon Detective is currently in preview. Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.
"""
ListMembers(GraphArn) = detective("POST", "/graph/members/list")

"""
Amazon Detective is currently in preview. Creates a new behavior graph for the calling account, and sets that account as the master account. This operation is called by the account that is enabling Detective. The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.  CreateGraph triggers a process to create the corresponding data tables for the new behavior graph. An account can only be the master account for one behavior graph within a Region. If the same account calls CreateGraph with the same master account, it always returns the same behavior graph ARN. It does not create a new behavior graph.
"""
CreateGraph() = detective("POST", "/graph")

"""
Amazon Detective is currently in preview. Deletes one or more member accounts from the master account behavior graph. This operation can only be called by a Detective master account. That account cannot use DeleteMembers to delete their own account from the behavior graph. To disable a behavior graph, the master account uses the DeleteGraph API method.
"""
DeleteMembers(GraphArn, AccountIds) = detective("POST", "/graph/members/removal")

"""
Amazon Detective is currently in preview. Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account.  The request provides the ARN of behavior graph. The member account status in the graph must be INVITED.
"""
AcceptInvitation(GraphArn) = detective("PUT", "/invitation")

"""
Amazon Detective is currently in preview. Returns the list of behavior graphs that the calling account is a master of. This operation can only be called by a master account. Because an account can currently only be the master of one behavior graph within a Region, the results always contain a single graph.
"""
ListGraphs() = detective("POST", "/graphs/list")

"""
Amazon Detective is currently in preview. Returns the membership details for specified member accounts for a behavior graph.
"""
GetMembers(GraphArn, AccountIds) = detective("POST", "/graph/members/get")
end
