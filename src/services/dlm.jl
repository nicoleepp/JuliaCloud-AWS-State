module aws_dlm
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: dlm

"""
Lists the tags for the specified resource.
"""
ListTagsForResource(ResourceArn) = dlm("GET", "/tags/$resourceArn")

"""
Removes the specified tags from the specified resource.
"""
UntagResource(ResourceArn, TagKeys) = dlm("DELETE", "/tags/$resourceArn")

"""
Gets detailed information about the specified lifecycle policy.
"""
GetLifecyclePolicy(PolicyId) = dlm("GET", "/policies/$policyId/")

"""
Creates a policy to manage the lifecycle of the specified AWS resources. You can create up to 100 lifecycle policies.
"""
CreateLifecyclePolicy(ExecutionRoleArn, Description, State, PolicyDetails) = dlm("POST", "/policies")

"""
Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use GetLifecyclePolicy.
"""
GetLifecyclePolicies() = dlm("GET", "/policies")

"""
Updates the specified lifecycle policy.
"""
UpdateLifecyclePolicy(PolicyId) = dlm("PATCH", "/policies/$policyId")

"""
Deletes the specified lifecycle policy and halts the automated operations that the policy specified.
"""
DeleteLifecyclePolicy(PolicyId) = dlm("DELETE", "/policies/$policyId/")

"""
Adds the specified tags to the specified resource.
"""
TagResource(ResourceArn, Tags) = dlm("POST", "/tags/$resourceArn")
end
