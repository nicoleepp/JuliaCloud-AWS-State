module aws_s3_control
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: s3_control

"""
Retrieves the PublicAccessBlock configuration for an Amazon Web Services account.
"""
GetPublicAccessBlock(AccountId) = s3_control("GET", "/v20180820/configuration/publicAccessBlock")

"""
Creates an access point and associates it with the specified bucket.
"""
CreateAccessPoint(AccountId, Name, Bucket) = s3_control("PUT", "/v20180820/accesspoint/$name")

"""
Returns the access point policy associated with the specified access point.
"""
GetAccessPointPolicy(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/$name/policy")

"""
Associates an access policy with the specified access point. Each access point can have only one policy, so a request made to this API replaces any existing policy associated with the specified access point.
"""
PutAccessPointPolicy(AccountId, Name, Policy) = s3_control("PUT", "/v20180820/accesspoint/$name/policy")

"""
Deletes the specified access point.
"""
DeleteAccessPoint(AccountId, Name) = s3_control("DELETE", "/v20180820/accesspoint/$name")

"""
Returns configuration information about the specified access point.
"""
GetAccessPoint(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/$name")

"""
Updates an existing job's priority.
"""
UpdateJobPriority(AccountId, JobId, Priority) = s3_control("POST", "/v20180820/jobs/$id/priority")

"""
Creates an Amazon S3 batch operations job.
"""
CreateJob(AccountId, Operation, Report, ClientRequestToken, Manifest, Priority, RoleArn) = s3_control("POST", "/v20180820/jobs")

"""
Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1000 access points (or the number specified in maxResults, whichever is less), then the response will include a continuation token that you can use to list the additional access points.
"""
ListAccessPoints(AccountId) = s3_control("GET", "/v20180820/accesspoint")

"""
Deletes the access point policy for the specified access point.
"""
DeleteAccessPointPolicy(AccountId, Name) = s3_control("DELETE", "/v20180820/accesspoint/$name/policy")

"""
Indicates whether the specified access point currently has a policy that allows public access. For more information about public access through access points, see Managing Data Access with Amazon S3 Access Points in the Amazon Simple Storage Service Developer Guide.
"""
GetAccessPointPolicyStatus(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/$name/policyStatus")

"""
Retrieves the configuration parameters and status for a batch operations job.
"""
DescribeJob(AccountId, JobId) = s3_control("GET", "/v20180820/jobs/$id")

"""
Removes the PublicAccessBlock configuration for an Amazon Web Services account.
"""
DeletePublicAccessBlock(AccountId) = s3_control("DELETE", "/v20180820/configuration/publicAccessBlock")

"""
Lists current jobs and jobs that have ended within the last 30 days for the AWS account making the request.
"""
ListJobs(AccountId) = s3_control("GET", "/v20180820/jobs")

"""
Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account.
"""
PutPublicAccessBlock(PublicAccessBlockConfiguration, AccountId) = s3_control("PUT", "/v20180820/configuration/publicAccessBlock")

"""
Updates the status for the specified job. Use this operation to confirm that you want to run a job or to cancel an existing job.
"""
UpdateJobStatus(AccountId, JobId, RequestedJobStatus) = s3_control("POST", "/v20180820/jobs/$id/status")
end
