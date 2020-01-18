module aws_kafka
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: kafka

"""

            Creates a new MSK cluster.
         
"""
CreateCluster(BrokerNodeGroupInfo, KafkaVersion, NumberOfBrokerNodes, ClusterName) = kafka("POST", "/v1/clusters")

"""

            Returns a list of the tags associated with the specified resource.
         
"""
ListTagsForResource(ResourceArn) = kafka("GET", "/v1/tags/$resourceArn")

"""

            Updates the EBS storage associated with MSK brokers.
         
"""
UpdateBrokerStorage(ClusterArn, TargetBrokerEBSVolumeInfo, CurrentVersion) = kafka("PUT", "/v1/clusters/$clusterArn/nodes/storage")

"""

            Returns a description of this revision of the configuration.
         
"""
DescribeConfigurationRevision(Revision, Arn) = kafka("GET", "/v1/configurations/$arn/revisions/$revision")

"""

            Returns a list of the broker nodes in the cluster.
         
"""
ListNodes(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn/nodes")

"""

            Updates the cluster with the configuration that is specified in the request body.
         
"""
UpdateClusterConfiguration(ClusterArn, CurrentVersion, ConfigurationInfo) = kafka("PUT", "/v1/clusters/$clusterArn/configuration")

"""

            Returns a list of all the MSK configurations in this Region.
         
"""
ListConfigurations() = kafka("GET", "/v1/configurations")

"""

            Creates a new MSK configuration.
         
"""
CreateConfiguration(ServerProperties, KafkaVersions, Name) = kafka("POST", "/v1/configurations")

"""

            Returns a list of all the operations that have been performed on the specified MSK cluster.
         
"""
ListClusterOperations(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn/operations")

"""

            Adds tags to the specified MSK resource.
         
"""
TagResource(ResourceArn, Tags) = kafka("POST", "/v1/tags/$resourceArn")

"""

            Removes the tags associated with the keys that are provided in the query.
         
"""
UntagResource(TagKeys, ResourceArn) = kafka("DELETE", "/v1/tags/$resourceArn")

"""

            Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
         
"""
UpdateMonitoring(ClusterArn, CurrentVersion) = kafka("PUT", "/v1/clusters/$clusterArn/monitoring")

"""

            Updates the number of broker nodes in the cluster.
         
"""
UpdateBrokerCount(ClusterArn, CurrentVersion, TargetNumberOfBrokerNodes) = kafka("PUT", "/v1/clusters/$clusterArn/nodes/count")

"""

            Returns a description of the cluster operation specified by the ARN.
         
"""
DescribeClusterOperation(ClusterOperationArn) = kafka("GET", "/v1/operations/$clusterOperationArn")

"""

            Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
         
"""
DeleteCluster(ClusterArn) = kafka("DELETE", "/v1/clusters/$clusterArn")

"""

            Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
         
"""
DescribeCluster(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn")

"""

            A list of brokers that a client application can use to bootstrap.
         
"""
GetBootstrapBrokers(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn/bootstrap-brokers")

"""

            Returns a description of this MSK configuration.
         
"""
DescribeConfiguration(Arn) = kafka("GET", "/v1/configurations/$arn")

"""

            Returns a list of all the MSK configurations in this Region.
         
"""
ListConfigurationRevisions(Arn) = kafka("GET", "/v1/configurations/$arn/revisions")

"""

            Returns a list of all the MSK clusters in the current Region.
         
"""
ListClusters() = kafka("GET", "/v1/clusters")
end
