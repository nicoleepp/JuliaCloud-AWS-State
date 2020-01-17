module AWSCorePrototype

using AWSCore

# Additional structs for:
# - Query
# - JSON
# - RestJSON
mutable struct RestXMLService
    name::String
    api_version::String
end

mutable struct QueryService
    name::String
    api_version::String
end

mutable struct JSONService
    name::String
    api_version::String

    json_version::String
end

mutable struct RestJSONService
    name::String
    api_version::String
end

function (service::RestXMLService)(aws::AWSConfig, request_method::String, request_uri::String, args=[])
    return AWSCore.service_rest_xml(
        aws;
        service=service.name,
        version=service.api_version,
        verb=request_method,
        resource=request_uri,
        args=args
    )
end
(service::RestXMLService)(operation, args=[]) = service(default_aws_config(), operation, args)
(service::RestXMLService)(a...; b...) = service(a..., b)

end  # module AWSCorePrototype