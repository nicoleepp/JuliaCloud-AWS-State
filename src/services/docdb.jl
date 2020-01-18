module aws_docdb
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: docdb

"""
Lists all tags on an Amazon DocumentDB resource.
"""
ListTagsForResource(ResourceName) = docdb("POST", "/")

"""
Deletes a DB subnet group.  The specified database subnet group must not be associated with any DB instances. 
"""
DeleteDBSubnetGroup(DBSubnetGroupName) = docdb("POST", "/")

"""
Returns a list of the available DB engines.
"""
DescribeDBEngineVersions() = docdb("POST", "/")

"""
Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.
"""
DeleteDBClusterParameterGroup(DBClusterParameterGroupName) = docdb("POST", "/")

"""
Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
"""
DescribeDBInstances() = docdb("POST", "/")

"""
Returns a list of orderable DB instance options for the specified engine.
"""
DescribeOrderableDBInstanceOptions(Engine) = docdb("POST", "/")

"""
Returns the detailed parameter list for a particular DB cluster parameter group.
"""
DescribeDBClusterParameters(DBClusterParameterGroupName) = docdb("POST", "/")

"""
Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot. When you share snapshots with other AWS accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If all is included in the list of values for the restore attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.
"""
DescribeDBClusterSnapshotAttributes(DBClusterSnapshotIdentifier) = docdb("POST", "/")

"""
Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, DB security group, DB snapshot, or DB parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
"""
DescribeEvents() = docdb("POST", "/")

"""
Forces a failover for a DB cluster. A failover for a DB cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer). If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.
"""
FailoverDBCluster() = docdb("POST", "/")

"""
Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot. To share a manual DB cluster snapshot with other AWS accounts, specify restore as the AttributeName, and use the ValuesToAdd parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value all to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case.
"""
ModifyDBClusterSnapshotAttribute(DBClusterSnapshotIdentifier, AttributeName) = docdb("POST", "/")

"""
Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
"""
ModifyDBInstance(DBInstanceIdentifier) = docdb("POST", "/")

"""
Restarts the stopped cluster that is specified by DBClusterIdentifier. For more information, see Stopping and Starting an Amazon DocumentDB Cluster.
"""
StartDBCluster(DBClusterIdentifier) = docdb("POST", "/")

"""
Adds metadata tags to an Amazon DocumentDB resource. You can use these tags with cost allocation reporting to track costs that are associated with Amazon DocumentDB resources. or in a Condition statement in an AWS Identity and Access Management (IAM) policy for Amazon DocumentDB.
"""
AddTagsToResource(ResourceName, Tags) = docdb("POST", "/")

"""
Stops the running cluster that is specified by DBClusterIdentifier. The cluster must be in the available state. For more information, see Stopping and Starting an Amazon DocumentDB Cluster.
"""
StopDBCluster(DBClusterIdentifier) = docdb("POST", "/")

"""
Removes metadata tags from an Amazon DocumentDB resource.
"""
RemoveTagsFromResource(ResourceName, TagKeys) = docdb("POST", "/")

"""
Creates a snapshot of a DB cluster. 
"""
CreateDBClusterSnapshot(DBClusterSnapshotIdentifier, DBClusterIdentifier) = docdb("POST", "/")

"""
Returns the default engine and system parameter information for the cluster database engine.
"""
DescribeEngineDefaultClusterParameters(DBParameterGroupFamily) = docdb("POST", "/")

"""
Creates a new Amazon DocumentDB DB cluster.
"""
CreateDBCluster(DBClusterIdentifier, Engine, MasterUsername, MasterUserPassword) = docdb("POST", "/")

"""
 Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters, submit a list of the following: ParameterName and ApplyMethod. To reset the entire DB cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.   When you reset the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance reboot.
"""
ResetDBClusterParameterGroup(DBClusterParameterGroupName) = docdb("POST", "/")

"""
Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.
"""
CreateDBSubnetGroup(DBSubnetGroupName, DBSubnetGroupDescription, SubnetIds) = docdb("POST", "/")

