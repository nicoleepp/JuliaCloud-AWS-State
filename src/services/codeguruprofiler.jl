module aws_codeguruprofiler
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: codeguruprofiler

"""
Update a profiling group.
"""
UpdateProfilingGroup(agentOrchestrationConfig, profilingGroupName) = codeguruprofiler("PUT", "/profilingGroups/$profilingGroupName")

"""
Submit profile collected by an agent belonging to a profiling group for aggregation.
"""
PostAgentProfile(agentProfile, contentType, profilingGroupName) = codeguruprofiler("POST", "/profilingGroups/$profilingGroupName/agentProfile")

"""
List profiling groups in the account.
"""
ListProfilingGroups() = codeguruprofiler("GET", "/profilingGroups")

"""
Delete a profiling group.
"""
DeleteProfilingGroup(profilingGroupName) = codeguruprofiler("DELETE", "/profilingGroups/$profilingGroupName")

"""
Create a profiling group.
"""
CreateProfilingGroup(clientToken, profilingGroupName) = codeguruprofiler("POST", "/profilingGroups")

"""
Provides the configuration to use for an agent of the profiling group.
"""
ConfigureAgent(profilingGroupName) = codeguruprofiler("POST", "/profilingGroups/$profilingGroupName/configureAgent")

"""
List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
"""
ListProfileTimes(endTime, period, profilingGroupName, startTime) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName/profileTimes")

"""
Get the aggregated profile of a profiling group for the specified time range. If the requested time range does not align with the available aggregated profiles, it will be expanded to attain alignment. If aggregated profiles are available only for part of the period requested, the profile is returned from the earliest available to the latest within the requested time range. For instance, if the requested time range is from 00:00 to 00:20 and the available profiles are from 00:15 to 00:25, then the returned profile will be from 00:15 to 00:20.
"""
GetProfile(profilingGroupName) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName/profile")

"""
Describe a profiling group.
"""
DescribeProfilingGroup(profilingGroupName) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName")
end
