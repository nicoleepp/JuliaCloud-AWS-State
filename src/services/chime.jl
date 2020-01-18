module aws_chime
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: chime

"""
Deletes the specified Amazon Chime account. You must suspend all users before deleting a Team account. You can use the BatchSuspendUser action to do so. For EnterpriseLWA and EnterpriseAD accounts, you must release the claimed domains for your Amazon Chime account before deletion. As soon as you release the domain, all users under that account are suspended. Deleted accounts appear in your Disabled accounts list for 90 days. To restore a deleted account from your Disabled accounts list, you must contact AWS Support. After 90 days, deleted accounts are permanently removed from your Disabled accounts list.
"""
DeleteAccount(AccountId) = chime("DELETE", "/accounts/$accountId")

"""
Deletes the specified Amazon Chime Voice Connector. Any phone numbers associated with the Amazon Chime Voice Connector must be disassociated from it before it can be deleted.
"""
DeleteVoiceConnector(VoiceConnectorId) = chime("DELETE", "/voice-connectors/$voiceConnectorId")

"""
Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.
"""
UpdateBot(AccountId, BotId) = chime("POST", "/accounts/$accountId/bots/$botId")

"""
Creates a user under the specified Amazon Chime account.
"""
CreateUser(AccountId) = chime("POST", "/accounts/$accountId/users?operation=create")

"""
Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.
"""
ListPhoneNumbers() = chime("GET", "/phone-numbers")

"""
Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
CreateMeeting(ClientRequestToken) = chime("POST", "/meetings")

"""
Lists the SIP credentials for the specified Amazon Chime Voice Connector.
"""
ListVoiceConnectorTerminationCredentials(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId/termination/credentials")

"""
Removes the suspension from up to 50 previously suspended users for the specified Amazon Chime EnterpriseLWA account. Only users on EnterpriseLWA accounts can be unsuspended using this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Previously suspended users who are unsuspended using this action are returned to Registered status. Users who are not previously suspended are ignored.
"""
BatchUnsuspendUser(AccountId, UserIdList) = chime("POST", "/accounts/$accountId/users?operation=unsuspend")

"""
Updates details for the specified Amazon Chime Voice Connector.
"""
UpdateVoiceConnector(VoiceConnectorId, Name, RequireEncryption) = chime("PUT", "/voice-connectors/$voiceConnectorId")

"""
Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.
"""
GetBot(AccountId, BotId) = chime("GET", "/accounts/$accountId/bots/$botId")

"""
Regenerates the security token for a bot.
"""
RegenerateSecurityToken(AccountId, BotId) = chime("POST", "/accounts/$accountId/bots/$botId?operation=regenerate-security-token")

"""
Retrieves details for the specified Amazon Chime account, such as account type and supported licenses.
"""
GetAccount(AccountId) = chime("GET", "/accounts/$accountId")

"""
Retrieves the logging configuration details for the specified Amazon Chime Voice Connector. Shows whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.
"""
GetVoiceConnectorLoggingConfiguration(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId/logging-configuration")

"""
Updates room details, such as the room name.
"""
UpdateRoom(AccountId, RoomId) = chime("POST", "/accounts/$accountId/rooms/$roomId")

"""
Updates phone number details, such as product type or calling name, for the specified phone number ID. You can update one phone number detail at a time. For example, you can update either the product type or the calling name in one action. For toll-free numbers, you must use the Amazon Chime Voice Connector product type. Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.
"""
UpdatePhoneNumber(PhoneNumberId) = chime("POST", "/phone-numbers/$phoneNumberId")

"""
Updates the settings for the specified Amazon Chime account. You can update settings for remote control of shared screens, or for the dial-out option. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.
"""
UpdateAccountSettings(AccountId, AccountSettings) = chime("PUT", "/accounts/$accountId/settings")

"""
Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can associate up to three existing Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by including VoiceConnectorItems in the request. You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.
"""
CreateVoiceConnectorGroup(Name) = chime("POST", "/voice-connector-groups")

"""
Deletes the specified SIP credentials used by your equipment to authenticate during call termination.
"""
DeleteVoiceConnectorTerminationCredentials(VoiceConnectorId) = chime("POST", "/voice-connectors/$voiceConnectorId/termination/credentials?operation=delete")

"""
Adds origination settings for the specified Amazon Chime Voice Connector.
"""
PutVoiceConnectorOrigination(VoiceConnectorId, Origination) = chime("PUT", "/voice-connectors/$voiceConnectorId/origination")

"""
Retrieves the streaming configuration details for the specified Amazon Chime Voice Connector. Shows whether media streaming is enabled for sending to Amazon Kinesis. It also shows the retention period, in hours, for the Amazon Kinesis data.
"""
GetVoiceConnectorStreamingConfiguration(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId/streaming-configuration")

"""
Creates an events configuration that allows a bot to receive outgoing events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information, see Bot.
"""
PutEventsConfiguration(AccountId, BotId) = chime("PUT", "/accounts/$accountId/bots/$botId/events-configuration")

"""
Logs out the specified user from all of the devices they are currently logged into.
"""
LogoutUser(AccountId, UserId) = chime("POST", "/accounts/$accountId/users/$userId?operation=logout")

"""
Searches phone numbers that can be ordered.
"""
SearchAvailablePhoneNumbers() = chime("GET", "/search?type=phone-numbers")

"""
Moves phone numbers into the Deletion queue. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted. Phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.
"""
BatchDeletePhoneNumber(PhoneNumberIds) = chime("POST", "/phone-numbers?operation=batch-delete")

"""
Deletes the specified Amazon Chime SDK meeting. When a meeting is deleted, its attendees are also deleted and clients can no longer join it. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
DeleteMeeting(MeetingId) = chime("DELETE", "/meetings/$meetingId")

