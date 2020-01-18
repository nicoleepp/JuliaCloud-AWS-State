module aws_qldb
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: qldb

"""
Returns all tags for a specified Amazon QLDB resource.
"""
ListTagsForResource(ResourceArn) = qldb("GET", "/tags/$resourceArn")

"""
Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
"""
DescribeJournalS3Export(Name, ExportId) = qldb("GET", "/ledgers/$name/journal-s3-exports/$exportId")

"""
Returns information about a ledger, including its state and when it was created.
"""
DescribeLedger(Name) = qldb("GET", "/ledgers/$name")

"""
Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times.
"""
ListJournalS3ExportsForLedger(Name) = qldb("GET", "/ledgers/$name/journal-s3-exports")

"""
Updates properties on a ledger.
"""
UpdateLedger(Name) = qldb("PATCH", "/ledgers/$name")

"""
Creates a new ledger in your AWS account.
"""
CreateLedger(Name, PermissionsMode) = qldb("POST", "/ledgers")

"""
Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
"""
GetRevision(Name, BlockAddress, DocumentId) = qldb("POST", "/ledgers/$name/revision")

"""
Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
"""
GetDigest(Name) = qldb("POST", "/ledgers/$name/digest")

"""
Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.
"""
DeleteLedger(Name) = qldb("DELETE", "/ledgers/$name")

"""
Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
"""
ExportJournalToS3(Name, InclusiveStartTime, ExclusiveEndTime, S3ExportConfiguration, RoleArn) = qldb("POST", "/ledgers/$name/journal-s3-exports")

"""
Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
"""
TagResource(ResourceArn, Tags) = qldb("POST", "/tags/$resourceArn")

"""
Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
"""
UntagResource(ResourceArn, TagKeys) = qldb("DELETE", "/tags/$resourceArn")

"""
Returns a journal block object at a specified address in a ledger. Also returns a proof of the specified block for verification if DigestTipAddress is provided. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
"""
GetBlock(Name, BlockAddress) = qldb("POST", "/ledgers/$name/block")

"""
Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times.
"""
ListJournalS3Exports() = qldb("GET", "/journal-s3-exports")

"""
Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
"""
ListLedgers() = qldb("GET", "/ledgers")
end
