module aws_robomaker
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: robomaker

"""
Describes a robot application.
"""
DescribeRobotApplication(application) = robomaker("POST", "/describeRobotApplication")

"""
Lists all tags on a AWS RoboMaker resource.
"""
ListTagsForResource(resourceArn) = robomaker("GET", "/tags/$resourceArn")

"""
Returns a list of robots. You can optionally provide filters to retrieve specific robots.
"""
ListRobots() = robomaker("POST", "/listRobots")

"""
Describes a deployment job.
"""
DescribeDeploymentJob(job) = robomaker("POST", "/describeDeploymentJob")

"""
Creates a robot.
"""
CreateRobot(name, architecture, greengrassGroupId) = robomaker("POST", "/createRobot")

"""
Creates a version of a robot application.
"""
CreateRobotApplicationVersion(application) = robomaker("POST", "/createRobotApplicationVersion")

"""
Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.  
"""
CreateSimulationJob(maxJobDurationInSeconds, iamRole) = robomaker("POST", "/createSimulationJob")

"""
Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 
"""
ListSimulationApplications() = robomaker("POST", "/listSimulationApplications")

"""
Describes one or more simulation jobs.
"""
BatchDescribeSimulationJob(jobs) = robomaker("POST", "/batchDescribeSimulationJob")

"""
Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
"""
ListRobotApplications() = robomaker("POST", "/listRobotApplications")

"""
Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
"""
SyncDeploymentJob(clientRequestToken, fleet) = robomaker("POST", "/syncDeploymentJob")

"""
Describes a fleet.
"""
DescribeFleet(fleet) = robomaker("POST", "/describeFleet")

"""
Cancels the specified deployment job.
"""
CancelDeploymentJob(job) = robomaker("POST", "/cancelDeploymentJob")

"""
Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.     
"""
ListDeploymentJobs() = robomaker("POST", "/listDeploymentJobs")

"""
Deletes a simulation application.
"""
DeleteSimulationApplication(application) = robomaker("POST", "/deleteSimulationApplication")

"""
Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 
"""
ListFleets() = robomaker("POST", "/listFleets")

"""
Deletes a robot.
"""
DeleteRobot(robot) = robomaker("POST", "/deleteRobot")

"""
Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 
"""
ListSimulationJobs() = robomaker("POST", "/listSimulationJobs")

"""
Restarts a running simulation job.
"""
RestartSimulationJob(job) = robomaker("POST", "/restartSimulationJob")

"""
Creates a robot application. 
"""
CreateRobotApplication(name, sources, robotSoftwareSuite) = robomaker("POST", "/createRobotApplication")

"""
Cancels the specified simulation job.
"""
CancelSimulationJob(job) = robomaker("POST", "/cancelSimulationJob")

"""
Registers a robot with a fleet.
"""
RegisterRobot(fleet, robot) = robomaker("POST", "/registerRobot")

"""
Deregisters a robot.
"""
DeregisterRobot(fleet, robot) = robomaker("POST", "/deregisterRobot")

"""
Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide. 
"""
TagResource(resourceArn, tags) = robomaker("POST", "/tags/$resourceArn")

"""
Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource . 
"""
UntagResource(resourceArn, tagKeys) = robomaker("DELETE", "/tags/$resourceArn")

"""
Describes a simulation job.
"""
DescribeSimulationJob(job) = robomaker("POST", "/describeSimulationJob")

"""
Creates a simulation application with a specific revision id.
"""
CreateSimulationApplicationVersion(application) = robomaker("POST", "/createSimulationApplicationVersion")

"""
Deletes a fleet.
"""
DeleteFleet(fleet) = robomaker("POST", "/deleteFleet")

"""
Creates a simulation application.
"""
CreateSimulationApplication(name, sources, simulationSoftwareSuite, robotSoftwareSuite) = robomaker("POST", "/createSimulationApplication")

"""
Updates a simulation application.
"""
UpdateSimulationApplication(application, sources, simulationSoftwareSuite, robotSoftwareSuite) = robomaker("POST", "/updateSimulationApplication")

"""
Updates a robot application.
"""
UpdateRobotApplication(application, sources, robotSoftwareSuite) = robomaker("POST", "/updateRobotApplication")

"""
Describes a robot.
"""
DescribeRobot(robot) = robomaker("POST", "/describeRobot")

"""
Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.  
"""
CreateDeploymentJob(clientRequestToken, fleet, deploymentApplicationConfigs) = robomaker("POST", "/createDeploymentJob")

"""
Creates a fleet, a logical group of robots running the same robot application.
"""
CreateFleet(name) = robomaker("POST", "/createFleet")

"""
Describes a simulation application.
"""
DescribeSimulationApplication(application) = robomaker("POST", "/describeSimulationApplication")

"""
Deletes a robot application.
"""
DeleteRobotApplication(application) = robomaker("POST", "/deleteRobotApplication")
end
