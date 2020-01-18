module aws_pinpoint
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: pinpoint

"""
Retrieves information about the status and settings of the GCM channel for an application.
"""
GetGcmChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/gcm")

"""
Updates an existing message template for messages that are sent through the email channel.
"""
UpdateEmailTemplate(TemplateName, EmailTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/email")

"""
Updates the configuration and other settings for a campaign.
"""
UpdateCampaign(CampaignId, ApplicationId, WriteCampaignRequest) = pinpoint("PUT", "/v1/apps/$application-id/campaigns/$campaign-id")

"""
Disables the email channel for an application and deletes any existing settings for the channel.
"""
DeleteEmailChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/email")

"""
Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.
"""
RemoveAttributes(AttributeType, ApplicationId, UpdateAttributesRequest) = pinpoint("PUT", "/v1/apps/$application-id/attributes/$attribute-type")

"""
Deletes an application.
"""
DeleteApp(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id")

"""
Retrieves the content and settings of a message template for messages that are sent through the email channel.
"""
GetEmailTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/email")

"""
Retrieves information about all the activities for a campaign.
"""
GetCampaignActivities(ApplicationId, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/activities")

"""
Retrieves information about the status and settings of the export jobs for a segment.
"""
GetSegmentExportJobs(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/jobs/export")

"""
Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.
"""
GetSegments(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments")

"""
Retrieves information about the status and settings of the APNs channel for an application.
"""
GetApnsChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns")

"""
Adds one or more tags (keys and values) to an application, campaign, journey, message template, or segment.
"""
TagResource(ResourceArn, TagsModel) = pinpoint("POST", "/v1/tags/$resource-arn")

"""
Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
"""
UpdateSegment(SegmentId, ApplicationId, WriteSegmentRequest) = pinpoint("PUT", "/v1/apps/$application-id/segments/$segment-id")

"""
Disables the ADM channel for an application and deletes any existing settings for the channel.
"""
DeleteAdmChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/adm")

"""
Deletes a message template for messages that were sent through the SMS channel.
"""
DeleteSmsTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/sms")

"""
Retrieves information about the status, configuration, and other settings for a specific version of a campaign.
"""
GetCampaignVersion(Version, ApplicationId, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/versions/$version")

"""
Creates an import job for an application.
"""
CreateImportJob(ApplicationId, ImportJobRequest) = pinpoint("POST", "/v1/apps/$application-id/jobs/import")

"""
Retrieves information about the status and settings of the SMS channel for an application.
"""
GetSmsChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/sms")

"""
Retrieves information about the event stream settings for an application.
"""
GetEventStream(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/eventstream")

"""
Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.
"""
GetSegmentVersion(SegmentId, Version, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/versions/$version")

"""
Deletes a message template for messages that were sent through the email channel.
"""
DeleteEmailTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/email")

"""
Retrieves information about the status, configuration, and other settings for a journey.
"""
GetJourney(JourneyId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id")

"""
Retrieves information about an application.
"""
GetApp(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id")

"""
Retrieves information about the status, configuration, and other settings for a campaign.
"""
GetCampaign(CampaignId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id")

"""
Enables the APNs sandbox channel for an application or updates the status and settings of the APNs sandbox channel for an application.
"""
UpdateApnsSandboxChannel(ApplicationId, APNSSandboxChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_sandbox")

"""
Retrieves information about the history and status of each channel for an application.
"""
GetChannels(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels")

"""
Retrieves information about the settings and attributes of a specific endpoint for an application.
"""
GetEndpoint(ApplicationId, EndpointId) = pinpoint("GET", "/v1/apps/$application-id/endpoints/$endpoint-id")

"""
Deletes a message template for messages that were sent through the voice channel.
"""
DeleteVoiceTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/voice")

"""
Creates a journey for an application.
"""
CreateJourney(ApplicationId, WriteJourneyRequest) = pinpoint("POST", "/v1/apps/$application-id/journeys")

"""
Retrieves information about all the versions of a specific message template.
"""
ListTemplateVersions(TemplateName, TemplateType) = pinpoint("GET", "/v1/templates/$template-name/$template-type/versions")

"""
Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.
"""
GetSegment(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id")

"""
Creates a new campaign for an application or updates the settings of an existing campaign for an application.
"""
CreateCampaign(ApplicationId, WriteCampaignRequest) = pinpoint("POST", "/v1/apps/$application-id/campaigns")

"""
Creates a message template for messages that are sent through the SMS channel.
"""
CreateSmsTemplate(TemplateName, SMSTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/sms")

"""
Updates an existing message template for messages that are sent through the voice channel.
"""
UpdateVoiceTemplate(TemplateName, VoiceTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/voice")

"""
 Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for a batch of endpoints.
"""
UpdateEndpointsBatch(ApplicationId, EndpointBatchRequest) = pinpoint("PUT", "/v1/apps/$application-id/endpoints")

"""
Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey.
"""
GetJourneyExecutionMetrics(ApplicationId, JourneyId) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/execution-metrics")

"""
Changes the status of a specific version of a message template to active.
"""
UpdateTemplateActiveVersion(TemplateName, TemplateType, TemplateActiveVersionRequest) = pinpoint("PUT", "/v1/templates/$template-name/$template-type/active-version")

"""
Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for an endpoint.
"""
UpdateEndpoint(ApplicationId, EndpointId, EndpointRequest) = pinpoint("PUT", "/v1/apps/$application-id/endpoints/$endpoint-id")

"""
Enables the ADM channel for an application or updates the status and settings of the ADM channel for an application.
"""
UpdateAdmChannel(ApplicationId, ADMChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/adm")

"""
Creates an export job for an application.
"""
CreateExportJob(ApplicationId, ExportJobRequest) = pinpoint("POST", "/v1/apps/$application-id/jobs/export")

"""
Retrieves information about the settings for an application.
"""
GetApplicationSettings(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/settings")

"""
Enables the SMS channel for an application or updates the status and settings of the SMS channel for an application.
"""
UpdateSmsChannel(ApplicationId, SMSChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/sms")

"""
Removes one or more tags (keys and values) from an application, campaign, journey, message template, or segment.
"""
UntagResource(TagKeys, ResourceArn) = pinpoint("DELETE", "/v1/tags/$resource-arn")

"""
Disables the APNs channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns")

"""
Enables the email channel for an application or updates the status and settings of the email channel for an application.
"""
UpdateEmailChannel(ApplicationId, EmailChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/email")

"""
Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsVoipChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_voip")

"""
Retrieves information about all the endpoints that are associated with a specific user ID.
"""
GetUserEndpoints(ApplicationId, UserId) = pinpoint("GET", "/v1/apps/$application-id/users/$user-id")

"""
Enables the Baidu channel for an application or updates the status and settings of the Baidu channel for an application.
"""
UpdateBaiduChannel(ApplicationId, BaiduChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/baidu")

"""
Deletes a campaign from an application.
"""
DeleteCampaign(CampaignId, ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/campaigns/$campaign-id")

"""
Updates an existing message template for messages that are sent through the SMS channel.
"""
UpdateSmsTemplate(TemplateName, SMSTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/sms")

"""
Disables the Baidu channel for an application and deletes any existing settings for the channel.
"""
DeleteBaiduChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/baidu")

"""
Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsVoipSandboxChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_voip_sandbox")

"""
Deletes the event stream for an application.
"""
DeleteEventStream(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/eventstream")

"""
Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
"""
CreateSegment(ApplicationId, WriteSegmentRequest) = pinpoint("POST", "/v1/apps/$application-id/segments")

"""
Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.
"""
GetApnsVoipSandboxChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_voip_sandbox")

"""
Retrieves information about the status and settings of a specific import job for an application.
"""
GetImportJob(ApplicationId, JobId) = pinpoint("GET", "/v1/apps/$application-id/jobs/import/$job-id")

"""
Retrieves information about the status and settings of a specific export job for an application.
"""
GetExportJob(ApplicationId, JobId) = pinpoint("GET", "/v1/apps/$application-id/jobs/export/$job-id")

"""
Retrieves all the tags (keys and values) that are associated with an application, campaign, journey, message template, or segment.
"""
ListTagsForResource(ResourceArn) = pinpoint("GET", "/v1/tags/$resource-arn")

"""
Creates and sends a direct message.
"""
SendMessages(ApplicationId, MessageRequest) = pinpoint("POST", "/v1/apps/$application-id/messages")

"""
Enables the APNs channel for an application or updates the status and settings of the APNs channel for an application.
"""
UpdateApnsChannel(ApplicationId, APNSChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns")

"""
Retrieves information about the status and settings of the import jobs for a segment.
"""
GetSegmentImportJobs(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/jobs/import")

"""
Retrieves the content and settings of a message template for messages that are sent through the SMS channel.
"""
GetSmsTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/sms")

"""
Disables the GCM channel for an application and deletes any existing settings for the channel.
"""
DeleteGcmChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/gcm")

"""
Deletes a journey from an application.
"""
DeleteJourney(JourneyId, ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/journeys/$journey-id")

"""
Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
"""
PutEvents(ApplicationId, EventsRequest) = pinpoint("POST", "/v1/apps/$application-id/events")

"""
Updates the settings for an application.
"""
UpdateApplicationSettings(ApplicationId, WriteApplicationSettingsRequest) = pinpoint("PUT", "/v1/apps/$application-id/settings")

"""
Cancels (stops) an active journey.
"""
UpdateJourneyState(JourneyId, ApplicationId, JourneyStateRequest) = pinpoint("PUT", "/v1/apps/$application-id/journeys/$journey-id/state")

"""
Retrieves information about all the applications that are associated with your Amazon Pinpoint account.
"""
GetApps() = pinpoint("GET", "/v1/apps")

"""
Enables the APNs VoIP channel for an application or updates the status and settings of the APNs VoIP channel for an application.
"""
UpdateApnsVoipChannel(ApplicationId, APNSVoipChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_voip")

"""
Disables the voice channel for an application and deletes any existing settings for the channel.
"""
DeleteVoiceChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/voice")

"""
Updates an existing message template for messages that are sent through a push notification channel.
"""
UpdatePushTemplate(TemplateName, PushNotificationTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/push")

"""
Deletes an endpoint from an application.
"""
DeleteEndpoint(ApplicationId, EndpointId) = pinpoint("DELETE", "/v1/apps/$application-id/endpoints/$endpoint-id")

"""
Creates a new event stream for an application or updates the settings of an existing event stream for an application.
"""
PutEventStream(ApplicationId, WriteEventStream) = pinpoint("POST", "/v1/apps/$application-id/eventstream")

"""
Creates and sends a message to a list of users.
"""
SendUsersMessages(ApplicationId, SendUsersMessageRequest) = pinpoint("POST", "/v1/apps/$application-id/users-messages")

"""
Enables the GCM channel for an application or updates the status and settings of the GCM channel for an application.
"""
UpdateGcmChannel(ApplicationId, GCMChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/gcm")

"""
Retrieves information about all the message templates that are associated with your Amazon Pinpoint account.
"""
ListTemplates() = pinpoint("GET", "/v1/templates")

"""
Retrieves information about the status and settings of all the import jobs for an application.
"""
GetImportJobs(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/jobs/import")

"""
Retrieves information about the status and settings of the Baidu channel for an application.
"""
GetBaiduChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/baidu")

"""
Retrieves information about the status and settings of the email channel for an application.
"""
GetEmailChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/email")

"""
Retrieves information about the status, configuration, and other settings for all the journeys that are associated with an application.
"""
ListJourneys(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/journeys")

"""
Deletes a segment from an application.
"""
DeleteSegment(SegmentId, ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/segments/$segment-id")

"""
Deletes all the endpoints that are associated with a specific user ID.
"""
DeleteUserEndpoints(ApplicationId, UserId) = pinpoint("DELETE", "/v1/apps/$application-id/users/$user-id")

"""
Retrieves information about the status and settings of the voice channel for an application.
"""
GetVoiceChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/voice")

"""
Creates a message template for messages that are sent through the voice channel.
"""
CreateVoiceTemplate(TemplateName, VoiceTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/voice")

"""
Retrieves information about the configuration, dimension, and other settings for all the versions of a specific segment that's associated with an application.
"""
GetSegmentVersions(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/versions")

"""
Retrieves information about the status and settings of the APNs VoIP channel for an application.
"""
GetApnsVoipChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_voip")

"""
Retrieves information about the status and settings of the APNs sandbox channel for an application.
"""
GetApnsSandboxChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_sandbox")

"""
Disables the SMS channel for an application and deletes any existing settings for the channel.
"""
DeleteSmsChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/sms")

"""
Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.
"""
GetCampaignDateRangeKpi(ApplicationId, KpiName, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/kpis/daterange/$kpi-name")

"""
Retrieves information about the status and settings of all the export jobs for an application.
"""
GetExportJobs(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/jobs/export")

"""
Retrieves information about a phone number.
"""
PhoneNumberValidate(NumberValidateRequest) = pinpoint("POST", "/v1/phone/number/validate")

"""
Retrieves the content and settings of a message template for messages that are sent through a push notification channel.
"""
GetPushTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/push")

"""
Creates a message template for messages that are sent through a push notification channel.
"""
CreatePushTemplate(TemplateName, PushNotificationTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/push")

"""
Deletes a message template for messages that were sent through a push notification channel.
"""
DeletePushTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/push")

"""
Retrieves information about the status, configuration, and other settings for all versions of a campaign.
"""
GetCampaignVersions(ApplicationId, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/versions")

"""
 Creates an application.
"""
CreateApp(CreateApplicationRequest) = pinpoint("POST", "/v1/apps")

"""
Creates a message template for messages that are sent through the email channel.
"""
CreateEmailTemplate(TemplateName, EmailTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/email")

"""
Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.
"""
GetApplicationDateRangeKpi(ApplicationId, KpiName) = pinpoint("GET", "/v1/apps/$application-id/kpis/daterange/$kpi-name")

"""
Retrieves information about the status and settings of the ADM channel for an application.
"""
GetAdmChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/adm")

"""
Updates the configuration and other settings for a journey.
"""
UpdateJourney(JourneyId, ApplicationId, WriteJourneyRequest) = pinpoint("PUT", "/v1/apps/$application-id/journeys/$journey-id")

"""
Enables the APNs VoIP sandbox channel for an application or updates the status and settings of the APNs VoIP sandbox channel for an application.
"""
UpdateApnsVoipSandboxChannel(ApplicationId, APNSVoipSandboxChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_voip_sandbox")

"""
Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey.
"""
GetJourneyDateRangeKpi(JourneyId, ApplicationId, KpiName) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/kpis/daterange/$kpi-name")

"""
Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsSandboxChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_sandbox")

"""
Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey activity.
"""
GetJourneyExecutionActivityMetrics(JourneyActivityId, ApplicationId, JourneyId) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/activities/$journey-activity-id/execution-metrics")

"""
Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.
"""
GetCampaigns(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/campaigns")

"""
Retrieves the content and settings of a message template for messages that are sent through the voice channel.
"""
GetVoiceTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/voice")

"""
Enables the voice channel for an application or updates the status and settings of the voice channel for an application.
"""
UpdateVoiceChannel(ApplicationId, VoiceChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/voice")
end
