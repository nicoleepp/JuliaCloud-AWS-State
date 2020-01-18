module aws_iot
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iot

"""
Deletes a defined mitigation action from your AWS account.
"""
DeleteMitigationAction(actionName) = iot("DELETE", "/mitigationactions/actions/$actionName")

"""
Describes a job execution.
"""
DescribeJobExecution(jobId, thingName) = iot("GET", "/things/$thingName/jobs/$jobId")

"""
Associates a Device Defender security profile with a thing group or this account. Each thing group or account can have up to five security profiles associated with it.
"""
AttachSecurityProfile(securityProfileName, securityProfileTargetArn) = iot("PUT", "/security-profiles/$securityProfileName/targets")

"""
List targets for the specified policy.
"""
ListTargetsForPolicy(policyName) = iot("POST", "/policy-targets/$policyName")

"""
Lists the existing thing types.
"""
ListThingTypes() = iot("GET", "/thing-types")

"""
Transfers the specified certificate to the specified AWS account. You can cancel the transfer until it is acknowledged by the recipient. No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target. The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it. The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.
"""
TransferCertificate(certificateId, targetAwsAccount) = iot("PATCH", "/transfer-certificate/$certificateId")

"""
Creates an X.509 certificate using the specified certificate signing request.  Note: The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves.   Note: Reusing the same certificate signing request (CSR) results in a distinct certificate. You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs. Assuming a set of CSRs are located inside of the directory my-csr-directory: On Linux and OS X, the command is: $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR. The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process: $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is: &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/$_} On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is: &gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"
"""
CreateCertificateFromCsr(certificateSigningRequest) = iot("POST", "/certificates")

"""
Gets information about the specified policy version.
"""
GetPolicyVersion(policyName, policyVersionId) = iot("GET", "/policies/$policyName/version/$policyVersionId")

"""
Deletes a dynamic thing group.
"""
DeleteDynamicThingGroup(thingGroupName) = iot("DELETE", "/dynamic-thing-groups/$thingGroupName")

"""
Lists the rules for the specific topic.
"""
ListTopicRules() = iot("GET", "/rules")

"""
Returns information about a fleet provisioning template.
"""
DescribeProvisioningTemplate(templateName) = iot("GET", "/provisioning-templates/$templateName")

"""
Lists the search indices.
"""
ListIndices() = iot("GET", "/indices")

"""
Describe a thing group.
"""
DescribeThingGroup(thingGroupName) = iot("GET", "/thing-groups/$thingGroupName")

"""
Cancels a bulk thing provisioning task.
"""
StopThingRegistrationTask(taskId) = iot("PUT", "/thing-registration-tasks/$taskId/cancel")

"""
Gets information about a mitigation action.
"""
DescribeMitigationAction(actionName) = iot("GET", "/mitigationactions/actions/$actionName")

"""
List the thing groups to which the specified thing belongs.
"""
ListThingGroupsForThing(thingName) = iot("GET", "/things/$thingName/thing-groups")

"""
Tests a custom authorization behavior by invoking a specified custom authorizer. Use this to test and debug the custom authorization behavior of devices that connect to the AWS IoT device gateway.
"""
TestInvokeAuthorizer(authorizerName) = iot("POST", "/authorizer/$authorizerName/test")

"""
Lists the authorizers registered in your account.
"""
ListAuthorizers() = iot("GET", "/authorizers/")

"""
Cancels an audit that is in progress. The audit can be either scheduled or on-demand. If the audit is not in progress, an "InvalidRequestException" occurs.
"""
CancelAuditTask(taskId) = iot("PUT", "/audit/tasks/$taskId/cancel")

"""
Creates a fleet provisioning template.
"""
CreateProvisioningTemplate(templateName, templateBody, provisioningRoleArn) = iot("POST", "/provisioning-templates")

"""
Lists the billing groups you have created.
"""
ListBillingGroups() = iot("GET", "/billing-groups")

"""
Lists all of your scheduled audits.
"""
ListScheduledAudits() = iot("GET", "/audit/scheduledaudits")

"""
Lists the targets (thing groups) associated with a given Device Defender security profile.
"""
ListTargetsForSecurityProfile(securityProfileName) = iot("GET", "/security-profiles/$securityProfileName/targets")

"""
Creates a role alias.
"""
CreateRoleAlias(roleAlias, roleArn) = iot("POST", "/role-aliases/$roleAlias")

