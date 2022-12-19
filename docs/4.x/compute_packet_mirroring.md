---
permalink: /compute_packet_mirroring/
---

# compute_packet_mirroring

`compute_packet_mirroring` represents the `google_compute_packet_mirroring` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCollectorIlb()`](#fn-withcollectorilb)
* [`fn withCollectorIlbMixin()`](#fn-withcollectorilbmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withFilterMixin()`](#fn-withfiltermixin)
* [`fn withMirroredResources()`](#fn-withmirroredresources)
* [`fn withMirroredResourcesMixin()`](#fn-withmirroredresourcesmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkMixin()`](#fn-withnetworkmixin)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj collector_ilb`](#obj-collector_ilb)
  * [`fn new()`](#fn-collector_ilbnew)
* [`obj filter`](#obj-filter)
  * [`fn new()`](#fn-filternew)
* [`obj mirrored_resources`](#obj-mirrored_resources)
  * [`fn new()`](#fn-mirrored_resourcesnew)
  * [`obj mirrored_resources.instances`](#obj-mirrored_resourcesinstances)
    * [`fn new()`](#fn-mirrored_resourcesinstancesnew)
  * [`obj mirrored_resources.subnetworks`](#obj-mirrored_resourcessubnetworks)
    * [`fn new()`](#fn-mirrored_resourcessubnetworksnew)
* [`obj network`](#obj-network)
  * [`fn new()`](#fn-networknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_packet_mirroring.new` injects a new `google_compute_packet_mirroring` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_packet_mirroring.new('some_id')

You can get the reference to the `id` field of the created `google.compute_packet_mirroring` using the reference:

    $._ref.google_compute_packet_mirroring.some_id.get('id')

This is the same as directly entering `"${ google_compute_packet_mirroring.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the packet mirroring rule
  - `priority` (`number`): Since only one rule can be active at a time, priority is
used to break ties in the case of two rules that apply to
the same instances. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created address should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `collector_ilb` (`list[obj]`): The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
that will be used as collector for mirrored traffic. The
specified forwarding rule must have is_mirroring_collector
set to true. When `null`, the `collector_ilb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.collector_ilb.new](#fn-collector_ilbnew) constructor.
  - `filter` (`list[obj]`): A filter for mirrored traffic.  If unset, all traffic is mirrored. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.filter.new](#fn-filternew) constructor.
  - `mirrored_resources` (`list[obj]`): A means of specifying which resources to mirror. When `null`, the `mirrored_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.new](#fn-mirrored_resourcesnew) constructor.
  - `network` (`list[obj]`): Specifies the mirrored VPC network. Only packets in this network
will be mirrored. All mirrored VMs should have a NIC in the given
network. All mirrored subnetworks should belong to the given network. When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.network.new](#fn-networknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_packet_mirroring.newAttrs` constructs a new object with attributes and blocks configured for the `compute_packet_mirroring`
Terraform resource.

Unlike [google.compute_packet_mirroring.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the packet mirroring rule
  - `priority` (`number`): Since only one rule can be active at a time, priority is
used to break ties in the case of two rules that apply to
the same instances. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created address should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `collector_ilb` (`list[obj]`): The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
that will be used as collector for mirrored traffic. The
specified forwarding rule must have is_mirroring_collector
set to true. When `null`, the `collector_ilb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.collector_ilb.new](#fn-collector_ilbnew) constructor.
  - `filter` (`list[obj]`): A filter for mirrored traffic.  If unset, all traffic is mirrored. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.filter.new](#fn-filternew) constructor.
  - `mirrored_resources` (`list[obj]`): A means of specifying which resources to mirror. When `null`, the `mirrored_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.new](#fn-mirrored_resourcesnew) constructor.
  - `network` (`list[obj]`): Specifies the mirrored VPC network. Only packets in this network
will be mirrored. All mirrored VMs should have a NIC in the given
network. All mirrored subnetworks should belong to the given network. When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.network.new](#fn-networknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_packet_mirroring` resource into the root Terraform configuration.


### fn withCollectorIlb

```ts
withCollectorIlb()
```

`google.list[obj].withCollectorIlb` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the collector_ilb field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCollectorIlbMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `collector_ilb` field.


### fn withCollectorIlbMixin

```ts
withCollectorIlbMixin()
```

`google.list[obj].withCollectorIlbMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the collector_ilb field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCollectorIlb](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `collector_ilb` field.


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


### fn withMirroredResources

```ts
withMirroredResources()
```

`google.list[obj].withMirroredResources` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mirrored_resources field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMirroredResourcesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mirrored_resources` field.


### fn withMirroredResourcesMixin

```ts
withMirroredResourcesMixin()
```

`google.list[obj].withMirroredResourcesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mirrored_resources field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMirroredResources](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mirrored_resources` field.


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

`google.list[obj].withNetwork` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network` field.


### fn withNetworkMixin

```ts
withNetworkMixin()
```

`google.list[obj].withNetworkMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetwork](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network` field.


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


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


## obj collector_ilb



### fn collector_ilb.new

```ts
new()
```


`google.compute_packet_mirroring.collector_ilb.new` constructs a new object with attributes and blocks configured for the `collector_ilb`
Terraform sub block.



**Args**:
  - `url` (`string`): The URL of the forwarding rule.

**Returns**:
  - An attribute object that represents the `collector_ilb` sub block.


## obj filter



### fn filter.new

```ts
new()
```


`google.compute_packet_mirroring.filter.new` constructs a new object with attributes and blocks configured for the `filter`
Terraform sub block.



**Args**:
  - `cidr_ranges` (`list`): IP CIDR ranges that apply as a filter on the source (ingress) or
destination (egress) IP in the IP header. Only IPv4 is supported. When `null`, the `cidr_ranges` field will be omitted from the resulting object.
  - `direction` (`string`): Direction of traffic to mirror. Default value: &#34;BOTH&#34; Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;, &#34;BOTH&#34;] When `null`, the `direction` field will be omitted from the resulting object.
  - `ip_protocols` (`list`): Possible IP protocols including tcp, udp, icmp and esp When `null`, the `ip_protocols` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `filter` sub block.


## obj mirrored_resources



### fn mirrored_resources.new

```ts
new()
```


`google.compute_packet_mirroring.mirrored_resources.new` constructs a new object with attributes and blocks configured for the `mirrored_resources`
Terraform sub block.



**Args**:
  - `tags` (`list`): All instances with these tags will be mirrored. When `null`, the `tags` field will be omitted from the resulting object.
  - `instances` (`list[obj]`): All the listed instances will be mirrored.  Specify at most 50. When `null`, the `instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.instances.new](#fn-compute_packet_mirroringinstancesnew) constructor.
  - `subnetworks` (`list[obj]`): All instances in one of these subnetworks will be mirrored. When `null`, the `subnetworks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.subnetworks.new](#fn-compute_packet_mirroringsubnetworksnew) constructor.

**Returns**:
  - An attribute object that represents the `mirrored_resources` sub block.


## obj mirrored_resources.instances



### fn mirrored_resources.instances.new

```ts
new()
```


`google.compute_packet_mirroring.mirrored_resources.instances.new` constructs a new object with attributes and blocks configured for the `instances`
Terraform sub block.



**Args**:
  - `url` (`string`): The URL of the instances where this rule should be active.

**Returns**:
  - An attribute object that represents the `instances` sub block.


## obj mirrored_resources.subnetworks



### fn mirrored_resources.subnetworks.new

```ts
new()
```


`google.compute_packet_mirroring.mirrored_resources.subnetworks.new` constructs a new object with attributes and blocks configured for the `subnetworks`
Terraform sub block.



**Args**:
  - `url` (`string`): The URL of the subnetwork where this rule should be active.

**Returns**:
  - An attribute object that represents the `subnetworks` sub block.


## obj network



### fn network.new

```ts
new()
```


`google.compute_packet_mirroring.network.new` constructs a new object with attributes and blocks configured for the `network`
Terraform sub block.



**Args**:
  - `url` (`string`): The full self_link URL of the network where this rule is active.

**Returns**:
  - An attribute object that represents the `network` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_packet_mirroring.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
