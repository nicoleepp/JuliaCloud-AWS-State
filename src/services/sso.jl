module aws_sso
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: sso

"""
Removes the client- and server-side session that is associated with the user.
"""
Logout(accessToken) = sso("POST", "/logout")

"""
Returns the STS short-term credentials for a given role name that is assigned to the user.
"""
GetRoleCredentials(roleName, accountId, accessToken) = sso("GET", "/federation/credentials")

"""
Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the AWS SSO User Guide. This operation returns a paginated response.
"""
ListAccounts(accessToken) = sso("GET", "/assignment/accounts")

"""
Lists all roles that are assigned to the user for a given AWS account.
"""
ListAccountRoles(accessToken, accountId) = sso("GET", "/assignment/roles")
end
