module aws_pinpoint_sms_voice
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: pinpoint_sms_voice

"""
Create a new event destination in a configuration set.
"""
CreateConfigurationSetEventDestination(ConfigurationSetName) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets/$ConfigurationSetName/event-destinations")

"""
Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
"""
GetConfigurationSetEventDestinations(ConfigurationSetName) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets/$ConfigurationSetName/event-destinations")

"""
Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
"""
CreateConfigurationSet() = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets")

"""
Deletes an existing configuration set.
"""
DeleteConfigurationSet(ConfigurationSetName) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/$ConfigurationSetName")

"""
List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
"""
ListConfigurationSets() = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets")

"""
Create a new voice message and send it to a recipient's phone number.
"""
SendVoiceMessage() = pinpoint_sms_voice("POST", "/v1/sms-voice/voice/message")

"""
Deletes an event destination in a configuration set.
"""
DeleteConfigurationSetEventDestination(EventDestinationName, ConfigurationSetName) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/$ConfigurationSetName/event-destinations/$EventDestinationName")

"""
Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
"""
UpdateConfigurationSetEventDestination(EventDestinationName, ConfigurationSetName) = pinpoint_sms_voice("PUT", "/v1/sms-voice/configuration-sets/$ConfigurationSetName/event-destinations/$EventDestinationName")
end
