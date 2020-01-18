module aws_imagebuilder
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: imagebuilder

"""
 Returns the list of tags for the specified resource. 
"""
ListTagsForResource(resourceArn) = imagebuilder("GET", "/tags/$resourceArn")

"""
 Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
"""
CreateInfrastructureConfiguration(name, instanceProfileName, clientToken) = imagebuilder("PUT", "/CreateInfrastructureConfiguration")

"""
 Deletes an infrastructure configuration. 
"""
DeleteInfrastructureConfiguration(infrastructureConfigurationArn) = imagebuilder("DELETE", "/DeleteInfrastructureConfiguration")

"""
 Returns the list of component build versions for the specified semantic version. 
"""
ListComponents() = imagebuilder("POST", "/ListComponents")

"""
 Gets a infrastructure configuration. 
"""
GetInfrastructureConfiguration(infrastructureConfigurationArn) = imagebuilder("GET", "/GetInfrastructureConfiguration")

"""
 Returns the list of image build versions for the specified semantic version. 
"""
ListImages() = imagebuilder("POST", "/ListImages")

"""
 Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
"""
CreateImagePipeline(name, imageRecipeArn, infrastructureConfigurationArn, clientToken) = imagebuilder("PUT", "/CreateImagePipeline")

"""
 Gets an image. 
"""
GetImage(imageBuildVersionArn) = imagebuilder("GET", "/GetImage")

"""
 Creates a new image recipe. Image Recipes defines how images are configured, tested and assessed. 
"""
CreateImageRecipe(name, semanticVersion, components, parentImage, clientToken) = imagebuilder("PUT", "/CreateImageRecipe")

"""
 Imports a component and transforms its data into a component document. 
"""
ImportComponent(name, semanticVersion, type, format, platform, clientToken) = imagebuilder("PUT", "/ImportComponent")

"""
 Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
"""
CreateDistributionConfiguration(name, distributions, clientToken) = imagebuilder("PUT", "/CreateDistributionConfiguration")

"""
 Returns the list of component build versions for the specified semantic version. 
"""
ListComponentBuildVersions(componentVersionArn) = imagebuilder("POST", "/ListComponentBuildVersions")

"""
 Returns a list of distribution configurations. 
"""
ListImageBuildVersions(imageVersionArn) = imagebuilder("POST", "/ListImageBuildVersions")

"""
 Applies a policy to a component. 
"""
PutComponentPolicy(componentArn, policy) = imagebuilder("PUT", "/PutComponentPolicy")

"""
 Gets a component object. 
"""
GetComponent(componentBuildVersionArn) = imagebuilder("GET", "/GetComponent")

"""
 Deletes an image recipe. 
"""
DeleteImageRecipe(imageRecipeArn) = imagebuilder("DELETE", "/DeleteImageRecipe")

"""
 Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. 
"""
CreateImage(imageRecipeArn, infrastructureConfigurationArn, clientToken) = imagebuilder("PUT", "/CreateImage")

"""
 Gets an image recipe policy. 
"""
GetImageRecipePolicy(imageRecipeArn) = imagebuilder("GET", "/GetImageRecipePolicy")

"""
 Manually triggers a pipeline to create an image. 
"""
StartImagePipelineExecution(imagePipelineArn, clientToken) = imagebuilder("PUT", "/StartImagePipelineExecution")

"""
 Deletes an image pipeline. 
"""
DeleteImagePipeline(imagePipelineArn) = imagebuilder("DELETE", "/DeleteImagePipeline")

"""
 Gets a component policy. 
"""
GetComponentPolicy(componentArn) = imagebuilder("GET", "/GetComponentPolicy")

"""
Returns a list of image pipelines. 
"""
ListImagePipelines() = imagebuilder("POST", "/ListImagePipelines")

"""
 Deletes a distribution configuration. 
"""
DeleteDistributionConfiguration(distributionConfigurationArn) = imagebuilder("DELETE", "/DeleteDistributionConfiguration")

"""
 Adds a tag to a resource. 
"""
TagResource(resourceArn, tags) = imagebuilder("POST", "/tags/$resourceArn")

"""
 Removes a tag from a resource. 
"""
UntagResource(resourceArn, tagKeys) = imagebuilder("DELETE", "/tags/$resourceArn")

"""
 Returns a list of distribution configurations. 
"""
ListDistributionConfigurations() = imagebuilder("POST", "/ListDistributionConfigurations")

"""
 Gets an image pipeline. 
"""
GetImagePipeline(imagePipelineArn) = imagebuilder("GET", "/GetImagePipeline")

"""
 Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
"""
UpdateInfrastructureConfiguration(infrastructureConfigurationArn, clientToken) = imagebuilder("PUT", "/UpdateInfrastructureConfiguration")

"""
 Gets an image policy. 
"""
GetImagePolicy(imageArn) = imagebuilder("GET", "/GetImagePolicy")

"""
 Applies a policy to an image recipe. 
"""
PutImageRecipePolicy(imageRecipeArn, policy) = imagebuilder("PUT", "/PutImageRecipePolicy")

"""
 Returns a list of infrastructure configurations. 
"""
ListInfrastructureConfigurations() = imagebuilder("POST", "/ListInfrastructureConfigurations")

"""
 Deletes a component build version. 
"""
DeleteComponent(componentBuildVersionArn) = imagebuilder("DELETE", "/DeleteComponent")

"""
 Deletes an image. 
"""
DeleteImage(imageBuildVersionArn) = imagebuilder("DELETE", "/DeleteImage")

"""
 Returns a list of image recipes. 
"""
ListImageRecipes() = imagebuilder("POST", "/ListImageRecipes")

"""
 Gets a distribution configuration. 
"""
GetDistributionConfiguration(distributionConfigurationArn) = imagebuilder("GET", "/GetDistributionConfiguration")

"""
 Gets an image recipe. 
"""
GetImageRecipe(imageRecipeArn) = imagebuilder("GET", "/GetImageRecipe")

"""
CancelImageCreation cancels the creation of Image. This operation may only be used on images in a non-terminal state.
"""
CancelImageCreation(imageBuildVersionArn, clientToken) = imagebuilder("PUT", "/CancelImageCreation")

"""
 Returns a list of images created by the specified pipeline. 
"""
ListImagePipelineImages() = imagebuilder("POST", "/ListImagePipelineImages")

"""
Creates a new component that can be used to build, validate, test and assess your image.
"""
CreateComponent(name, semanticVersion, platform, clientToken) = imagebuilder("PUT", "/CreateComponent")

"""
 Applies a policy to an image. 
"""
PutImagePolicy(imageArn, policy) = imagebuilder("PUT", "/PutImagePolicy")

"""
 Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
"""
UpdateDistributionConfiguration(distributionConfigurationArn, clientToken) = imagebuilder("PUT", "/UpdateDistributionConfiguration")

"""
 Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
"""
UpdateImagePipeline(imagePipelineArn, clientToken) = imagebuilder("PUT", "/UpdateImagePipeline")
end
