module aws_mq
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mq

"""
Adds a pending configuration change to a broker.
"""
UpdateBroker(BrokerId) = mq("PUT", "/v1/brokers/$broker-id")

"""
Creates an ActiveMQ user.
"""
CreateUser(Username, BrokerId) = mq("POST", "/v1/brokers/$broker-id/users/$username")

"""
Describe available engine types and versions.
"""
DescribeBrokerEngineTypes() = mq("GET", "/v1/broker-engine-types")

"""
Returns the specified configuration revision for the specified configuration.
"""
DescribeConfigurationRevision(ConfigurationRevision, ConfigurationId) = mq("GET", "/v1/configurations/$configuration-id/revisions/$configuration-revision")

"""
Returns information about the specified broker.
"""
DescribeBroker(BrokerId) = mq("GET", "/v1/brokers/$broker-id")

"""
Returns a list of all brokers.
"""
ListBrokers() = mq("GET", "/v1/brokers")

"""
Updates the information for an ActiveMQ user.
"""
UpdateUser(Username, BrokerId) = mq("PUT", "/v1/brokers/$broker-id/users/$username")

"""
Returns a list of all configurations.
"""
ListConfigurations() = mq("GET", "/v1/configurations")

"""
Deletes an ActiveMQ user.
"""
DeleteUser(Username, BrokerId) = mq("DELETE", "/v1/brokers/$broker-id/users/$username")

"""
Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
"""
CreateConfiguration() = mq("POST", "/v1/configurations")

"""
Describe available broker instance options.
"""
DescribeBrokerInstanceOptions() = mq("GET", "/v1/broker-instance-options")

"""
Returns a list of all ActiveMQ users.
"""
ListUsers(BrokerId) = mq("GET", "/v1/brokers/$broker-id/users")

"""
Updates the specified configuration.
"""
UpdateConfiguration(ConfigurationId) = mq("PUT", "/v1/configurations/$configuration-id")

"""
Deletes a broker. Note: This API is asynchronous.
"""
DeleteBroker(BrokerId) = mq("DELETE", "/v1/brokers/$broker-id")

"""
Creates a broker. Note: This API is asynchronous.
"""
CreateBroker() = mq("POST", "/v1/brokers")

"""
Lists tags for a resource.
"""
ListTags(ResourceArn) = mq("GET", "/v1/tags/$resource-arn")

"""
Removes a tag from a resource.
"""
DeleteTags(TagKeys, ResourceArn) = mq("DELETE", "/v1/tags/$resource-arn")

"""
Add a tag to a resource.
"""
CreateTags(ResourceArn) = mq("POST", "/v1/tags/$resource-arn")

"""
Returns information about the specified configuration.
"""
DescribeConfiguration(ConfigurationId) = mq("GET", "/v1/configurations/$configuration-id")

"""
Returns a list of all revisions for the specified configuration.
"""
ListConfigurationRevisions(ConfigurationId) = mq("GET", "/v1/configurations/$configuration-id/revisions")

"""
Returns information about an ActiveMQ user.
"""
DescribeUser(Username, BrokerId) = mq("GET", "/v1/brokers/$broker-id/users/$username")

"""
Reboots a broker. Note: This API is asynchronous.
"""
RebootBroker(BrokerId) = mq("POST", "/v1/brokers/$broker-id/reboot")
end
