module aws_neptune
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: neptune

"""
Returns a list of the available DB engines.
"""
DescribeDBEngineVersions() = neptune("POST", "/")

"""
Returns information about provisioned instances. This API supports pagination.
"""
DescribeDBInstances() = neptune("POST", "/")

"""
You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance. You can use this information when you call ModifyDBInstance.
"""
DescribeValidDBInstanceModifications(DBInstanceIdentifier) = neptune("POST", "/")

"""
Forces a failover for a DB cluster. A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer). Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.
"""
FailoverDBCluster() = neptune("POST", "/")

"""
Associates an Identity and Access Management (IAM) role from an Neptune DB cluster.
"""
AddRoleToDBCluster(DBClusterIdentifier, RoleArn) = neptune("POST", "/")

"""
Disassociates an Identity and Access Management (IAM) role from a DB cluster.
"""
RemoveRoleFromDBCluster(DBClusterIdentifier, RoleArn) = neptune("POST", "/")

"""
Displays a list of categories for all event source types, or, if specified, for a specified source type.
"""
DescribeEventCategories() = neptune("POST", "/")

"""
Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The DB cluster snapshot must be in the available state to be deleted. 
"""
DeleteDBClusterSnapshot(DBClusterSnapshotIdentifier) = neptune("POST", "/")

"""
Creates a new DB cluster from a DB snapshot or DB cluster snapshot. If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group. If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.
"""
RestoreDBClusterFromSnapshot(DBClusterIdentifier, SnapshotIdentifier, Engine) = neptune("POST", "/")

"""
The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.
"""
DeleteDBCluster(DBClusterIdentifier) = neptune("POST", "/")

"""
Copies the specified DB cluster parameter group.
"""
CopyDBClusterParameterGroup(SourceDBClusterParameterGroupIdentifier, TargetDBClusterParameterGroupIdentifier, TargetDBClusterParameterGroupDescription) = neptune("POST", "/")

"""
Deletes an event notification subscription.
"""
DeleteEventSubscription(SubscriptionName) = neptune("POST", "/")

"""
Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: ParameterName and ApplyMethod. To reset the entire DB parameter group, specify the DBParameterGroup name and ResetAllParameters parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance restart or RebootDBInstance request.
"""
ResetDBParameterGroup(DBParameterGroupName) = neptune("POST", "/")

"""
Modifies an existing event notification subscription. Note that you can't modify the source identifiers using this call; to change source identifiers for a subscription, use the AddSourceIdentifierToSubscription and RemoveSourceIdentifierFromSubscription calls. You can see a list of the event categories for a given SourceType by using the DescribeEventCategories action.
"""
ModifyEventSubscription(SubscriptionName) = neptune("POST", "/")

"""
Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.
"""
DeleteDBClusterParameterGroup(DBClusterParameterGroupName) = neptune("POST", "/")

"""
Returns a list of orderable DB instance options for the specified engine.
"""
DescribeOrderableDBInstanceOptions(Engine) = neptune("POST", "/")

"""
Returns the detailed parameter list for a particular DB cluster parameter group.
"""
DescribeDBClusterParameters(DBClusterParameterGroupName) = neptune("POST", "/")

"""
Returns a list of DBParameterGroup descriptions. If a DBParameterGroupName is specified, the list will contain only the description of the specified DB parameter group.
"""
DescribeDBParameterGroups() = neptune("POST", "/")

"""
Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.  Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.   After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBParameters command to verify that your DB parameter group has been created or modified. 
"""
ModifyDBParameterGroup(DBParameterGroupName, Parameters) = neptune("POST", "/")

"""
Creates an event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console. You can specify the type of source (SourceType) you want to be notified of, provide a list of Neptune sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup. If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your Neptune sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all Neptune sources belonging to your customer account.
"""
CreateEventSubscription(SubscriptionName, SnsTopicArn) = neptune("POST", "/")

"""
Creates a new Amazon Neptune DB cluster. You can use the ReplicationSourceIdentifier parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance.
"""
CreateDBCluster(DBClusterIdentifier, Engine) = neptune("POST", "/")

"""
Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
"""
CreateDBSubnetGroup(DBSubnetGroupName, DBSubnetGroupDescription, SubnetIds) = neptune("POST", "/")

"""
Removes a source identifier from an existing event notification subscription.
"""
RemoveSourceIdentifierFromSubscription(SubscriptionName, SourceIdentifier) = neptune("POST", "/")

"""
Copies the specified DB parameter group.
"""
CopyDBParameterGroup(SourceDBParameterGroupIdentifier, TargetDBParameterGroupIdentifier, TargetDBParameterGroupDescription) = neptune("POST", "/")

"""
The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by DeleteDBInstance are not deleted.  If you request a final DB snapshot the status of the Amazon Neptune DB instance is deleting until the DB snapshot is created. The API action DescribeDBInstance is used to monitor the status of this operation. The action can't be canceled or reverted once submitted. Note that when a DB instance is in a failure state and has a status of failed, incompatible-restore, or incompatible-network, you can only delete it when the SkipFinalSnapshot parameter is set to true. You can't delete a DB instance if it is the only instance in the DB cluster.
"""
DeleteDBInstance(DBInstanceIdentifier) = neptune("POST", "/")

"""
Modify a setting for a DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
"""
ModifyDBCluster(DBClusterIdentifier) = neptune("POST", "/")

"""
 Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.  Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.   After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified. 
"""
ModifyDBClusterParameterGroup(DBClusterParameterGroupName, Parameters) = neptune("POST", "/")

