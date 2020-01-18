module aws_elastic_load_balancing
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: elastic_load_balancing

"""
Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC. For load balancers in a non-default VPC, use AttachLoadBalancerToSubnets. The load balancer evenly distributes requests across all its registered Availability Zones that contain instances. For more information, see Add or Remove Availability Zones in the Classic Load Balancers Guide.
"""
EnableAvailabilityZonesForLoadBalancer(LoadBalancerName, AvailabilityZones) = elastic_load_balancing("POST", "/")

"""
Deletes the specified listeners from the specified load balancer.
"""
DeleteLoadBalancerListeners(LoadBalancerName, LoadBalancerPorts) = elastic_load_balancing("POST", "/")

"""
Sets the certificate that terminates the specified listener's SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port. For more information about updating your SSL certificate, see Replace the SSL Certificate for Your Load Balancer in the Classic Load Balancers Guide.
"""
SetLoadBalancerListenerSSLCertificate(LoadBalancerName, LoadBalancerPort, SSLCertificateId) = elastic_load_balancing("POST", "/")

"""
Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer. You can use DescribeLoadBalancers to verify that the instance is deregistered from the load balancer. For more information, see Register or De-Register EC2 Instances in the Classic Load Balancers Guide.
"""
DeregisterInstancesFromLoadBalancer(LoadBalancerName, Instances) = elastic_load_balancing("POST", "/")

"""
Modifies the attributes of the specified load balancer. You can modify the load balancer attributes, such as AccessLogs, ConnectionDraining, and CrossZoneLoadBalancing by either enabling or disabling them. Or, you can modify the load balancer attribute ConnectionSettings by specifying an idle connection timeout value for your load balancer. For more information, see the following in the Classic Load Balancers Guide:    Cross-Zone Load Balancing     Connection Draining     Access Logs     Idle Connection Timeout   
"""
ModifyLoadBalancerAttributes(LoadBalancerName, LoadBalancerAttributes) = elastic_load_balancing("POST", "/")

"""
Replaces the current set of policies for the specified load balancer port with the specified set of policies. To enable back-end server authentication, use SetLoadBalancerPoliciesForBackendServer. For more information about setting policies, see Update the SSL Negotiation Configuration, Duration-Based Session Stickiness, and Application-Controlled Session Stickiness in the Classic Load Balancers Guide.
"""
SetLoadBalancerPoliciesOfListener(LoadBalancerName, LoadBalancerPort, PolicyNames) = elastic_load_balancing("POST", "/")

"""
Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies. At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies. Each time you use SetLoadBalancerPoliciesForBackendServer to enable the policies, use the PolicyNames parameter to list the policies that you want to enable. You can use DescribeLoadBalancers or DescribeLoadBalancerPolicies to verify that the policy is associated with the EC2 instance. For more information about enabling back-end instance authentication, see Configure Back-end Instance Authentication in the Classic Load Balancers Guide. For more information about Proxy Protocol, see Configure Proxy Protocol Support in the Classic Load Balancers Guide.
"""
SetLoadBalancerPoliciesForBackendServer(LoadBalancerName, InstancePort, PolicyNames) = elastic_load_balancing("POST", "/")

"""
Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener. For more information, see Listeners for Your Classic Load Balancer in the Classic Load Balancers Guide.
"""
CreateLoadBalancerListeners(LoadBalancerName, Listeners) = elastic_load_balancing("POST", "/")

"""
Describes the specified policies. If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer. If you specify a policy name associated with your load balancer, the action returns the description of that policy. If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies. The names of the sample policies have the ELBSample- prefix.
"""
DescribeLoadBalancerPolicies() = elastic_load_balancing("POST", "/")

"""
Removes the specified subnets from the set of configured subnets for the load balancer. After a subnet is removed, all EC2 instances registered with the load balancer in the removed subnet go into the OutOfService state. Then, the load balancer balances the traffic among the remaining routable subnets.
"""
DetachLoadBalancerFromSubnets(LoadBalancerName, Subnets) = elastic_load_balancing("POST", "/")

"""
Removes one or more tags from the specified load balancer.
"""
RemoveTags(LoadBalancerNames, Tags) = elastic_load_balancing("POST", "/")

"""
Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.
"""
DescribeLoadBalancers() = elastic_load_balancing("POST", "/")

"""
Describes the specified load balancer policy types or all load balancer policy types. The description of each type indicates how it can be used. For example, some policies can be used only with layer 7 listeners, some policies can be used only with layer 4 listeners, and some policies can be used only with your EC2 instances. You can use CreateLoadBalancerPolicy to create a policy configuration for any of these policy types. Then, depending on the policy type, use either SetLoadBalancerPoliciesOfListener or SetLoadBalancerPoliciesForBackendServer to set the policy.
"""
DescribeLoadBalancerPolicyTypes() = elastic_load_balancing("POST", "/")

"""
Describes the tags associated with the specified load balancers.
"""
DescribeTags(LoadBalancerNames) = elastic_load_balancing("POST", "/")