"""
Creates a billing group.
"""
CreateBillingGroup(billingGroupName) = iot("POST", "/billing-groups/$billingGroupName")

"""
Deletes a job and its related job executions. Deleting a job may take time, depending on the number of job executions created for the job and various other factors. While the job is being deleted, the status of the job will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status is already "DELETION_IN_PROGRESS" will result in an error. Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a LimitExceededException will occur.
"""
DeleteJob(jobId) = iot("DELETE", "/jobs/$jobId")

"""
Creates a bulk thing provisioning task.
"""
StartThingRegistrationTask(templateBody, inputFileBucket, inputFileKey, roleArn) = iot("POST", "/thing-registration-tasks")

"""
Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from PENDING_TRANSFER to INACTIVE. To check for pending certificate transfers, call ListCertificates to enumerate your certificates. This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.
"""
RejectCertificateTransfer(certificateId) = iot("PATCH", "/reject-certificate-transfer/$certificateId")

"""
Attaches the specified principal to the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.
"""
AttachThingPrincipal(thingName, principal) = iot("PUT", "/things/$thingName/principals")

"""
Gets information about a stream.
"""
DescribeStream(streamId) = iot("GET", "/streams/$streamId")

"""
Adds a thing to a billing group.
"""
AddThingToBillingGroup() = iot("PUT", "/billing-groups/addThingToBillingGroup")

"""
Starts an on-demand Device Defender audit.
"""
StartOnDemandAuditTask(targetCheckNames) = iot("POST", "/audit/tasks")

"""
Lists the things in the specified group.
"""
ListThingsInThingGroup(thingGroupName) = iot("GET", "/thing-groups/$thingGroupName/things")

"""
Lists the things you have added to the given billing group.
"""
ListThingsInBillingGroup(billingGroupName) = iot("GET", "/billing-groups/$billingGroupName/things")

"""
Lists the versions of the specified policy and identifies the default version.
"""
ListPolicyVersions(policyName) = iot("GET", "/policies/$policyName/version")

"""
Creates a dynamic thing group.
"""
CreateDynamicThingGroup(thingGroupName, queryString) = iot("POST", "/dynamic-thing-groups/$thingGroupName")

"""
Describes a registered CA certificate.
"""
DescribeCACertificate(certificateId) = iot("GET", "/cacertificate/$caCertificateId")

"""
Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.
"""
RegisterCACertificate(caCertificate, verificationCertificate) = iot("POST", "/cacertificate")

"""
Updates a role alias.
"""
UpdateRoleAlias(roleAlias) = iot("PUT", "/role-aliases/$roleAlias")

"""
Deletes the specified thing. Returns successfully with no error if the deletion is successful or you specify a thing that doesn't exist.
"""
DeleteThing(thingName) = iot("DELETE", "/things/$thingName")

"""
Deletes a fleet provisioning template version.
"""
DeleteProvisioningTemplateVersion(templateName, versionId) = iot("DELETE", "/provisioning-templates/$templateName/versions/$versionId")

"""
Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource. Use this to test and debug the authorization behavior of devices that connect to the AWS IoT device gateway.
"""
TestAuthorization(authInfos) = iot("POST", "/test-authorization")

"""
Validates a Device Defender security profile behaviors specification.
"""
ValidateSecurityProfileBehaviors(behaviors) = iot("POST", "/security-profile-behaviors/validate")

"""
Lists all of the streams in your AWS account.
"""
ListStreams() = iot("GET", "/streams")

"""
Gets information about a topic rule destination.
"""
GetTopicRuleDestination(arn) = iot("GET", "/destinations/$arn+")

"""
Removes the given thing from the billing group.
"""
RemoveThingFromBillingGroup() = iot("PUT", "/billing-groups/removeThingFromBillingGroup")

"""
Deletes an authorizer.
"""
DeleteAuthorizer(authorizerName) = iot("DELETE", "/authorizer/$authorizerName")

"""
Lists the fleet provisioning templates in your AWS account.
"""
ListProvisioningTemplates() = iot("GET", "/provisioning-templates")

"""
Adds a thing to a thing group.
"""
AddThingToThingGroup() = iot("PUT", "/thing-groups/addThingToThingGroup")