"""
Retrieves the phone number settings for the administrator's AWS account, such as the default outbound calling name.
"""
GetPhoneNumberSettings() = chime("GET", "/settings/phone-number")

"""
Adds termination settings for the specified Amazon Chime Voice Connector.
"""
PutVoiceConnectorTermination(VoiceConnectorId, Termination) = chime("PUT", "/voice-connectors/$voiceConnectorId/termination")

"""
Adds termination SIP credentials for the specified Amazon Chime Voice Connector.
"""
PutVoiceConnectorTerminationCredentials(VoiceConnectorId) = chime("POST", "/voice-connectors/$voiceConnectorId/termination/credentials?operation=put")

"""
Associates the specified sign-in delegate groups with the specified Amazon Chime account.
"""
AssociateSigninDelegateGroupsWithAccount(AccountId, SigninDelegateGroups) = chime("POST", "/accounts/$accountId?operation=associate-signin-delegate-groups")

"""
Lists the membership details for the specified room, such as the members' IDs, email addresses, and names.
"""
ListRoomMemberships(AccountId, RoomId) = chime("GET", "/accounts/$accountId/rooms/$roomId/memberships")

"""
Adds up to 50 members to a chat room. Members can be either users or bots. The member role designates whether the member is a chat room administrator or a general chat room member.
"""
BatchCreateRoomMembership(AccountId, RoomId, MembershipItemList) = chime("POST", "/accounts/$accountId/rooms/$roomId/memberships?operation=batch-create")

"""
Updates account details for the specified Amazon Chime account. Currently, only account name updates are supported for this action.
"""
UpdateAccount(AccountId) = chime("POST", "/accounts/$accountId")

"""
Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.
"""
ListAccounts() = chime("GET", "/accounts")

"""
Retrieves details for the specified user ID, such as primary email address, license type, and personal meeting PIN. To retrieve user details with an email address instead of a user ID, use the ListUsers action, and then filter by email address.
"""
GetUser(AccountId, UserId) = chime("GET", "/accounts/$accountId/users/$userId")

"""
Lists the Amazon Chime Voice Connectors for the administrator's AWS account.
"""
ListVoiceConnectors() = chime("GET", "/voice-connectors")

"""
Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.
"""
ListBots(AccountId) = chime("GET", "/accounts/$accountId/bots")

"""
Deletes the events configuration that allows a bot to receive outgoing events.
"""
DeleteEventsConfiguration(AccountId, BotId) = chime("DELETE", "/accounts/$accountId/bots/$botId/events-configuration")

"""
Deletes the origination settings for the specified Amazon Chime Voice Connector.
"""
DeleteVoiceConnectorOrigination(VoiceConnectorId) = chime("DELETE", "/voice-connectors/$voiceConnectorId/origination")

