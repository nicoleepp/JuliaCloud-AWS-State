module aws_iot_data_plane
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iot_data_plane

"""
Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
"""
GetThingShadow(thingName) = iot_data_plane("GET", "/things/$thingName/shadow")

"""
Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
"""
DeleteThingShadow(thingName) = iot_data_plane("DELETE", "/things/$thingName/shadow")

"""
Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
"""
Publish(topic) = iot_data_plane("POST", "/topics/$topic")

"""
Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
"""
UpdateThingShadow(thingName, payload) = iot_data_plane("POST", "/things/$thingName/shadow")
end
