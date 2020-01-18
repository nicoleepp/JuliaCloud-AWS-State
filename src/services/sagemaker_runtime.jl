module aws_sagemaker_runtime
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: sagemaker_runtime

"""
After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.  For an overview of Amazon SageMaker, see How It Works.  Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.  Calls to InvokeEndpoint are authenticated by using AWS Signature Version 4. For information, see Authenticating Requests (AWS Signature Version 4) in the Amazon S3 API Reference. A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to the /invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds.  Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller. 
"""
InvokeEndpoint(EndpointName, Body) = sagemaker_runtime("POST", "/endpoints/$EndpointName/invocations")
end
