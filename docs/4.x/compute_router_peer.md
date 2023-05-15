---
permalink: /compute_router_peer/
---

# compute_router_peer

`compute_router_peer` represents the `google_compute_router_peer` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdvertiseMode()`](#fn-withadvertisemode)
* [`fn withAdvertisedGroups()`](#fn-withadvertisedgroups)
* [`fn withAdvertisedIpRanges()`](#fn-withadvertisedipranges)
* [`fn withAdvertisedIpRangesMixin()`](#fn-withadvertisediprangesmixin)
* [`fn withAdvertisedRoutePriority()`](#fn-withadvertisedroutepriority)
* [`fn withBfd()`](#fn-withbfd)
* [`fn withBfdMixin()`](#fn-withbfdmixin)
* [`fn withEnable()`](#fn-withenable)
* [`fn withEnableIpv6()`](#fn-withenableipv6)
* [`fn withInterface()`](#fn-withinterface)
* [`fn withIpAddress()`](#fn-withipaddress)
* [`fn withIpv6NexthopAddress()`](#fn-withipv6nexthopaddress)
* [`fn withName()`](#fn-withname)
* [`fn withPeerAsn()`](#fn-withpeerasn)
* [`fn withPeerIpAddress()`](#fn-withpeeripaddress)
* [`fn withPeerIpv6NexthopAddress()`](#fn-withpeeripv6nexthopaddress)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRouter()`](#fn-withrouter)
* [`fn withRouterApplianceInstance()`](#fn-withrouterapplianceinstance)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj advertised_ip_ranges`](#obj-advertised_ip_ranges)
  * [`fn new()`](#fn-advertised_ip_rangesnew)
* [`obj bfd`](#obj-bfd)
  * [`fn new()`](#fn-bfdnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_router_peer.new` injects a new `google_compute_router_peer` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_router_peer.new('some_id')

You can get the reference to the `id` field of the created `google.compute_router_peer` using the reference:

    $._ref.google_compute_router_peer.some_id.get('id')

This is the same as directly entering `"${ google_compute_router_peer.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `advertise_mode` (`string`): User-specified flag to indicate which mode to use for advertisement.
Valid values of this enum field are: &#39;DEFAULT&#39;, &#39;CUSTOM&#39; Default value: &#34;DEFAULT&#34; Possible values: [&#34;DEFAULT&#34;, &#34;CUSTOM&#34;] When `null`, the `advertise_mode` field will be omitted from the resulting object.
  - `advertised_groups` (`list`): User-specified list of prefix groups to advertise in custom
mode, which can take one of the following options:

* &#39;ALL_SUBNETS&#39;: Advertises all available subnets, including peer VPC subnets.
* &#39;ALL_VPC_SUBNETS&#39;: Advertises the router&#39;s own VPC subnets.
* &#39;ALL_PEER_VPC_SUBNETS&#39;: Advertises peer subnets of the router&#39;s VPC network.


Note that this field can only be populated if advertiseMode is &#39;CUSTOM&#39;
and overrides the list defined for the router (in the &#34;bgp&#34; message).
These groups are advertised in addition to any specified prefixes.
Leave this field blank to advertise no custom groups. When `null`, the `advertised_groups` field will be omitted from the resulting object.
  - `advertised_route_priority` (`number`): The priority of routes advertised to this BGP peer.
Where there is more than one matching route of maximum
length, the routes with the lowest priority value win. When `null`, the `advertised_route_priority` field will be omitted from the resulting object.
  - `enable` (`bool`): The status of the BGP peer connection. If set to false, any active session
with the peer is terminated and all associated routing information is removed.
If set to true, the peer connection can be established with routing information.
The default is true. When `null`, the `enable` field will be omitted from the resulting object.
  - `enable_ipv6` (`bool`): Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default. When `null`, the `enable_ipv6` field will be omitted from the resulting object.
  - `interface` (`string`): Name of the interface the BGP peer is associated with.
  - `ip_address` (`string`): IP address of the interface inside Google Cloud Platform.
Only IPv4 is supported. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ipv6_nexthop_address` (`string`): IPv6 address of the interface inside Google Cloud Platform.
The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
If you do not specify the next hop addresses, Google Cloud automatically
assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you. When `null`, the `ipv6_nexthop_address` field will be omitted from the resulting object.
  - `name` (`string`): Name of this BGP peer. The name must be 1-63 characters long,
and comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `peer_asn` (`number`): Peer BGP Autonomous System Number (ASN).
Each BGP interface may use a different value.
  - `peer_ip_address` (`string`): IP address of the BGP interface outside Google Cloud Platform.
Only IPv4 is supported.
  - `peer_ipv6_nexthop_address` (`string`): IPv6 address of the BGP interface outside Google Cloud Platform.
The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
If you do not specify the next hop addresses, Google Cloud automatically
assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you. When `null`, the `peer_ipv6_nexthop_address` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the router and BgpPeer reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): The name of the Cloud Router in which this BgpPeer will be configured.
  - `router_appliance_instance` (`string`): The URI of the VM instance that is used as third-party router appliances
such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
The VM instance must be located in zones contained in the same region as
this Cloud Router. The VM instance is the peer side of the BGP session. When `null`, the `router_appliance_instance` field will be omitted from the resulting object.
  - `advertised_ip_ranges` (`list[obj]`): User-specified list of individual IP ranges to advertise in
custom mode. This field can only be populated if advertiseMode
is &#39;CUSTOM&#39; and is advertised to all peers of the router. These IP
ranges will be advertised in addition to any specified groups.
Leave this field blank to advertise no custom IP ranges. When `null`, the `advertised_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.advertised_ip_ranges.new](#fn-advertised_ip_rangesnew) constructor.
  - `bfd` (`list[obj]`): BFD configuration for the BGP peering. When `null`, the `bfd` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.bfd.new](#fn-bfdnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_router_peer.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_peer`
Terraform resource.

Unlike [google.compute_router_peer.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `advertise_mode` (`string`): User-specified flag to indicate which mode to use for advertisement.
Valid values of this enum field are: &#39;DEFAULT&#39;, &#39;CUSTOM&#39; Default value: &#34;DEFAULT&#34; Possible values: [&#34;DEFAULT&#34;, &#34;CUSTOM&#34;] When `null`, the `advertise_mode` field will be omitted from the resulting object.
  - `advertised_groups` (`list`): User-specified list of prefix groups to advertise in custom
mode, which can take one of the following options:

* &#39;ALL_SUBNETS&#39;: Advertises all available subnets, including peer VPC subnets.
* &#39;ALL_VPC_SUBNETS&#39;: Advertises the router&#39;s own VPC subnets.
* &#39;ALL_PEER_VPC_SUBNETS&#39;: Advertises peer subnets of the router&#39;s VPC network.


Note that this field can only be populated if advertiseMode is &#39;CUSTOM&#39;
and overrides the list defined for the router (in the &#34;bgp&#34; message).
These groups are advertised in addition to any specified prefixes.
Leave this field blank to advertise no custom groups. When `null`, the `advertised_groups` field will be omitted from the resulting object.
  - `advertised_route_priority` (`number`): The priority of routes advertised to this BGP peer.
Where there is more than one matching route of maximum
length, the routes with the lowest priority value win. When `null`, the `advertised_route_priority` field will be omitted from the resulting object.
  - `enable` (`bool`): The status of the BGP peer connection. If set to false, any active session
with the peer is terminated and all associated routing information is removed.
If set to true, the peer connection can be established with routing information.
The default is true. When `null`, the `enable` field will be omitted from the resulting object.
  - `enable_ipv6` (`bool`): Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default. When `null`, the `enable_ipv6` field will be omitted from the resulting object.
  - `interface` (`string`): Name of the interface the BGP peer is associated with.
  - `ip_address` (`string`): IP address of the interface inside Google Cloud Platform.
Only IPv4 is supported. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ipv6_nexthop_address` (`string`): IPv6 address of the interface inside Google Cloud Platform.
The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
If you do not specify the next hop addresses, Google Cloud automatically
assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you. When `null`, the `ipv6_nexthop_address` field will be omitted from the resulting object.
  - `name` (`string`): Name of this BGP peer. The name must be 1-63 characters long,
and comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `peer_asn` (`number`): Peer BGP Autonomous System Number (ASN).
Each BGP interface may use a different value.
  - `peer_ip_address` (`string`): IP address of the BGP interface outside Google Cloud Platform.
Only IPv4 is supported.
  - `peer_ipv6_nexthop_address` (`string`): IPv6 address of the BGP interface outside Google Cloud Platform.
The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
If you do not specify the next hop addresses, Google Cloud automatically
assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you. When `null`, the `peer_ipv6_nexthop_address` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the router and BgpPeer reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): The name of the Cloud Router in which this BgpPeer will be configured.
  - `router_appliance_instance` (`string`): The URI of the VM instance that is used as third-party router appliances
such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
The VM instance must be located in zones contained in the same region as
this Cloud Router. The VM instance is the peer side of the BGP session. When `null`, the `router_appliance_instance` field will be omitted from the resulting object.
  - `advertised_ip_ranges` (`list[obj]`): User-specified list of individual IP ranges to advertise in
custom mode. This field can only be populated if advertiseMode
is &#39;CUSTOM&#39; and is advertised to all peers of the router. These IP
ranges will be advertised in addition to any specified groups.
Leave this field blank to advertise no custom IP ranges. When `null`, the `advertised_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.advertised_ip_ranges.new](#fn-advertised_ip_rangesnew) constructor.
  - `bfd` (`list[obj]`): BFD configuration for the BGP peering. When `null`, the `bfd` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.bfd.new](#fn-bfdnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router_peer` resource into the root Terraform configuration.


### fn withAdvertiseMode

```ts
withAdvertiseMode()
```

`google.string.withAdvertiseMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the advertise_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `advertise_mode` field.


### fn withAdvertisedGroups

```ts
withAdvertisedGroups()
```

`google.list.withAdvertisedGroups` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the advertised_groups field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `advertised_groups` field.


### fn withAdvertisedIpRanges

```ts
withAdvertisedIpRanges()
```

`google.list[obj].withAdvertisedIpRanges` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advertised_ip_ranges field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdvertisedIpRangesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advertised_ip_ranges` field.


### fn withAdvertisedIpRangesMixin

```ts
withAdvertisedIpRangesMixin()
```

`google.list[obj].withAdvertisedIpRangesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advertised_ip_ranges field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdvertisedIpRanges](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advertised_ip_ranges` field.


### fn withAdvertisedRoutePriority

```ts
withAdvertisedRoutePriority()
```

`google.number.withAdvertisedRoutePriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the advertised_route_priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `advertised_route_priority` field.


### fn withBfd

```ts
withBfd()
```

`google.list[obj].withBfd` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bfd field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBfdMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bfd` field.


### fn withBfdMixin

```ts
withBfdMixin()
```

`google.list[obj].withBfdMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bfd field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBfd](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bfd` field.


### fn withEnable

```ts
withEnable()
```

`google.bool.withEnable` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable` field.


### fn withEnableIpv6

```ts
withEnableIpv6()
```

`google.bool.withEnableIpv6` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_ipv6 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_ipv6` field.


### fn withInterface

```ts
withInterface()
```

`google.string.withInterface` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the interface field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `interface` field.


### fn withIpAddress

```ts
withIpAddress()
```

`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_address` field.


### fn withIpv6NexthopAddress

```ts
withIpv6NexthopAddress()
```

`google.string.withIpv6NexthopAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ipv6_nexthop_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ipv6_nexthop_address` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPeerAsn

```ts
withPeerAsn()
```

`google.number.withPeerAsn` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the peer_asn field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `peer_asn` field.


### fn withPeerIpAddress

```ts
withPeerIpAddress()
```

`google.string.withPeerIpAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_ip_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_ip_address` field.


### fn withPeerIpv6NexthopAddress

```ts
withPeerIpv6NexthopAddress()
```

`google.string.withPeerIpv6NexthopAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_ipv6_nexthop_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_ipv6_nexthop_address` field.


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


### fn withRouter

```ts
withRouter()
```

`google.string.withRouter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the router field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `router` field.


### fn withRouterApplianceInstance

```ts
withRouterApplianceInstance()
```

`google.string.withRouterApplianceInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the router_appliance_instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `router_appliance_instance` field.


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


## obj advertised_ip_ranges



### fn advertised_ip_ranges.new

```ts
new()
```


`google.compute_router_peer.advertised_ip_ranges.new` constructs a new object with attributes and blocks configured for the `advertised_ip_ranges`
Terraform sub block.



**Args**:
  - `description` (`string`): User-specified description for the IP range. When `null`, the `description` field will be omitted from the resulting object.
  - `range` (`string`): The IP range to advertise. The value must be a
CIDR-formatted string.

**Returns**:
  - An attribute object that represents the `advertised_ip_ranges` sub block.


## obj bfd



### fn bfd.new

```ts
new()
```


`google.compute_router_peer.bfd.new` constructs a new object with attributes and blocks configured for the `bfd`
Terraform sub block.



**Args**:
  - `min_receive_interval` (`number`): The minimum interval, in milliseconds, between BFD control packets
received from the peer router. The actual value is negotiated
between the two routers and is equal to the greater of this value
and the transmit interval of the other router. If set, this value
must be between 1000 and 30000. When `null`, the `min_receive_interval` field will be omitted from the resulting object.
  - `min_transmit_interval` (`number`): The minimum interval, in milliseconds, between BFD control packets
transmitted to the peer router. The actual value is negotiated
between the two routers and is equal to the greater of this value
and the corresponding receive interval of the other router. If set,
this value must be between 1000 and 30000. When `null`, the `min_transmit_interval` field will be omitted from the resulting object.
  - `multiplier` (`number`): The number of consecutive BFD packets that must be missed before
BFD declares that a peer is unavailable. If set, the value must
be a value between 5 and 16. When `null`, the `multiplier` field will be omitted from the resulting object.
  - `session_initialization_mode` (`string`): The BFD session initialization mode for this BGP peer.
If set to &#39;ACTIVE&#39;, the Cloud Router will initiate the BFD session
for this BGP peer. If set to &#39;PASSIVE&#39;, the Cloud Router will wait
for the peer router to initiate the BFD session for this BGP peer.
If set to &#39;DISABLED&#39;, BFD is disabled for this BGP peer. Possible values: [&#34;ACTIVE&#34;, &#34;DISABLED&#34;, &#34;PASSIVE&#34;]

**Returns**:
  - An attribute object that represents the `bfd` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_router_peer.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
