---
permalink: /compute_external_vpn_gateway/
---

# compute_external_vpn_gateway

`compute_external_vpn_gateway` represents the `google_compute_external_vpn_gateway` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInterface()`](#fn-withinterface)
* [`fn withInterfaceMixin()`](#fn-withinterfacemixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRedundancyType()`](#fn-withredundancytype)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj interface`](#obj-interface)
  * [`fn new()`](#fn-interfacenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_external_vpn_gateway.new` injects a new `google_compute_external_vpn_gateway` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_external_vpn_gateway.new('some_id')

You can get the reference to the `id` field of the created `google.compute_external_vpn_gateway` using the reference:

    $._ref.google_compute_external_vpn_gateway.some_id.get('id')

This is the same as directly entering `"${ google_compute_external_vpn_gateway.some_id.id }"` as the value.

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
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `redundancy_type` (`string`): Indicates the redundancy type of this external VPN gateway Possible values: [&#34;FOUR_IPS_REDUNDANCY&#34;, &#34;SINGLE_IP_INTERNALLY_REDUNDANT&#34;, &#34;TWO_IPS_REDUNDANCY&#34;] When `null`, the `redundancy_type` field will be omitted from the resulting object.
  - `interface` (`list[obj]`): A list of interfaces on this external VPN gateway. When `null`, the `interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_external_vpn_gateway.interface.new](#fn-computeexternalvpngatewayinterfacenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_external_vpn_gateway.timeouts.new](#fn-computeexternalvpngatewaytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_external_vpn_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `compute_external_vpn_gateway`
Terraform resource.

Unlike [google.compute_external_vpn_gateway.new](#fn-computeexternalvpngatewaynew), this function will not inject the `resource`
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
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `redundancy_type` (`string`): Indicates the redundancy type of this external VPN gateway Possible values: [&#34;FOUR_IPS_REDUNDANCY&#34;, &#34;SINGLE_IP_INTERNALLY_REDUNDANT&#34;, &#34;TWO_IPS_REDUNDANCY&#34;] When `null`, the `redundancy_type` field will be omitted from the resulting object.
  - `interface` (`list[obj]`): A list of interfaces on this external VPN gateway. When `null`, the `interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_external_vpn_gateway.interface.new](#fn-computeexternalvpngatewayinterfacenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_external_vpn_gateway.timeouts.new](#fn-computeexternalvpngatewaytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_external_vpn_gateway` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.compute_external_vpn_gateway.withDescription` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withInterface

```ts
withInterface()
```

`google.compute_external_vpn_gateway.withInterface` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the interface field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `interface` field.


### fn withInterfaceMixin

```ts
withInterfaceMixin()
```

`google.compute_external_vpn_gateway.withInterfaceMixin` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the interface field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_external_vpn_gateway.withInterface](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `interface` field.


### fn withName

```ts
withName()
```

`google.compute_external_vpn_gateway.withName` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.compute_external_vpn_gateway.withProject` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRedundancyType

```ts
withRedundancyType()
```

`google.compute_external_vpn_gateway.withRedundancyType` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the redundancy_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `redundancy_type` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_external_vpn_gateway.withTimeouts` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_external_vpn_gateway.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_external_vpn_gateway`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_external_vpn_gateway.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj interface



### fn interface.new

```ts
new()
```


`google.compute_external_vpn_gateway.interface.new` constructs a new object with attributes and blocks configured for the `interface`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): IP address of the interface in the external VPN gateway.
Only IPv4 is supported. This IP address can be either from
your on-premise gateway or another Cloud provider&#39;s VPN gateway,
it cannot be an IP address from Google Compute Engine. When `null`, the `ip_address` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `interface` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_external_vpn_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
