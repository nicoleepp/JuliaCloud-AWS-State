module aws_iot_1click_devices_service
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iot_1click_devices_service

"""
Lists the tags associated with the specified resource ARN.
"""
ListTagsForResource(ResourceArn) = iot_1click_devices_service("GET", "/tags/$resource-arn")

"""
Lists the 1-Click compatible devices associated with your AWS account.
"""
ListDevices() = iot_1click_devices_service("GET", "/devices")

"""
Given a device ID, issues a request to invoke a named device method (with possible
 parameters). See the "Example POST" code snippet below.
"""
InvokeDeviceMethod(DeviceId) = iot_1click_devices_service("POST", "/devices/$deviceId/methods")

"""
Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per
 resource.
"""
TagResource(ResourceArn, Tags) = iot_1click_devices_service("POST", "/tags/$resource-arn")

"""
Using tag keys, deletes the tags (key/value pairs) associated with the specified
 resource ARN.
"""
UntagResource(TagKeys, ResourceArn) = iot_1click_devices_service("DELETE", "/tags/$resource-arn")

"""
Using a device ID, returns a DeviceEventsResponse object containing an
 array of events for the device.
"""
ListDeviceEvents(DeviceId, FromTimeStamp, ToTimeStamp) = iot_1click_devices_service("GET", "/devices/$deviceId/events")

"""
Given a device ID, finalizes the claim request for the associated device.
 Claiming a device consists of initiating a claim, then publishing a device event,
 and finalizing the claim. For a device of type button, a device event can
 be published by simply clicking the device.
 
"""
FinalizeDeviceClaim(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/finalize-claim")

"""
Adds device(s) to your account (i.e., claim one or more devices) if and only if you
 received a claim code with the device(s).
"""
ClaimDevicesByClaimCode(ClaimCode) = iot_1click_devices_service("PUT", "/claims/$claimCode")

"""
Given a device ID, returns a DescribeDeviceResponse object describing the
 details of the device.
"""
DescribeDevice(DeviceId) = iot_1click_devices_service("GET", "/devices/$deviceId")

"""
Disassociates a device from your AWS account using its device ID.
"""
UnclaimDevice(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/unclaim")

"""
Given a device ID, initiates a claim request for the associated device.
 Claiming a device consists of initiating a claim, then publishing a device event,
 and finalizing the claim. For a device of type button, a device event can
 be published by simply clicking the device.
 
"""
InitiateDeviceClaim(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/initiate-claim")

"""
Given a device ID, returns the invokable methods associated with the device.
"""
GetDeviceMethods(DeviceId) = iot_1click_devices_service("GET", "/devices/$deviceId/methods")

"""
Using a Boolean value (true or false), this operation
 enables or disables the device given a device ID.
"""
UpdateDeviceState(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/state")
end
