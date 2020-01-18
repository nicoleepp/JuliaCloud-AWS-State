module aws_mediastore_data
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: mediastore_data

"""
Deletes an object at the specified path.
"""
DeleteObject(Path) = mediastore_data("DELETE", "/$Path+")

"""
Provides a list of metadata entries about folders and objects in the specified folder.
"""
ListItems() = mediastore_data("GET", "/")

"""
Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
"""
PutObject(Body, Path) = mediastore_data("PUT", "/$Path+")

"""
Gets the headers for an object at the specified path.
"""
DescribeObject(Path) = mediastore_data("HEAD", "/$Path+")

"""
Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
"""
GetObject(Path) = mediastore_data("GET", "/$Path+")
end
