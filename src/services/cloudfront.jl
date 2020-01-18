module aws_cloudfront
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: cloudfront

"""
List CloudFront distributions.
"""
ListDistributions2019_03_26() = cloudfront("GET", "/2019-03-26/distribution")

"""
Add tags to a CloudFront resource.
"""
TagResource2019_03_26(Resource, Tags) = cloudfront("POST", "/2019-03-26/tagging?Operation=Tag")

"""
Get the field-level encryption profile configuration information.
"""
GetFieldLevelEncryptionProfileConfig2019_03_26(Id) = cloudfront("GET", "/2019-03-26/field-level-encryption-profile/$Id/config")

"""
Get the information about an origin access identity. 
"""
GetCloudFrontOriginAccessIdentity2019_03_26(Id) = cloudfront("GET", "/2019-03-26/origin-access-identity/cloudfront/$Id")

"""
Get the configuration information about a distribution. 
"""
GetDistributionConfig2019_03_26(Id) = cloudfront("GET", "/2019-03-26/distribution/$Id/config")

"""
Get the information about a distribution.
"""
GetDistribution2019_03_26(Id) = cloudfront("GET", "/2019-03-26/distribution/$Id")

"""
Return public key configuration informaation
"""
GetPublicKeyConfig2019_03_26(Id) = cloudfront("GET", "/2019-03-26/public-key/$Id/config")

"""
Update an origin access identity. 
"""
UpdateCloudFrontOriginAccessIdentity2019_03_26(CloudFrontOriginAccessIdentityConfig, Id) = cloudfront("PUT", "/2019-03-26/origin-access-identity/cloudfront/$Id/config")

"""
Create a new distribution with tags.
"""
CreateDistributionWithTags2019_03_26(DistributionConfigWithTags) = cloudfront("POST", "/2019-03-26/distribution?WithTags")

"""
Creates a new web distribution. You create a CloudFront distribution to tell CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery. Send a POST request to the /CloudFront API version/distribution/distribution ID resource.  When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using UpdateDistribution, follow the steps included in the documentation to get the current configuration and then make your updates. This helps to make sure that you include all of the required fields. To view a summary, see Required Fields for Create Distribution and Update Distribution in the Amazon CloudFront Developer Guide. 
"""
CreateDistribution2019_03_26(DistributionConfig) = cloudfront("POST", "/2019-03-26/distribution")

"""
Get the public key information.
"""
GetPublicKey2019_03_26(Id) = cloudfront("GET", "/2019-03-26/public-key/$Id")

"""
Create a new field-level encryption configuration.
"""
CreateFieldLevelEncryptionConfig2019_03_26(FieldLevelEncryptionConfig) = cloudfront("POST", "/2019-03-26/field-level-encryption")

"""
List streaming distributions. 
"""
ListStreamingDistributions2019_03_26() = cloudfront("GET", "/2019-03-26/streaming-distribution")

"""
Get the configuration information about a streaming distribution. 
"""
GetStreamingDistributionConfig2019_03_26(Id) = cloudfront("GET", "/2019-03-26/streaming-distribution/$Id/config")

"""
Update a field-level encryption configuration. 
"""
UpdateFieldLevelEncryptionConfig2019_03_26(FieldLevelEncryptionConfig, Id) = cloudfront("PUT", "/2019-03-26/field-level-encryption/$Id/config")

"""
Gets information about a specified RTMP distribution, including the distribution configuration.
"""
GetStreamingDistribution2019_03_26(Id) = cloudfront("GET", "/2019-03-26/streaming-distribution/$Id")

"""
Remove a field-level encryption profile.
"""
DeleteFieldLevelEncryptionProfile2019_03_26(Id) = cloudfront("DELETE", "/2019-03-26/field-level-encryption-profile/$Id")

"""
Get the configuration information about an origin access identity. 
"""
GetCloudFrontOriginAccessIdentityConfig2019_03_26(Id) = cloudfront("GET", "/2019-03-26/origin-access-identity/cloudfront/$Id/config")

"""
Get the field-level encryption configuration information.
"""
GetFieldLevelEncryptionConfig2019_03_26(Id) = cloudfront("GET", "/2019-03-26/field-level-encryption/$Id/config")