"""
Updates a scheduled audit, including which checks are performed and how often the audit takes place.
"""
UpdateScheduledAudit(scheduledAuditName) = iot("PATCH", "/audit/scheduledaudits/$scheduledAuditName")

"""
Updates the status of the specified certificate. This operation is idempotent. Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect. The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.
"""
UpdateCertificate(certificateId, newStatus) = iot("PUT", "/certificates/$certificateId")

"""
Updates an authorizer.
"""
UpdateAuthorizer(authorizerName) = iot("PUT", "/authorizer/$authorizerName")

"""
Creates a scheduled audit that is run at a specified time interval.
"""
CreateScheduledAudit(frequency, targetCheckNames, scheduledAuditName) = iot("POST", "/audit/scheduledaudits/$scheduledAuditName")

"""
Lists the things associated with the specified principal. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities. 
"""
ListPrincipalThings(principal) = iot("GET", "/principals/things")

"""
Gets information about an audit mitigation task that is used to apply mitigation actions to a set of audit findings. Properties include the actions being applied, the audit checks to which they're being applied, the task status, and aggregated task statistics.
"""
DescribeAuditMitigationActionsTask(taskId) = iot("GET", "/audit/mitigationactions/tasks/$taskId")

"""
Lists the role aliases registered in your account.
"""
ListRoleAliases() = iot("GET", "/role-aliases")

"""
Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream.
"""
CreateStream(streamId, files, roleArn) = iot("POST", "/streams/$streamId")

"""
Enables the rule.
"""
EnableTopicRule(ruleName) = iot("POST", "/rules/$ruleName/enable")

"""
Disassociates a Device Defender security profile from a thing group or from this account.
"""
DetachSecurityProfile(securityProfileName, securityProfileTargetArn) = iot("DELETE", "/security-profiles/$securityProfileName/targets")

"""
Returns the approximate count of unique values that match the query.
"""
GetCardinality(queryString) = iot("POST", "/indices/cardinality")

"""
Configures or reconfigures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
"""
UpdateAccountAuditConfiguration() = iot("PATCH", "/audit/configuration")

"""
Deletes the specified domain configuration.  The domain configuration feature is in public preview and is subject to change. 
"""
DeleteDomainConfiguration(domainConfigurationName) = iot("DELETE", "/domainConfigurations/$domainConfigurationName")

"""
Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key. You can also call CreateKeysAndCertificate over MQTT from a device, for more information, see Provisioning MQTT API.  Note This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.
"""
CreateKeysAndCertificate() = iot("POST", "/keys-and-certificate")

"""
Updates a Device Defender security profile.
"""
UpdateSecurityProfile(securityProfileName) = iot("PATCH", "/security-profiles/$securityProfileName")

"""
Lists your things. Use the attributeName and attributeValue parameters to filter your things. For example, calling ListThings with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute Color with the value Red. 
"""
ListThings() = iot("GET", "/things")

"""
Updates a topic rule destination. You use this to change the status, endpoint URL, or confirmation URL of the destination.
"""
UpdateTopicRuleDestination(arn, status) = iot("PATCH", "/destinations")

"""
List the device certificates signed by the specified CA certificate.
"""
ListCertificatesByCA(caCertificateId) = iot("GET", "/certificates-by-ca/$caCertificateId")

"""
Lists the job executions for the specified thing.
"""
ListJobExecutionsForThing(thingName) = iot("GET", "/things/$thingName/jobs")

"""
Updates information about the billing group.
"""
UpdateBillingGroup(billingGroupName, billingGroupProperties) = iot("PATCH", "/billing-groups/$billingGroupName")

"""
Lists the active violations for a given Device Defender security profile.
"""
ListActiveViolations() = iot("GET", "/active-violations")

"""
Deletes a registered CA certificate.
"""
DeleteCACertificate(certificateId) = iot("DELETE", "/cacertificate/$caCertificateId")

"""
Gets information about the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
"""
DescribeAccountAuditConfiguration() = iot("GET", "/audit/configuration")

"""
Creates a provisioning claim.
"""
CreateProvisioningClaim(templateName) = iot("POST", "/provisioning-templates/$templateName/provisioning-claim")

"""
Creates a job.
"""
CreateJob(jobId, targets) = iot("PUT", "/jobs/$jobId")

"""
Deletes a topic rule destination.
"""
DeleteTopicRuleDestination(arn) = iot("DELETE", "/destinations/$arn+")

