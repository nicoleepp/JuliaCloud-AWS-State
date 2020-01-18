module aws_iot_events
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iot_events

"""
Lists the tags (metadata) you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iot_events("GET", "/tags")

"""
Describes a detector model. If the "version" parameter is not specified, information about the latest version is returned.
"""
DescribeDetectorModel(detectorModelName) = iot_events("GET", "/detector-models/$detectorModelName")

"""
Creates an input.
"""
CreateInput(inputName, inputDefinition) = iot_events("POST", "/inputs")

"""
Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
"""
ListDetectorModelVersions(detectorModelName) = iot_events("GET", "/detector-models/$detectorModelName/versions")

"""
Describes an input.
"""
DescribeInput(inputName) = iot_events("GET", "/inputs/$inputName")

"""
Lists the inputs you have created.
"""
ListInputs() = iot_events("GET", "/inputs")

"""
Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
"""
TagResource(resourceArn, tags) = iot_events("POST", "/tags")

"""
Removes the given tags (metadata) from the resource.
"""
UntagResource(resourceArn, tagKeys) = iot_events("DELETE", "/tags")

"""
Sets or updates the AWS IoT Events logging options. If you update the value of any "loggingOptions" field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the "roleArn" field (for example, to correct an invalid policy) it takes up to five minutes for that change to take effect.
"""
PutLoggingOptions(loggingOptions) = iot_events("PUT", "/logging")

"""
Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
"""
UpdateDetectorModel(detectorModelName, detectorModelDefinition, roleArn) = iot_events("POST", "/detector-models/$detectorModelName")

"""
Lists the detector models you have created. Only the metadata associated with each detector model is returned.
"""
ListDetectorModels() = iot_events("GET", "/detector-models")

"""
Updates an input.
"""
UpdateInput(inputName, inputDefinition) = iot_events("PUT", "/inputs/$inputName")

"""
Deletes an input.
"""
DeleteInput(inputName) = iot_events("DELETE", "/inputs/$inputName")

"""
Retrieves the current settings of the AWS IoT Events logging options.
"""
DescribeLoggingOptions() = iot_events("GET", "/logging")

"""
Creates a detector model.
"""
CreateDetectorModel(detectorModelName, detectorModelDefinition, roleArn) = iot_events("POST", "/detector-models")

"""
Deletes a detector model. Any active instances of the detector model are also deleted.
"""
DeleteDetectorModel(detectorModelName) = iot_events("DELETE", "/detector-models/$detectorModelName")
end