"""
Associates phone numbers with the specified Amazon Chime Voice Connector group.
"""
AssociatePhoneNumbersWithVoiceConnectorGroup(VoiceConnectorGroupId) = chime("POST", "/voice-connector-groups/$voiceConnectorGroupId?operation=associate-phone-numbers")

"""
Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.
"""
PutVoiceConnectorLoggingConfiguration(VoiceConnectorId, LoggingConfiguration) = chime("PUT", "/voice-connectors/$voiceConnectorId/logging-configuration")

"""
Retrieves details for the specified phone number order, such as order creation timestamp, phone numbers in E.164 format, product type, and order status.
"""
GetPhoneNumberOrder(PhoneNumberOrderId) = chime("GET", "/phone-number-orders/$phoneNumberOrderId")

"""
Creates a chat room for the specified Amazon Chime account.
"""
CreateRoom(AccountId, Name) = chime("POST", "/accounts/$accountId/rooms")

"""
Updates the phone number settings for the administrator's AWS account, such as the default outbound calling name. You can update the default outbound calling name once every seven days. Outbound calling names can take up to 72 hours to update.
"""
UpdatePhoneNumberSettings(CallingName) = chime("PUT", "/settings/phone-number")

"""
Updates phone number product types or calling names. You can update one attribute at a time for each UpdatePhoneNumberRequestItem. For example, you can update either the product type or the calling name. For product types, choose from Amazon Chime Business Calling and Amazon Chime Voice Connector. For toll-free numbers, you must use the Amazon Chime Voice Connector product type. Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.
"""
BatchUpdatePhoneNumber(UpdatePhoneNumberRequestItems) = chime("POST", "/phone-numbers?operation=batch-update")

"""
Creates an Amazon Chime Voice Connector under the administrator's AWS account. You can choose to create an Amazon Chime Voice Connector in a specific AWS Region. Enabling CreateVoiceConnectorRequest$RequireEncryption configures your Amazon Chime Voice Connector to use TLS transport for SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and unencrypted outbound calls are blocked.
"""
CreateVoiceConnector(Name, RequireEncryption) = chime("POST", "/voice-connectors")

"""
Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector.
"""
DisassociatePhoneNumbersFromVoiceConnector(VoiceConnectorId) = chime("POST", "/voice-connectors/$voiceConnectorId?operation=disassociate-phone-numbers")

"""
Disassociates the primary provisioned phone number from the specified Amazon Chime user.
"""
DisassociatePhoneNumberFromUser(AccountId, UserId) = chime("POST", "/accounts/$accountId/users/$userId?operation=disassociate-phone-number")

"""
Retrieves details for the specified Amazon Chime Voice Connector group, such as timestamps, name, and associated VoiceConnectorItems.
"""
GetVoiceConnectorGroup(VoiceConnectorGroupId) = chime("GET", "/voice-connector-groups/$voiceConnectorGroupId")

"""
Deletes the termination settings for the specified Amazon Chime Voice Connector.
"""
DeleteVoiceConnectorTermination(VoiceConnectorId) = chime("DELETE", "/voice-connectors/$voiceConnectorId/termination")

"""
Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.
"""
ListVoiceConnectorGroups() = chime("GET", "/voice-connector-groups")

"""
Updates user details for a specified user ID. Currently, only LicenseType updates are supported for this action.
"""
UpdateUser(AccountId, UserId) = chime("POST", "/accounts/$accountId/users/$userId")

