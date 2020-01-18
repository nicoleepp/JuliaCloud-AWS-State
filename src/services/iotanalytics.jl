module aws_iotanalytics
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iotanalytics

"""
Retrieves information about a data set.
"""
DescribeDataset(datasetName) = iotanalytics("GET", "/datasets/$datasetName")

"""
Lists the tags (metadata) which you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iotanalytics("GET", "/tags")

"""
Sends messages to a channel.
"""
BatchPutMessage(channelName, messages) = iotanalytics("POST", "/messages/batch")

"""
Creates a data store, which is a repository for messages.
"""
CreateDatastore(datastoreName) = iotanalytics("POST", "/datastores")

"""
Deletes the specified data store.
"""
DeleteDatastore(datastoreName) = iotanalytics("DELETE", "/datastores/$datastoreName")

"""
Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
"""
SampleChannelData(channelName) = iotanalytics("GET", "/channels/$channelName/sample")

"""
Retrieves a list of channels.
"""
ListChannels() = iotanalytics("GET", "/channels")

"""
Retrieves a list of data stores.
"""
ListDatastores() = iotanalytics("GET", "/datastores")

"""
Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
"""
CreatePipeline(pipelineName, pipelineActivities) = iotanalytics("POST", "/pipelines")

"""
Lists information about data set contents that have been created.
"""
ListDatasetContents(datasetName) = iotanalytics("GET", "/datasets/$datasetName/contents")

"""
Updates the settings of a channel.
"""
UpdateChannel(channelName) = iotanalytics("PUT", "/channels/$channelName")

"""
Retrieves information about data sets.
"""
ListDatasets() = iotanalytics("GET", "/datasets")

"""
Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
"""
CreateChannel(channelName) = iotanalytics("POST", "/channels")

"""
Creates the content of a data set by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application).
"""
CreateDatasetContent(datasetName) = iotanalytics("POST", "/datasets/$datasetName/content")

"""
Retrieves information about a pipeline.
"""
DescribePipeline(pipelineName) = iotanalytics("GET", "/pipelines/$pipelineName")

"""
Updates the settings of a pipeline. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
"""
UpdatePipeline(pipelineName, pipelineActivities) = iotanalytics("PUT", "/pipelines/$pipelineName")

"""
Deletes the specified data set. You do not have to delete the content of the data set before you perform this operation.
"""
DeleteDataset(datasetName) = iotanalytics("DELETE", "/datasets/$datasetName")

"""
Deletes the specified channel.
"""
DeleteChannel(channelName) = iotanalytics("DELETE", "/channels/$channelName")

"""
Retrieves information about a channel.
"""
DescribeChannel(channelName) = iotanalytics("GET", "/channels/$channelName")

"""
Sets or updates the AWS IoT Analytics logging options. Note that if you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy) it takes up to 5 minutes for that change to take effect. 
"""
PutLoggingOptions(loggingOptions) = iotanalytics("PUT", "/logging")

"""
Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
"""
TagResource(resourceArn, tags) = iotanalytics("POST", "/tags")

"""
Removes the given tags (metadata) from the resource.
"""
UntagResource(resourceArn, tagKeys) = iotanalytics("DELETE", "/tags")

"""
Updates the settings of a data set.
"""
UpdateDataset(datasetName, actions) = iotanalytics("PUT", "/datasets/$datasetName")

"""
Updates the settings of a data store.
"""
UpdateDatastore(datastoreName) = iotanalytics("PUT", "/datastores/$datastoreName")

"""
Starts the reprocessing of raw message data through the pipeline.
"""
StartPipelineReprocessing(pipelineName) = iotanalytics("POST", "/pipelines/$pipelineName/reprocessing")

"""
Cancels the reprocessing of data through the pipeline.
"""
CancelPipelineReprocessing(pipelineName, reprocessingId) = iotanalytics("DELETE", "/pipelines/$pipelineName/reprocessing/$reprocessingId")

"""
Retrieves the contents of a data set as pre-signed URIs.
"""
GetDatasetContent(datasetName) = iotanalytics("GET", "/datasets/$datasetName/content")

"""
Retrieves information about a data store.
"""
DescribeDatastore(datastoreName) = iotanalytics("GET", "/datastores/$datastoreName")

"""
Retrieves the current settings of the AWS IoT Analytics logging options.
"""
DescribeLoggingOptions() = iotanalytics("GET", "/logging")

"""
Deletes the content of the specified data set.
"""
DeleteDatasetContent(datasetName) = iotanalytics("DELETE", "/datasets/$datasetName/content")

"""
Creates a data set. A data set stores data retrieved from a data store by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application). This operation creates the skeleton of a data set. The data set can be populated manually by calling "CreateDatasetContent" or automatically according to a "trigger" you specify.
"""
CreateDataset(datasetName, actions) = iotanalytics("POST", "/datasets")

"""
Deletes the specified pipeline.
"""
DeletePipeline(pipelineName) = iotanalytics("DELETE", "/pipelines/$pipelineName")

"""
Retrieves a list of pipelines.
"""
ListPipelines() = iotanalytics("GET", "/pipelines")

"""
Simulates the results of running a pipeline activity on a message payload.
"""
RunPipelineActivity(pipelineActivity, payloads) = iotanalytics("POST", "/pipelineactivities/run")
end
