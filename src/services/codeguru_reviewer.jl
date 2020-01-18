module aws_codeguru_reviewer
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: codeguru_reviewer

"""
Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
"""
ListRepositoryAssociations() = codeguru_reviewer("GET", "/associations")

"""
Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer. When you associate an AWS CodeCommit repository with Amazon CodeGuru Reviewer, Amazon CodeGuru Reviewer will provide recommendations for each pull request. You can view recommendations in the AWS CodeCommit repository. You can associate a GitHub repository using the Amazon CodeGuru Reviewer console.
"""
AssociateRepository(Repository) = codeguru_reviewer("POST", "/associations")

"""
Removes the association between Amazon CodeGuru Reviewer and a repository.
"""
DisassociateRepository(AssociationArn) = codeguru_reviewer("DELETE", "/associations/$AssociationArn")

"""
Describes a repository association.
"""
DescribeRepositoryAssociation(AssociationArn) = codeguru_reviewer("GET", "/associations/$AssociationArn")
end
