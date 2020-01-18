module aws_backup
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: backup

"""
Returns metadata associated with a restore job that is specified by a job ID.
"""
DescribeRestoreJob(RestoreJobId) = backup("GET", "/restore-jobs/$restoreJobId")

"""
Deletes the policy document that manages permissions on a backup vault.
"""
DeleteBackupVaultAccessPolicy(BackupVaultName) = backup("DELETE", "/backup-vaults/$backupVaultName/access-policy")

"""
Returns detailed information about the recovery points stored in a backup vault.
"""
ListRecoveryPointsByBackupVault(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/")

"""
Returns a list of recovery point storage containers along with information about them.
"""
ListBackupVaults() = backup("GET", "/backup-vaults/")

"""
Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
"""
ListRecoveryPointsByResource(ResourceArn) = backup("GET", "/resources/$resourceArn/recovery-points/")

"""
Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
"""
TagResource(ResourceArn, Tags) = backup("POST", "/tags/$resourceArn")

"""
Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
"""
ListProtectedResources() = backup("GET", "/resources/")

"""
Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
"""
ListBackupPlanTemplates() = backup("GET", "/backup/template/plans")

"""
Turns on notifications on a backup vault for the specified topic and events.
"""
PutBackupVaultNotifications(BackupVaultName, SNSTopicArn, BackupVaultEvents) = backup("PUT", "/backup-vaults/$backupVaultName/notification-configuration")

"""
Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault. 
"""
CreateBackupVault(BackupVaultName) = backup("PUT", "/backup-vaults/$backupVaultName")

"""
Deletes event notifications for the specified backup vault.
"""
DeleteBackupVaultNotifications(BackupVaultName) = backup("DELETE", "/backup-vaults/$backupVaultName/notification-configuration")

"""
Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
"""
DeleteBackupPlan(BackupPlanId) = backup("DELETE", "/backup/plans/$backupPlanId")

"""
Returns the template specified by its templateId as a backup plan.
"""
GetBackupPlanFromTemplate(BackupPlanTemplateId) = backup("GET", "/backup/template/plans/$templateId/toPlan")

"""
Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
"""
DeleteBackupVault(BackupVaultName) = backup("DELETE", "/backup-vaults/$backupVaultName")

"""
Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
"""
UntagResource(ResourceArn, TagKeyList) = backup("POST", "/untag/$resourceArn")

"""
Returns the backup plan that is specified by the plan ID as a backup template.
"""
ExportBackupPlanTemplate(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/toTemplate/")

"""
Returns the body of a backup plan in JSON format, in addition to plan metadata.
"""
GetBackupPlan(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/")

"""
Returns metadata about a backup vault specified by its name.
"""
DescribeBackupVault(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName")

"""
Deletes the recovery point specified by a recovery point ID.
"""
DeleteRecoveryPoint(BackupVaultName, RecoveryPointArn) = backup("DELETE", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn")

"""
Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
"""
ListBackupPlanVersions(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/versions/")

"""
Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
"""
DeleteBackupSelection(BackupPlanId, SelectionId) = backup("DELETE", "/backup/plans/$backupPlanId/selections/$selectionId")

"""
Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"STRINGEQUALS"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"STRINGEQUALS"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume Id. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically 'put together using the OR operator. In other words, all patterns that match are selected for backup.
"""
CreateBackupSelection(BackupPlanId, BackupSelection) = backup("PUT", "/backup/plans/$backupPlanId/selections/")

"""
Returns an array containing metadata of the resources associated with the target backup plan.
"""
ListBackupSelections(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/selections/")

"""
Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
"""
ListRestoreJobs() = backup("GET", "/restore-jobs/")

"""
Returns the AWS resource types supported by AWS Backup.
"""
GetSupportedResourceTypes() = backup("GET", "/supported-resource-types")

"""
Returns the access policy document that is associated with the named backup vault.
"""
GetBackupVaultAccessPolicy(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName/access-policy")

"""
Returns a valid JSON document specifying a backup plan or an error.
"""
GetBackupPlanFromJSON(BackupPlanTemplateJson) = backup("POST", "/backup/template/json/toPlan")

"""
Returns a set of metadata key-value pairs that were used to create the backup.
"""
GetRecoveryPointRestoreMetadata(BackupVaultName, RecoveryPointArn) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn/restore-metadata")

"""
Starts a job to create a one-time copy of the specified resource.
"""
StartCopyJob(RecoveryPointArn, SourceBackupVaultName, DestinationBackupVaultArn, IamRoleArn) = backup("PUT", "/copy-jobs")

"""
Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
"""
PutBackupVaultAccessPolicy(BackupVaultName) = backup("PUT", "/backup-vaults/$backupVaultName/access-policy")

"""
Returns event notifications for the specified backup vault.
"""
GetBackupVaultNotifications(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName/notification-configuration")

"""
Recovers the saved resource identified by an Amazon Resource Name (ARN).  If the resource ARN is included in the request, then the last complete backup of that resource is recovered. If the ARN of a recovery point is supplied, then that recovery point is restored.
"""
StartRestoreJob(RecoveryPointArn, Metadata, IamRoleArn) = backup("PUT", "/restore-jobs")

"""
Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. 
"""
UpdateRecoveryPointLifecycle(BackupVaultName, RecoveryPointArn) = backup("POST", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn")

"""
Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
"""
DescribeRecoveryPoint(BackupVaultName, RecoveryPointArn) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn")

"""
Attempts to cancel a job to create a one-time backup of a resource.
"""
StopBackupJob(BackupJobId) = backup("POST", "/backup-jobs/$backupJobId")

"""
Starts a job to create a one-time backup of the specified resource.
"""
StartBackupJob(BackupVaultName, ResourceArn, IamRoleArn) = backup("PUT", "/backup-jobs")

"""
Returns metadata about your copy jobs.
"""
ListCopyJobs() = backup("GET", "/copy-jobs/")

"""
Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
"""
GetBackupSelection(BackupPlanId, SelectionId) = backup("GET", "/backup/plans/$backupPlanId/selections/$selectionId")

"""
Returns metadata about your backup jobs.
"""
ListBackupJobs() = backup("GET", "/backup-jobs/")

"""
Returns metadata associated with creating a copy of a resource.
"""
DescribeCopyJob(CopyJobId) = backup("GET", "/copy-jobs/$copyJobId")

"""
Returns metadata associated with creating a backup of a resource.
"""
DescribeBackupJob(BackupJobId) = backup("GET", "/backup-jobs/$backupJobId")

"""
Replaces the body of a saved backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
"""
UpdateBackupPlan(BackupPlanId, BackupPlan) = backup("POST", "/backup/plans/$backupPlanId")

"""
Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.
"""
ListTags(ResourceArn) = backup("GET", "/tags/$resourceArn/")

"""
Returns information about a saved resource, including the last time it was backed-up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.
"""
DescribeProtectedResource(ResourceArn) = backup("GET", "/resources/$resourceArn")

"""
Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.
"""
CreateBackupPlan(BackupPlan) = backup("PUT", "/backup/plans/")

"""
Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
"""
ListBackupPlans() = backup("GET", "/backup/plans/")
end
