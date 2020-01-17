module AWSMetadata

using DataStructures
using HTTP
using JSON

"""
    parse_aws_metadata()

Update the AWS service metadata definitions in `metadata.json` by parsing the `AWS SDK JS`.

Check to see if the AWS service exists in the metadata, if not then a new service has been
created and we should generate low and high level wrappers for it. Otherwise, check to see
if the service SHA hash matches what we keep on file, if they differ then the API has been
updated and we need to re-generate low and high level wrappers for the service.
"""
function parse_aws_metadata()
    # TODO:
    # - Generate low-level wrapper consts
    # - Generate high-level wrapper for each service that has been updated
    #   - If a service definition has changed or been added, add the name to a list
    #     Then pass this list to another function

    metadata = JSON.parsefile("metadata.json", dicttype=DataStructures.OrderedDict)
    headers = ["User-Agent" => "JuliaCloud/AWSCore.jl"]
    url = "https://api.github.com/repos/aws/aws-sdk-js/contents/apis"
    req = HTTP.get(url, headers)
    files = JSON.parse(String(req.body), dicttype=DataStructures.OrderedDict)
    filter!(f -> occursin(r".normal.json$", f["name"]), files)  # Only get ${Service}.normal.json files
    data_changed = false
    services_modified = String[]

    function _process_service(file, version)
        data_changed = true
        push!(metadata, file["name"] => Dict("version" => version, "sha" => file["sha"]))
        push!(services_modified, file["name"])
    end

    for file in files
        """
        TODO -  Do we want to use the file["name"] or service_name?

        If we're using the service_name, how do we differentiate between different service
        versions? Do we care about using old versions; or only support the latest API version?
        """
        filename = join(split(file["name"], '.')[1:end-2],'.')
        filename = split(filename, '-')
        service_name = join(filename[1:end-3], '-')
        version = join(filename[end-2:end], '-')

        filename = file["name"]

        if !haskey(metadata, filename)
            println(service_name, " does not exist in metadata.")
            _process_service(file, version)
        else
            if metadata[filename]["sha"] != file["sha"]
                println(service_name, " sha hashes do not match, updating.")
                _process_service(file, version)
            end
        end
    end

    if data_changed
        _generate_low_level_wrapper(files)
        open("metadata.json", "w") do f
            print(f, json(OrderedDict(metadata), 2))
        end
    end
end

"""
    _generate_low_level_wrapper(services)

Generates the low level AWSCorePrototype wrapper.
"""
function _generate_low_level_wrapper(services)
    # TODO:
    # - How do we deal with multiple versions of the same service? e.g. cloudfront
    # - We now generate the same const over and over again
    println("Generating low level wrapper")
    service_definitions = _generate_service_definitions(services)

    template = """
    module AWSCoreServices

    include("AWSCorePrototype.jl")

    $(join(service_definitions, "\n"))

    end
    """

    open("AWSCorePrototypeServices.jl", "w") do f
        print(f, template)
    end
end

function _generate_service_definitions(services)
    service_definitions = String[]

    for service in services
        request = HTTP.get(service["download_url"])
        service_metadata = JSON.parse(String(request.body))["metadata"]

        definition = _generate_service_definition(service_metadata)
        if definition != nothing
            push!(service_definitions, definition)
        end
    end

    return service_definitions
end

function _generate_service_definition(service)
    # TODO:
    # - Do not use service["endpointPrefix"] when generating, this does not give a valid
    # name back for every service
    println("Generating Service for ", service["serviceId"])
    request_protocol = service["protocol"]
    service_name = service["endpointPrefix"]
    api_version = service["apiVersion"]

    if request_protocol == "rest-xml"
        return "const $service_name = AWSCorePrototype.RestXMLService(\"$service_name\", \"$api_version\")"
    elseif request_protocol == "json"
        json_version = service["jsonVersion"]
        target = service["targetPrefix"]
        return "const $service_name = AWSCorePrototype.JSONService(\"$service_name\", \"$api_version\", \"$json_version\", \"$target\")"
    elseif request_protocol == "query" || request_protocol == "ec2"
        return "const $service_name = AWSCorePrototype.QueryService(\"$service_name\", \"$api_version\")"
    elseif request_protocol == "rest-json"
        return "const $service_name = AWSCorePrototype.RestJSONService(\"$service_name\", \"$api_version\")"
    else
        println(service_name, " uses a new protocol ", request_protocol)
    end
end

parse_aws_metadata()
end