"""
Remove tags from a CloudFront resource.
"""
UntagResource2019_03_26(Resource, TagKeys) = cloudfront("POST", "/2019-03-26/tagging?Operation=Untag")

"""
Creates a new RTMP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP.  To create a new distribution, submit a POST request to the CloudFront API version/distribution resource. The request body must include a document with a StreamingDistributionConfig element. The response echoes the StreamingDistributionConfig element and returns other information about the RTMP distribution. To get the status of your request, use the GET StreamingDistribution API action. When the value of Enabled is true and the value of Status is Deployed, your distribution is ready. A distribution usually deploys in less than 15 minutes. For more information about web distributions, see Working with RTMP Distributions in the Amazon CloudFront Developer Guide.  Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the Quantity element and the number of values specified. 
"""
CreateStreamingDistribution2019_03_26(StreamingDistributionConfig) = cloudfront("POST", "/2019-03-26/streaming-distribution")

"""
Remove a field-level encryption configuration.
"""
DeleteFieldLevelEncryptionConfig2019_03_26(Id) = cloudfront("DELETE", "/2019-03-26/field-level-encryption/$Id")

"""
Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see Serving Private Content through CloudFront in the Amazon CloudFront Developer Guide.
"""
CreateCloudFrontOriginAccessIdentity2019_03_26(CloudFrontOriginAccessIdentityConfig) = cloudfront("POST", "/2019-03-26/origin-access-identity/cloudfront")

"""
Get the field-level encryption configuration information.
"""
GetFieldLevelEncryption2019_03_26(Id) = cloudfront("GET", "/2019-03-26/field-level-encryption/$Id")

"""
Lists origin access identities.
"""
ListCloudFrontOriginAccessIdentities2019_03_26() = cloudfront("GET", "/2019-03-26/origin-access-identity/cloudfront")

"""
Delete an origin access identity. 
"""
DeleteCloudFrontOriginAccessIdentity2019_03_26(Id) = cloudfront("DELETE", "/2019-03-26/origin-access-identity/cloudfront/$Id")

"""
List all field-level encryption configurations that have been created in CloudFront for this account.
"""
ListFieldLevelEncryptionConfigs2019_03_26() = cloudfront("GET", "/2019-03-26/field-level-encryption")

"""
Create a new streaming distribution with tags.
"""
CreateStreamingDistributionWithTags2019_03_26(StreamingDistributionConfigWithTags) = cloudfront("POST", "/2019-03-26/streaming-distribution?WithTags")

"""
List tags for a CloudFront resource.
"""
ListTagsForResource2019_03_26(Resource) = cloudfront("GET", "/2019-03-26/tagging")

"""
List all public keys that have been added to CloudFront for this account.
"""
ListPublicKeys2019_03_26() = cloudfront("GET", "/2019-03-26/public-key")

"""
Get the information about an invalidation. 
"""
GetInvalidation2019_03_26(DistributionId, Id) = cloudfront("GET", "/2019-03-26/distribution/$DistributionId/invalidation/$Id")

"""
Lists invalidation batches. 
"""
ListInvalidations2019_03_26(DistributionId) = cloudfront("GET", "/2019-03-26/distribution/$DistributionId/invalidation")

"""
Add a new public key to CloudFront to use, for example, for field-level encryption. You can add a maximum of 10 public keys with one AWS account.
"""
CreatePublicKey2019_03_26(PublicKeyConfig) = cloudfront("POST", "/2019-03-26/public-key")

"""
Delete a distribution. 
"""
DeleteDistribution2019_03_26(Id) = cloudfront("DELETE", "/2019-03-26/distribution/$Id")

"""
List the distributions that are associated with a specified AWS WAF web ACL. 
"""
ListDistributionsByWebACLId2019_03_26(WebACLId) = cloudfront("GET", "/2019-03-26/distributionsByWebACLId/$WebACLId")

"""
Update a streaming distribution. 
"""
UpdateStreamingDistribution2019_03_26(StreamingDistributionConfig, Id) = cloudfront("PUT", "/2019-03-26/streaming-distribution/$Id/config")

"""
Remove a public key you previously added to CloudFront.
"""
DeletePublicKey2019_03_26(Id) = cloudfront("DELETE", "/2019-03-26/public-key/$Id")

"""
Create a new invalidation. 
"""
CreateInvalidation2019_03_26(DistributionId, InvalidationBatch) = cloudfront("POST", "/2019-03-26/distribution/$DistributionId/invalidation")

