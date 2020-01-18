module aws_ebs
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: ebs

"""
Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
"""
ListChangedBlocks(SecondSnapshotId) = ebs("GET", "/snapshots/$secondSnapshotId/changedblocks")

"""
Returns the data in a block in an Amazon Elastic Block Store snapshot.
"""
GetSnapshotBlock(SnapshotId, BlockIndex, BlockToken) = ebs("GET", "/snapshots/$snapshotId/blocks/$blockIndex")

"""
Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot.
"""
ListSnapshotBlocks(SnapshotId) = ebs("GET", "/snapshots/$snapshotId/blocks")
end
