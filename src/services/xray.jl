module aws_xray
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: xray

"""
Deletes a group resource.
"""
DeleteGroup() = xray("POST", "/DeleteGroup")

"""
Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments. Segments must include the following fields. For the full segment document schema, see AWS X-Ray Segment Documents in the AWS X-Ray Developer Guide.  Required Segment Document Fields     name - The name of the service that handled the request.    id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.    trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.    start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.    end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.    in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.   A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:  Trace ID Format    The version number, i.e. 1.   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.  
"""
PutTraceSegments(TraceSegmentDocuments) = xray("POST", "/TraceSegments")

"""
Retrieves group resource details.
"""
GetGroup() = xray("POST", "/GetGroup")

"""
Retrieves the current encryption configuration for X-Ray data.
"""
GetEncryptionConfig() = xray("POST", "/EncryptionConfig")

"""
Retrieves a service graph for one or more specific trace IDs.
"""
GetTraceGraph(TraceIds) = xray("POST", "/TraceGraph")

"""
Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with GetSamplingRules, and evaluate each rule in ascending order of priority for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with GetSamplingTargets to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.
"""
CreateSamplingRule(SamplingRule) = xray("POST", "/CreateSamplingRule")

"""
Updates the encryption configuration for X-Ray data.
"""
PutEncryptionConfig(Type) = xray("POST", "/PutEncryptionConfig")

"""
Used by the AWS X-Ray daemon to upload telemetry.
"""
PutTelemetryRecords(TelemetryRecords) = xray("POST", "/TelemetryRecords")

"""
Get an aggregation of service statistics defined by a specific time range.
"""
GetTimeSeriesServiceStatistics(StartTime, EndTime) = xray("POST", "/TimeSeriesServiceStatistics")

"""
Requests a sampling quota for rules that the service is using to sample requests. 
"""
GetSamplingTargets(SamplingStatisticsDocuments) = xray("POST", "/SamplingTargets")

"""
Modifies a sampling rule's configuration.
"""
UpdateSamplingRule(SamplingRuleUpdate) = xray("POST", "/UpdateSamplingRule")

"""
Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
"""
BatchGetTraces(TraceIds) = xray("POST", "/Traces")

"""
Creates a group resource with a name and a filter expression. 
"""
CreateGroup(GroupName) = xray("POST", "/CreateGroup")

"""
Retrieves all sampling rules.
"""
GetSamplingRules() = xray("POST", "/GetSamplingRules")

"""
Deletes a sampling rule.
"""
DeleteSamplingRule() = xray("POST", "/DeleteSamplingRule")

"""
Retrieves all active group details.
"""
GetGroups() = xray("POST", "/Groups")

"""
Retrieves information about recent sampling results for all sampling rules.
"""
GetSamplingStatisticSummaries() = xray("POST", "/SamplingStatisticSummaries")

"""
Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
"""
GetServiceGraph(StartTime, EndTime) = xray("POST", "/ServiceGraph")

"""
Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the AWS X-Ray Developer Guide.
"""
GetTraceSummaries(StartTime, EndTime) = xray("POST", "/TraceSummaries")

"""
Updates a group resource.
"""
UpdateGroup() = xray("POST", "/UpdateGroup")
end
