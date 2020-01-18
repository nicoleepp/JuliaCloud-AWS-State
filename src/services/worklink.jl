module aws_worklink
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: worklink

"""
Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. 
"""
DisassociateDomain(FleetArn, DomainName) = worklink("POST", "/disassociateDomain")

"""
Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
"""
AssociateWebsiteCertificateAuthority(FleetArn, Certificate) = worklink("POST", "/associateWebsiteCertificateAuthority")

"""
Updates the company network configuration for the fleet.
"""
UpdateCompanyNetworkConfiguration(FleetArn, VpcId, SubnetIds, SecurityGroupIds) = worklink("POST", "/updateCompanyNetworkConfiguration")

"""
Retrieves a list of devices registered with the specified fleet.
"""
ListDevices(FleetArn) = worklink("POST", "/listDevices")

"""
Describes the device policy configuration for the specified fleet.
"""
DescribeDevicePolicyConfiguration(FleetArn) = worklink("POST", "/describeDevicePolicyConfiguration")

"""
Updates the device policy configuration for the fleet.
"""
UpdateDevicePolicyConfiguration(FleetArn) = worklink("POST", "/updateDevicePolicyConfiguration")

"""
Provides information about the domain.
"""
DescribeDomain(FleetArn, DomainName) = worklink("POST", "/describeDomain")

"""
Moves a domain to ACTIVE status if it was in the INACTIVE status.
"""
RestoreDomainAccess(FleetArn, DomainName) = worklink("POST", "/restoreDomainAccess")

"""
Removes a certificate authority (CA).
"""
DisassociateWebsiteCertificateAuthority(FleetArn, WebsiteCaId) = worklink("POST", "/disassociateWebsiteCertificateAuthority")

"""
Moves a domain to INACTIVE status if it was in the ACTIVE status.
"""
RevokeDomainAccess(FleetArn, DomainName) = worklink("POST", "/revokeDomainAccess")

"""
Retrieves a list of domains associated to a specified fleet.
"""
ListDomains(FleetArn) = worklink("POST", "/listDomains")

"""
Updates domain metadata, such as DisplayName.
"""
UpdateDomainMetadata(FleetArn, DomainName) = worklink("POST", "/updateDomainMetadata")

"""
Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
"""
DescribeFleetMetadata(FleetArn) = worklink("POST", "/describeFleetMetadata")

"""
Retrieves a list of fleets for the current account and Region.
"""
ListFleets() = worklink("POST", "/listFleets")

"""
Provides information about the certificate authority.
"""
DescribeWebsiteCertificateAuthority(FleetArn, WebsiteCaId) = worklink("POST", "/describeWebsiteCertificateAuthority")

"""
Specifies a domain to be associated to Amazon WorkLink.
"""
AssociateDomain(FleetArn, DomainName, AcmCertificateArn) = worklink("POST", "/associateDomain")

"""
Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
"""
DisassociateWebsiteAuthorizationProvider(FleetArn, AuthorizationProviderId) = worklink("POST", "/disassociateWebsiteAuthorizationProvider")

"""
Updates the audit stream configuration for the fleet.
"""
UpdateAuditStreamConfiguration(FleetArn) = worklink("POST", "/updateAuditStreamConfiguration")

"""
Updates fleet metadata, such as DisplayName.
"""
UpdateFleetMetadata(FleetArn) = worklink("POST", "/UpdateFleetMetadata")

"""
Retrieves a list of certificate authorities added for the current account and Region.
"""
ListWebsiteCertificateAuthorities(FleetArn) = worklink("POST", "/listWebsiteCertificateAuthorities")

"""
Retrieves a list of website authorization providers associated with a specified fleet.
"""
ListWebsiteAuthorizationProviders(FleetArn) = worklink("POST", "/listWebsiteAuthorizationProviders")

"""
Deletes a fleet. Prevents users from accessing previously associated websites. 
"""
DeleteFleet(FleetArn) = worklink("POST", "/deleteFleet")

"""
Provides information about a user's device.
"""
DescribeDevice(FleetArn, DeviceId) = worklink("POST", "/describeDevice")

"""
Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
"""
AssociateWebsiteAuthorizationProvider(FleetArn, AuthorizationProviderType) = worklink("POST", "/associateWebsiteAuthorizationProvider")

"""
Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
"""
SignOutUser(FleetArn, Username) = worklink("POST", "/signOutUser")

"""
Updates the identity provider configuration for the fleet.
"""
UpdateIdentityProviderConfiguration(FleetArn, IdentityProviderType) = worklink("POST", "/updateIdentityProviderConfiguration")

"""
Describes the configuration for delivering audit streams to the customer account.
"""
DescribeAuditStreamConfiguration(FleetArn) = worklink("POST", "/describeAuditStreamConfiguration")

"""
Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
"""
CreateFleet(FleetName) = worklink("POST", "/createFleet")

"""
Describes the networking configuration to access the internal websites associated with the specified fleet.
"""
DescribeCompanyNetworkConfiguration(FleetArn) = worklink("POST", "/describeCompanyNetworkConfiguration")

"""
Describes the identity provider configuration of the specified fleet.
"""
DescribeIdentityProviderConfiguration(FleetArn) = worklink("POST", "/describeIdentityProviderConfiguration")
end
