module aws_lambda
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: lambda

"""
Returns the version-specific settings of a Lambda function or version. The output includes only options that can vary between versions of a function. To modify these settings, use UpdateFunctionConfiguration. To get all of a function's details, including function-level settings, use GetFunction.
"""
GetFunctionConfiguration(FunctionName) = lambda("GET", "/2015-03-31/functions/$FunctionName/configuration")

"""
Returns details about the concurrency configuration for a function. To set a concurrency limit for a function, use PutFunctionConcurrency.
"""
GetFunctionConcurrency(FunctionName) = lambda("GET", "/2019-09-30/functions/$FunctionName/concurrency")

"""
 For asynchronous function invocation, use Invoke.  Invokes a function asynchronously.
"""
InvokeAsync(FunctionName, InvokeArgs) = lambda("POST", "/2014-11-13/functions/$FunctionName/invoke-async/")

"""
Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level. Concurrency settings apply to the function as a whole, including all published versions and the unpublished version. Reserving concurrency both ensures that your function has capacity to process the specified number of events simultaneously, and prevents it from scaling beyond that level. Use GetFunction to see the current setting for a function. Use GetAccountSettings to see your Regional concurrency limit. You can reserve concurrency for as many functions as you like, as long as you leave at least 100 simultaneous executions unreserved for functions that aren't configured with a per-function limit. For more information, see Managing Concurrency.
"""
PutFunctionConcurrency(FunctionName, ReservedConcurrentExecutions) = lambda("PUT", "/2017-10-31/functions/$FunctionName/concurrency")

"""
Adds tags to a function.
"""
TagResource(Resource, Tags) = lambda("POST", "/2017-03-31/tags/$ARN")

"""
Returns information about a version of an AWS Lambda layer, with a link to download the layer archive that's valid for 10 minutes.
"""
GetLayerVersionByArn(Arn) = lambda("GET", "/2018-10-31/layers?find=LayerVersion")

"""
Lists event source mappings. Specify an EventSourceArn to only show event source mappings for a single event source.
"""
ListEventSourceMappings() = lambda("GET", "/2015-03-31/event-source-mappings/")

"""
Lists the versions of an AWS Lambda layer. Versions that have been deleted aren't listed. Specify a runtime identifier to list only versions that indicate that they're compatible with that runtime.
"""
ListLayerVersions(LayerName) = lambda("GET", "/2018-10-31/layers/$LayerName/versions")

"""
Deletes a Lambda function. To delete a specific function version, use the Qualifier parameter. Otherwise, all versions and aliases are deleted. To delete Lambda event source mappings that invoke a function, use DeleteEventSourceMapping. For AWS services and resources that invoke your function directly, delete the trigger in the service where you originally configured it.
"""
DeleteFunction(FunctionName) = lambda("DELETE", "/2015-03-31/functions/$FunctionName")

"""
Creates a mapping between an event source and an AWS Lambda function. Lambda reads items from the event source and triggers the function. For details about each event source type, see the following topics.    Using AWS Lambda with Amazon DynamoDB     Using AWS Lambda with Amazon Kinesis     Using AWS Lambda with Amazon SQS    The following error handling options are only available for stream sources (DynamoDB and Kinesis):    BisectBatchOnFunctionError - If the function returns an error, split the batch in two and retry.    DestinationConfig - Send discarded records to an Amazon SQS queue or Amazon SNS topic.    MaximumRecordAgeInSeconds - Discard records older than the specified age.    MaximumRetryAttempts - Discard records after the specified number of retries.  
"""
CreateEventSourceMapping(EventSourceArn, FunctionName) = lambda("POST", "/2015-03-31/event-source-mappings/")

"""
Deletes the provisioned concurrency configuration for a function.
"""
DeleteProvisionedConcurrencyConfig(FunctionName, Qualifier) = lambda("DELETE", "/2019-09-30/functions/$FunctionName/provisioned-concurrency")

"""
Returns information about a version of an AWS Lambda layer, with a link to download the layer archive that's valid for 10 minutes.
"""
GetLayerVersion(LayerName, VersionNumber) = lambda("GET", "/2018-10-31/layers/$LayerName/versions/$VersionNumber")