"""
Update a field-level encryption profile. 
"""
UpdateFieldLevelEncryptionProfile2019_03_26(FieldLevelEncryptionProfileConfig, Id) = cloudfront("PUT", "/2019-03-26/field-level-encryption-profile/$Id/config")

"""
Get the field-level encryption profile information.
"""
GetFieldLevelEncryptionProfile2019_03_26(Id) = cloudfront("GET", "/2019-03-26/field-level-encryption-profile/$Id")

"""
Request a list of field-level encryption profiles that have been created in CloudFront for this account.
"""
ListFieldLevelEncryptionProfiles2019_03_26() = cloudfront("GET", "/2019-03-26/field-level-encryption-profile")

"""
Update public key information. Note that the only value you can change is the comment.
"""
UpdatePublicKey2019_03_26(PublicKeyConfig, Id) = cloudfront("PUT", "/2019-03-26/public-key/$Id/config")

"""
Updates the configuration for a web distribution.   When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using this API action, follow the steps here to get the current configuration and then make your updates, to make sure that you include all of the required fields. To view a summary, see Required Fields for Create Distribution and Update Distribution in the Amazon CloudFront Developer Guide.  The update process includes getting the current distribution configuration, updating the XML document that is returned to make your changes, and then submitting an UpdateDistribution request to make the updates. For information about updating a distribution using the CloudFront console instead, see Creating a Distribution in the Amazon CloudFront Developer Guide.  To update a web distribution using the CloudFront API    Submit a GetDistributionConfig request to get the current configuration and an Etag header for the distribution.  If you update the distribution again, you must get a new Etag header.    Update the XML document that was returned in the response to your GetDistributionConfig request to include your changes.   When you edit the XML file, be aware of the following:   You must strip out the ETag parameter that is returned.   Additional fields are required when you update a distribution. There may be fields included in the XML file for features that you haven't configured for your distribution. This is expected and required to successfully update the distribution.   You can't change the value of CallerReference. If you try to change this value, CloudFront returns an IllegalUpdate error.    The new configuration replaces the existing configuration; the values that you specify in an UpdateDistribution request are not merged into your existing configuration. When you add, delete, or replace values in an element that allows multiple values (for example, CNAME), you must specify all of the values that you want to appear in the updated distribution. In addition, you must update the corresponding Quantity element.      Submit an UpdateDistribution request to update the configuration for your distribution:   In the request body, include the XML document that you updated in Step 2. The request body must include an XML document with a DistributionConfig element.   Set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GetDistributionConfig request in Step 1.     Review the response to the UpdateDistribution request to confirm that the configuration was successfully updated.   Optional: Submit a GetDistribution request to confirm that your changes have propagated. When propagation is complete, the value of Status is Deployed.  
"""
UpdateDistribution2019_03_26(DistributionConfig, Id) = cloudfront("PUT", "/2019-03-26/distribution/$Id/config")

"""
Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.  To delete an RTMP distribution using the CloudFront API:   Disable the RTMP distribution.   Submit a GET Streaming Distribution Config request to get the current configuration and the Etag header for the distribution.    Update the XML document that was returned in the response to your GET Streaming Distribution Config request to change the value of Enabled to false.   Submit a PUT Streaming Distribution Config request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GET Streaming Distribution Config request in Step 2.   Review the response to the PUT Streaming Distribution Config request to confirm that the distribution was successfully disabled.   Submit a GET Streaming Distribution Config request to confirm that your changes have propagated. When propagation is complete, the value of Status is Deployed.   Submit a DELETE Streaming Distribution request. Set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GET Streaming Distribution Config request in Step 2.   Review the response to your DELETE Streaming Distribution request to confirm that the distribution was successfully deleted.   For information about deleting a distribution using the CloudFront console, see Deleting a Distribution in the Amazon CloudFront Developer Guide.
"""
DeleteStreamingDistribution2019_03_26(Id) = cloudfront("DELETE", "/2019-03-26/streaming-distribution/$Id")

"""
Create a field-level encryption profile.
"""
CreateFieldLevelEncryptionProfile2019_03_26(FieldLevelEncryptionProfileConfig) = cloudfront("POST", "/2019-03-26/field-level-encryption-profile")
end
