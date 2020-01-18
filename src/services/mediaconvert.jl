module aws_mediaconvert
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mediaconvert

"""
Retrieve the tags for a MediaConvert resource.
"""
ListTagsForResource(Arn) = mediaconvert("GET", "/2017-08-29/tags/$arn")

"""
Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
"""
CreateJobTemplate(Settings, Name) = mediaconvert("POST", "/2017-08-29/jobTemplates")

"""
Retrieve the JSON for a specific queue.
"""
GetQueue(Name) = mediaconvert("GET", "/2017-08-29/queues/$name")

"""
Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
"""
CreateQueue(Name) = mediaconvert("POST", "/2017-08-29/queues")

"""
Permanently delete a queue you have created.
"""
DeleteQueue(Name) = mediaconvert("DELETE", "/2017-08-29/queues/$name")

"""
Modify one of your existing queues.
"""
UpdateQueue(Name) = mediaconvert("PUT", "/2017-08-29/queues/$name")

"""
Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
"""
ListPresets() = mediaconvert("GET", "/2017-08-29/presets")

"""
Permanently cancel a job. Once you have canceled a job, you can't start it again.
"""
CancelJob(Id) = mediaconvert("DELETE", "/2017-08-29/jobs/$id")

"""
Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
"""
CreateJob(Role, Settings) = mediaconvert("POST", "/2017-08-29/jobs")

"""
Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
"""
TagResource(Arn, Tags) = mediaconvert("POST", "/2017-08-29/tags")

"""
Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
"""
UntagResource(Arn) = mediaconvert("PUT", "/2017-08-29/tags/$arn")

"""
Retrieve the JSON for a specific completed transcoding job.
"""
GetJob(Id) = mediaconvert("GET", "/2017-08-29/jobs/$id")

"""
Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
"""
AssociateCertificate(Arn) = mediaconvert("POST", "/2017-08-29/certificates")

"""
Modify one of your existing job templates.
"""
UpdateJobTemplate(Name) = mediaconvert("PUT", "/2017-08-29/jobTemplates/$name")

"""
Permanently delete a job template you have created.
"""
DeleteJobTemplate(Name) = mediaconvert("DELETE", "/2017-08-29/jobTemplates/$name")

"""
Permanently delete a preset you have created.
"""
DeletePreset(Name) = mediaconvert("DELETE", "/2017-08-29/presets/$name")

"""
Send an request with an empty body to the regional API endpoint to get your account API endpoint.
"""
DescribeEndpoints() = mediaconvert("POST", "/2017-08-29/endpoints")

"""
Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
"""
ListJobTemplates() = mediaconvert("GET", "/2017-08-29/jobTemplates")

"""
Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
"""
CreatePreset(Settings, Name) = mediaconvert("POST", "/2017-08-29/presets")

"""
Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
"""
ListJobs() = mediaconvert("GET", "/2017-08-29/jobs")

"""
Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.
"""
DisassociateCertificate(Arn) = mediaconvert("DELETE", "/2017-08-29/certificates/$arn")

"""
Modify one of your existing presets.
"""
UpdatePreset(Name) = mediaconvert("PUT", "/2017-08-29/presets/$name")

"""
Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
"""
ListQueues() = mediaconvert("GET", "/2017-08-29/queues")

"""
Retrieve the JSON for a specific job template.
"""
GetJobTemplate(Name) = mediaconvert("GET", "/2017-08-29/jobTemplates/$name")

"""
Retrieve the JSON for a specific preset.
"""
GetPreset(Name) = mediaconvert("GET", "/2017-08-29/presets/$name")
end