"""
Adds the specified instances to the specified load balancer. The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC. Note that RegisterInstanceWithLoadBalancer completes when the request has been registered. Instance registration takes a little time to complete. To check the state of the registered instances, use DescribeLoadBalancers or DescribeInstanceHealth. After the instance is registered, it starts receiving traffic and requests from the load balancer. Any instance that is not in one of the Availability Zones registered for the load balancer is moved to the OutOfService state. If an Availability Zone is added to the load balancer later, any instances registered with the load balancer move to the InService state. To deregister instances from a load balancer, use DeregisterInstancesFromLoadBalancer. For more information, see Register or De-Register EC2 Instances in the Classic Load Balancers Guide.
"""
RegisterInstancesWithLoadBalancer(LoadBalancerName, Instances) = elastic_load_balancing("POST", "/")

"""
Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners. This policy is similar to the policy created by CreateLBCookieStickinessPolicy, except that the lifetime of the special Elastic Load Balancing cookie, AWSELB, follows the lifetime of the application-generated cookie specified in the policy configuration. The load balancer only inserts a new stickiness cookie when the application response includes a new application cookie. If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued. For more information, see Application-Controlled Session Stickiness in the Classic Load Balancers Guide.
"""
CreateAppCookieStickinessPolicy(LoadBalancerName, PolicyName, CookieName) = elastic_load_balancing("POST", "/")

"""
Creates a Classic Load Balancer. You can add listeners, security groups, subnets, and tags when you create your load balancer, or you can add them later using CreateLoadBalancerListeners, ApplySecurityGroupsToLoadBalancer, AttachLoadBalancerToSubnets, and AddTags. To describe your current load balancers, see DescribeLoadBalancers. When you are finished with a load balancer, you can delete it using DeleteLoadBalancer. You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see Limits for Your Classic Load Balancer in the Classic Load Balancers Guide.
"""
CreateLoadBalancer(LoadBalancerName, Listeners) = elastic_load_balancing("POST", "/")

"""
Adds one or more subnets to the set of configured subnets for the specified load balancer. The load balancer evenly distributes requests across all registered subnets. For more information, see Add or Remove Subnets for Your Load Balancer in a VPC in the Classic Load Balancers Guide.
"""
AttachLoadBalancerToSubnets(LoadBalancerName, Subnets) = elastic_load_balancing("POST", "/")

"""
Creates a policy with the specified attributes for the specified load balancer. Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.
"""
CreateLoadBalancerPolicy(LoadBalancerName, PolicyName, PolicyTypeName) = elastic_load_balancing("POST", "/")

"""
Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups. For more information, see Security Groups for Load Balancers in a VPC in the Classic Load Balancers Guide.
"""
ApplySecurityGroupsToLoadBalancer(LoadBalancerName, SecurityGroups) = elastic_load_balancing("POST", "/")

"""
Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners. When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm. A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration. For more information, see Duration-Based Session Stickiness in the Classic Load Balancers Guide.
"""
CreateLBCookieStickinessPolicy(LoadBalancerName, PolicyName) = elastic_load_balancing("POST", "/")

"""
Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.
"""
DeleteLoadBalancerPolicy(LoadBalancerName, PolicyName) = elastic_load_balancing("POST", "/")

"""
Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.
"""
DescribeInstanceHealth(LoadBalancerName) = elastic_load_balancing("POST", "/")

"""
Specifies the health check settings to use when evaluating the health state of your EC2 instances. For more information, see Configure Health Checks for Your Load Balancer in the Classic Load Balancers Guide.
"""
ConfigureHealthCheck(LoadBalancerName, HealthCheck) = elastic_load_balancing("POST", "/")

"""
Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags. Each tag consists of a key and an optional value. If a tag with the same key is already associated with the load balancer, AddTags updates its value. For more information, see Tag Your Classic Load Balancer in the Classic Load Balancers Guide.
"""
AddTags(LoadBalancerNames, Tags) = elastic_load_balancing("POST", "/")

"""
Deletes the specified load balancer. If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances. If the load balancer does not exist or has already been deleted, the call to DeleteLoadBalancer still succeeds.
"""
DeleteLoadBalancer(LoadBalancerName) = elastic_load_balancing("POST", "/")

"""
Describes the current Elastic Load Balancing resource limits for your AWS account. For more information, see Limits for Your Classic Load Balancer in the Classic Load Balancers Guide.
"""
DescribeAccountLimits() = elastic_load_balancing("POST", "/")

"""
Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC. For load balancers in a non-default VPC, use DetachLoadBalancerFromSubnets. There must be at least one Availability Zone registered with a load balancer at all times. After an Availability Zone is removed, all instances registered with the load balancer that are in the removed Availability Zone go into the OutOfService state. Then, the load balancer attempts to equally balance the traffic among its remaining Availability Zones. For more information, see Add or Remove Availability Zones in the Classic Load Balancers Guide.
"""
DisableAvailabilityZonesForLoadBalancer(LoadBalancerName, AvailabilityZones) = elastic_load_balancing("POST", "/")

"""
Describes the attributes for the specified load balancer.
"""
DescribeLoadBalancerAttributes(LoadBalancerName) = elastic_load_balancing("POST", "/")
end
