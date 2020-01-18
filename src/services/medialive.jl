module aws_medialive
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: medialive

"""
Create an input
"""
CreateInput() = medialive("POST", "/prod/inputs")

"""
Deletes an Input Security Group
"""
DeleteInputSecurityGroup(InputSecurityGroupId) = medialive("DELETE", "/prod/inputSecurityGroups/$inputSecurityGroupId")

"""
Produces a summary of an Input Security Group
"""
DescribeInputSecurityGroup(InputSecurityGroupId) = medialive("GET", "/prod/inputSecurityGroups/$inputSecurityGroupId")

"""
Produces a list of Input Security Groups for an account
"""
ListInputSecurityGroups() = medialive("GET", "/prod/inputSecurityGroups")

"""
Produces details about an input
"""
DescribeInput(InputId) = medialive("GET", "/prod/inputs/$inputId")

"""
Update an Input Security Group's Whilelists.
"""
UpdateInputSecurityGroup(InputSecurityGroupId) = medialive("PUT", "/prod/inputSecurityGroups/$inputSecurityGroupId")

"""
Updates an input.
"""
UpdateInput(InputId) = medialive("PUT", "/prod/inputs/$inputId")

"""
Deletes the input end point
"""
DeleteInput(InputId) = medialive("DELETE", "/prod/inputs/$inputId")

"""
Delete all schedule actions on a channel.
"""
DeleteSchedule(ChannelId) = medialive("DELETE", "/prod/channels/$channelId/schedule")

"""
Retrieve a list of the existing multiplexes.
"""
ListMultiplexes() = medialive("GET", "/prod/multiplexes")

"""
Delete a multiplex. The multiplex must be idle.
"""
DeleteMultiplex(MultiplexId) = medialive("DELETE", "/prod/multiplexes/$multiplexId")

"""
Changes the class of the channel.
"""
UpdateChannelClass(ChannelId, ChannelClass) = medialive("PUT", "/prod/channels/$channelId/channelClass")

"""
Update reservation.
"""
UpdateReservation(ReservationId) = medialive("PUT", "/prod/reservations/$reservationId")

"""
Purchase an offering and create a reservation.
"""
PurchaseOffering(OfferingId, Count) = medialive("POST", "/prod/offerings/$offeringId/purchase")

"""
List offerings available for purchase.
"""
ListOfferings() = medialive("GET", "/prod/offerings")

"""
Removes tags for a resource
"""
DeleteTags(TagKeys, ResourceArn) = medialive("DELETE", "/prod/tags/$resource-arn")

"""
Updates a multiplex.
"""
UpdateMultiplex(MultiplexId) = medialive("PUT", "/prod/multiplexes/$multiplexId")

"""
Get details for an offering.
"""
DescribeOffering(OfferingId) = medialive("GET", "/prod/offerings/$offeringId")

"""
Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
"""
StartMultiplex(MultiplexId) = medialive("POST", "/prod/multiplexes/$multiplexId/start")

"""
Create tags for a resource
"""
CreateTags(ResourceArn) = medialive("POST", "/prod/tags/$resource-arn")

"""
Stops a running multiplex. If the multiplex isn't running, this action has no effect.
"""
StopMultiplex(MultiplexId) = medialive("POST", "/prod/multiplexes/$multiplexId/stop")

"""
Creates a Input Security Group
"""
CreateInputSecurityGroup() = medialive("POST", "/prod/inputSecurityGroups")

"""
Produces list of tags that have been created for a resource
"""
ListTagsForResource(ResourceArn) = medialive("GET", "/prod/tags/$resource-arn")

"""
Get a channel schedule
"""
DescribeSchedule(ChannelId) = medialive("GET", "/prod/channels/$channelId/schedule")

"""
Creates a new channel
"""
CreateChannel() = medialive("POST", "/prod/channels")

"""
Starts deletion of channel. The associated outputs are also deleted.
"""
DeleteChannel(ChannelId) = medialive("DELETE", "/prod/channels/$channelId")

"""
Update a program in a multiplex.
"""
UpdateMultiplexProgram(MultiplexId, ProgramName) = medialive("PUT", "/prod/multiplexes/$multiplexId/programs/$programName")

"""
Gets details about a multiplex.
"""
DescribeMultiplex(MultiplexId) = medialive("GET", "/prod/multiplexes/$multiplexId")

"""
Create a new multiplex.
"""
CreateMultiplex(RequestId, MultiplexSettings, AvailabilityZones, Name) = medialive("POST", "/prod/multiplexes")

"""
Delete a program from a multiplex.
"""
DeleteMultiplexProgram(MultiplexId, ProgramName) = medialive("DELETE", "/prod/multiplexes/$multiplexId/programs/$programName")

"""
Get the details for a program in a multiplex.
"""
DescribeMultiplexProgram(MultiplexId, ProgramName) = medialive("GET", "/prod/multiplexes/$multiplexId/programs/$programName")

"""
List the programs that currently exist for a specific multiplex.
"""
ListMultiplexPrograms(MultiplexId) = medialive("GET", "/prod/multiplexes/$multiplexId/programs")

"""
Stops a running channel
"""
StopChannel(ChannelId) = medialive("POST", "/prod/channels/$channelId/stop")

"""
Produces list of channels that have been created
"""
ListChannels() = medialive("GET", "/prod/channels")

"""
Create a new program in the multiplex.
"""
CreateMultiplexProgram(MultiplexId, RequestId, MultiplexProgramSettings, ProgramName) = medialive("POST", "/prod/multiplexes/$multiplexId/programs")

"""
Get details for a reservation.
"""
DescribeReservation(ReservationId) = medialive("GET", "/prod/reservations/$reservationId")

"""
List purchased reservations.
"""
ListReservations() = medialive("GET", "/prod/reservations")

"""
Updates a channel.
"""
UpdateChannel(ChannelId) = medialive("PUT", "/prod/channels/$channelId")

"""
Update a channel schedule
"""
BatchUpdateSchedule(ChannelId) = medialive("PUT", "/prod/channels/$channelId/schedule")

"""
Delete an expired reservation.
"""
DeleteReservation(ReservationId) = medialive("DELETE", "/prod/reservations/$reservationId")

"""
Produces list of inputs that have been created
"""
ListInputs() = medialive("GET", "/prod/inputs")

"""
Gets details about a channel
"""
DescribeChannel(ChannelId) = medialive("GET", "/prod/channels/$channelId")

"""
Starts an existing channel
"""
StartChannel(ChannelId) = medialive("POST", "/prod/channels/$channelId/start")
end
