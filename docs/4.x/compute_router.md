---
permalink: /compute_router/
---

# compute_router

`compute_router` represents the `google_compute_router` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBgp()`](#fn-withbgp)
* [`fn withBgpMixin()`](#fn-withbgpmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEncryptedInterconnectRouter()`](#fn-withencryptedinterconnectrouter)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj bgp`](#obj-bgp)
  * [`fn new()`](#fn-bgpnew)
  * [`obj bgp.advertised_ip_ranges`](#obj-bgpadvertised_ip_ranges)
    * [`fn new()`](#fn-bgpadvertised_ip_rangesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_router.new` injects a new `google_compute_router` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_router.new('some_id')

You can get the reference to the `id` field of the created `google.compute_router` using the reference:

    $._ref.google_compute_router.some_id.get('id')

This is the same as directly entering `"${ google_compute_router.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `encrypted_interconnect_router` (`bool`): Field to indicate if a router is dedicated to use with encrypted
Interconnect Attachment (IPsec-encrypted Cloud Interconnect feature).

Not currently available publicly. When `null`, the `encrypted_interconnect_router` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `network` (`string`): A reference to the network to which this router belongs.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the router resides. When `null`, the `region` field will be omitted from the resulting object.
  - `bgp` (`list[obj]`): BGP information specific to this router. When `null`, the `bgp` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.bgp.new](#fn-bgpnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_router.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router`
Terraform resource.

Unlike [google.compute_router.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `encrypted_interconnect_router` (`bool`): Field to indicate if a router is dedicated to use with encrypted
Interconnect Attachment (IPsec-encrypted Cloud Interconnect feature).

Not currently available publicly. When `null`, the `encrypted_interconnect_router` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `network` (`string`): A reference to the network to which this router belongs.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the router resides. When `null`, the `region` field will be omitted from the resulting object.
  - `bgp` (`list[obj]`): BGP information specific to this router. When `null`, the `bgp` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.bgp.new](#fn-bgpnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router` resource into the root Terraform configuration.


### fn withBgp

```ts
withBgp()
```

`google.list[obj].withBgp` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bgp field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBgpMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bgp` field.


### fn withBgpMixin

```ts
withBgpMixin()
```

`google.list[obj].withBgpMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bgp field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBgp](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bgp` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEncryptedInterconnectRouter

```ts
withEncryptedInterconnectRouter()
```

`google.bool.withEncryptedInterconnectRouter` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the encrypted_interconnect_router field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `encrypted_interconnect_router` field.


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


## obj bgp



### fn bgp.new

```ts
new()
```


`google.compute_router.bgp.new` constructs a new object with attributes and blocks configured for the `bgp`
Terraform sub block.



**Args**:
  - `advertise_mode` (`string`): User-specified flag to indicate which mode to use for advertisement. Default value: &#34;DEFAULT&#34; Possible values: [&#34;DEFAULT&#34;, &#34;CUSTOM&#34;] When `null`, the `advertise_mode` field will be omitted from the resulting object.
  - `advertised_groups` (`list`): User-specified list of prefix groups to advertise in custom mode.
This field can only be populated if advertiseMode is CUSTOM and
is advertised to all peers of the router. These groups will be
advertised in addition to any specified prefixes. Leave this field
blank to advertise no custom groups.

This enum field has the one valid value: ALL_SUBNETS When `null`, the `advertised_groups` field will be omitted from the resulting object.
  - `asn` (`number`): Local BGP Autonomous System Number (ASN). Must be an RFC6996
private ASN, either 16-bit or 32-bit. The value will be fixed for
this router resource. All VPN tunnels that link to this router
will have the same local ASN.
  - `keepalive_interval` (`number`): The interval in seconds between BGP keepalive messages that are sent to the peer.
Hold time is three times the interval at which keepalive messages are sent, and the hold time is the
maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer.
BGP will use the smaller of either the local hold time value or the peer&#39;s hold time value as the hold time for
the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20. When `null`, the `keepalive_interval` field will be omitted from the resulting object.
  - `advertised_ip_ranges` (`list[obj]`): User-specified list of individual IP ranges to advertise in
custom mode. This field can only be populated if advertiseMode
is CUSTOM and is advertised to all peers of the router. These IP
ranges will be advertised in addition to any specified groups.
Leave this field blank to advertise no custom IP ranges. When `null`, the `advertised_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.bgp.advertised_ip_ranges.new](#fn-bgpadvertised_ip_rangesnew) constructor.

**Returns**:
  - An attribute object that represents the `bgp` sub block.


## obj bgp.advertised_ip_ranges



### fn bgp.advertised_ip_ranges.new

```ts
new()
```


`google.compute_router.bgp.advertised_ip_ranges.new` constructs a new object with attributes and blocks configured for the `advertised_ip_ranges`
Terraform sub block.



**Args**:
  - `description` (`string`): User-specified description for the IP range. When `null`, the `description` field will be omitted from the resulting object.
  - `range` (`string`): The IP range to advertise. The value must be a
CIDR-formatted string.

**Returns**:
  - An attribute object that represents the `advertised_ip_ranges` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_router.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
