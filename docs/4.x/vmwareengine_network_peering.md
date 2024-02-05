---
permalink: /vmwareengine_network_peering/
---

# vmwareengine_network_peering

`vmwareengine_network_peering` represents the `google_vmwareengine_network_peering` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withExportCustomRoutes()`](#fn-withexportcustomroutes)
* [`fn withExportCustomRoutesWithPublicIp()`](#fn-withexportcustomrouteswithpublicip)
* [`fn withImportCustomRoutes()`](#fn-withimportcustomroutes)
* [`fn withImportCustomRoutesWithPublicIp()`](#fn-withimportcustomrouteswithpublicip)
* [`fn withName()`](#fn-withname)
* [`fn withPeerNetwork()`](#fn-withpeernetwork)
* [`fn withPeerNetworkType()`](#fn-withpeernetworktype)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVmwareEngineNetwork()`](#fn-withvmwareenginenetwork)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vmwareengine_network_peering.new` injects a new `google_vmwareengine_network_peering` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vmwareengine_network_peering.new('some_id')

You can get the reference to the `id` field of the created `google.vmwareengine_network_peering` using the reference:

    $._ref.google_vmwareengine_network_peering.some_id.get('id')

This is the same as directly entering `"${ google_vmwareengine_network_peering.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): User-provided description for this network peering. When `null`, the `description` field will be omitted from the resulting object.
  - `export_custom_routes` (`bool`): True if custom routes are exported to the peered network; false otherwise. When `null`, the `export_custom_routes` field will be omitted from the resulting object.
  - `export_custom_routes_with_public_ip` (`bool`): True if all subnet routes with a public IP address range are exported; false otherwise. When `null`, the `export_custom_routes_with_public_ip` field will be omitted from the resulting object.
  - `import_custom_routes` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes` field will be omitted from the resulting object.
  - `import_custom_routes_with_public_ip` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes_with_public_ip` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the Network Peering.
  - `peer_network` (`string`): The relative resource name of the network to peer with a standard VMware Engine network.
The provided network can be a consumer VPC network or another standard VMware Engine network.
  - `peer_network_type` (`string`): The type of the network to peer with the VMware Engine network. Possible values: [&#34;STANDARD&#34;, &#34;VMWARE_ENGINE_NETWORK&#34;, &#34;PRIVATE_SERVICES_ACCESS&#34;, &#34;NETAPP_CLOUD_VOLUMES&#34;, &#34;THIRD_PARTY_SERVICE&#34;, &#34;DELL_POWERSCALE&#34;]
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:
projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
can either be a project number or a project ID.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vmwareengine_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_network_peering`
Terraform resource.

Unlike [google.vmwareengine_network_peering.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): User-provided description for this network peering. When `null`, the `description` field will be omitted from the resulting object.
  - `export_custom_routes` (`bool`): True if custom routes are exported to the peered network; false otherwise. When `null`, the `export_custom_routes` field will be omitted from the resulting object.
  - `export_custom_routes_with_public_ip` (`bool`): True if all subnet routes with a public IP address range are exported; false otherwise. When `null`, the `export_custom_routes_with_public_ip` field will be omitted from the resulting object.
  - `import_custom_routes` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes` field will be omitted from the resulting object.
  - `import_custom_routes_with_public_ip` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes_with_public_ip` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the Network Peering.
  - `peer_network` (`string`): The relative resource name of the network to peer with a standard VMware Engine network.
The provided network can be a consumer VPC network or another standard VMware Engine network.
  - `peer_network_type` (`string`): The type of the network to peer with the VMware Engine network. Possible values: [&#34;STANDARD&#34;, &#34;VMWARE_ENGINE_NETWORK&#34;, &#34;PRIVATE_SERVICES_ACCESS&#34;, &#34;NETAPP_CLOUD_VOLUMES&#34;, &#34;THIRD_PARTY_SERVICE&#34;, &#34;DELL_POWERSCALE&#34;]
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:
projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
can either be a project number or a project ID.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_network_peering` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withExportCustomRoutes

```ts
withExportCustomRoutes()
```

`google.bool.withExportCustomRoutes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the export_custom_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `export_custom_routes` field.


### fn withExportCustomRoutesWithPublicIp

```ts
withExportCustomRoutesWithPublicIp()
```

`google.bool.withExportCustomRoutesWithPublicIp` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the export_custom_routes_with_public_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `export_custom_routes_with_public_ip` field.


### fn withImportCustomRoutes

```ts
withImportCustomRoutes()
```

`google.bool.withImportCustomRoutes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the import_custom_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `import_custom_routes` field.


### fn withImportCustomRoutesWithPublicIp

```ts
withImportCustomRoutesWithPublicIp()
```

`google.bool.withImportCustomRoutesWithPublicIp` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the import_custom_routes_with_public_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `import_custom_routes_with_public_ip` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPeerNetwork

```ts
withPeerNetwork()
```

`google.string.withPeerNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_network` field.


### fn withPeerNetworkType

```ts
withPeerNetworkType()
```

`google.string.withPeerNetworkType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_network_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_network_type` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withVmwareEngineNetwork

```ts
withVmwareEngineNetwork()
```

`google.string.withVmwareEngineNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vmware_engine_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vmware_engine_network` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vmwareengine_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
