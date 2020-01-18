module aws_ram
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: ram

"""
Gets the resources or principals for the resource shares that you own.
"""
GetResourceShareAssociations(associationType) = ram("POST", "/getresourceshareassociations")

"""
Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.
"""
EnableSharingWithAwsOrganization() = ram("POST", "/enablesharingwithawsorganization")

"""
Gets the contents of an AWS RAM permission in JSON format.
"""
GetPermission(permissionArn) = ram("POST", "/getpermission")

"""
Lists the principals that you have shared resources with or that have shared resources with you.
"""
ListPrincipals(resourceOwner) = ram("POST", "/listprincipals")

"""
Gets the invitations for resource sharing that you've received.
"""
GetResourceShareInvitations() = ram("POST", "/getresourceshareinvitations")

"""
Updates the specified resource share that you own.
"""
UpdateResourceShare(resourceShareArn) = ram("POST", "/updateresourceshare")

"""
Lists the AWS RAM permissions.
"""
ListPermissions() = ram("POST", "/listpermissions")

"""
Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  
"""
PromoteResourceShareCreatedFromPolicy(resourceShareArn) = ram("POST", "/promoteresourcesharecreatedfrompolicy")

"""
Lists the AWS RAM permissions that are associated with a resource share.
"""
ListResourceSharePermissions(resourceShareArn) = ram("POST", "/listresourcesharepermissions")

"""
Gets the policies for the specified resources that you own and have shared.
"""
GetResourcePolicies(resourceArns) = ram("POST", "/getresourcepolicies")

"""
Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
"""
ListPendingInvitationResources(resourceShareInvitationArn) = ram("POST", "/listpendinginvitationresources")

"""
Disassociates an AWS RAM permission from a resource share.
"""
DisassociateResourceSharePermission(resourceShareArn, permissionArn) = ram("POST", "/disassociateresourcesharepermission")

"""
Creates a resource share.
"""
CreateResourceShare(name) = ram("POST", "/createresourceshare")

"""
Disassociates the specified principals or resources from the specified resource share.
"""
DisassociateResourceShare(resourceShareArn) = ram("POST", "/disassociateresourceshare")

"""
Deletes the specified resource share.
"""
DeleteResourceShare(resourceShareArn) = ram("DELETE", "/deleteresourceshare")

"""
Adds the specified tags to the specified resource share that you own.
"""
TagResource(resourceShareArn, tags) = ram("POST", "/tagresource")

"""
Removes the specified tags from the specified resource share that you own.
"""
UntagResource(resourceShareArn, tagKeys) = ram("POST", "/untagresource")

"""
Associates the specified resource share with the specified principals and resources.
"""
AssociateResourceShare(resourceShareArn) = ram("POST", "/associateresourceshare")

"""
Gets the resource shares that you own or the resource shares that are shared with you.
"""
GetResourceShares(resourceOwner) = ram("POST", "/getresourceshares")

"""
Associates a permission with a resource share.
"""
AssociateResourceSharePermission(resourceShareArn, permissionArn) = ram("POST", "/associateresourcesharepermission")

"""
Accepts an invitation to a resource share from another AWS account.
"""
AcceptResourceShareInvitation(resourceShareInvitationArn) = ram("POST", "/acceptresourceshareinvitation")

"""
Rejects an invitation to a resource share from another AWS account.
"""
RejectResourceShareInvitation(resourceShareInvitationArn) = ram("POST", "/rejectresourceshareinvitation")

"""
Lists the resources that you added to a resource shares or the resources that are shared with you.
"""
ListResources(resourceOwner) = ram("POST", "/listresources")
end