"""
Creates an alias for a Lambda function version. Use aliases to provide clients with a function identifier that you can update to invoke a different version. You can also map an alias to split invocation requests between two versions. Use the RoutingConfig parameter to specify a second version and the percentage of invocation requests that it receives.
"""
CreateAlias(FunctionName, Name, FunctionVersion) = lambda("POST", "/2015-03-31/functions/$FunctionName/aliases")

"""
Creates a Lambda function. To create a function, you need a deployment package and an execution role. The deployment package contains your function code. The execution role grants the function permission to use AWS services, such as Amazon CloudWatch Logs for log streaming and AWS X-Ray for request tracing. When you create a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or modify the function. The State, StateReason, and StateReasonCode fields in the response from GetFunctionConfiguration indicate when the function is ready to invoke. For more information, see Function States. A function has an unpublished version, and can have published versions and aliases. The unpublished version changes when you update your function's code and configuration. A published version is a snapshot of your function code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be changed to map to a different version. Use the Publish parameter to create version 1 of your function from its initial configuration. The other parameters let you configure version-specific and function-level settings. You can modify version-specific settings later with UpdateFunctionConfiguration. Function-level settings apply to both the unpublished and published versions of the function, and include tags (TagResource) and per-function concurrency limits (PutFunctionConcurrency). If another account or an AWS service invokes your function, use AddPermission to grant permission by creating a resource-based IAM policy. You can grant permissions at the function level, on a version, or on an alias. To invoke your function directly, use Invoke. To invoke your function in response to events in other AWS services, create an event source mapping (CreateEventSourceMapping), or configure a function trigger in the other service. For more information, see Invoking Functions.
"""
CreateFunction(FunctionName, Runtime, Role, Handler, Code) = lambda("POST", "/2015-03-31/functions")

"""
Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or asynchronously. To invoke a function asynchronously, set InvocationType to Event. For synchronous invocation, details about the function response, including errors, are included in the response body and headers. For either invocation type, you can find more information in the execution log and trace. When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type, client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an error, Lambda executes the function up to two more times. For more information, see Retry Behavior. For asynchronous invocation, Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple times, even if no error occurs. To retain events that were not processed, configure your function with a dead-letter queue. The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your function from executing, such as permissions errors, limit errors, or issues with your function's code and configuration. For example, Lambda returns TooManyRequestsException if executing the function would cause you to exceed a concurrency limit at either the account level (ConcurrentInvocationLimitExceeded) or function level (ReservedFunctionConcurrentInvocationLimitExceeded). For functions with a long timeout, your client might be disconnected during synchronous invocation while it waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long connections with timeout or keep-alive settings. This operation requires permission for the lambda:InvokeFunction action.
"""
Invoke(FunctionName) = lambda("POST", "/2015-03-31/functions/$FunctionName/invocations")

"""
Updates an event source mapping. You can change the function that AWS Lambda invokes, or pause invocation and resume later from the same location. The following error handling options are only available for stream sources (DynamoDB and Kinesis):    BisectBatchOnFunctionError - If the function returns an error, split the batch in two and retry.    DestinationConfig - Send discarded records to an Amazon SQS queue or Amazon SNS topic.    MaximumRecordAgeInSeconds - Discard records older than the specified age.    MaximumRetryAttempts - Discard records after the specified number of retries.  
"""
UpdateEventSourceMapping(UUID) = lambda("PUT", "/2015-03-31/event-source-mappings/$UUID")

"""
Removes tags from a function.
"""
UntagResource(Resource, TagKeys) = lambda("DELETE", "/2017-03-31/tags/$ARN")

"""
Lists AWS Lambda layers and shows information about the latest version of each. Specify a runtime identifier to list only layers that indicate that they're compatible with that runtime.
"""
ListLayers() = lambda("GET", "/2018-10-31/layers")

"""
Retrieves a list of configurations for asynchronous invocation for a function. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
"""
ListFunctionEventInvokeConfigs(FunctionName) = lambda("GET", "/2019-09-25/functions/$FunctionName/event-invoke-config/list")

