module aws_savingsplans
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: savingsplans

"""
Lists the tags for the specified resource.
"""
ListTagsForResource(resourceArn) = savingsplans("POST", "/ListTagsForResource")

"""
Creates a Savings Plan.
"""
CreateSavingsPlan(savingsPlanOfferingId, commitment) = savingsplans("POST", "/CreateSavingsPlan")

"""
Describes the specified Savings Plans offerings.
"""
DescribeSavingsPlansOfferings() = savingsplans("POST", "/DescribeSavingsPlansOfferings")

"""
Describes the specified Savings Plans rates.
"""
DescribeSavingsPlanRates(savingsPlanId) = savingsplans("POST", "/DescribeSavingsPlanRates")

"""
Describes the specified Savings Plans offering rates.
"""
DescribeSavingsPlansOfferingRates() = savingsplans("POST", "/DescribeSavingsPlansOfferingRates")

"""
Describes the specified Savings Plans.
"""
DescribeSavingsPlans() = savingsplans("POST", "/DescribeSavingsPlans")

"""
Adds the specified tags to the specified resource.
"""
TagResource(resourceArn, tags) = savingsplans("POST", "/TagResource")

"""
Removes the specified tags from the specified resource.
"""
UntagResource(resourceArn, tagKeys) = savingsplans("POST", "/UntagResource")
end
