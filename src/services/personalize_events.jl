module aws_personalize_events
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: personalize_events

"""
Records user interaction event data.
"""
PutEvents(trackingId, sessionId, eventList) = personalize_events("POST", "/events")
end
