module aws_apigatewaymanagementapi
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: apigatewaymanagementapi

"""
Get information about the connection with the provided id.
"""
GetConnection(ConnectionId) = apigatewaymanagementapi("GET", "/@connections/$connectionId")

"""
Sends the provided data to the specified connection.
"""
PostToConnection(ConnectionId, Data) = apigatewaymanagementapi("POST", "/@connections/$connectionId")

"""
Delete the connection with the provided id.
"""
DeleteConnection(ConnectionId) = apigatewaymanagementapi("DELETE", "/@connections/$connectionId")
end
