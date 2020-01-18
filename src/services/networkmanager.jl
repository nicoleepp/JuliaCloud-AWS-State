module aws_networkmanager
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: networkmanager

"""
Gets information about one or more of your devices in a global network.
"""
GetDevices(GlobalNetworkId) = networkmanager("GET", "/global-networks/$globalNetworkId/devices")

"""
Lists the tags for a specified resource.
"""
ListTagsForResource(ResourceArn) = networkmanager("GET", "/tags/$resourceArn")

"""
Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.
"""
DeleteGlobalNetwork(GlobalNetworkId) = networkmanager("DELETE", "/global-networks/$globalNetworkId")

"""
Deletes an existing link. You must first disassociate the link from any devices and customer gateways.
"""
DeleteLink(GlobalNetworkId, LinkId) = networkmanager("DELETE", "/global-networks/$globalNetworkId/links/$linkId")

"""
Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
"""
AssociateLink(GlobalNetworkId, DeviceId, LinkId) = networkmanager("POST", "/global-networks/$globalNetworkId/link-associations")

"""
Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
"""
CreateDevice(GlobalNetworkId) = networkmanager("POST", "/global-networks/$globalNetworkId/devices")

"""
Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.
"""
DeregisterTransitGateway(GlobalNetworkId, TransitGatewayArn) = networkmanager("DELETE", "/global-networks/$globalNetworkId/transit-gateway-registrations/$transitGatewayArn")

"""
Creates a new link for a specified site.
"""
CreateLink(GlobalNetworkId, Bandwidth, SiteId) = networkmanager("POST", "/global-networks/$globalNetworkId/links")

"""
Creates a new, empty global network.
"""
CreateGlobalNetwork() = networkmanager("POST", "/global-networks")

"""
Gets information about the transit gateway registrations in a specified global network.
"""
GetTransitGatewayRegistrations(GlobalNetworkId) = networkmanager("GET", "/global-networks/$globalNetworkId/transit-gateway-registrations")

"""
Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
"""
GetLinkAssociations(GlobalNetworkId) = networkmanager("GET", "/global-networks/$globalNetworkId/link-associations")

"""
Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.
"""
DisassociateLink(GlobalNetworkId, DeviceId, LinkId) = networkmanager("DELETE", "/global-networks/$globalNetworkId/link-associations")

"""
Gets the association information for customer gateways that are associated with devices and links in your global network.
"""
GetCustomerGatewayAssociations(GlobalNetworkId) = networkmanager("GET", "/global-networks/$globalNetworkId/customer-gateway-associations")

"""
Tags a specified resource.
"""
TagResource(ResourceArn, Tags) = networkmanager("POST", "/tags/$resourceArn")

"""
Creates a new site in a global network.
"""
CreateSite(GlobalNetworkId) = networkmanager("POST", "/global-networks/$globalNetworkId/sites")

"""
Removes tags from a specified resource.
"""
UntagResource(ResourceArn, TagKeys) = networkmanager("DELETE", "/tags/$resourceArn")

"""
Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.
"""
UpdateLink(GlobalNetworkId, LinkId) = networkmanager("PATCH", "/global-networks/$globalNetworkId/links/$linkId")

"""
Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.
"""
UpdateSite(GlobalNetworkId, SiteId) = networkmanager("PATCH", "/global-networks/$globalNetworkId/sites/$siteId")

"""
Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
"""
DescribeGlobalNetworks() = networkmanager("GET", "/global-networks")

"""
Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 
"""
AssociateCustomerGateway(CustomerGatewayArn, GlobalNetworkId, DeviceId) = networkmanager("POST", "/global-networks/$globalNetworkId/customer-gateway-associations")

"""
Updates an existing global network. To remove information for any of the parameters, specify an empty string.
"""
UpdateGlobalNetwork(GlobalNetworkId) = networkmanager("PATCH", "/global-networks/$globalNetworkId")

"""
Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
"""
GetLinks(GlobalNetworkId) = networkmanager("GET", "/global-networks/$globalNetworkId/links")

"""
Disassociates a customer gateway from a device and a link.
"""
DisassociateCustomerGateway(GlobalNetworkId, CustomerGatewayArn) = networkmanager("DELETE", "/global-networks/$globalNetworkId/customer-gateway-associations/$customerGatewayArn")

"""
Deletes an existing device. You must first disassociate the device from any links and customer gateways.
"""
DeleteDevice(GlobalNetworkId, DeviceId) = networkmanager("DELETE", "/global-networks/$globalNetworkId/devices/$deviceId")

"""
Deletes an existing site. The site cannot be associated with any device or link.
"""
DeleteSite(GlobalNetworkId, SiteId) = networkmanager("DELETE", "/global-networks/$globalNetworkId/sites/$siteId")

"""
Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
"""
RegisterTransitGateway(GlobalNetworkId, TransitGatewayArn) = networkmanager("POST", "/global-networks/$globalNetworkId/transit-gateway-registrations")

"""
Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.
"""
UpdateDevice(GlobalNetworkId, DeviceId) = networkmanager("PATCH", "/global-networks/$globalNetworkId/devices/$deviceId")

"""
Gets information about one or more of your sites in a global network.
"""
GetSites(GlobalNetworkId) = networkmanager("GET", "/global-networks/$globalNetworkId/sites")
end
