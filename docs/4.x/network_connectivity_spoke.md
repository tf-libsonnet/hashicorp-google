---
permalink: /network_connectivity_spoke/
---

# network_connectivity_spoke

`network_connectivity_spoke` represents the `google_network_connectivity_spoke` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withHub()`](#fn-withhub)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLinkedInterconnectAttachments()`](#fn-withlinkedinterconnectattachments)
* [`fn withLinkedInterconnectAttachmentsMixin()`](#fn-withlinkedinterconnectattachmentsmixin)
* [`fn withLinkedRouterApplianceInstances()`](#fn-withlinkedrouterapplianceinstances)
* [`fn withLinkedRouterApplianceInstancesMixin()`](#fn-withlinkedrouterapplianceinstancesmixin)
* [`fn withLinkedVpcNetwork()`](#fn-withlinkedvpcnetwork)
* [`fn withLinkedVpcNetworkMixin()`](#fn-withlinkedvpcnetworkmixin)
* [`fn withLinkedVpnTunnels()`](#fn-withlinkedvpntunnels)
* [`fn withLinkedVpnTunnelsMixin()`](#fn-withlinkedvpntunnelsmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj linked_interconnect_attachments`](#obj-linked_interconnect_attachments)
  * [`fn new()`](#fn-linked_interconnect_attachmentsnew)
* [`obj linked_router_appliance_instances`](#obj-linked_router_appliance_instances)
  * [`fn new()`](#fn-linked_router_appliance_instancesnew)
  * [`obj linked_router_appliance_instances.instances`](#obj-linked_router_appliance_instancesinstances)
    * [`fn new()`](#fn-linked_router_appliance_instancesinstancesnew)
* [`obj linked_vpc_network`](#obj-linked_vpc_network)
  * [`fn new()`](#fn-linked_vpc_networknew)
* [`obj linked_vpn_tunnels`](#obj-linked_vpn_tunnels)
  * [`fn new()`](#fn-linked_vpn_tunnelsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_connectivity_spoke.new` injects a new `google_network_connectivity_spoke` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_connectivity_spoke.new('some_id')

You can get the reference to the `id` field of the created `google.network_connectivity_spoke` using the reference:

    $._ref.google_network_connectivity_spoke.some_id.get('id')

This is the same as directly entering `"${ google_network_connectivity_spoke.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of the spoke. When `null`, the `description` field will be omitted from the resulting object.
  - `hub` (`string`): Immutable. The URI of the hub that this spoke is attached to.
  - `labels` (`obj`): Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Immutable. The name of the spoke. Spoke names must be unique.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `linked_interconnect_attachments` (`list[obj]`): A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes. When `null`, the `linked_interconnect_attachments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_interconnect_attachments.new](#fn-linked_interconnect_attachmentsnew) constructor.
  - `linked_router_appliance_instances` (`list[obj]`): The URIs of linked Router appliance resources When `null`, the `linked_router_appliance_instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_router_appliance_instances.new](#fn-linked_router_appliance_instancesnew) constructor.
  - `linked_vpc_network` (`list[obj]`): VPC network that is associated with the spoke. When `null`, the `linked_vpc_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_vpc_network.new](#fn-linked_vpc_networknew) constructor.
  - `linked_vpn_tunnels` (`list[obj]`): The URIs of linked VPN tunnel resources When `null`, the `linked_vpn_tunnels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_vpn_tunnels.new](#fn-linked_vpn_tunnelsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_connectivity_spoke.newAttrs` constructs a new object with attributes and blocks configured for the `network_connectivity_spoke`
Terraform resource.

Unlike [google.network_connectivity_spoke.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of the spoke. When `null`, the `description` field will be omitted from the resulting object.
  - `hub` (`string`): Immutable. The URI of the hub that this spoke is attached to.
  - `labels` (`obj`): Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Immutable. The name of the spoke. Spoke names must be unique.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `linked_interconnect_attachments` (`list[obj]`): A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes. When `null`, the `linked_interconnect_attachments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_interconnect_attachments.new](#fn-linked_interconnect_attachmentsnew) constructor.
  - `linked_router_appliance_instances` (`list[obj]`): The URIs of linked Router appliance resources When `null`, the `linked_router_appliance_instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_router_appliance_instances.new](#fn-linked_router_appliance_instancesnew) constructor.
  - `linked_vpc_network` (`list[obj]`): VPC network that is associated with the spoke. When `null`, the `linked_vpc_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_vpc_network.new](#fn-linked_vpc_networknew) constructor.
  - `linked_vpn_tunnels` (`list[obj]`): The URIs of linked VPN tunnel resources When `null`, the `linked_vpn_tunnels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_vpn_tunnels.new](#fn-linked_vpn_tunnelsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_connectivity_spoke` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withHub

```ts
withHub()
```

`google.string.withHub` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hub field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hub` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLinkedInterconnectAttachments

```ts
withLinkedInterconnectAttachments()
```

`google.list[obj].withLinkedInterconnectAttachments` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_interconnect_attachments field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLinkedInterconnectAttachmentsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_interconnect_attachments` field.


### fn withLinkedInterconnectAttachmentsMixin

```ts
withLinkedInterconnectAttachmentsMixin()
```

`google.list[obj].withLinkedInterconnectAttachmentsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_interconnect_attachments field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedInterconnectAttachments](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_interconnect_attachments` field.


### fn withLinkedRouterApplianceInstances

```ts
withLinkedRouterApplianceInstances()
```

`google.list[obj].withLinkedRouterApplianceInstances` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_router_appliance_instances field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLinkedRouterApplianceInstancesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_router_appliance_instances` field.


### fn withLinkedRouterApplianceInstancesMixin

```ts
withLinkedRouterApplianceInstancesMixin()
```

`google.list[obj].withLinkedRouterApplianceInstancesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_router_appliance_instances field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedRouterApplianceInstances](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_router_appliance_instances` field.


### fn withLinkedVpcNetwork

```ts
withLinkedVpcNetwork()
```

`google.list[obj].withLinkedVpcNetwork` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_vpc_network field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLinkedVpcNetworkMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_vpc_network` field.


### fn withLinkedVpcNetworkMixin

```ts
withLinkedVpcNetworkMixin()
```

`google.list[obj].withLinkedVpcNetworkMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_vpc_network field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedVpcNetwork](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_vpc_network` field.


### fn withLinkedVpnTunnels

```ts
withLinkedVpnTunnels()
```

`google.list[obj].withLinkedVpnTunnels` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_vpn_tunnels field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLinkedVpnTunnelsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_vpn_tunnels` field.


### fn withLinkedVpnTunnelsMixin

```ts
withLinkedVpnTunnelsMixin()
```

`google.list[obj].withLinkedVpnTunnelsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the linked_vpn_tunnels field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedVpnTunnels](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `linked_vpn_tunnels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


## obj linked_interconnect_attachments



### fn linked_interconnect_attachments.new

```ts
new()
```


`google.network_connectivity_spoke.linked_interconnect_attachments.new` constructs a new object with attributes and blocks configured for the `linked_interconnect_attachments`
Terraform sub block.



**Args**:
  - `site_to_site_data_transfer` (`bool`): A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  - `uris` (`list`): The URIs of linked interconnect attachment resources

**Returns**:
  - An attribute object that represents the `linked_interconnect_attachments` sub block.


## obj linked_router_appliance_instances



### fn linked_router_appliance_instances.new

```ts
new()
```


`google.network_connectivity_spoke.linked_router_appliance_instances.new` constructs a new object with attributes and blocks configured for the `linked_router_appliance_instances`
Terraform sub block.



**Args**:
  - `site_to_site_data_transfer` (`bool`): A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  - `instances` (`list[obj]`): The list of router appliance instances When `null`, the `instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_router_appliance_instances.instances.new](#fn-linked_router_appliance_instancesinstancesnew) constructor.

**Returns**:
  - An attribute object that represents the `linked_router_appliance_instances` sub block.


## obj linked_router_appliance_instances.instances



### fn linked_router_appliance_instances.instances.new

```ts
new()
```


`google.network_connectivity_spoke.linked_router_appliance_instances.instances.new` constructs a new object with attributes and blocks configured for the `instances`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): The IP address on the VM to use for peering. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `virtual_machine` (`string`): The URI of the virtual machine resource When `null`, the `virtual_machine` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `instances` sub block.


## obj linked_vpc_network



### fn linked_vpc_network.new

```ts
new()
```


`google.network_connectivity_spoke.linked_vpc_network.new` constructs a new object with attributes and blocks configured for the `linked_vpc_network`
Terraform sub block.



**Args**:
  - `exclude_export_ranges` (`list`): IP ranges encompassing the subnets to be excluded from peering. When `null`, the `exclude_export_ranges` field will be omitted from the resulting object.
  - `uri` (`string`): The URI of the VPC network resource.

**Returns**:
  - An attribute object that represents the `linked_vpc_network` sub block.


## obj linked_vpn_tunnels



### fn linked_vpn_tunnels.new

```ts
new()
```


`google.network_connectivity_spoke.linked_vpn_tunnels.new` constructs a new object with attributes and blocks configured for the `linked_vpn_tunnels`
Terraform sub block.



**Args**:
  - `site_to_site_data_transfer` (`bool`): A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  - `uris` (`list`): The URIs of linked VPN tunnel resources.

**Returns**:
  - An attribute object that represents the `linked_vpn_tunnels` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_connectivity_spoke.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
