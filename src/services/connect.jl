module aws_connect
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: connect

"""
Lists the tags for the specified resource.
"""
ListTagsForResource(resourceArn) = connect("GET", "/tags/$resourceArn")

"""
Provides summary information about the security profiles for the specified Amazon Connect instance.
"""
ListSecurityProfiles(InstanceId) = connect("GET", "/security-profiles-summary/$InstanceId")

"""
Provides information about the hours of operation for the specified Amazon Connect instance.
"""
ListHoursOfOperations(InstanceId) = connect("GET", "/hours-of-operations-summary/$InstanceId")

"""
Updates the identity information for the specified user.
"""
UpdateUserIdentityInfo(IdentityInfo, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/identity-info")

"""
Gets the real-time metric data from the specified Amazon Connect instance. For more information, see Real-time Metrics Reports in the Amazon Connect Administrator Guide.
"""
GetCurrentMetricData(InstanceId, Filters, CurrentMetrics) = connect("POST", "/metrics/current/$InstanceId")

"""
Creates a user account for the specified Amazon Connect instance.
"""
CreateUser(Username, PhoneConfig, SecurityProfileIds, RoutingProfileId, InstanceId) = connect("PUT", "/users/$InstanceId")

"""
Provides information about the phone numbers for the specified Amazon Connect instance.
"""
ListPhoneNumbers(InstanceId) = connect("GET", "/phone-numbers-summary/$InstanceId")

"""
Describes the hierarchy structure of the specified Amazon Connect instance.
"""
DescribeUserHierarchyStructure(InstanceId) = connect("GET", "/user-hierarchy-structure/$InstanceId")

"""
Deletes a user account from the specified Amazon Connect instance.
"""
DeleteUser(InstanceId, UserId) = connect("DELETE", "/users/$InstanceId/$UserId")

"""
Provides information about the contact flows for the specified Amazon Connect instance.
"""
ListContactFlows(InstanceId) = connect("GET", "/contact-flows-summary/$InstanceId")

"""
Adds the specified tags to the specified resource. The supported resource type is users.
"""
TagResource(resourceArn, tags) = connect("POST", "/tags/$resourceArn")

"""
Removes the specified tags from the specified resource.
"""
UntagResource(resourceArn, tagKeys) = connect("DELETE", "/tags/$resourceArn")

"""
Assigns the specified routing profile to the specified user.
"""
UpdateUserRoutingProfile(RoutingProfileId, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/routing-profile")

"""
Initiates a contact flow to place an outbound call to a customer. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.
"""
StartOutboundVoiceContact(DestinationPhoneNumber, ContactFlowId, InstanceId) = connect("PUT", "/contact/outbound-voice")

"""
Provides summary information about the hierarchy groups for the specified Amazon Connect instance.
"""
ListUserHierarchyGroups(InstanceId) = connect("GET", "/user-hierarchy-groups-summary/$InstanceId")

"""
Provides summary information about the users for the specified Amazon Connect instance.
"""
ListUsers(InstanceId) = connect("GET", "/users-summary/$InstanceId")

"""
Ends the specified contact.
"""
StopContact(ContactId, InstanceId) = connect("POST", "/contact/stop")

"""
Initiates a contact flow to start a new chat for the customer. Response of this API provides a token required to obtain credentials from the CreateParticipantConnection API in the Amazon Connect Participant Service. When a new chat contact is successfully created, clients need to subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking CreateParticipantConnection with WEBSOCKET and CONNECTION_CREDENTIALS. 
"""
StartChatContact(InstanceId, ContactFlowId, ParticipantDetails) = connect("PUT", "/contact/chat")

"""
Creates or updates the contact attributes associated with the specified contact. You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important: You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
"""
UpdateContactAttributes(InitialContactId, InstanceId, Attributes) = connect("POST", "/contact/attributes")

"""
Assigns the specified hierarchy group to the specified user.
"""
UpdateUserHierarchy(UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/hierarchy")

"""
Retrieves a token for federation.
"""
GetFederationToken(InstanceId) = connect("GET", "/user/federate/$InstanceId")

"""
Updates the phone configuration settings for the specified user.
"""
UpdateUserPhoneConfig(PhoneConfig, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/phone-config")

"""
Provides summary information about the routing profiles for the specified Amazon Connect instance.
"""
ListRoutingProfiles(InstanceId) = connect("GET", "/routing-profiles-summary/$InstanceId")

"""
Gets historical metric data from the specified Amazon Connect instance. For more information, see Historical Metrics Reports in the Amazon Connect Administrator Guide.
"""
GetMetricData(InstanceId, StartTime, EndTime, Filters, HistoricalMetrics) = connect("POST", "/metrics/historical/$InstanceId")

"""
Describes the specified user account. You can find the instance ID in the console (it’s the final part of the ARN). The console does not display the user IDs. Instead, list the users and note the IDs provided in the output.
"""
DescribeUser(UserId, InstanceId) = connect("GET", "/users/$InstanceId/$UserId")

"""
Describes the specified hierarchy group.
"""
DescribeUserHierarchyGroup(HierarchyGroupId, InstanceId) = connect("GET", "/user-hierarchy-groups/$InstanceId/$HierarchyGroupId")

"""
Assigns the specified security profiles to the specified user.
"""
UpdateUserSecurityProfiles(SecurityProfileIds, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/security-profiles")

"""
Provides information about the queues for the specified Amazon Connect instance.
"""
ListQueues(InstanceId) = connect("GET", "/queues-summary/$InstanceId")

"""
Retrieves the contact attributes for the specified contact.
"""
GetContactAttributes(InstanceId, InitialContactId) = connect("GET", "/contact/attributes/$InstanceId/$InitialContactId")
end
