module aws_elastic_load_balancing_v2
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: elastic_load_balancing_v2

"""
Describes the attributes for the specified Application Load Balancer or Network Load Balancer. For more information, see Load Balancer Attributes in the Application Load Balancers Guide or Load Balancer Attributes in the Network Load Balancers Guide.
"""
DescribeLoadBalancerAttributes(LoadBalancerArn) = elastic_load_balancing_v2("POST", "/")

"""
Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners. For an HTTPS or TLS listener, the output includes the default certificate for the listener. To describe the certificate list for the listener, use DescribeListenerCertificates.
"""
DescribeListeners() = elastic_load_balancing_v2("POST", "/")

"""
Describes the specified policies or all policies used for SSL negotiation. For more information, see Security Policies in the Application Load Balancers Guide.
"""
DescribeSSLPolicies() = elastic_load_balancing_v2("POST", "/")

"""
Describes the attributes for the specified target group. For more information, see Target Group Attributes in the Application Load Balancers Guide or Target Group Attributes in the Network Load Balancers Guide.
"""
DescribeTargetGroupAttributes(TargetGroupArn) = elastic_load_balancing_v2("POST", "/")

"""
Describes the default certificate and the certificate list for the specified HTTPS or TLS listener. If the default certificate is also in the certificate list, it appears twice in the results (once with IsDefault set to true and once with IsDefault set to false). For more information, see SSL Certificates in the Application Load Balancers Guide.
"""
DescribeListenerCertificates(ListenerArn) = elastic_load_balancing_v2("POST", "/")

"""
Describes the health of the specified targets or all of your targets.
"""
DescribeTargetHealth(TargetGroupArn) = elastic_load_balancing_v2("POST", "/")

"""
Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer. If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.
"""
ModifyLoadBalancerAttributes(LoadBalancerArn, Attributes) = elastic_load_balancing_v2("POST", "/")

"""
Deletes the specified listener. Alternatively, your listener is deleted when you delete the load balancer to which it is attached, using DeleteLoadBalancer.
"""
DeleteListener(ListenerArn) = elastic_load_balancing_v2("POST", "/")

"""
Replaces the specified properties of the specified listener. Any properties that you do not specify remain unchanged. Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
"""
ModifyListener(ListenerArn) = elastic_load_balancing_v2("POST", "/")

"""
Modifies the specified attributes of the specified target group.
"""
ModifyTargetGroupAttributes(TargetGroupArn, Attributes) = elastic_load_balancing_v2("POST", "/")

"""
Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.
"""
DeregisterTargets(TargetGroupArn, Targets) = elastic_load_balancing_v2("POST", "/")

"""
Removes the specified tags from the specified Elastic Load Balancing resource. To list the current tags for your resources, use DescribeTags.
"""
RemoveTags(ResourceArns, TagKeys) = elastic_load_balancing_v2("POST", "/")

"""
Registers the specified targets with the specified target group. If the target is an EC2 instance, it must be in the running state when you register it. By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports. With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address. To remove a target from a target group, use DeregisterTargets.
"""
RegisterTargets(TargetGroupArn, Targets) = elastic_load_balancing_v2("POST", "/")

"""
Describes the specified load balancers or all of your load balancers. To describe the listeners for a load balancer, use DescribeListeners. To describe the attributes for a load balancer, use DescribeLoadBalancerAttributes.
"""
DescribeLoadBalancers() = elastic_load_balancing_v2("POST", "/")

"""
Enables the Availability Zones for the specified public subnets for the specified load balancer. The specified subnets replace the previously enabled subnets. When you specify subnets for a Network Load Balancer, you must include all subnets that were enabled previously, with their existing configurations, plus any additional subnets.
"""
SetSubnets(LoadBalancerArn) = elastic_load_balancing_v2("POST", "/")

"""
Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer. Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see Listener Rules in the Application Load Balancers Guide. To view your current rules, use DescribeRules. To update a rule, use ModifyRule. To set the priorities of your rules, use SetRulePriorities. To delete a rule, use DeleteRule.
"""
CreateRule(ListenerArn, Conditions, Priority, Actions) = elastic_load_balancing_v2("POST", "/")

"""
Creates a listener for the specified Application Load Balancer or Network Load Balancer. To update a listener, use ModifyListener. When you are finished with a listener, you can delete it using DeleteListener. If you are finished with both the listener and the load balancer, you can delete them both using DeleteLoadBalancer. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds. For more information, see Listeners for Your Application Load Balancers in the Application Load Balancers Guide and Listeners for Your Network Load Balancers in the Network Load Balancers Guide.
"""
CreateListener(LoadBalancerArn, Protocol, Port, DefaultActions) = elastic_load_balancing_v2("POST", "/")