"""
Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
CreateAttendee(MeetingId, ExternalUserId) = chime("POST", "/meetings/$meetingId/attendees")

"""
Adds a member to a chat room. A member can be either a user or a bot. The member role designates whether the member is a chat room administrator or a general chat room member.
"""
CreateRoomMembership(AccountId, RoomId, MemberId) = chime("POST", "/accounts/$accountId/rooms/$roomId/memberships")

"""
Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
"""
GetGlobalSettings() = chime("GET", "/settings")

"""
Retrieves termination setting details for the specified Amazon Chime Voice Connector.
"""
GetVoiceConnectorTermination(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId/termination")

"""
Updates room membership details, such as the member role. The member role designates whether the member is a chat room administrator or a general chat room member. The member role can be updated only for user IDs.
"""
UpdateRoomMembership(AccountId, RoomId, MemberId) = chime("POST", "/accounts/$accountId/rooms/$roomId/memberships/$memberId")

"""
Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN. 
"""
GetEventsConfiguration(AccountId, BotId) = chime("GET", "/accounts/$accountId/bots/$botId/events-configuration")

"""
Retrieves room details, such as the room name.
"""
GetRoom(AccountId, RoomId) = chime("GET", "/accounts/$accountId/rooms/$roomId")

"""
Creates up to 100 new attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide. 
"""
BatchCreateAttendee(MeetingId, Attendees) = chime("POST", "/meetings/$meetingId/attendees?operation=batch-create")

"""
Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming configuration specifies whether media streaming is enabled for sending to Amazon Kinesis. It also sets the retention period, in hours, for the Amazon Kinesis data.
"""
PutVoiceConnectorStreamingConfiguration(VoiceConnectorId, StreamingConfiguration) = chime("PUT", "/voice-connectors/$voiceConnectorId/streaming-configuration")

"""
Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.
"""
ListUsers(AccountId) = chime("GET", "/accounts/$accountId/users")

"""
Updates the settings for the specified user, such as phone number settings.
"""
UpdateUserSettings(AccountId, UserId, UserSettings) = chime("PUT", "/accounts/$accountId/users/$userId/settings")

"""
Retrieves information about the last time a SIP OPTIONS ping was received from your SIP infrastructure for the specified Amazon Chime Voice Connector.
"""
GetVoiceConnectorTerminationHealth(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId/termination/health")

"""
Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
ListMeetings() = chime("GET", "/meetings")

"""
Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
"""
UpdateGlobalSettings(BusinessCalling, VoiceConnector) = chime("PUT", "/settings")

"""
Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
GetAttendee(MeetingId, AttendeeId) = chime("GET", "/meetings/$meetingId/attendees/$attendeeId")

"""
Creates an Amazon Chime account under the administrator's AWS account. Only Team account types are currently supported for this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide.
"""
CreateAccount(Name) = chime("POST", "/accounts")

"""
Creates a bot for an Amazon Chime Enterprise account.
"""
CreateBot(DisplayName, AccountId) = chime("POST", "/accounts/$accountId/bots")

"""
Disassociates the specified sign-in delegate groups from the specified Amazon Chime account.
"""
DisassociateSigninDelegateGroupsFromAccount(AccountId, GroupNames) = chime("POST", "/accounts/$accountId?operation=disassociate-signin-delegate-groups")

"""
Associates a phone number with the specified Amazon Chime user.
"""
AssociatePhoneNumberWithUser(AccountId, UserId, E164PhoneNumber) = chime("POST", "/accounts/$accountId/users/$userId?operation=associate-phone-number")

"""
Retrieves origination setting details for the specified Amazon Chime Voice Connector.
"""
GetVoiceConnectorOrigination(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId/origination")

"""
Retrieves account settings for the specified Amazon Chime account ID, such as remote control and dial out settings. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.
"""
GetAccountSettings(AccountId) = chime("GET", "/accounts/$accountId/settings")

"""
Deletes a chat room.
"""
DeleteRoom(AccountId, RoomId) = chime("DELETE", "/accounts/$accountId/rooms/$roomId")

"""
Retrieves details for the specified Amazon Chime Voice Connector, such as timestamps, name, outbound host, and encryption requirements.
"""
GetVoiceConnector(VoiceConnectorId) = chime("GET", "/voice-connectors/$voiceConnectorId")

"""
Suspends up to 50 users from a Team or EnterpriseLWA Amazon Chime account. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Users suspended from a Team account are disassociated from the account, but they can continue to use Amazon Chime as free users. To remove the suspension from suspended Team account users, invite them to the Team account again. You can use the InviteUsers action to do so. Users suspended from an EnterpriseLWA account are immediately signed out of Amazon Chime and can no longer sign in. To remove the suspension from suspended EnterpriseLWA account users, use the BatchUnsuspendUser action.  To sign out users without suspending them, use the LogoutUser action.
"""
BatchSuspendUser(AccountId, UserIdList) = chime("POST", "/accounts/$accountId/users?operation=suspend")

"""
Deletes the streaming configuration for the specified Amazon Chime Voice Connector.
"""
DeleteVoiceConnectorStreamingConfiguration(VoiceConnectorId) = chime("DELETE", "/voice-connectors/$voiceConnectorId/streaming-configuration")

"""
Retrieves settings for the specified user ID, such as any associated phone number settings.
"""
GetUserSettings(AccountId, UserId) = chime("GET", "/accounts/$accountId/users/$userId/settings")

"""
Sends email to a maximum of 50 users, inviting them to the specified Amazon Chime Team account. Only Team account types are currently supported for this action. 
"""
InviteUsers(AccountId, UserEmailList) = chime("POST", "/accounts/$accountId/users?operation=add")

"""
Updates details for the specified Amazon Chime Voice Connector group, such as the name and Amazon Chime Voice Connector priority ranking.
"""
UpdateVoiceConnectorGroup(VoiceConnectorGroupId, Name, VoiceConnectorItems) = chime("PUT", "/voice-connector-groups/$voiceConnectorGroupId")

"""
Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
GetMeeting(MeetingId) = chime("GET", "/meetings/$meetingId")