"""
Returns the permission policy for a version of an AWS Lambda layer. For more information, see AddLayerVersionPermission.
"""
GetLayerVersionPolicy(LayerName, VersionNumber) = lambda("GET", "/2018-10-31/layers/$LayerName/versions/$VersionNumber/policy")

"""
Removes a statement from the permissions policy for a version of an AWS Lambda layer. For more information, see AddLayerVersionPermission.
"""
RemoveLayerVersionPermission(LayerName, VersionNumber, StatementId) = lambda("DELETE", "/2018-10-31/layers/$LayerName/versions/$VersionNumber/policy/$StatementId")

"""
Retrieves a list of provisioned concurrency configurations for a function.
"""
ListProvisionedConcurrencyConfigs(FunctionName) = lambda("GET", "/2019-09-30/functions/$FunctionName/provisioned-concurrency?List=ALL")

"""
Configures options for asynchronous invocation on a function, version, or alias. By default, Lambda retries an asynchronous invocation twice if the function returns an error. It retains events in a queue for up to six hours. When an event fails all processing attempts or stays in the asynchronous invocation queue for too long, Lambda discards it. To retain discarded events, configure a dead-letter queue with UpdateFunctionConfiguration.
"""
PutFunctionEventInvokeConfig(FunctionName) = lambda("PUT", "/2019-09-25/functions/$FunctionName/event-invoke-config")

"""
Revokes function-use permission from an AWS service or another account. You can get the ID of the statement from the output of GetPolicy.
"""
RemovePermission(FunctionName, StatementId) = lambda("DELETE", "/2015-03-31/functions/$FunctionName/policy/$StatementId")

"""
Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes. If you specify a function version, only details that are specific to that version are returned.
"""
GetFunction(FunctionName) = lambda("GET", "/2015-03-31/functions/$FunctionName")

"""
Retrieves the provisioned concurrency configuration for a function's alias or version.
"""
GetProvisionedConcurrencyConfig(FunctionName, Qualifier) = lambda("GET", "/2019-09-30/functions/$FunctionName/provisioned-concurrency")

"""
Returns details about an event source mapping. You can get the identifier of a mapping from the output of ListEventSourceMappings.
"""
GetEventSourceMapping(UUID) = lambda("GET", "/2015-03-31/event-source-mappings/$UUID")

"""
Returns a list of versions, with the version-specific configuration of each. 
"""
ListVersionsByFunction(FunctionName) = lambda("GET", "/2015-03-31/functions/$FunctionName/versions")

"""
Updates the configuration of a Lambda function alias.
"""
UpdateAlias(FunctionName, Name) = lambda("PUT", "/2015-03-31/functions/$FunctionName/aliases/$Name")

"""
Adds a provisioned concurrency configuration to a function's alias or version.
"""
PutProvisionedConcurrencyConfig(FunctionName, Qualifier, ProvisionedConcurrentExecutions) = lambda("PUT", "/2019-09-30/functions/$FunctionName/provisioned-concurrency")

"""
Returns a list of aliases for a Lambda function.
"""
ListAliases(FunctionName) = lambda("GET", "/2015-03-31/functions/$FunctionName/aliases")

"""
Retrieves the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
"""
GetFunctionEventInvokeConfig(FunctionName) = lambda("GET", "/2019-09-25/functions/$FunctionName/event-invoke-config")

"""
Updates the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
"""
UpdateFunctionEventInvokeConfig(FunctionName) = lambda("POST", "/2019-09-25/functions/$FunctionName/event-invoke-config")

"""
Retrieves details about your account's limits and usage in an AWS Region.
"""
GetAccountSettings() = lambda("GET", "/2016-08-19/account-settings/")

"""
Creates an AWS Lambda layer from a ZIP archive. Each time you call PublishLayerVersion with the same layer name, a new version is created. Add layers to your function with CreateFunction or UpdateFunctionConfiguration.
"""
PublishLayerVersion(LayerName, Content) = lambda("POST", "/2018-10-31/layers/$LayerName/versions")

"""
Creates a version from the current code and configuration of a function. Use versions to create a snapshot of your function code and configuration that doesn't change. AWS Lambda doesn't publish a version if the function's configuration and code haven't changed since the last version. Use UpdateFunctionCode or UpdateFunctionConfiguration to update the function before publishing a version. Clients can invoke versions directly or with an alias. To create an alias, use CreateAlias.
"""
PublishVersion(FunctionName) = lambda("POST", "/2015-03-31/functions/$FunctionName/versions")

