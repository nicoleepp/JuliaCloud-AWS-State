module aws_app_mesh
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: app_mesh

"""
List the tags for an App Mesh resource.
"""
ListTagsForResource(resourceArn) = app_mesh("GET", "/v20190125/tags")

"""
Describes an existing service mesh.
"""
DescribeMesh(meshName) = app_mesh("GET", "/v20190125/meshes/$meshName")

"""
Describes an existing virtual service.
"""
DescribeVirtualService(meshName, virtualServiceName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualServices/$virtualServiceName")

"""
Deletes an existing virtual service.
"""
DeleteVirtualService(meshName, virtualServiceName) = app_mesh("DELETE", "/v20190125/meshes/$meshName/virtualServices/$virtualServiceName")

"""
Describes an existing virtual router.
"""
DescribeVirtualRouter(meshName, virtualRouterName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualRouters/$virtualRouterName")

"""
Describes an existing virtual node.
"""
DescribeVirtualNode(meshName, virtualNodeName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualNodes/$virtualNodeName")

"""
Creates a virtual router within a service mesh.
         Any inbound traffic that your virtual router expects should be specified as a
            listener. 
         Virtual routers handle traffic for one or more virtual services within your mesh. After
         you create your virtual router, create and associate routes for your virtual router that
         direct incoming requests to different virtual nodes.
"""
CreateVirtualRouter(meshName, spec, virtualRouterName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualRouters")

"""
Returns a list of existing service meshes.
"""
ListMeshes() = app_mesh("GET", "/v20190125/meshes")

"""
Updates an existing service mesh.
"""
UpdateMesh(meshName) = app_mesh("PUT", "/v20190125/meshes/$meshName")

"""
Describes an existing route.
"""
DescribeRoute(meshName, routeName, virtualRouterName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName")

"""
Updates an existing virtual node in a specified service mesh.
"""
UpdateVirtualNode(meshName, spec, virtualNodeName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualNodes/$virtualNodeName")

"""
Deletes an existing virtual router.
         You must delete any routes associated with the virtual router before you can delete the
         router itself.
"""
DeleteVirtualRouter(meshName, virtualRouterName) = app_mesh("DELETE", "/v20190125/meshes/$meshName/virtualRouters/$virtualRouterName")

"""
Updates an existing virtual router in a specified service mesh.
"""
UpdateVirtualRouter(meshName, spec, virtualRouterName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualRouters/$virtualRouterName")

"""
Associates the specified tags to a resource with the specified resourceArn.
         If existing tags on a resource aren't specified in the request parameters, they aren't
         changed. When a resource is deleted, the tags associated with that resource are also
         deleted.
"""
TagResource(resourceArn, tags) = app_mesh("PUT", "/v20190125/tag")

"""
Deletes specified tags from a resource.
"""
UntagResource(resourceArn, tagKeys) = app_mesh("PUT", "/v20190125/untag")

"""
Creates a virtual node within a service mesh.
         A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS
         service or a Kubernetes deployment. When you create a virtual node, you can specify the
         service discovery information for your task group.
         Any inbound traffic that your virtual node expects should be specified as a
            listener. Any outbound traffic that your virtual node expects to reach
         should be specified as a backend.
         The response metadata for your new virtual node contains the arn that is
         associated with the virtual node. Set this value (either the full ARN or the truncated
         resource name: for example, mesh/default/virtualNode/simpleapp) as the
            APPMESH_VIRTUAL_NODE_NAME environment variable for your task group's Envoy
         proxy container in your task definition or pod spec. This is then mapped to the
            node.id and node.cluster Envoy parameters.
         
            If you require your Envoy stats or tracing to use a different name, you can override
            the node.cluster value that is set by
               APPMESH_VIRTUAL_NODE_NAME with the
               APPMESH_VIRTUAL_NODE_CLUSTER environment variable.
         
"""
CreateVirtualNode(meshName, spec, virtualNodeName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualNodes")

"""
Creates a service mesh. A service mesh is a logical boundary for network traffic between
         the services that reside within it.
         After you create your service mesh, you can create virtual services, virtual nodes,
         virtual routers, and routes to distribute traffic between the applications in your
         mesh.
"""
CreateMesh(meshName) = app_mesh("PUT", "/v20190125/meshes")

"""
Deletes an existing service mesh.
         You must delete all resources (virtual services, routes, virtual routers, and virtual
         nodes) in the service mesh before you can delete the mesh itself.
"""
DeleteMesh(meshName) = app_mesh("DELETE", "/v20190125/meshes/$meshName")

"""
Deletes an existing route.
"""
DeleteRoute(meshName, routeName, virtualRouterName) = app_mesh("DELETE", "/v20190125/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName")

"""
Updates an existing route for a specified service mesh and virtual router.
"""
UpdateRoute(meshName, routeName, spec, virtualRouterName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName")

"""
Deletes an existing virtual node.
         You must delete any virtual services that list a virtual node as a service provider
         before you can delete the virtual node itself.
"""
DeleteVirtualNode(meshName, virtualNodeName) = app_mesh("DELETE", "/v20190125/meshes/$meshName/virtualNodes/$virtualNodeName")

"""
Creates a route that is associated with a virtual router.
         You can use the prefix parameter in your route specification for path-based
         routing of requests. For example, if your virtual service name is
            my-service.local and you want the route to match requests to
            my-service.local/metrics, your prefix should be
         /metrics.
         If your route matches a request, you can distribute traffic to one or more target
         virtual nodes with relative weighting.
"""
CreateRoute(meshName, routeName, spec, virtualRouterName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualRouter/$virtualRouterName/routes")

"""
Returns a list of existing virtual services in a service mesh.
"""
ListVirtualServices(meshName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualServices")

"""
Returns a list of existing virtual nodes.
"""
ListVirtualNodes(meshName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualNodes")

"""
Returns a list of existing routes in a service mesh.
"""
ListRoutes(meshName, virtualRouterName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualRouter/$virtualRouterName/routes")

"""
Creates a virtual service within a service mesh.
         A virtual service is an abstraction of a real service that is provided by a virtual node
         directly or indirectly by means of a virtual router. Dependent services call your virtual
         service by its virtualServiceName, and those requests are routed to the
         virtual node or virtual router that is specified as the provider for the virtual
         service.
"""
CreateVirtualService(meshName, spec, virtualServiceName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualServices")

"""
Updates an existing virtual service in a specified service mesh.
"""
UpdateVirtualService(meshName, spec, virtualServiceName) = app_mesh("PUT", "/v20190125/meshes/$meshName/virtualServices/$virtualServiceName")

"""
Returns a list of existing virtual routers in a service mesh.
"""
ListVirtualRouters(meshName) = app_mesh("GET", "/v20190125/meshes/$meshName/virtualRouters")
end