"""
Lists logging levels.
"""
ListV2LoggingLevels() = iot("GET", "/v2LoggingLevel")

"""
Gets information about a scheduled audit.
"""
DescribeScheduledAudit(scheduledAuditName) = iot("GET", "/audit/scheduledaudits/$scheduledAuditName")

"""
Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway.
"""
GetEffectivePolicies() = iot("POST", "/effective-policies")

"""
Cancels a mitigation action task that is in progress. If the task is not in progress, an InvalidRequestException occurs.
"""
CancelAuditMitigationActionsTask(taskId) = iot("PUT", "/audit/mitigationactions/tasks/$taskId/cancel")

"""
Gets information about the specified thing.
"""
DescribeThing(thingName) = iot("GET", "/things/$thingName")

"""
Cancels a job.
"""
CancelJob(jobId) = iot("PUT", "/jobs/$jobId/cancel")

"""
Lists the principals associated with the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.
"""
ListThingPrincipals(thingName) = iot("GET", "/things/$thingName/principals")

"""
Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.
"""
SetDefaultPolicyVersion(policyName, policyVersionId) = iot("PATCH", "/policies/$policyName/version/$policyVersionId")

"""
Deletes the rule.
"""
DeleteTopicRule(ruleName) = iot("DELETE", "/rules/$ruleName")

"""
Create a thing group.  This is a control plane operation. See Authorization for information about authorizing control plane actions. 
"""
CreateThingGroup(thingGroupName) = iot("POST", "/thing-groups/$thingGroupName")

"""
Gets the indexing configuration.
"""
GetIndexingConfiguration() = iot("GET", "/indexing/config")

"""
Describes a job.
"""
DescribeJob(jobId) = iot("GET", "/jobs/$jobId")

"""
Lists jobs.
"""
ListJobs() = iot("GET", "/jobs")

"""
Lists the Device Defender audits that have been performed during a given time period.
"""
ListAuditTasks(startTime, endTime) = iot("GET", "/audit/tasks")

"""
Describes event configurations.
"""
DescribeEventConfigurations() = iot("GET", "/event-configurations")

"""
Attaches the specified policy to the specified principal (certificate or other credential).  Note: This API is deprecated. Please use AttachPolicy instead.
"""
AttachPrincipalPolicy(policyName, principal) = iot("PUT", "/principal-policies/$policyName")

"""
Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in AmazonCognito Identity format.  Note: This API is deprecated. Please use ListAttachedPolicies instead.
"""
ListPrincipalPolicies(principal) = iot("GET", "/principal-policies")

"""
Updates an existing stream. The stream version will be incremented by one.
"""
UpdateStream(streamId) = iot("PUT", "/streams/$streamId")

"""
Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
"""
TagResource(resourceArn, tags) = iot("POST", "/tags")

"""
Lists all the topic rule destinations in your AWS account.
"""
ListTopicRuleDestinations() = iot("GET", "/destinations")

"""
Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use DeletePolicyVersion to delete an existing version before you create a new one. Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
"""
CreatePolicyVersion(policyName, policyDocument) = iot("POST", "/policies/$policyName/version")

"""
Gets a registration code used to register a CA certificate with AWS IoT.
"""
GetRegistrationCode() = iot("GET", "/registrationcode")

"""
Accepts a pending certificate transfer. The default state of the certificate is INACTIVE. To check for pending certificate transfers, call ListCertificates to enumerate your certificates.
"""
AcceptCertificateTransfer(certificateId) = iot("PATCH", "/accept-certificate-transfer/$certificateId")

"""
Gets information about a Device Defender security profile.
"""
DescribeSecurityProfile(securityProfileName) = iot("GET", "/security-profiles/$securityProfileName")

"""
Detaches a policy from the specified target.
"""
DetachPolicy(policyName, target) = iot("POST", "/target-policies/$policyName")

"""
Removes the specified policy from the specified certificate.  Note: This API is deprecated. Please use DetachPolicy instead.
"""
DetachPrincipalPolicy(policyName, principal) = iot("DELETE", "/principal-policies/$policyName")

"""
Gets information about a single audit finding. Properties include the reason for noncompliance, the severity of the issue, and when the audit that returned the finding was started.
"""
DescribeAuditFinding(findingId) = iot("GET", "/audit/findings/$findingId")

