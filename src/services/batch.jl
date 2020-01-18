module aws_batch
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: batch

"""
Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob override parameters defined in the job definition.
"""
SubmitJob(jobName, jobQueue, jobDefinition) = batch("POST", "/v1/submitjob")

"""
Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.
"""
TerminateJob(jobId, reason) = batch("POST", "/v1/terminatejob")

"""
Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
"""
DescribeComputeEnvironments() = batch("POST", "/v1/describecomputeenvironments")

"""
Deletes an AWS Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation.
"""
DeleteComputeEnvironment(computeEnvironment) = batch("POST", "/v1/deletecomputeenvironment")

"""
Deregisters an AWS Batch job definition. Job definitions will be permanently deleted after 180 days.
"""
DeregisterJobDefinition(jobDefinition) = batch("POST", "/v1/deregisterjobdefinition")

"""
Describes a list of AWS Batch jobs.
"""
DescribeJobs(jobs) = batch("POST", "/v1/describejobs")

"""
Creates an AWS Batch compute environment. You can create MANAGED or UNMANAGED compute environments. In a managed compute environment, AWS Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the launch template that you specify when you create the compute environment. You can choose to use Amazon EC2 On-Demand Instances or Spot Instances in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is below a specified percentage of the On-Demand price.  Multi-node parallel jobs are not supported on Spot Instances.  In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see Container Instance AMIs in the Amazon Elastic Container Service Developer Guide. After you have created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that is associated with it. Then, manually launch your container instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS Container Instance in the Amazon Elastic Container Service Developer Guide.  AWS Batch does not upgrade the AMIs in a compute environment after it is created (for example, when a newer version of the Amazon ECS-optimized AMI is available). You are responsible for the management of the guest operating system (including updates and security patches) and any additional application software or utilities that you install on the compute resources. To use a new AMI for your AWS Batch jobs:   Create a new compute environment with the new AMI.   Add the compute environment to an existing job queue.   Remove the old compute environment from your job queue.   Delete the old compute environment.   
"""
CreateComputeEnvironment(computeEnvironmentName, type, serviceRole) = batch("POST", "/v1/createcomputeenvironment")

"""
Registers an AWS Batch job definition.
"""
RegisterJobDefinition(jobDefinitionName, type) = batch("POST", "/v1/registerjobdefinition")

"""
Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation. All jobs in the queue are terminated when you delete a job queue. It is not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request.
"""
DeleteJobQueue(jobQueue) = batch("POST", "/v1/deletejobqueue")

"""
Cancels a job in an AWS Batch job queue. Jobs that are in the SUBMITTED, PENDING, or RUNNABLE state are cancelled. Jobs that have progressed to STARTING or RUNNING are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the TerminateJob operation.
"""
CancelJob(jobId, reason) = batch("POST", "/v1/canceljob")

"""
Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
"""
CreateJobQueue(jobQueueName, priority, computeEnvironmentOrder) = batch("POST", "/v1/createjobqueue")

"""
Updates an AWS Batch compute environment.
"""
UpdateComputeEnvironment(computeEnvironment) = batch("POST", "/v1/updatecomputeenvironment")

"""
Returns a list of AWS Batch jobs. You must specify only one of the following:   a job queue ID to return a list of jobs in that job queue   a multi-node parallel job ID to return a list of that job's nodes   an array job ID to return a list of that job's children   You can filter the results by job status with the jobStatus parameter. If you do not specify a status, only RUNNING jobs are returned.
"""
ListJobs() = batch("POST", "/v1/listjobs")

"""
Updates a job queue.
"""
UpdateJobQueue(jobQueue) = batch("POST", "/v1/updatejobqueue")

"""
Describes one or more of your job queues.
"""
DescribeJobQueues() = batch("POST", "/v1/describejobqueues")

"""
Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
"""
DescribeJobDefinitions() = batch("POST", "/v1/describejobdefinitions")
end
