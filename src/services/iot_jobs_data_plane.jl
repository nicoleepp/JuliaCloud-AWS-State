module aws_iot_jobs_data_plane
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: iot_jobs_data_plane

"""
Updates the status of a job execution.
"""
UpdateJobExecution(jobId, thingName, status) = iot_jobs_data_plane("POST", "/things/$thingName/jobs/$jobId")

"""
Gets details of a job execution.
"""
DescribeJobExecution(jobId, thingName) = iot_jobs_data_plane("GET", "/things/$thingName/jobs/$jobId")

"""
Gets the list of all jobs for a thing that are not in a terminal status.
"""
GetPendingJobExecutions(thingName) = iot_jobs_data_plane("GET", "/things/$thingName/jobs")

"""
Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
"""
StartNextPendingJobExecution(thingName) = iot_jobs_data_plane("PUT", "/things/$thingName/jobs/$next")
end