"""
Provisions a thing in the device registry. RegisterThing calls other AWS IoT control plane APIs. These calls might exceed your account level  AWS IoT Throttling Limits and cause throttle errors. Please contact AWS Customer Support to raise your throttling limits if necessary.
"""
RegisterThing(templateBody) = iot("POST", "/things")

"""
Creates a domain configuration.  The domain configuration feature is in public preview and is subject to change. 
"""
CreateDomainConfiguration(domainConfigurationName) = iot("POST", "/domainConfigurations/$domainConfigurationName")

"""
Lists OTA updates.
"""
ListOTAUpdates() = iot("GET", "/otaUpdates")

"""
Creates a new version of a fleet provisioning template.
"""
CreateProvisioningTemplateVersion(templateName, templateBody) = iot("POST", "/provisioning-templates/$templateName/versions")

"""
Updates the definition for the specified mitigation action.
"""
UpdateMitigationAction(actionName) = iot("PATCH", "/mitigationactions/actions/$actionName")

"""
Removes the given tags (metadata) from the resource.
"""
UntagResource(resourceArn, tagKeys) = iot("POST", "/untag")

"""
List bulk thing provisioning tasks.
"""
ListThingRegistrationTasks() = iot("GET", "/thing-registration-tasks")

"""
Starts a task that applies a set of mitigation actions to the specified target.
"""
StartAuditMitigationActionsTask(taskId, target, auditCheckToActionsMapping, clientRequestToken) = iot("POST", "/audit/mitigationactions/tasks/$taskId")

"""
Lists the principals associated with the specified policy.  Note: This API is deprecated. Please use ListTargetsForPolicy instead.
"""
ListPolicyPrincipals(policyName) = iot("GET", "/policy-principals")

"""
Lists certificates that are being transferred but not yet accepted.
"""
ListOutgoingCertificates() = iot("GET", "/certificates-out-going")

"""
Associates a group with a continuous job. The following criteria must be met:    The job must have been created with the targetSelection field set to "CONTINUOUS".   The job status must currently be "IN_PROGRESS".   The total number of targets associated with a job must not exceed 100.  
"""
AssociateTargetsWithJob(targets, jobId) = iot("POST", "/jobs/$jobId/targets")

"""
Restores the default settings for Device Defender audits for this account. Any configuration data you entered is deleted and all audit checks are reset to disabled. 
"""
DeleteAccountAuditConfiguration() = iot("DELETE", "/audit/configuration")

"""
Remove the specified thing from the specified group.
"""
RemoveThingFromThingGroup() = iot("PUT", "/thing-groups/removeThingFromThingGroup")

"""
Creates a new thing type.
"""
CreateThingType(thingTypeName) = iot("POST", "/thing-types/$thingTypeName")

"""
Lists the certificates registered in your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
"""
ListCertificates() = iot("GET", "/certificates")

"""
Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use DeletePolicy. To find out which version of a policy is marked as the default version, use ListPolicyVersions.
"""
DeletePolicyVersion(policyName, policyVersionId) = iot("DELETE", "/policies/$policyName/version/$policyVersionId")

"""
Describes a search index.
"""
DescribeIndex(indexName) = iot("GET", "/indices/$indexName")

"""
Information about the thing registration tasks.
"""
ListThingRegistrationTaskReports(taskId, reportType) = iot("GET", "/thing-registration-tasks/$taskId/reports")

"""
Gets the status of audit mitigation action tasks that were executed.
"""
ListAuditMitigationActionsExecutions(taskId, findingId) = iot("GET", "/audit/mitigationactions/executions")

"""
Deletes a logging level.
"""
DeleteV2LoggingLevel(targetType, targetName) = iot("DELETE", "/v2LoggingLevel")

"""
Creates a thing record in the registry. If this call is made multiple times using the same thing name and configuration, the call will succeed. If this call is made with the same thing name but different configuration a ResourceAlreadyExistsException is thrown.  This is a control plane operation. See Authorization for information about authorizing control plane actions. 
"""
CreateThing(thingName) = iot("POST", "/things/$thingName")

"""
Returns the count, average, sum, minimum, maximum, sum of squares, variance, and standard deviation for the specified aggregated field. If the aggregation field is of type String, only the count statistic is returned.
"""
GetStatistics(queryString) = iot("POST", "/indices/statistics")

"""
Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 180 days.)
"""
ListAuditFindings() = iot("POST", "/audit/findings")

