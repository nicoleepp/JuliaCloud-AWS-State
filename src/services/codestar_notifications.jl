module aws_codestar_notifications
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: codestar_notifications

"""
Returns a list of the tags associated with a notification rule.
"""
ListTagsForResource(Arn) = codestar_notifications("POST", "/listTagsForResource")

"""
Returns a list of the notification rule targets for an AWS account.
"""
ListTargets() = codestar_notifications("POST", "/listTargets")

"""
Deletes a specified target for notifications.
"""
DeleteTarget(TargetAddress) = codestar_notifications("POST", "/deleteTarget")

"""
Deletes a notification rule for a resource.
"""
DeleteNotificationRule(Arn) = codestar_notifications("POST", "/deleteNotificationRule")

"""
Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.
"""
CreateNotificationRule(Name, EventTypeIds, Resource, Targets, DetailType) = codestar_notifications("POST", "/createNotificationRule")

"""
Returns a list of the notification rules for an AWS account.
"""
ListNotificationRules() = codestar_notifications("POST", "/listNotificationRules")

"""
Associates a set of provided tags with a notification rule.
"""
TagResource(Arn, Tags) = codestar_notifications("POST", "/tagResource")

"""
Removes the association between one or more provided tags and a notification rule.
"""
UntagResource(Arn, TagKeys) = codestar_notifications("POST", "/untagResource")

"""
Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.
"""
Subscribe(Arn, Target) = codestar_notifications("POST", "/subscribe")

"""
Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource. 
"""
UpdateNotificationRule(Arn) = codestar_notifications("POST", "/updateNotificationRule")

"""
Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.
"""
Unsubscribe(Arn, TargetAddress) = codestar_notifications("POST", "/unsubscribe")

"""
Returns information about a specified notification rule.
"""
DescribeNotificationRule(Arn) = codestar_notifications("POST", "/describeNotificationRule")

"""
Returns information about the event types available for configuring notifications.
"""
ListEventTypes() = codestar_notifications("POST", "/listEventTypes")
end
