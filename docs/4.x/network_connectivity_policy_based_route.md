---
permalink: /network_connectivity_policy_based_route/
---

# network_connectivity_policy_based_route

`network_connectivity_policy_based_route` represents the `google_network_connectivity_policy_based_route` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withFilterMixin()`](#fn-withfiltermixin)
* [`fn withInterconnectAttachment()`](#fn-withinterconnectattachment)
* [`fn withInterconnectAttachmentMixin()`](#fn-withinterconnectattachmentmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNextHopIlbIp()`](#fn-withnexthopilbip)
* [`fn withNextHopOtherRoutes()`](#fn-withnexthopotherroutes)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVirtualMachine()`](#fn-withvirtualmachine)
* [`fn withVirtualMachineMixin()`](#fn-withvirtualmachinemixin)
* [`obj filter`](#obj-filter)
  * [`fn new()`](#fn-filternew)
* [`obj interconnect_attachment`](#obj-interconnect_attachment)
  * [`fn new()`](#fn-interconnect_attachmentnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj virtual_machine`](#obj-virtual_machine)
  * [`fn new()`](#fn-virtual_machinenew)

## Fields

### fn new

```ts
new()
```


`google.network_connectivity_policy_based_route.new` injects a new `google_network_connectivity_policy_based_route` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_connectivity_policy_based_route.new('some_id')

You can get the reference to the `id` field of the created `google.network_connectivity_policy_based_route` using the reference:

    $._ref.google_network_connectivity_policy_based_route.some_id.get('id')

This is the same as directly entering `"${ google_network_connectivity_policy_based_route.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the policy based route.
  - `network` (`string`): Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  - `next_hop_ilb_ip` (`string`): The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. When `null`, the `next_hop_ilb_ip` field will be omitted from the resulting object.
  - `next_hop_other_routes` (`string`): Other routes that will be referenced to determine the next hop of the packet. Possible values: [&#34;DEFAULT_ROUTING&#34;] When `null`, the `next_hop_other_routes` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `filter` (`list[obj]`): The filter to match L4 traffic. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.filter.new](#fn-filternew) constructor.
  - `interconnect_attachment` (`list[obj]`): The interconnect attachments that this policy-based route applies to. When `null`, the `interconnect_attachment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.interconnect_attachment.new](#fn-interconnect_attachmentnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_machine` (`list[obj]`): VM instances to which this policy-based route applies to. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.virtual_machine.new](#fn-virtual_machinenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_connectivity_policy_based_route.newAttrs` constructs a new object with attributes and blocks configured for the `network_connectivity_policy_based_route`
Terraform resource.

Unlike [google.network_connectivity_policy_based_route.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the policy based route.
  - `network` (`string`): Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  - `next_hop_ilb_ip` (`string`): The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. When `null`, the `next_hop_ilb_ip` field will be omitted from the resulting object.
  - `next_hop_other_routes` (`string`): Other routes that will be referenced to determine the next hop of the packet. Possible values: [&#34;DEFAULT_ROUTING&#34;] When `null`, the `next_hop_other_routes` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `filter` (`list[obj]`): The filter to match L4 traffic. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.filter.new](#fn-filternew) constructor.
  - `interconnect_attachment` (`list[obj]`): The interconnect attachments that this policy-based route applies to. When `null`, the `interconnect_attachment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.interconnect_attachment.new](#fn-interconnect_attachmentnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_machine` (`list[obj]`): VM instances to which this policy-based route applies to. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.virtual_machine.new](#fn-virtual_machinenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_connectivity_policy_based_route` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFilter

```ts
withFilter()
```

`google.list[obj].withFilter` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the filter field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFilterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `filter` field.


### fn withFilterMixin

```ts
withFilterMixin()
```

`google.list[obj].withFilterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the filter field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFilter](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `filter` field.


### fn withInterconnectAttachment

```ts
withInterconnectAttachment()
```

`google.list[obj].withInterconnectAttachment` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the interconnect_attachment field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInterconnectAttachmentMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `interconnect_attachment` field.


### fn withInterconnectAttachmentMixin

```ts
withInterconnectAttachmentMixin()
```

`google.list[obj].withInterconnectAttachmentMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the interconnect_attachment field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInterconnectAttachment](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `interconnect_attachment` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withNextHopIlbIp

```ts
withNextHopIlbIp()
```

`google.string.withNextHopIlbIp` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_ilb_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_ilb_ip` field.


### fn withNextHopOtherRoutes

```ts
withNextHopOtherRoutes()
```

`google.string.withNextHopOtherRoutes` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_other_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_other_routes` field.


### fn withPriority

```ts
withPriority()
```

`google.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


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


### fn withVirtualMachine

```ts
withVirtualMachine()
```

`google.list[obj].withVirtualMachine` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_machine field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVirtualMachineMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.


### fn withVirtualMachineMixin

```ts
withVirtualMachineMixin()
```

`google.list[obj].withVirtualMachineMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_machine field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualMachine](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.


## obj filter



### fn filter.new

```ts
new()
```


`google.network_connectivity_policy_based_route.filter.new` constructs a new object with attributes and blocks configured for the `filter`
Terraform sub block.



**Args**:
  - `dest_range` (`string`): The destination IP range of outgoing packets that this policy-based route applies to. Default is &#34;0.0.0.0/0&#34; if protocol version is IPv4. When `null`, the `dest_range` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol that this policy-based route applies to. Valid values are &#39;TCP&#39;, &#39;UDP&#39;, and &#39;ALL&#39;. Default is &#39;ALL&#39;. When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `protocol_version` (`string`): Internet protocol versions this policy-based route applies to. Possible values: [&#34;IPV4&#34;]
  - `src_range` (`string`): The source IP range of outgoing packets that this policy-based route applies to. Default is &#34;0.0.0.0/0&#34; if protocol version is IPv4. When `null`, the `src_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `filter` sub block.


## obj interconnect_attachment



### fn interconnect_attachment.new

```ts
new()
```


`google.network_connectivity_policy_based_route.interconnect_attachment.new` constructs a new object with attributes and blocks configured for the `interconnect_attachment`
Terraform sub block.



**Args**:
  - `region` (`string`): Cloud region to install this policy-based route on for Interconnect attachments. Use &#39;all&#39; to install it on all Interconnect attachments.

**Returns**:
  - An attribute object that represents the `interconnect_attachment` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_connectivity_policy_based_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj virtual_machine



### fn virtual_machine.new

```ts
new()
```


`google.network_connectivity_policy_based_route.virtual_machine.new` constructs a new object with attributes and blocks configured for the `virtual_machine`
Terraform sub block.



**Args**:
  - `tags` (`list`): A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.

**Returns**:
  - An attribute object that represents the `virtual_machine` sub block.