"""
Cancels the execution of a job for a given thing.
"""
CancelJobExecution(jobId, thingName) = iot("PUT", "/things/$thingName/jobs/$jobId/cancel")

"""
Delete an OTA update.
"""
DeleteOTAUpdate(otaUpdateId) = iot("DELETE", "/otaUpdates/$otaUpdateId")

"""
Lists the policies attached to the specified thing group.
"""
ListAttachedPolicies(target) = iot("POST", "/attached-policies/$target")

"""
Creates an authorizer.
"""
CreateAuthorizer(authorizerName, authorizerFunctionArn) = iot("POST", "/authorizer/$authorizerName")

"""
Gets an OTA update.
"""
GetOTAUpdate(otaUpdateId) = iot("GET", "/otaUpdates/$otaUpdateId")

"""
Update a thing group.
"""
UpdateThingGroup(thingGroupName, thingGroupProperties) = iot("PATCH", "/thing-groups/$thingGroupName")

"""
Gets a list of all mitigation actions that match the specified filter criteria.
"""
ListMitigationActions() = iot("GET", "/mitigationactions/actions")

"""
Disables the rule.
"""
DisableTopicRule(ruleName) = iot("POST", "/rules/$ruleName/disable")

"""
Updates the groups to which the thing belongs.
"""
UpdateThingGroupsForThing() = iot("PUT", "/thing-groups/updateThingGroupsForThing")

"""
Deletes a fleet provisioning template.
"""
DeleteProvisioningTemplate(templateName) = iot("DELETE", "/provisioning-templates/$templateName")

"""
Describes a bulk thing provisioning task.
"""
DescribeThingRegistrationTask(taskId) = iot("GET", "/thing-registration-tasks/$taskId")

"""
Gets a list of domain configurations for the user. This list is sorted alphabetically by domain configuration name.  The domain configuration feature is in public preview and is subject to change. 
"""
ListDomainConfigurations() = iot("GET", "/domainConfigurations")

"""
Detaches the specified principal from the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.  This call is asynchronous. It might take several seconds for the detachment to propagate. 
"""
DetachThingPrincipal(thingName, principal) = iot("DELETE", "/things/$thingName/principals")

"""
Returns information about a billing group.
"""
DescribeBillingGroup(billingGroupName) = iot("GET", "/billing-groups/$billingGroupName")

"""
Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.
"""
RegisterCertificate(certificatePem) = iot("POST", "/certificate/register")

"""
Returns information about a fleet provisioning template version.
"""
DescribeProvisioningTemplateVersion(templateName, versionId) = iot("GET", "/provisioning-templates/$templateName/versions/$versionId")

"""
Groups the aggregated values that match the query into percentile groupings. The default percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own when you call GetPercentiles. This function returns a value for each percentile group specified (or the default percentile groupings). The percentile group "1" contains the aggregated field value that occurs in approximately one percent of the values that match the query. The percentile group "5" contains the aggregated field value that occurs in approximately five percent of the values that match the query, and so on. The result is an approximation, the more values that match the query, the more accurate the percentile values.
"""
GetPercentiles(queryString) = iot("POST", "/indices/percentiles")

"""
Deletes a stream.
"""
DeleteStream(streamId) = iot("DELETE", "/streams/$streamId")

"""
Deletes a job execution.
"""
DeleteJobExecution(jobId, thingName, executionNumber) = iot("DELETE", "/things/$thingName/jobs/$jobId/executionNumber/$executionNumber")

"""
Updates the event configurations.
"""
UpdateEventConfigurations() = iot("PATCH", "/event-configurations")

"""
Describes the default authorizer.
"""
DescribeDefaultAuthorizer() = iot("GET", "/default-authorizer")

"""
Gets information about the specified policy with the policy document of the default version.
"""
GetPolicy(policyName) = iot("GET", "/policies/$policyName")

"""
Lists the Device Defender security profile violations discovered during the given time period. You can use filters to limit the results to those alerts issued for a particular security profile, behavior, or thing (device).
"""
ListViolationEvents(startTime, endTime) = iot("GET", "/violation-events")

"""
Updates values stored in the domain configuration. Domain configurations for default endpoints can't be updated.  The domain configuration feature is in public preview and is subject to change. 
"""
UpdateDomainConfiguration(domainConfigurationName) = iot("PUT", "/domainConfigurations/$domainConfigurationName")

