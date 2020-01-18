module aws_pinpoint_email
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: pinpoint_email

"""
Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
"""
GetDeliverabilityDashboardOptions() = pinpoint_email("GET", "/v1/email/deliverability-dashboard")

"""
Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
"""
ListTagsForResource(ResourceArn) = pinpoint_email("GET", "/v1/email/tags")

"""

"""
PutDedicatedIpWarmupAttributes(Ip, WarmupPercentage) = pinpoint_email("PUT", "/v1/email/dedicated-ips/$IP/warmup")

"""
Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email address or domain that you use when you send email. Before you can use an identity to send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission to send email from the address. When you verify an email address, Amazon Pinpoint sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.  When you verify a domain, this operation provides a set of DKIM tokens, which you can convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS configuration for your domain. It usually takes around 72 hours to complete the domain verification process.
"""
CreateEmailIdentity(EmailIdentity) = pinpoint_email("POST", "/v1/email/identities")

"""
Delete an existing configuration set. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
"""
DeleteConfigurationSet(ConfigurationSetName) = pinpoint_email("DELETE", "/v1/email/configuration-sets/$ConfigurationSetName")

"""
Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
"""
PutDeliverabilityDashboardOption(DashboardEnabled) = pinpoint_email("PUT", "/v1/email/deliverability-dashboard")

"""
Sends an email message. You can use the Amazon Pinpoint Email API to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon Pinpoint assembles the message for you.    Raw – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.  
"""
SendEmail(Destination, Content) = pinpoint_email("POST", "/v1/email/outbound-emails")

"""
Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce or complaint events occur. Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email. When you disable feedback forwarding, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur (even if this setting is disabled).
"""
PutEmailIdentityFeedbackAttributes(EmailIdentity) = pinpoint_email("PUT", "/v1/email/identities/$EmailIdentity/feedback")

"""
Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
"""
GetConfigurationSet(ConfigurationSetName) = pinpoint_email("GET", "/v1/email/configuration-sets/$ConfigurationSetName")

"""
Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint sends it using only the IP addresses in the associated pool.
"""
CreateDedicatedIpPool(PoolName) = pinpoint_email("POST", "/v1/email/dedicated-ip-pools")

"""
Create an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.
"""
CreateConfigurationSetEventDestination(ConfigurationSetName, EventDestinationName, EventDestination) = pinpoint_email("POST", "/v1/email/configuration-sets/$ConfigurationSetName/event-destinations")

"""
Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon Pinpoint then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.
"""
CreateDeliverabilityTestReport(FromEmailAddress, Content) = pinpoint_email("POST", "/v1/email/deliverability-dashboard/test")

"""
Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your Amazon Pinpoint account.  The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation. 
"""
PutDedicatedIpInPool(Ip, DestinationPoolName) = pinpoint_email("PUT", "/v1/email/dedicated-ips/$IP/pool")

"""
Create a configuration set. Configuration sets are groups of rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. 
"""
CreateConfigurationSet(ConfigurationSetName) = pinpoint_email("POST", "/v1/email/configuration-sets")

"""
Used to enable or disable the custom Mail-From domain configuration for an email identity.
"""
PutEmailIdentityMailFromAttributes(EmailIdentity) = pinpoint_email("PUT", "/v1/email/identities/$EmailIdentity/mail-from")

"""
Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
"""
ListEmailIdentities() = pinpoint_email("GET", "/v1/email/identities")

"""
Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.
"""
PutConfigurationSetDeliveryOptions(ConfigurationSetName) = pinpoint_email("PUT", "/v1/email/configuration-sets/$ConfigurationSetName/delivery-options")

"""
Specify a custom domain to use for open and click tracking elements in email that you send using Amazon Pinpoint.
"""
PutConfigurationSetTrackingOptions(ConfigurationSetName) = pinpoint_email("PUT", "/v1/email/configuration-sets/$ConfigurationSetName/tracking-options")

"""
Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.
"""
PutConfigurationSetReputationOptions(ConfigurationSetName) = pinpoint_email("PUT", "/v1/email/configuration-sets/$ConfigurationSetName/reputation-options")