"""
Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.  This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the CreateDBInstance action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in DBClusterIdentifier. You can create DB instances only after the RestoreDBClusterToPointInTime action has completed and the DB cluster is available. 
"""
RestoreDBClusterToPointInTime(DBClusterIdentifier, SourceDBClusterIdentifier) = neptune("POST", "/")

"""
Lists all tags on an Amazon Neptune resource.
"""
ListTagsForResource(ResourceName) = neptune("POST", "/")

"""
Not supported.
"""
PromoteReadReplicaDBCluster(DBClusterIdentifier) = neptune("POST", "/")

"""
Returns the detailed parameter list for a particular DB parameter group.
"""
DescribeDBParameters(DBParameterGroupName) = neptune("POST", "/")

"""
Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot. When sharing snapshots with other AWS accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If all is included in the list of values for the restore attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts. To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the ModifyDBClusterSnapshotAttribute API action.
"""
DescribeDBClusterSnapshotAttributes(DBClusterSnapshotIdentifier) = neptune("POST", "/")

"""
Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot. To share a manual DB cluster snapshot with other AWS accounts, specify restore as the AttributeName and use the ValuesToAdd parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value all to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case. To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the DescribeDBClusterSnapshotAttributes API action.
"""
ModifyDBClusterSnapshotAttribute(DBClusterSnapshotIdentifier, AttributeName) = neptune("POST", "/")

"""
Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon Neptune resources, or used in a Condition statement in an IAM policy for Amazon Neptune.
"""
AddTagsToResource(ResourceName, Tags) = neptune("POST", "/")

"""
Removes metadata tags from an Amazon Neptune resource.
"""
RemoveTagsFromResource(ResourceName, TagKeys) = neptune("POST", "/")

"""
Creates a snapshot of a DB cluster.
"""
CreateDBClusterSnapshot(DBClusterSnapshotIdentifier, DBClusterIdentifier) = neptune("POST", "/")

"""
You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect. Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.
"""
RebootDBInstance(DBInstanceIdentifier) = neptune("POST", "/")

"""
Copies a snapshot of a DB cluster. To copy a DB cluster snapshot from a shared manual DB cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot. You can't copy from one AWS Region to another.
"""
CopyDBClusterSnapshot(SourceDBClusterSnapshotIdentifier, TargetDBClusterSnapshotIdentifier) = neptune("POST", "/")

"""
Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup. For an overview of CIDR ranges, go to the Wikipedia Tutorial.
"""
DescribeDBSubnetGroups() = neptune("POST", "/")

"""
Creates a new DB instance.
"""
CreateDBInstance(DBInstanceIdentifier, DBInstanceClass, Engine) = neptune("POST", "/")

"""
Applies a pending maintenance action to a resource (for example, to a DB instance).
"""
ApplyPendingMaintenanceAction(ResourceIdentifier, ApplyAction, OptInType) = neptune("POST", "/")

"""
Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
"""
ModifyDBSubnetGroup(DBSubnetGroupName, SubnetIds) = neptune("POST", "/")

"""
Deletes a DB subnet group.  The specified database subnet group must not be associated with any DB instances. 
"""
DeleteDBSubnetGroup(DBSubnetGroupName) = neptune("POST", "/")

"""
Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
"""
DescribeEvents() = neptune("POST", "/")

"""
Returns the default engine and system parameter information for the specified database engine.
"""
DescribeEngineDefaultParameters(DBParameterGroupFamily) = neptune("POST", "/")

"""
Creates a new DB parameter group. A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBParameterGroup. Once you've created a DB parameter group, you need to associate it with your DB instance using ModifyDBInstance. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.  After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBParameters command to verify that your DB parameter group has been created or modified. 
"""
CreateDBParameterGroup(DBParameterGroupName, DBParameterGroupFamily, Description) = neptune("POST", "/")

"""
Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status. If you specify a SubscriptionName, lists the description for that subscription.
"""
DescribeEventSubscriptions() = neptune("POST", "/")

"""
Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call DescribeValidDBInstanceModifications before you call ModifyDBInstance.
"""
ModifyDBInstance(DBInstanceIdentifier) = neptune("POST", "/")

"""
Returns the default engine and system parameter information for the cluster database engine.
"""
DescribeEngineDefaultClusterParameters(DBParameterGroupFamily) = neptune("POST", "/")

"""
 Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: ParameterName and ApplyMethod. To reset the entire DB cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.  When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance restart or RebootDBInstance request. You must call RebootDBInstance for every DB instance in your DB cluster that you want the updated static parameter to apply to.
"""
ResetDBClusterParameterGroup(DBClusterParameterGroupName) = neptune("POST", "/")

"""
Creates a new DB cluster parameter group. Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.  A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBClusterParameterGroup. Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using ModifyDBCluster. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect.  After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified. 
"""
CreateDBClusterParameterGroup(DBClusterParameterGroupName, DBParameterGroupFamily, Description) = neptune("POST", "/")

"""
Adds a source identifier to an existing event notification subscription.
"""
AddSourceIdentifierToSubscription(SubscriptionName, SourceIdentifier) = neptune("POST", "/")

"""
Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can't be associated with any DB instances.
"""
DeleteDBParameterGroup(DBParameterGroupName) = neptune("POST", "/")

"""
Returns information about provisioned DB clusters. This API supports pagination.
"""
DescribeDBClusters() = neptune("POST", "/")

"""
Returns information about DB cluster snapshots. This API action supports pagination.
"""
DescribeDBClusterSnapshots() = neptune("POST", "/")

"""
 Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list will contain only the description of the specified DB cluster parameter group.
"""
DescribeDBClusterParameterGroups() = neptune("POST", "/")

"""
Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.
"""
DescribePendingMaintenanceActions() = neptune("POST", "/")
end
