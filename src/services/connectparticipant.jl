module aws_connectparticipant
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: connectparticipant

"""
Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until the they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.
"""
CreateParticipantConnection(Type, ParticipantToken) = connectparticipant("POST", "/participant/connection")

"""
Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
GetTranscript(ConnectionToken) = connectparticipant("POST", "/participant/transcript")

"""
Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
SendEvent(ContentType, ConnectionToken) = connectparticipant("POST", "/participant/event")

"""
Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
SendMessage(ContentType, Content, ConnectionToken) = connectparticipant("POST", "/participant/message")

"""
Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
DisconnectParticipant(ConnectionToken) = connectparticipant("POST", "/participant/disconnect")
end
