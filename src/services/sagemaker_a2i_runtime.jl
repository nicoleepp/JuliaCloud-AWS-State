module aws_sagemaker_a2i_runtime
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: sagemaker_a2i_runtime

"""
Returns information about the specified human loop.
"""
DescribeHumanLoop(HumanLoopName) = sagemaker_a2i_runtime("GET", "/human-loops/$HumanLoopName")

"""
Returns information about human loops, given the specified parameters.
"""
ListHumanLoops() = sagemaker_a2i_runtime("GET", "/human-loops")

"""
Starts a human loop, provided that at least one activation condition is met.
"""
StartHumanLoop(HumanLoopName, FlowDefinitionArn, HumanLoopInput) = sagemaker_a2i_runtime("POST", "/human-loops")

"""
Deletes the specified human loop for a flow definition.
"""
DeleteHumanLoop(HumanLoopName) = sagemaker_a2i_runtime("DELETE", "/human-loops/$HumanLoopName")

"""
Stops the specified human loop.
"""
StopHumanLoop(HumanLoopName) = sagemaker_a2i_runtime("POST", "/human-loops/stop")
end
