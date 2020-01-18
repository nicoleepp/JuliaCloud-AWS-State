module aws_elasticsearch_service
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: elasticsearch_service

"""
 Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying. 
"""
DescribeElasticsearchInstanceTypeLimits(InstanceType, ElasticsearchVersion) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypeLimits/$ElasticsearchVersion/$InstanceType")

"""
Allows you to purchase reserved Elasticsearch instances.
"""
PurchaseReservedElasticsearchInstanceOffering(ReservedElasticsearchInstanceOfferingId, ReservationName) = elasticsearch_service("POST", "/2015-01-01/es/purchaseReservedInstanceOffering")

"""
Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
"""
DescribeElasticsearchDomain(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/domain/$DomainName")

"""
Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
"""
UpgradeElasticsearchDomain(DomainName, TargetVersion) = elasticsearch_service("POST", "/2015-01-01/es/upgradeDomain")

"""
List all supported Elasticsearch versions
"""
ListElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/versions")

"""
Removes the specified set of tags from the specified Elasticsearch domain.
"""
RemoveTags(ARN, TagKeys) = elasticsearch_service("POST", "/2015-01-01/tags-removal")

"""
Schedules a service software update for an Amazon ES domain.
"""
StartElasticsearchServiceSoftwareUpdate(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/start")

"""
Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
"""
DeleteElasticsearchServiceRole() = elasticsearch_service("DELETE", "/2015-01-01/es/role")

"""
Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
"""
GetUpgradeStatus(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/$DomainName/status")

"""
Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.
"""
CreateElasticsearchDomain(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/domain")

"""
Returns information about reserved Elasticsearch instances for this account.
"""
DescribeReservedElasticsearchInstances() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstances")

"""
Returns the name of all Elasticsearch domains owned by the current user's account. 
"""
ListDomainNames() = elasticsearch_service("GET", "/2015-01-01/domain")

"""
Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.
"""
DescribeElasticsearchDomains(DomainNames) = elasticsearch_service("POST", "/2015-01-01/es/domain-info")

"""
Returns all tags for the given Elasticsearch domain.
"""
ListTags(ARN) = elasticsearch_service("GET", "/2015-01-01/tags/")

"""
 Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain. 
"""
GetCompatibleElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/compatibleVersions")

"""
Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See  Tagging Amazon Elasticsearch Service Domains for more information.
"""
AddTags(ARN, TagList) = elasticsearch_service("POST", "/2015-01-01/tags")

"""
Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.
"""
DescribeElasticsearchDomainConfig(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/domain/$DomainName/config")

"""
Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
"""
CancelElasticsearchServiceSoftwareUpdate(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/cancel")

"""
Retrieves the complete history of the last 10 upgrades that were performed on the domain.
"""
GetUpgradeHistory(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/$DomainName/history")

"""
Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
"""
DeleteElasticsearchDomain(DomainName) = elasticsearch_service("DELETE", "/2015-01-01/es/domain/$DomainName")

"""
Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. 
"""
UpdateElasticsearchDomainConfig(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/domain/$DomainName/config")

"""
List all Elasticsearch instance types that are supported for given ElasticsearchVersion
"""
ListElasticsearchInstanceTypes(ElasticsearchVersion) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypes/$ElasticsearchVersion")

"""
Lists available reserved Elasticsearch instance offerings.
"""
DescribeReservedElasticsearchInstanceOfferings() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstanceOfferings")
end
