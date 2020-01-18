module aws_workmailmessageflow
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: workmailmessageflow

"""
Retrieves the raw content of an in-transit email message, in MIME format. 
"""
GetRawMessageContent(messageId) = workmailmessageflow("GET", "/messages/$messageId")
end
