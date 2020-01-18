module aws_groundstation
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: groundstation

"""
Returns a list of tags or a specified resource.
"""
ListTagsForResource(resourceArn) = groundstation("GET", "/tags/$resourceArn")

"""
Deletes a dataflow endpoint group.
"""
DeleteDataflowEndpointGroup(dataflowEndpointGroupId) = groundstation("DELETE", "/dataflowEndpointGroup/$dataflowEndpointGroupId")

"""
Returns a list of contacts.
         If statusList contains AVAILABLE, the request must include
      groundstation, missionprofileArn, and satelliteArn.
      
"""
ListContacts(endTime, startTime, statusList) = groundstation("POST", "/contacts")

"""
Returns a list of mission profiles.
"""
ListMissionProfiles() = groundstation("GET", "/missionprofile")

"""
Returns a list of ground stations. 
"""
ListGroundStations() = groundstation("GET", "/groundstation")

"""
Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects.
         The name field in each endpoint is used in your mission profile DataflowEndpointConfig 
         to specify which endpoints to use during a contact. 
         When a contact uses multiple DataflowEndpointConfig objects, each Config 
         must match a DataflowEndpoint in the same group.
"""
CreateDataflowEndpointGroup(endpointDetails) = groundstation("POST", "/dataflowEndpointGroup")

"""
Deletes a mission profile.
"""
DeleteMissionProfile(missionProfileId) = groundstation("DELETE", "/missionprofile/$missionProfileId")

"""
Returns Config information.
         Only one Config response can be returned.
"""
GetConfig(configId, configType) = groundstation("GET", "/config/$configType/$configId")

"""
Returns a list of Config objects.
"""
ListConfigs() = groundstation("GET", "/config")

"""
Describes an existing contact.
"""
DescribeContact(contactId) = groundstation("GET", "/contact/$contactId")

"""
Creates a mission profile.
         
            dataflowEdges is a list of lists of strings. Each lower level list of strings
         has two elements: a from ARN and a to ARN.
"""
CreateMissionProfile(dataflowEdges, minimumViableContactDurationSeconds, name, trackingConfigArn) = groundstation("POST", "/missionprofile")

"""
Returns the dataflow endpoint group.
"""
GetDataflowEndpointGroup(dataflowEndpointGroupId) = groundstation("GET", "/dataflowEndpointGroup/$dataflowEndpointGroupId")

"""
Reserves a contact using specified parameters.
"""
ReserveContact(endTime, groundStation, missionProfileArn, satelliteArn, startTime) = groundstation("POST", "/contact")

"""
Cancels a contact with a specified contact ID.
"""
CancelContact(contactId) = groundstation("DELETE", "/contact/$contactId")

"""
Updates the Config used when scheduling contacts.
         Updating a Config will not update the execution parameters
         for existing future contacts scheduled with this Config.
"""
UpdateConfig(configData, configId, configType, name) = groundstation("PUT", "/config/$configType/$configId")

"""
Returns a satellite.
"""
GetSatellite(satelliteId) = groundstation("GET", "/satellite/$satelliteId")

"""
Assigns a tag to a resource.
"""
TagResource(resourceArn) = groundstation("POST", "/tags/$resourceArn")

"""
Deassigns a resource tag.
"""
UntagResource(resourceArn, tagKeys) = groundstation("DELETE", "/tags/$resourceArn")

"""
Returns a list of satellites.
"""
ListSatellites() = groundstation("GET", "/satellite")

"""
Returns the number of minutes used by account.
"""
GetMinuteUsage(month, year) = groundstation("POST", "/minute-usage")

"""
Creates a Config with the specified configData parameters.
         Only one type of configData can be specified.
"""
CreateConfig(configData, name) = groundstation("POST", "/config")

"""
Returns a mission profile.
"""
GetMissionProfile(missionProfileId) = groundstation("GET", "/missionprofile/$missionProfileId")

"""
Deletes a Config.
"""
DeleteConfig(configId, configType) = groundstation("DELETE", "/config/$configType/$configId")

"""
Returns a list of DataflowEndpoint groups.
"""
ListDataflowEndpointGroups() = groundstation("GET", "/dataflowEndpointGroup")

"""
Updates a mission profile.
         Updating a mission profile will not update the execution parameters
         for existing future contacts.
"""
UpdateMissionProfile(missionProfileId) = groundstation("PUT", "/missionprofile/$missionProfileId")
end