"""
Returns details about a Lambda function alias.
"""
GetAlias(FunctionName, Name) = lambda("GET", "/2015-03-31/functions/$FunctionName/aliases/$Name")

"""
Deletes a version of an AWS Lambda layer. Deleted versions can no longer be viewed or added to functions. To avoid breaking functions, a copy of the version remains in Lambda until no functions refer to it.
"""
DeleteLayerVersion(LayerName, VersionNumber) = lambda("DELETE", "/2018-10-31/layers/$LayerName/versions/$VersionNumber")

"""
Returns the resource-based IAM policy for a function, version, or alias.
"""
GetPolicy(FunctionName) = lambda("GET", "/2015-03-31/functions/$FunctionName/policy")

"""
Updates a Lambda function's code. The function's code is locked when you publish a version. You can't modify the code of a published version, only the unpublished version.
"""
UpdateFunctionCode(FunctionName) = lambda("PUT", "/2015-03-31/functions/$FunctionName/code")

"""
Deletes the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
"""
DeleteFunctionEventInvokeConfig(FunctionName) = lambda("DELETE", "/2019-09-25/functions/$FunctionName/event-invoke-config")

"""
Modify the version-specific settings of a Lambda function. When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The LastUpdateStatus, LastUpdateStatusReason, and LastUpdateStatusReasonCode fields in the response from GetFunctionConfiguration indicate when the update is complete and the function is processing events with the new configuration. For more information, see Function States. These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version. To configure function concurrency, use PutFunctionConcurrency. To grant invoke permissions to an account or AWS service, use AddPermission.
"""
UpdateFunctionConfiguration(FunctionName) = lambda("PUT", "/2015-03-31/functions/$FunctionName/configuration")

"""
Deletes an event source mapping. You can get the identifier of a mapping from the output of ListEventSourceMappings. When you delete an event source mapping, it enters a Deleting state and might not be completely deleted for several seconds.
"""
DeleteEventSourceMapping(UUID) = lambda("DELETE", "/2015-03-31/event-source-mappings/$UUID")

"""
Adds permissions to the resource-based policy of a version of an AWS Lambda layer. Use this action to grant layer usage permission to other accounts. You can grant permission to a single account, all AWS accounts, or all accounts in an organization. To revoke permission, call RemoveLayerVersionPermission with the statement ID that you specified when you added it.
"""
AddLayerVersionPermission(LayerName, VersionNumber, StatementId, Action, Principal) = lambda("POST", "/2018-10-31/layers/$LayerName/versions/$VersionNumber/policy")

"""
Deletes a Lambda function alias.
"""
DeleteAlias(FunctionName, Name) = lambda("DELETE", "/2015-03-31/functions/$FunctionName/aliases/$Name")

"""
Returns a function's tags. You can also view tags with GetFunction.
"""
ListTags(Resource) = lambda("GET", "/2017-03-31/tags/$ARN")

"""
Returns a list of Lambda functions, with the version-specific configuration of each. Set FunctionVersion to ALL to include all published versions of each function in addition to the unpublished version. To get more information about a function or version, use GetFunction.
"""
ListFunctions() = lambda("GET", "/2015-03-31/functions/")

"""
Grants an AWS service or another account permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function. To grant permission to another account, specify the account ID as the Principal. For AWS services, the principal is a domain-style identifier defined by the service, like s3.amazonaws.com or sns.amazonaws.com. For AWS services, you can also specify the ARN or owning account of the associated resource as the SourceArn or SourceAccount. If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function. This action adds a statement to a resource-based permissions policy for the function. For more information about function policies, see Lambda Function Policies. 
"""
AddPermission(FunctionName, StatementId, Action, Principal) = lambda("POST", "/2015-03-31/functions/$FunctionName/policy")

"""
Removes a concurrent execution limit from a function.
"""
DeleteFunctionConcurrency(FunctionName) = lambda("DELETE", "/2017-10-31/functions/$FunctionName/concurrency")
end