"""
You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain changes, or if you change the DB cluster parameter group that is associated with the DB instance, you must reboot the instance for the changes to take effect.  Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting. 
"""
RebootDBInstance(DBInstanceIdentifier) = docdb("POST", "/")

"""
Creates a new DB cluster parameter group. Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster. A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after you create it. After you create a DB cluster parameter group, you must associate it with your DB cluster. For the new DB cluster parameter group and associated settings to take effect, you must then reboot the DB instances in the DB cluster without failover.  After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This step is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. 
"""
CreateDBClusterParameterGroup(DBClusterParameterGroupName, DBParameterGroupFamily, Description) = docdb("POST", "/")

"""
Deletes a previously provisioned DB instance. 
"""
DeleteDBInstance(DBInstanceIdentifier) = docdb("POST", "/")

"""
Displays a list of categories for all event source types, or, if specified, for a specified source type. 
"""
DescribeEventCategories() = docdb("POST", "/")

"""
Copies a snapshot of a DB cluster. To copy a DB cluster snapshot from a shared manual DB cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot. To cancel the copy operation after it is in progress, delete the target DB cluster snapshot identified by TargetDBClusterSnapshotIdentifier while that DB cluster snapshot is in the copying status.
"""
CopyDBClusterSnapshot(SourceDBClusterSnapshotIdentifier, TargetDBClusterSnapshotIdentifier) = docdb("POST", "/")

"""
Modifies a setting for an Amazon DocumentDB DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. 
"""
ModifyDBCluster(DBClusterIdentifier) = docdb("POST", "/")

"""
Returns a list of certificate authority (CA) certificates provided by Amazon RDS for this AWS account.
"""
DescribeCertificates() = docdb("POST", "/")

"""
Returns information about provisioned Amazon DocumentDB DB clusters. This API operation supports pagination.
"""
DescribeDBClusters() = docdb("POST", "/")

"""
Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The DB cluster snapshot must be in the available state to be deleted. 
"""
DeleteDBClusterSnapshot(DBClusterSnapshotIdentifier) = docdb("POST", "/")

"""
Returns information about DB cluster snapshots. This API operation supports pagination.
"""
DescribeDBClusterSnapshots() = docdb("POST", "/")

"""
Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
"""
DescribeDBSubnetGroups() = docdb("POST", "/")

"""
 Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.   Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot or maintenance window before the change can take effect.   After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the parameter group is used as the default for a new DB cluster. This step is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. 
"""
ModifyDBClusterParameterGroup(DBClusterParameterGroupName, Parameters) = docdb("POST", "/")

"""
Creates a new DB cluster from a DB snapshot or DB cluster snapshot. If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group. If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.
"""
RestoreDBClusterFromSnapshot(DBClusterIdentifier, SnapshotIdentifier, Engine) = docdb("POST", "/")

"""
Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. 
"""
RestoreDBClusterToPointInTime(DBClusterIdentifier, SourceDBClusterIdentifier) = docdb("POST", "/")

"""
Deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted. 
"""
DeleteDBCluster(DBClusterIdentifier) = docdb("POST", "/")

"""
Creates a new DB instance.
"""
CreateDBInstance(DBInstanceIdentifier, DBInstanceClass, Engine, DBClusterIdentifier) = docdb("POST", "/")

"""
Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list contains only the description of the specified DB cluster parameter group. 
"""
DescribeDBClusterParameterGroups() = docdb("POST", "/")

"""
Applies a pending maintenance action to a resource (for example, to a DB instance).
"""
ApplyPendingMaintenanceAction(ResourceIdentifier, ApplyAction, OptInType) = docdb("POST", "/")

"""
Copies the specified DB cluster parameter group.
"""
CopyDBClusterParameterGroup(SourceDBClusterParameterGroupIdentifier, TargetDBClusterParameterGroupIdentifier, TargetDBClusterParameterGroupDescription) = docdb("POST", "/")

"""
Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.
"""
ModifyDBSubnetGroup(DBSubnetGroupName, SubnetIds) = docdb("POST", "/")

"""
Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.
"""
DescribePendingMaintenanceActions() = docdb("POST", "/")
end