"""
Updates the data for a thing.
"""
UpdateThing(thingName) = iot("PATCH", "/things/$thingName")

"""
Gets the logging options. NOTE: use of this command is not recommended. Use GetV2LoggingOptions instead.
"""
GetLoggingOptions() = iot("GET", "/loggingOptions")

"""
Returns a unique endpoint specific to the AWS account making the call.
"""
DescribeEndpoint() = iot("GET", "/endpoint")

"""
Deletes a scheduled audit.
"""
DeleteScheduledAudit(scheduledAuditName) = iot("DELETE", "/audit/scheduledaudits/$scheduledAuditName")

"""
Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.
"""
ReplaceTopicRule(ruleName, topicRulePayload) = iot("PATCH", "/rules/$ruleName")

"""
Gets information about the specified thing type.
"""
DescribeThingType(thingTypeName) = iot("GET", "/thing-types/$thingTypeName")

"""
A list of fleet provisioning template versions.
"""
ListProvisioningTemplateVersions(templateName) = iot("GET", "/provisioning-templates/$templateName/versions")

"""
Sets the logging options. NOTE: use of this command is not recommended. Use SetV2LoggingOptions instead.
"""
SetLoggingOptions(loggingOptionsPayload) = iot("POST", "/loggingOptions")

"""
Defines an action that can be applied to audit findings by using StartAuditMitigationActionsTask. Each mitigation action can apply only one type of change.
"""
CreateMitigationAction(actionName, roleArn, actionParams) = iot("POST", "/mitigationactions/actions/$actionName")

"""
Updates supported fields of the specified job.
"""
UpdateJob(jobId) = iot("PATCH", "/jobs/$jobId")

"""
Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.
"""
CreateTopicRule(ruleName, topicRulePayload) = iot("POST", "/rules/$ruleName")

"""
Creates an AWS IoT OTAUpdate on a target group of things or groups.
"""
CreateOTAUpdate(otaUpdateId, targets, files, roleArn) = iot("POST", "/otaUpdates/$otaUpdateId")

"""
Updates a fleet provisioning template.
"""
UpdateProvisioningTemplate(templateName) = iot("PATCH", "/provisioning-templates/$templateName")

"""
Sets the logging options for the V2 logging service.
"""
SetV2LoggingOptions() = iot("POST", "/v2LoggingOptions")

"""
Deletes a CA certificate registration code.
"""
DeleteRegistrationCode() = iot("DELETE", "/registrationcode")

"""
Creates a topic rule destination. The destination must be confirmed prior to use.
"""
CreateTopicRuleDestination(destinationConfiguration) = iot("POST", "/destinations")

"""
Lists the CA certificates registered for your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
"""
ListCACertificates() = iot("GET", "/cacertificates")

"""
Gets information about the specified certificate.
"""
DescribeCertificate(certificateId) = iot("GET", "/certificates/$certificateId")

"""
Deletes the specified policy. A policy cannot be deleted if it has non-default versions or it is attached to any certificate. To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy. When a policy is deleted using DeletePolicy, its default version is deleted with it.
"""
DeletePolicy(policyName) = iot("DELETE", "/policies/$policyName")

"""
Gets summary information about a domain configuration.  The domain configuration feature is in public preview and is subject to change. 
"""
DescribeDomainConfiguration(domainConfigurationName) = iot("GET", "/domainConfigurations/$domainConfigurationName")

"""
Gets information about a Device Defender audit.
"""
DescribeAuditTask(taskId) = iot("GET", "/audit/tasks/$taskId")

"""
Deprecates a thing type. You can not associate new things with deprecated thing type.
"""
DeprecateThingType(thingTypeName) = iot("POST", "/thing-types/$thingTypeName/deprecate")

"""
Deletes a Device Defender security profile.
"""
DeleteSecurityProfile(securityProfileName) = iot("DELETE", "/security-profiles/$securityProfileName")

"""
Updates a dynamic thing group.
"""
UpdateDynamicThingGroup(thingGroupName, thingGroupProperties) = iot("PATCH", "/dynamic-thing-groups/$thingGroupName")

