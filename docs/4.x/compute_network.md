---
permalink: /compute_network/
---

# compute_network

`compute_network` represents the `google_compute_network` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoCreateSubnetworks()`](#fn-withautocreatesubnetworks)
* [`fn withDeleteDefaultRoutesOnCreate()`](#fn-withdeletedefaultroutesoncreate)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnableUlaInternalIpv6()`](#fn-withenableulainternalipv6)
* [`fn withInternalIpv6Range()`](#fn-withinternalipv6range)
* [`fn withMtu()`](#fn-withmtu)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRoutingMode()`](#fn-withroutingmode)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_network.new` injects a new `google_compute_network` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_network.new('some_id')

You can get the reference to the `id` field of the created `google.compute_network` using the reference:

    $._ref.google_compute_network.some_id.get('id')

This is the same as directly entering `"${ google_compute_network.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `auto_create_subnetworks` (`bool`): When set to &#39;true&#39;, the network is created in &#34;auto subnet mode&#34; and
it will create a subnet for each region automatically across the
&#39;10.128.0.0/9&#39; address range.

When set to &#39;false&#39;, the network is created in &#34;custom subnet mode&#34; so
the user can explicitly connect subnetwork resources. When `null`, the `auto_create_subnetworks` field will be omitted from the resulting object.
  - `delete_default_routes_on_create` (`bool`): If set to &#39;true&#39;, default routes (&#39;0.0.0.0/0&#39;) will be deleted
immediately after network creation. Defaults to &#39;false&#39;. When `null`, the `delete_default_routes_on_create` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. The resource must be
recreated to modify this field. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_ula_internal_ipv6` (`bool`): Enable ULA internal ipv6 on this network. Enabling this feature will assign 
a /48 from google defined ULA prefix fd20::/20. When `null`, the `enable_ula_internal_ipv6` field will be omitted from the resulting object.
  - `internal_ipv6_range` (`string`): When enabling ula internal ipv6, caller optionally can specify the /48 range 
they want from the google defined ULA prefix fd20::/20. The input must be a 
valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will 
fail if the speficied /48 is already in used by another resource. 
If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. When `null`, the `internal_ipv6_range` field will be omitted from the resulting object.
  - `mtu` (`number`): Maximum Transmission Unit in bytes. The default value is 1460 bytes. 
The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
with an ICMP &#39;Fragmentation-Needed&#39; message if the packets are routed to the Internet or other VPCs 
with varying MTUs. When `null`, the `mtu` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `routing_mode` (`string`): The network-wide routing mode to use. If set to &#39;REGIONAL&#39;, this
network&#39;s cloud routers will only advertise routes with subnetworks
of this network in the same region as the router. If set to &#39;GLOBAL&#39;,
this network&#39;s cloud routers will advertise routes with all
subnetworks of this network, across regions. Possible values: [&#34;REGIONAL&#34;, &#34;GLOBAL&#34;] When `null`, the `routing_mode` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_network.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network`
Terraform resource.

Unlike [google.compute_network.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `auto_create_subnetworks` (`bool`): When set to &#39;true&#39;, the network is created in &#34;auto subnet mode&#34; and
it will create a subnet for each region automatically across the
&#39;10.128.0.0/9&#39; address range.

When set to &#39;false&#39;, the network is created in &#34;custom subnet mode&#34; so
the user can explicitly connect subnetwork resources. When `null`, the `auto_create_subnetworks` field will be omitted from the resulting object.
  - `delete_default_routes_on_create` (`bool`): If set to &#39;true&#39;, default routes (&#39;0.0.0.0/0&#39;) will be deleted
immediately after network creation. Defaults to &#39;false&#39;. When `null`, the `delete_default_routes_on_create` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. The resource must be
recreated to modify this field. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_ula_internal_ipv6` (`bool`): Enable ULA internal ipv6 on this network. Enabling this feature will assign 
a /48 from google defined ULA prefix fd20::/20. When `null`, the `enable_ula_internal_ipv6` field will be omitted from the resulting object.
  - `internal_ipv6_range` (`string`): When enabling ula internal ipv6, caller optionally can specify the /48 range 
they want from the google defined ULA prefix fd20::/20. The input must be a 
valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will 
fail if the speficied /48 is already in used by another resource. 
If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. When `null`, the `internal_ipv6_range` field will be omitted from the resulting object.
  - `mtu` (`number`): Maximum Transmission Unit in bytes. The default value is 1460 bytes. 
The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
with an ICMP &#39;Fragmentation-Needed&#39; message if the packets are routed to the Internet or other VPCs 
with varying MTUs. When `null`, the `mtu` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `routing_mode` (`string`): The network-wide routing mode to use. If set to &#39;REGIONAL&#39;, this
network&#39;s cloud routers will only advertise routes with subnetworks
of this network in the same region as the router. If set to &#39;GLOBAL&#39;,
this network&#39;s cloud routers will advertise routes with all
subnetworks of this network, across regions. Possible values: [&#34;REGIONAL&#34;, &#34;GLOBAL&#34;] When `null`, the `routing_mode` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network` resource into the root Terraform configuration.


### fn withAutoCreateSubnetworks

```ts
withAutoCreateSubnetworks()
```

`google.bool.withAutoCreateSubnetworks` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the auto_create_subnetworks field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `auto_create_subnetworks` field.


### fn withDeleteDefaultRoutesOnCreate

```ts
withDeleteDefaultRoutesOnCreate()
```

`google.bool.withDeleteDefaultRoutesOnCreate` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the delete_default_routes_on_create field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `delete_default_routes_on_create` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnableUlaInternalIpv6

```ts
withEnableUlaInternalIpv6()
```

`google.bool.withEnableUlaInternalIpv6` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_ula_internal_ipv6 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_ula_internal_ipv6` field.


### fn withInternalIpv6Range

```ts
withInternalIpv6Range()
```

`google.string.withInternalIpv6Range` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the internal_ipv6_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `internal_ipv6_range` field.


### fn withMtu

```ts
withMtu()
```

`google.number.withMtu` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the mtu field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `mtu` field.


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


### fn withRoutingMode

```ts
withRoutingMode()
```

`google.string.withRoutingMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the routing_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `routing_mode` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_network.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