"""
Deletes the specified Amazon Chime Voice Connector group. Any VoiceConnectorItems and phone numbers associated with the group must be removed before it can be deleted.
"""
DeleteVoiceConnectorGroup(VoiceConnectorGroupId) = chime("DELETE", "/voice-connector-groups/$voiceConnectorGroupId")

"""
Lists the room details for the specified Amazon Chime account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.
"""
ListRooms(AccountId) = chime("GET", "/accounts/$accountId/rooms")

"""
Associates phone numbers with the specified Amazon Chime Voice Connector.
"""
AssociatePhoneNumbersWithVoiceConnector(VoiceConnectorId) = chime("POST", "/voice-connectors/$voiceConnectorId?operation=associate-phone-numbers")

"""
Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.
"""
GetPhoneNumber(PhoneNumberId) = chime("GET", "/phone-numbers/$phoneNumberId")

"""
Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector group.
"""
DisassociatePhoneNumbersFromVoiceConnectorGroup(VoiceConnectorGroupId) = chime("POST", "/voice-connector-groups/$voiceConnectorGroupId?operation=disassociate-phone-numbers")

"""
Updates user details within the UpdateUserRequestItem object for up to 20 users for the specified Amazon Chime account. Currently, only LicenseType updates are supported for this action.
"""
BatchUpdateUser(AccountId, UpdateUserRequestItems) = chime("POST", "/accounts/$accountId/users")

"""
Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns the User object with the updated personal meeting PIN.
"""
ResetPersonalPIN(AccountId, UserId) = chime("POST", "/accounts/$accountId/users/$userId?operation=reset-personal-pin")

"""
Moves a phone number from the Deletion queue back into the phone number Inventory.
"""
RestorePhoneNumber(PhoneNumberId) = chime("POST", "/phone-numbers/$phoneNumberId?operation=restore")

"""
Removes a member from a chat room.
"""
DeleteRoomMembership(AccountId, RoomId, MemberId) = chime("DELETE", "/accounts/$accountId/rooms/$roomId/memberships/$memberId")

"""
Creates an order for phone numbers to be provisioned. Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector product types. For toll-free numbers, you must use the Amazon Chime Voice Connector product type.
"""
CreatePhoneNumberOrder(ProductType, E164PhoneNumbers) = chime("POST", "/phone-number-orders")

"""
Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
ListAttendees(MeetingId) = chime("GET", "/meetings/$meetingId/attendees")

"""
Moves the specified phone number into the Deletion queue. A phone number must be disassociated from any users or Amazon Chime Voice Connectors before it can be deleted. Deleted phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.
"""
DeletePhoneNumber(PhoneNumberId) = chime("DELETE", "/phone-numbers/$phoneNumberId")

"""
Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
DeleteAttendee(MeetingId, AttendeeId) = chime("DELETE", "/meetings/$meetingId/attendees/$attendeeId")

"""
Lists the phone number orders for the administrator's Amazon Chime account.
"""
ListPhoneNumberOrders() = chime("GET", "/phone-number-orders")
end
