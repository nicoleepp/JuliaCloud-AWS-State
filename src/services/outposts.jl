module aws_outposts
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: outposts

"""
Gets information about the specified Outpost.
"""
GetOutpost(OutpostId) = outposts("GET", "/outposts/$OutpostId")

"""
Creates an Outpost.
"""
CreateOutpost(SiteId) = outposts("POST", "/outposts")

"""
Lists the sites for the specified AWS account.
"""
ListSites() = outposts("GET", "/sites")

"""
Lists the instance types for the specified Outpost.
"""
GetOutpostInstanceTypes(OutpostId) = outposts("GET", "/outposts/$OutpostId/instanceTypes")

"""
List the Outposts for your AWS account.
"""
ListOutposts() = outposts("GET", "/outposts")
end