"""
Delete a dedicated IP pool.
"""
DeleteDedicatedIpPool(PoolName) = pinpoint_email("DELETE", "/v1/email/dedicated-ip-pools/$PoolName")

"""
Retrieve a list of the blacklists that your dedicated IP addresses appear on.
"""
GetBlacklistReports(BlacklistItemNames) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/blacklist-report")

"""
Retrieve the results of a predictive inbox placement test.
"""
GetDeliverabilityTestReport(ReportId) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/test-reports/$ReportId")

"""
Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
"""
ListDomainDeliverabilityCampaigns(StartDate, EndDate, SubscribedDomain) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/domains/$SubscribedDomain/campaigns")

"""
Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.
"""
PutConfigurationSetSendingOptions(ConfigurationSetName) = pinpoint_email("PUT", "/v1/email/configuration-sets/$ConfigurationSetName/sending")

"""
Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region.
"""
GetAccount() = pinpoint_email("GET", "/v1/email/account")

"""
Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
"""
TagResource(ResourceArn, Tags) = pinpoint_email("POST", "/v1/email/tags")

"""
Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.
"""
GetEmailIdentity(EmailIdentity) = pinpoint_email("GET", "/v1/email/identities/$EmailIdentity")

"""
Remove one or more tags (keys and values) from a specified resource.
"""
UntagResource(ResourceArn, TagKeys) = pinpoint_email("DELETE", "/v1/email/tags")

"""
Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (PutDeliverabilityDashboardOption operation).
"""
GetDomainDeliverabilityCampaign(CampaignId) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/campaigns/$CampaignId")

"""
List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
"""
ListConfigurationSets() = pinpoint_email("GET", "/v1/email/configuration-sets")

"""
List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
"""
ListDedicatedIpPools() = pinpoint_email("GET", "/v1/email/dedicated-ip-pools")

"""
Update the configuration of an event destination for a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
"""
UpdateConfigurationSetEventDestination(ConfigurationSetName, EventDestinationName, EventDestination) = pinpoint_email("PUT", "/v1/email/configuration-sets/$ConfigurationSetName/event-destinations/$EventDestinationName")

"""
Retrieve inbox placement and engagement rates for the domains that you use to send email.
"""
GetDomainStatisticsReport(Domain, StartDate, EndDate) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/statistics-report/$Domain")

"""
Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
"""
ListDeliverabilityTestReports() = pinpoint_email("GET", "/v1/email/deliverability-dashboard/test-reports")

"""
Retrieve a list of event destinations that are associated with a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
"""
GetConfigurationSetEventDestinations(ConfigurationSetName) = pinpoint_email("GET", "/v1/email/configuration-sets/$ConfigurationSetName/event-destinations")

"""
Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.
"""
GetDedicatedIp(Ip) = pinpoint_email("GET", "/v1/email/dedicated-ips/$IP")

"""
Used to enable or disable DKIM authentication for an email identity.
"""
PutEmailIdentityDkimAttributes(EmailIdentity) = pinpoint_email("PUT", "/v1/email/identities/$EmailIdentity/dkim")

"""
Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity can be either an email address or a domain name.
"""
DeleteEmailIdentity(EmailIdentity) = pinpoint_email("DELETE", "/v1/email/identities/$EmailIdentity")

"""
Enable or disable the ability of your account to send email.
"""
PutAccountSendingAttributes() = pinpoint_email("PUT", "/v1/email/account/sending")

"""
Enable or disable the automatic warm-up feature for dedicated IP addresses.
"""
PutAccountDedicatedIpWarmupAttributes() = pinpoint_email("PUT", "/v1/email/account/dedicated-ips/warmup")

"""
Delete an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
"""
DeleteConfigurationSetEventDestination(ConfigurationSetName, EventDestinationName) = pinpoint_email("DELETE", "/v1/email/configuration-sets/$ConfigurationSetName/event-destinations/$EventDestinationName")

"""
List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
"""
GetDedicatedIps() = pinpoint_email("GET", "/v1/email/dedicated-ips")
end