"""
Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.
"""
DescribeTags(ResourceArns) = elastic_load_balancing_v2("POST", "/")

"""
Creates a target group. To register targets with the target group, use RegisterTargets. To update the health check settings for the target group, use ModifyTargetGroup. To monitor the health of targets in the target group, use DescribeTargetHealth. To route traffic to the targets in a target group, specify the target group in an action using CreateListener or CreateRule. To delete a target group, use DeleteTargetGroup. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds. For more information, see Target Groups for Your Application Load Balancers in the Application Load Balancers Guide or Target Groups for Your Network Load Balancers in the Network Load Balancers Guide.
"""
CreateTargetGroup(Name) = elastic_load_balancing_v2("POST", "/")

"""
Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.
"""
SetIpAddressType(LoadBalancerArn, IpAddressType) = elastic_load_balancing_v2("POST", "/")

"""
Creates an Application Load Balancer or a Network Load Balancer. When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using SetSecurityGroups, SetSubnets, SetIpAddressType, and AddTags. To create listeners for your load balancer, use CreateListener. To describe your current load balancers, see DescribeLoadBalancers. When you are finished with a load balancer, you can delete it using DeleteLoadBalancer. For limit information, see Limits for Your Application Load Balancer in the Application Load Balancers Guide and Limits for Your Network Load Balancer in the Network Load Balancers Guide. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds. For more information, see Application Load Balancers in the Application Load Balancers Guide and Network Load Balancers in the Network Load Balancers Guide.
"""
CreateLoadBalancer(Name) = elastic_load_balancing_v2("POST", "/")

"""
Modifies the health checks used when evaluating the health state of the targets in the specified target group. To monitor the health of the targets, use DescribeTargetHealth.
"""
ModifyTargetGroup(TargetGroupArn) = elastic_load_balancing_v2("POST", "/")

"""
Deletes the specified rule.
"""
DeleteRule(RuleArn) = elastic_load_balancing_v2("POST", "/")

"""
Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups. To describe the targets for a target group, use DescribeTargetHealth. To describe the attributes of a target group, use DescribeTargetGroupAttributes.
"""
DescribeTargetGroups() = elastic_load_balancing_v2("POST", "/")

"""
Adds the specified SSL server certificate to the certificate list for the specified HTTPS or TLS listener. If the certificate in already in the certificate list, the call is successful but the certificate is not added again. To get the certificate list for a listener, use DescribeListenerCertificates. To remove certificates from the certificate list for a listener, use RemoveListenerCertificates. To replace the default certificate for a listener, use ModifyListener. For more information, see SSL Certificates in the Application Load Balancers Guide.
"""
AddListenerCertificates(ListenerArn, Certificates) = elastic_load_balancing_v2("POST", "/")

"""
Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.
"""
DescribeRules() = elastic_load_balancing_v2("POST", "/")

"""
Replaces the specified properties of the specified rule. Any properties that you do not specify are unchanged. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action. To modify the actions for the default rule, use ModifyListener.
"""
ModifyRule(RuleArn) = elastic_load_balancing_v2("POST", "/")

"""
Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, AddTags updates its value. To list the current tags for your resources, use DescribeTags. To remove tags from your resources, use RemoveTags.
"""
AddTags(ResourceArns, Tags) = elastic_load_balancing_v2("POST", "/")

"""
Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners. You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds. Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.
"""
DeleteLoadBalancer(LoadBalancerArn) = elastic_load_balancing_v2("POST", "/")

"""
Sets the priorities of the specified rules. You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.
"""
SetRulePriorities(RulePriorities) = elastic_load_balancing_v2("POST", "/")

"""
Describes the current Elastic Load Balancing resource limits for your AWS account. For more information, see Limits for Your Application Load Balancers in the Application Load Balancer Guide or Limits for Your Network Load Balancers in the Network Load Balancers Guide.
"""
DescribeAccountLimits() = elastic_load_balancing_v2("POST", "/")

"""
Removes the specified certificate from the certificate list for the specified HTTPS or TLS listener. You can't remove the default certificate for a listener. To replace the default certificate, call ModifyListener. To list the certificates for your listener, use DescribeListenerCertificates.
"""
RemoveListenerCertificates(ListenerArn, Certificates) = elastic_load_balancing_v2("POST", "/")

"""
Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups. You can't specify a security group for a Network Load Balancer.
"""
SetSecurityGroups(LoadBalancerArn, SecurityGroups) = elastic_load_balancing_v2("POST", "/")

"""
Deletes the specified target group. You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.
"""
DeleteTargetGroup(TargetGroupArn) = elastic_load_balancing_v2("POST", "/")
end