"""
Lists the tags (metadata) you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iot("GET", "/tags")

"""
Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.
"""
ListSecurityProfiles() = iot("GET", "/security-profiles")

"""
Gets a list of audit mitigation action tasks that match the specified filters.
"""
ListAuditMitigationActionsTasks(startTime, endTime) = iot("GET", "/audit/mitigationactions/tasks")

"""
Deletes the specified certificate. A certificate cannot be deleted if it has a policy or IoT thing attached to it or if its status is set to ACTIVE. To delete a certificate, first use the DetachPrincipalPolicy API to detach all policies. Next, use the UpdateCertificate API to set the certificate to the INACTIVE status.
"""
DeleteCertificate(certificateId) = iot("DELETE", "/certificates/$certificateId")

"""
Lists the job executions for a job.
"""
ListJobExecutionsForJob(jobId) = iot("GET", "/jobs/$jobId/things")

"""
Updates a registered CA certificate.
"""
UpdateCACertificate(certificateId) = iot("PUT", "/cacertificate/$caCertificateId")

"""
Updates the search configuration.
"""
UpdateIndexingConfiguration() = iot("POST", "/indexing/config")

"""
List the thing groups in your account.
"""
ListThingGroups() = iot("GET", "/thing-groups")

"""
Deletes a thing group.
"""
DeleteThingGroup(thingGroupName) = iot("DELETE", "/thing-groups/$thingGroupName")

"""
Clears the default authorizer.
"""
ClearDefaultAuthorizer() = iot("DELETE", "/default-authorizer")

"""
Attaches a policy to the specified target.
"""
AttachPolicy(policyName, target) = iot("PUT", "/target-policies/$policyName")

"""
Gets information about the rule.
"""
GetTopicRule(ruleName) = iot("GET", "/rules/$ruleName")

"""
Describes an authorizer.
"""
DescribeAuthorizer(authorizerName) = iot("GET", "/authorizer/$authorizerName")

"""
Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.
"""
SetDefaultAuthorizer(authorizerName) = iot("POST", "/default-authorizer")

"""
Creates a Device Defender security profile.
"""
CreateSecurityProfile(securityProfileName) = iot("POST", "/security-profiles/$securityProfileName")

"""
Lists your policies.
"""
ListPolicies() = iot("GET", "/policies")

"""
Lists the Device Defender security profiles attached to a target (thing group).
"""
ListSecurityProfilesForTarget(securityProfileTargetArn) = iot("GET", "/security-profiles-for-target")

"""
Creates an AWS IoT policy. The created policy is the default version for the policy. This operation creates a policy version with a version identifier of 1 and sets 1 as the policy's default version.
"""
CreatePolicy(policyName, policyDocument) = iot("POST", "/policies/$policyName")

"""
Deletes the billing group.
"""
DeleteBillingGroup(billingGroupName) = iot("DELETE", "/billing-groups/$billingGroupName")

"""
Gets the fine grained logging options.
"""
GetV2LoggingOptions() = iot("GET", "/v2LoggingOptions")

"""
Deletes the specified thing type. You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling DeprecateThingType, then remove any associated things by calling UpdateThing to change the thing type on any associated thing, and finally use DeleteThingType to delete the thing type.
"""
DeleteThingType(thingTypeName) = iot("DELETE", "/thing-types/$thingTypeName")

"""
Sets the logging level.
"""
SetV2LoggingLevel(logTarget, logLevel) = iot("POST", "/v2LoggingLevel")

"""
Confirms a topic rule destination. When you create a rule requiring a destination, AWS IoT sends a confirmation message to the endpoint or base address you specify. The message includes a token which you pass back when calling ConfirmTopicRuleDestination to confirm that you own or have access to the endpoint.
"""
ConfirmTopicRuleDestination(confirmationToken) = iot("GET", "/confirmdestination/$confirmationToken+")

"""
The query search index.
"""
SearchIndex(queryString) = iot("POST", "/indices/search")

"""
Cancels a pending transfer for the specified certificate.  Note Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use RejectCertificateTransfer instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled. After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.
"""
CancelCertificateTransfer(certificateId) = iot("PATCH", "/cancel-certificate-transfer/$certificateId")

"""
Deletes a role alias
"""
DeleteRoleAlias(roleAlias) = iot("DELETE", "/role-aliases/$roleAlias")

"""
Describes a role alias.
"""
DescribeRoleAlias(roleAlias) = iot("GET", "/role-aliases/$roleAlias")

"""
Gets a job document.
"""
GetJobDocument(jobId) = iot("GET", "/jobs/$jobId/job-document")
end
