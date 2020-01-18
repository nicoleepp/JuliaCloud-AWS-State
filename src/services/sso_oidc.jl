module aws_sso_oidc
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: sso_oidc

"""
Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
"""
CreateToken(clientId, clientSecret, grantType, deviceCode) = sso_oidc("POST", "/token")

"""
Initiates device authorization by requesting a pair of verification codes from the authorization service.
"""
StartDeviceAuthorization(clientId, clientSecret, startUrl) = sso_oidc("POST", "/device_authorization")

"""
Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
"""
RegisterClient(clientName, clientType) = sso_oidc("POST", "/client/register")
end
