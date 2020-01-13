# Current state of AWS in JuliaCloud

## Contact Info
matt.brzezinski@invenia.ca

## Tenets
- Make using AWS easy for the average Julia user
- Use automation and code generation as much as possible
- Create a simple straight-forward systems design

## Executive Summary  -- TODO

## Current State
There are two categories of packages currently supporting AWS usage in `JuliaCloud`.

- Low-Level Wrapper

[`AWSCore.jl`](https://github.com/JuliaCloud/AWSCore.jl) is the most popular low-level package.
`AWSCore.jl` works by parsing down the [`AWS SDK JS`](https://github.com/aws/aws-sdk-js) to create definitions for each AWS Service.
Creating / updating these service definitions is a manual process, the last update was `2019-12-03`, before that `2018-08-01`.

To use the package it is then up to the end user to know how to call the appropriate operation, which can be done by referencing the [`AWS Documentation`](https://docs.aws.amazon.com/index.html).

e.g. [`ListBuckets`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html) operation on `AWS S3`
```julia
using AWSCore.Services
Services.s3(aws_config(), "GET", "/")
```

- High-Level Wrapper(s)

These packages are much more simple to use as the end user only needs to know the operation they wish to perform.

e.g. [`ListBuckets`] operation on `AWS S3`
```julia
using AWSCore

s3_list_buckets()
```

However, these high-level packages are currently hand written, limited to certain AWS Services, are prone to errors or limited functionality.

## Proposed Solution -- TODO

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