---
permalink: /compute_router_interface/
---

# compute_router_interface

`compute_router_interface` represents the `google_compute_router_interface` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withInterconnectAttachment()`](#fn-withinterconnectattachment)
* [`fn withIpRange()`](#fn-withiprange)
* [`fn withName()`](#fn-withname)
* [`fn withPrivateIpAddress()`](#fn-withprivateipaddress)
* [`fn withProject()`](#fn-withproject)
* [`fn withRedundantInterface()`](#fn-withredundantinterface)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRouter()`](#fn-withrouter)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVpnTunnel()`](#fn-withvpntunnel)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_router_interface.new` injects a new `google_compute_router_interface` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_router_interface.new('some_id')

You can get the reference to the `id` field of the created `google.compute_router_interface` using the reference:

    $._ref.google_compute_router_interface.some_id.get('id')

This is the same as directly entering `"${ google_compute_router_interface.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `interconnect_attachment` (`string`): The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of interconnect_attachment, subnetwork or vpn_tunnel can be specified. When `null`, the `interconnect_attachment` field will be omitted from the resulting object.
  - `ip_range` (`string`): The IP address and range of the interface. The IP range must be in the RFC3927 link-local IP space. Changing this forces a new interface to be created. When `null`, the `ip_range` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the interface, required by GCE. Changing this forces a new interface to be created.
  - `private_ip_address` (`string`): The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created. When `null`, the `private_ip_address` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which this interface&#39;s router belongs. If it is not provided, the provider project is used. Changing this forces a new interface to be created. When `null`, the `project` field will be omitted from the resulting object.
  - `redundant_interface` (`string`): The name of the interface that is redundant to this interface. Changing this forces a new interface to be created. When `null`, the `redundant_interface` field will be omitted from the resulting object.
  - `region` (`string`): The region this interface&#39;s router sits in. If not specified, the project region will be used. Changing this forces a new interface to be created. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): The name of the router this interface will be attached to. Changing this forces a new interface to be created.
  - `subnetwork` (`string`): The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. Changing this forces a new interface to be created. Only one of subnetwork, interconnect_attachment or vpn_tunnel can be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `vpn_tunnel` (`string`): The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel, interconnect_attachment or subnetwork can be specified. When `null`, the `vpn_tunnel` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_interface.timeouts.new](#fn-computerouterinterfacetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_router_interface.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_interface`
Terraform resource.

Unlike [google.compute_router_interface.new](#fn-computerouterinterfacenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `interconnect_attachment` (`string`): The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of interconnect_attachment, subnetwork or vpn_tunnel can be specified. When `null`, the `interconnect_attachment` field will be omitted from the resulting object.
  - `ip_range` (`string`): The IP address and range of the interface. The IP range must be in the RFC3927 link-local IP space. Changing this forces a new interface to be created. When `null`, the `ip_range` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the interface, required by GCE. Changing this forces a new interface to be created.
  - `private_ip_address` (`string`): The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created. When `null`, the `private_ip_address` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which this interface&#39;s router belongs. If it is not provided, the provider project is used. Changing this forces a new interface to be created. When `null`, the `project` field will be omitted from the resulting object.
  - `redundant_interface` (`string`): The name of the interface that is redundant to this interface. Changing this forces a new interface to be created. When `null`, the `redundant_interface` field will be omitted from the resulting object.
  - `region` (`string`): The region this interface&#39;s router sits in. If not specified, the project region will be used. Changing this forces a new interface to be created. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): The name of the router this interface will be attached to. Changing this forces a new interface to be created.
  - `subnetwork` (`string`): The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. Changing this forces a new interface to be created. Only one of subnetwork, interconnect_attachment or vpn_tunnel can be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `vpn_tunnel` (`string`): The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel, interconnect_attachment or subnetwork can be specified. When `null`, the `vpn_tunnel` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_interface.timeouts.new](#fn-computerouterinterfacetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router_interface` resource into the root Terraform configuration.


### fn withInterconnectAttachment

```ts
withInterconnectAttachment()
```

`google.string.withInterconnectAttachment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the interconnect_attachment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `interconnect_attachment` field.


### fn withIpRange

```ts
withIpRange()
```

`google.string.withIpRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_range` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPrivateIpAddress

```ts
withPrivateIpAddress()
```

`google.string.withPrivateIpAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the private_ip_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `private_ip_address` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRedundantInterface

```ts
withRedundantInterface()
```

`google.string.withRedundantInterface` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the redundant_interface field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `redundant_interface` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withRouter

```ts
withRouter()
```

`google.string.withRouter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the router field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `router` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


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


### fn withVpnTunnel

```ts
withVpnTunnel()
```

`google.string.withVpnTunnel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vpn_tunnel field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vpn_tunnel` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_router_interface.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
