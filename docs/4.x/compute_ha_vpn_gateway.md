---
permalink: /compute_ha_vpn_gateway/
---

# compute_ha_vpn_gateway

`compute_ha_vpn_gateway` represents the `google_compute_ha_vpn_gateway` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVpnInterfaces()`](#fn-withvpninterfaces)
* [`fn withVpnInterfacesMixin()`](#fn-withvpninterfacesmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vpn_interfaces`](#obj-vpn_interfaces)
  * [`fn new()`](#fn-vpn_interfacesnew)

## Fields

### fn new

```ts
new()
```


`google.compute_ha_vpn_gateway.new` injects a new `google_compute_ha_vpn_gateway` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_ha_vpn_gateway.new('some_id')

You can get the reference to the `id` field of the created `google.compute_ha_vpn_gateway` using the reference:

    $._ref.google_compute_ha_vpn_gateway.some_id.get('id')

This is the same as directly entering `"${ google_compute_ha_vpn_gateway.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The network this VPN gateway is accepting traffic for.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region this gateway should sit in. When `null`, the `region` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.timeouts.new](#fn-computehavpngatewaytimeoutsnew) constructor.
  - `vpn_interfaces` (`list[obj]`): A list of interfaces on this VPN gateway. When `null`, the `vpn_interfaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.vpn_interfaces.new](#fn-computehavpngatewayvpninterfacesnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_ha_vpn_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `compute_ha_vpn_gateway`
Terraform resource.

Unlike [google.compute_ha_vpn_gateway.new](#fn-computehavpngatewaynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The network this VPN gateway is accepting traffic for.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region this gateway should sit in. When `null`, the `region` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.timeouts.new](#fn-computehavpngatewaytimeoutsnew) constructor.
  - `vpn_interfaces` (`list[obj]`): A list of interfaces on this VPN gateway. When `null`, the `vpn_interfaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.vpn_interfaces.new](#fn-computehavpngatewayvpninterfacesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_ha_vpn_gateway` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.compute_ha_vpn_gateway.withDescription` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.compute_ha_vpn_gateway.withName` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.compute_ha_vpn_gateway.withNetwork` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withProject

```ts
withProject()
```

`google.compute_ha_vpn_gateway.withProject` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.compute_ha_vpn_gateway.withRegion` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_ha_vpn_gateway.withTimeouts` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_ha_vpn_gateway.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_ha_vpn_gateway.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withVpnInterfaces

```ts
withVpnInterfaces()
```

`google.compute_ha_vpn_gateway.withVpnInterfaces` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the vpn_interfaces field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `vpn_interfaces` field.


### fn withVpnInterfacesMixin

```ts
withVpnInterfacesMixin()
```

`google.compute_ha_vpn_gateway.withVpnInterfacesMixin` constructs a mixin object that can be merged into the `compute_ha_vpn_gateway`
Terraform resource block to set or update the vpn_interfaces field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_ha_vpn_gateway.withVpnInterfaces](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `vpn_interfaces` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_ha_vpn_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vpn_interfaces



### fn vpn_interfaces.new

```ts
new()
```


`google.compute_ha_vpn_gateway.vpn_interfaces.new` constructs a new object with attributes and blocks configured for the `vpn_interfaces`
Terraform sub block.



**Args**:
  - `interconnect_attachment` (`string`): URL of the interconnect attachment resource. When the value
of this field is present, the VPN Gateway will be used for
IPsec-encrypted Cloud Interconnect; all Egress or Ingress
traffic for this VPN Gateway interface will go through the
specified interconnect attachment resource.

Not currently available publicly. When `null`, the `interconnect_attachment` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpn_interfaces` sub block.
