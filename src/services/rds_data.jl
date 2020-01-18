module aws_rds_data
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: rds_data

"""
Starts a SQL transaction.  &lt;important&gt; &lt;p&gt;A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.&lt;/p&gt; &lt;p&gt;A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.&lt;/p&gt; &lt;p&gt;DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate &lt;code&gt;ExecuteStatement&lt;/code&gt; call with &lt;code&gt;continueAfterTimeout&lt;/code&gt; enabled.&lt;/p&gt; &lt;/important&gt; 
"""
BeginTransaction(resourceArn, secretArn) = rds_data("POST", "/BeginTransaction")

"""
Ends a SQL transaction started with the BeginTransaction operation and commits the changes.
"""
CommitTransaction(resourceArn, secretArn, transactionId) = rds_data("POST", "/CommitTransaction")

"""
Runs one or more SQL statements.  This operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation. 
"""
ExecuteSql(awsSecretStoreArn, dbClusterOrInstanceArn, sqlStatements) = rds_data("POST", "/ExecuteSql")

"""
Performs a rollback of a transaction. Rolling back a transaction cancels its changes.
"""
RollbackTransaction(resourceArn, secretArn, transactionId) = rds_data("POST", "/RollbackTransaction")

"""
Runs a batch SQL statement over an array of data. You can run bulk update and insert operations for multiple records using a DML statement with different parameter sets. Bulk operations can provide a significant performance improvement over individual insert and update operations.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically. 
"""
BatchExecuteStatement(resourceArn, secretArn, sql) = rds_data("POST", "/BatchExecute")

"""
Runs a SQL statement against a database.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically.  The response size limit is 1 MB or 1,000 records. If the call returns more than 1 MB of response data or over 1,000 records, the call is terminated.
"""
ExecuteStatement(resourceArn, secretArn, sql) = rds_data("POST", "/Execute")
end
