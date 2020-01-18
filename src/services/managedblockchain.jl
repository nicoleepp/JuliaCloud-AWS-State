module aws_managedblockchain
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: managedblockchain

"""
Returns detailed information about a network.
"""
GetNetwork(NetworkId) = managedblockchain("GET", "/networks/$networkId")

"""
Creates a new blockchain network using Amazon Managed Blockchain.
"""
CreateNetwork(ClientRequestToken, Name, Framework, FrameworkVersion, VotingPolicy, MemberConfiguration) = managedblockchain("POST", "/networks")

"""
Returns detailed information about a peer node.
"""
GetNode(NetworkId, MemberId, NodeId) = managedblockchain("GET", "/networks/$networkId/members/$memberId/nodes/$nodeId")

"""
Returns a listing of proposals for the network.
"""
ListProposals(NetworkId) = managedblockchain("GET", "/networks/$networkId/proposals")

"""
Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.
"""
RejectInvitation(InvitationId) = managedblockchain("DELETE", "/invitations/$invitationId")

"""
Returns a listing of all invitations made on the specified network.
"""
ListInvitations() = managedblockchain("GET", "/invitations")

"""
Returns information about the nodes within a network.
"""
ListNodes(NetworkId, MemberId) = managedblockchain("GET", "/networks/$networkId/members/$memberId/nodes")

"""
Returns detailed information about a member.
"""
GetMember(NetworkId, MemberId) = managedblockchain("GET", "/networks/$networkId/members/$memberId")

"""
Creates a member within a Managed Blockchain network.
"""
CreateMember(ClientRequestToken, InvitationId, NetworkId, MemberConfiguration) = managedblockchain("POST", "/networks/$networkId/members")

"""
Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.
"""
ListProposalVotes(NetworkId, ProposalId) = managedblockchain("GET", "/networks/$networkId/proposals/$proposalId/votes")

"""
Returns a listing of the members in a network and properties of their configurations.
"""
ListMembers(NetworkId) = managedblockchain("GET", "/networks/$networkId/members")

"""
Creates a peer node in a member.
"""
CreateNode(ClientRequestToken, NetworkId, MemberId, NodeConfiguration) = managedblockchain("POST", "/networks/$networkId/members/$memberId/nodes")

"""
Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.
"""
DeleteNode(NetworkId, MemberId, NodeId) = managedblockchain("DELETE", "/networks/$networkId/members/$memberId/nodes/$nodeId")

"""
Returns detailed information about a proposal.
"""
GetProposal(NetworkId, ProposalId) = managedblockchain("GET", "/networks/$networkId/proposals/$proposalId")

"""
Returns information about the networks in which the current AWS account has members.
"""
ListNetworks() = managedblockchain("GET", "/networks")

"""
Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.
"""
CreateProposal(ClientRequestToken, NetworkId, MemberId, Actions) = managedblockchain("POST", "/networks/$networkId/proposals")

"""
Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last AWS account, the network is deleted also.
"""
DeleteMember(NetworkId, MemberId) = managedblockchain("DELETE", "/networks/$networkId/members/$memberId")

"""
Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same AWS account as the principal that calls the action.
"""
VoteOnProposal(NetworkId, ProposalId, VoterMemberId, Vote) = managedblockchain("POST", "/networks/$networkId/proposals/$proposalId/votes")
end
