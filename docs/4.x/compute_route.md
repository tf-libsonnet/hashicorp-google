---
permalink: /compute_route/
---

# compute_route

`compute_route` represents the `google_compute_route` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDestRange()`](#fn-withdestrange)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNextHopGateway()`](#fn-withnexthopgateway)
* [`fn withNextHopIlb()`](#fn-withnexthopilb)
* [`fn withNextHopInstance()`](#fn-withnexthopinstance)
* [`fn withNextHopInstanceZone()`](#fn-withnexthopinstancezone)
* [`fn withNextHopIp()`](#fn-withnexthopip)
* [`fn withNextHopVpnTunnel()`](#fn-withnexthopvpntunnel)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withTags()`](#fn-withtags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_route.new` injects a new `google_compute_route` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_route.new('some_id')

You can get the reference to the `id` field of the created `google.compute_route` using the reference:

    $._ref.google_compute_route.some_id.get('id')

This is the same as directly entering `"${ google_compute_route.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property
when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `dest_range` (`string`): The destination range of outgoing packets that this route applies to.
Only IPv4 is supported.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `network` (`string`): The network that this route applies to.
  - `next_hop_gateway` (`string`): URL to a gateway that should handle matching packets.
Currently, you can only specify the internet gateway, using a full or
partial valid URL:
* &#39;https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway&#39;
* &#39;projects/project/global/gateways/default-internet-gateway&#39;
* &#39;global/gateways/default-internet-gateway&#39;
* The string &#39;default-internet-gateway&#39;. When `null`, the `next_hop_gateway` field will be omitted from the resulting object.
  - `next_hop_ilb` (`string`): The IP address or URL to a forwarding rule of type
loadBalancingScheme=INTERNAL that should handle matching
packets.

With the GA provider you can only specify the forwarding
rule as a partial or full URL. For example, the following
are all valid values:
* 10.128.0.56
* https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
* regions/region/forwardingRules/forwardingRule

When the beta provider, you can also specify the IP address
of a forwarding rule from the same VPC or any peered VPC.

Note that this can only be used when the destinationRange is
a public (non-RFC 1918) IP CIDR range. When `null`, the `next_hop_ilb` field will be omitted from the resulting object.
  - `next_hop_instance` (`string`): URL to an instance that should handle matching packets.
You can specify this as a full or partial URL. For example:
* &#39;https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance&#39;
* &#39;projects/project/zones/zone/instances/instance&#39;
* &#39;zones/zone/instances/instance&#39;
* Just the instance name, with the zone in &#39;next_hop_instance_zone&#39;. When `null`, the `next_hop_instance` field will be omitted from the resulting object.
  - `next_hop_instance_zone` (`string`): The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL. When `null`, the `next_hop_instance_zone` field will be omitted from the resulting object.
  - `next_hop_ip` (`string`): Network IP address of an instance that should handle matching packets. When `null`, the `next_hop_ip` field will be omitted from the resulting object.
  - `next_hop_vpn_tunnel` (`string`): URL to a VpnTunnel that should handle matching packets. When `null`, the `next_hop_vpn_tunnel` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this route. Priority is used to break ties in cases
where there is more than one matching route of equal prefix length.

In the case of two routes with equal prefix length, the one with the
lowest-numbered priority value wins.

Default value is 1000. Valid range is 0 through 65535. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `tags` (`list`): A list of instance tags to which this route applies. When `null`, the `tags` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_route.timeouts.new](#fn-computeroutetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_route.newAttrs` constructs a new object with attributes and blocks configured for the `compute_route`
Terraform resource.

Unlike [google.compute_route.new](#fn-computeroutenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property
when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `dest_range` (`string`): The destination range of outgoing packets that this route applies to.
Only IPv4 is supported.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `network` (`string`): The network that this route applies to.
  - `next_hop_gateway` (`string`): URL to a gateway that should handle matching packets.
Currently, you can only specify the internet gateway, using a full or
partial valid URL:
* &#39;https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway&#39;
* &#39;projects/project/global/gateways/default-internet-gateway&#39;
* &#39;global/gateways/default-internet-gateway&#39;
* The string &#39;default-internet-gateway&#39;. When `null`, the `next_hop_gateway` field will be omitted from the resulting object.
  - `next_hop_ilb` (`string`): The IP address or URL to a forwarding rule of type
loadBalancingScheme=INTERNAL that should handle matching
packets.

With the GA provider you can only specify the forwarding
rule as a partial or full URL. For example, the following
are all valid values:
* 10.128.0.56
* https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
* regions/region/forwardingRules/forwardingRule

When the beta provider, you can also specify the IP address
of a forwarding rule from the same VPC or any peered VPC.

Note that this can only be used when the destinationRange is
a public (non-RFC 1918) IP CIDR range. When `null`, the `next_hop_ilb` field will be omitted from the resulting object.
  - `next_hop_instance` (`string`): URL to an instance that should handle matching packets.
You can specify this as a full or partial URL. For example:
* &#39;https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance&#39;
* &#39;projects/project/zones/zone/instances/instance&#39;
* &#39;zones/zone/instances/instance&#39;
* Just the instance name, with the zone in &#39;next_hop_instance_zone&#39;. When `null`, the `next_hop_instance` field will be omitted from the resulting object.
  - `next_hop_instance_zone` (`string`): The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL. When `null`, the `next_hop_instance_zone` field will be omitted from the resulting object.
  - `next_hop_ip` (`string`): Network IP address of an instance that should handle matching packets. When `null`, the `next_hop_ip` field will be omitted from the resulting object.
  - `next_hop_vpn_tunnel` (`string`): URL to a VpnTunnel that should handle matching packets. When `null`, the `next_hop_vpn_tunnel` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this route. Priority is used to break ties in cases
where there is more than one matching route of equal prefix length.

In the case of two routes with equal prefix length, the one with the
lowest-numbered priority value wins.

Default value is 1000. Valid range is 0 through 65535. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `tags` (`list`): A list of instance tags to which this route applies. When `null`, the `tags` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_route.timeouts.new](#fn-computeroutetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_route` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDestRange

```ts
withDestRange()
```

`google.string.withDestRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dest_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dest_range` field.


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


### fn withNextHopGateway

```ts
withNextHopGateway()
```

`google.string.withNextHopGateway` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_gateway field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_gateway` field.


### fn withNextHopIlb

```ts
withNextHopIlb()
```

`google.string.withNextHopIlb` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_ilb field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_ilb` field.


### fn withNextHopInstance

```ts
withNextHopInstance()
```

`google.string.withNextHopInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_instance` field.


### fn withNextHopInstanceZone

```ts
withNextHopInstanceZone()
```

`google.string.withNextHopInstanceZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_instance_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_instance_zone` field.


### fn withNextHopIp

```ts
withNextHopIp()
```

`google.string.withNextHopIp` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_ip` field.


### fn withNextHopVpnTunnel

```ts
withNextHopVpnTunnel()
```

`google.string.withNextHopVpnTunnel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the next_hop_vpn_tunnel field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `next_hop_vpn_tunnel` field.


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


### fn withTags

```ts
withTags()
```

`google.list.withTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `tags` field.


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


`google.compute_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
