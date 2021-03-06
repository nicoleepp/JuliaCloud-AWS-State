module AWSMetadata

using DataStructures: OrderedDict
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
    # - Only support the latest API version, need to add another filter!(files)
    # - Generate high-level wrapper for each service
    # - Only regenerate API definitions for services which have changed
    metadata_path = joinpath(@__DIR__, "metadata.json")
    metadata = JSON.parsefile(metadata_path, dicttype=OrderedDict)
    headers = ["User-Agent" => "JuliaCloud/AWSCore.jl"]
    url = "https://api.github.com/repos/aws/aws-sdk-js/contents/apis"
    req = HTTP.get(url, headers)
    files = JSON.parse(String(req.body), dicttype=OrderedDict)
    filter!(f -> occursin(r".normal.json$", f["name"]), files)  # Only get ${Service}.normal.json files
    data_changed = false
    services_modified = String[]

    function _process_service(file, version)
        data_changed = true
        push!(metadata, file["name"] => Dict("version" => version, "sha" => file["sha"]))
        push!(services_modified, file["name"])
    end

    for file in files
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
        # Should move this generation to _process_service() so we don't regenerate for every
        # service, just the ones that change
        _generate_low_level_wrapper(files)
        _generate_high_level_wrapper(files)
        open(metadata_path, "w") do f
            print(f, json(OrderedDict(metadata), 2))
        end
    end
end

function _generate_low_level_wrapper(services)
    # TODO:
    # - How do we deal with multiple versions of the same service? e.g. cloudfront
    # - We now generate the same const over and over again
    service_definitions = _generate_service_definitions(services)

    template = """
    module AWSCorePrototypeServices

    include("../AWSCorePrototype.jl")

    $(join(service_definitions, "\n"))

    end
    """

    services_path = joinpath(@__DIR__, "AWSCorePrototypeServices.jl")
    open(services_path, "w") do f
        print(f, template)
    end
end

function _generate_service_definitions(services)
    service_definitions = String[]

    for service in services
        service_name = service["name"]
        println("Generating low level wrapper for $service_name")
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
    println("Generating Metadata definitions for ", service["serviceId"])
    request_protocol = service["protocol"]
    service_name = service["endpointPrefix"]
    service_id = replace(lowercase(service["serviceId"]), ' ' => '_')
    api_version = service["apiVersion"]

    if request_protocol in ["rest-xml", "ec2", "query", "rest-json"]
        return "const $service_id = AWSCorePrototype.RestXMLService(\"$service_name\", \"$api_version\")"
    elseif request_protocol == "json"
        json_version = service["jsonVersion"]
        target = service["targetPrefix"]
        return "const $service_id = AWSCorePrototype.JSONService(\"$service_name\", \"$api_version\", \"$json_version\", \"$target\")"
    else
        # This should ping an alarm, we need to update this source code as its something we haven't seen before
        println(service_name, " uses a new protocol ", request_protocol)
    end
end

function _generate_rest_xml_high_level_wrapper(service_name, operations, shapes)
    # TODO:
    # - When generating S3 the documentation ends up with $ScanRange set in it which breaks things
    # - Pull down documentation for each input variable and write to the docstr
    function_definitions = String[]

    for operation in operations
        operation = operation[2]
        name = operation["name"]
        method = operation["http"]["method"]
        request_uri = operation["http"]["requestUri"]

        # Replace curly braces around parameters in the request_uri with a $, so Julia can pass the parameters along
        request_uri = replace(request_uri, '{' => "\$")
        request_uri = replace(request_uri, '}' => "")

        # Removes everything inbetween <> characters
        documentation = ""
        if haskey(operation, "documentation")
            documentation = operation["documentation"]
            documentation = replace(documentation, r"\<.*?\>" => "")
        end

        required_parameters = ""

        if haskey(operation, "input")
            input_shape = shapes[operation["input"]["shape"]]

            if haskey(input_shape, "required")
                required_parameters = input_shape["required"]
            end
        end

        definition = """
        \"\"\"
        $documentation
        \"\"\"
        $name($(join(required_parameters, ", "))) = $service_name(\"$method\", \"$request_uri\")
        """

        push!(function_definitions, definition)
    end

    service_path = joinpath(@__DIR__, "services/$service_name.jl")
    open(service_path, "w") do f
        println(f, "module aws_$service_name")
        println(f, "include(\"AWSCorePrototypeServices.jl\")")
        println(f, "using .AWSCorePrototypeServices: $service_name\n")
        print(f, join(function_definitions, "\n"))
        println(f, "end")
    end
end

function _generate_high_level_wrapper(services)
    # TODO:
    # - Create functions for query, rest-json, and json protocols
    #   These only seem to differ from rest-xml with how their shapes are defined
    #   We only need to pull the required uri params down for function definitions
    for service in services
        service_name = service["name"]
        println("Generating high level wrapper for $service_name")
        service = JSON.parse(String(HTTP.get(service["download_url"]).body))
        service_name = lowercase(service["metadata"]["serviceId"])
        service_name = replace(service_name, ' ' => '_')
        operations = service["operations"]
        shapes = service["shapes"]

        protocol = service["metadata"]["protocol"]

        if protocol in ["rest-xml"]
            _generate_rest_xml_high_level_wrapper(service_name, operations, shapes)
        end
    end
end
end