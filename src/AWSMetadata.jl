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
        _generate_low_level(file)
        _generate_high_level(file)
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
        println(services_modified)
        open("metadata.json", "w") do f
            print(f, json(OrderedDict(metadata), 2))
        end
    end
end

function _generate_low_level(service)
    # TODO - Low Level Wrapper
end

function _generate_high_level(service)
    # TODO - High Level Wrapper
end

parse_aws_metadata()
end