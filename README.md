# Current state of AWS in JuliaCloud

## Contact Info
matt.brzezinski@invenia.ca

## Tenets
- Make using AWS easy for the average Julia user
- Use automation and code generation as much as possible
- Create a simple straight-forward systems design

## Executive Summary  -- TODO
Using AWS Services in Julia is currently more difficult than it needs to be.
Users are currently limited to the low-level wrappers which require the knowledge of everything that goes into an operation.
Or they are limited to high-level wrappers which may or may not be available for the service which the want to use.

## Current State
There are two categories of packages currently supporting AWS usage in `JuliaCloud`.

### Low-Level Wrapper
[`AWSCore.jl`](https://github.com/JuliaCloud/AWSCore.jl) is the most popular low-level package.
The package consists of five major files:

- `AWSAPI.jl`: Generates the `Services.jl` file which contains the low-level API wrappers for each AWS Service
- `AWSCore.jl`: Processes `json, query, xml, etc.` request protocols
- `AWSCredentials.jl`: Handles retrieving AWS Credentials from locations such as environment variables, credential / configuration files, etc.
- `Services.jl`: Contains a function for every AWS Service
- `signaturev4.jl`: Creates the `AWS4AuthLayer` to be inserted into the HTTP stack and signs the requests with AWS authentication

Inside of `Services.jl` each AWS Service has its own respective service, which is used to call it:
```julia
function s3(aws::AWSConfig, verb, resource, args=[])
    AWSCore.service_rest_xml(
        aws;
        service      = get(aws, :service_name, "s3"),
        version      = "2006-03-01",
        verb         = verb,
        resource     = resource,
        args         = args)
end
```

`AWSCore.jl` works by running a `Node.js` server which parsing down the [`AWS SDK JS`](https://github.com/aws/aws-sdk-js) to create definitions for each AWS Service.
To use the package it is then up to the end user to know how to call the appropriate operation, which can be done by referencing the [`AWS Documentation`](https://docs.aws.amazon.com/index.html).

e.g. [`ListBuckets`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html) operation on `AWS S3`
```julia
using AWSCore.Services
Services.s3(aws_config(), "GET", "/")
```

Having functions defined for each service in this form does not take advantage multiple dispatch.
In its current state there is no automated or documented steps to update the `Services.jl` file.
If Amazon releases a new service, or updates the API for an existing service the process of updating `Services.jl` needs to be done manually.

#### High-Level Wrapper(s)
These packages are much more simple to use as the end user only needs to know the operation they wish to perform.
However these high-level packages are currently hand written, limited to certain AWS Services, are prone to errors and/or have limited functionality.

To use a package such as [`AWSS3.jl`](https://github.com/JuliaCloud/AWSS3.jl), the end user only needs to know how to call the operation.

e.g. `ListBuckets` operation on `AWS S3`
```julia
using AWSCore

s3_list_buckets()
```

## Proposed Solution -- TODO

### Low-Level
- automate updating definitions for aws services

### High-Level
- create a new package similar to boto3 which allows for creating an AWS Service object and having its functions defined at a high level

## In Scope -- TODO

## Out of Scope -- TODO

## Measures of Success -- TODO

## Use Cases -- TODO

## Dependencies -- TODO

## Functional Requirements -- TODO

## Non-Functional Requirements -- TODO

## Metrics -- TODO

## Alarms -- TODO

## Open Issues -- TODO

## Appendix

### Links
- [`AWS SDK JS`](https://github.com/aws/aws-sdk-js/tree/master/apis)

### Number of Amazon Services
- `api_files.txt` is a list of all files in the [`AWS SDK JS APIs`](https://github.com/aws/aws-sdk-js/tree/master/apis)

```python
import re

with open("api_files.txt") as f:
  services = set()

  for line in f.readlines():
    services.add(re.split("-\d", line)[0])
  print(len(services))  # 220 (as of 2019-12-17
```

### List of low-level wrappers
- [`JuliaCloud/AWSCore.jl`](https://github.com/JuliaCloud/AWSCore.jl)
- [`JuliaCloud/AWSAPI.jl`](https://github.com/JuliaCloud/AWSAPI.jl)
- [`JuliaCloud/AWS.jl`](https://github.com/JuliaCloud/AWS.jl)

### List of high-level wrappers
- [`JuliaCloud/AWSSQS.jl`](https://github.com/JuliaCloud/AWSSQS.jl)
- [`JuliaCloud/AWSS3.jl`](https://github.com/JuliaCloud/AWSS3.jl)
- [`samoconnor/AWSNS.jl`](https://github.com/samoconnor/AWSSNS.jl)
- [`samoconnor/AWSIAM.jl`](https://github.com/samoconnor/AWSIAM.jl)
- [`samoconnor/AWSEC2.jl`](https://github.com/samoconnor/AWSEC2.jl)
- [`samoconnor/AWSLambda.jl`](https://github.com/samoconnor/AWSLambda.jl)
- [`samoconnor/AWSSES.jl`](https://github.com/samoconnor/AWSSES.jl)
- [`samoconnor/AWSDB.jl`](https://github.com/samoconnor/AWSSDB.jl)