module aws_mediapackage_vod
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mediapackage_vod

"""
Returns a collection of MediaPackage VOD PackagingGroup resources.
"""
ListPackagingGroups() = mediapackage_vod("GET", "/packaging_groups")

"""
Returns a description of a MediaPackage VOD PackagingGroup resource.
"""
DescribePackagingGroup(Id) = mediapackage_vod("GET", "/packaging_groups/$id")

"""
Creates a new MediaPackage VOD Asset resource.
"""
CreateAsset(SourceArn, Id, PackagingGroupId, SourceRoleArn) = mediapackage_vod("POST", "/assets")

"""
Creates a new MediaPackage VOD PackagingConfiguration resource.
"""
CreatePackagingConfiguration(Id, PackagingGroupId) = mediapackage_vod("POST", "/packaging_configurations")

"""
Deletes an existing MediaPackage VOD Asset resource.
"""
DeleteAsset(Id) = mediapackage_vod("DELETE", "/assets/$id")

"""
Deletes a MediaPackage VOD PackagingGroup resource.
"""
DeletePackagingGroup(Id) = mediapackage_vod("DELETE", "/packaging_groups/$id")

"""
Deletes a MediaPackage VOD PackagingConfiguration resource.
"""
DeletePackagingConfiguration(Id) = mediapackage_vod("DELETE", "/packaging_configurations/$id")

"""
Returns a description of a MediaPackage VOD Asset resource.
"""
DescribeAsset(Id) = mediapackage_vod("GET", "/assets/$id")

"""
Returns a description of a MediaPackage VOD PackagingConfiguration resource.
"""
DescribePackagingConfiguration(Id) = mediapackage_vod("GET", "/packaging_configurations/$id")

"""
Returns a collection of MediaPackage VOD Asset resources.
"""
ListAssets() = mediapackage_vod("GET", "/assets")

"""
Creates a new MediaPackage VOD PackagingGroup resource.
"""
CreatePackagingGroup(Id) = mediapackage_vod("POST", "/packaging_groups")

"""
Returns a collection of MediaPackage VOD PackagingConfiguration resources.
"""
ListPackagingConfigurations() = mediapackage_vod("GET", "/packaging_configurations")
end
