---
permalink: /compute_global_network_endpoint/
---

# compute_global_network_endpoint

`compute_global_network_endpoint` represents the `google_compute_global_network_endpoint` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withFqdn()`](#fn-withfqdn)
* [`fn withGlobalNetworkEndpointGroup()`](#fn-withglobalnetworkendpointgroup)
* [`fn withIpAddress()`](#fn-withipaddress)
* [`fn withPort()`](#fn-withport)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_global_network_endpoint.new` injects a new `google_compute_global_network_endpoint` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_global_network_endpoint.new('some_id')

You can get the reference to the `id` field of the created `google.compute_global_network_endpoint` using the reference:

    $._ref.google_compute_global_network_endpoint.some_id.get('id')

This is the same as directly entering `"${ google_compute_global_network_endpoint.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `fqdn` (`string`): Fully qualified domain name of network endpoint.
This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. When `null`, the `fqdn` field will be omitted from the resulting object.
  - `global_network_endpoint_group` (`string`): The global network endpoint group this endpoint is part of.
  - `ip_address` (`string`): IPv4 address external endpoint. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `port` (`number`): Port number of the external endpoint.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_network_endpoint.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_global_network_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_network_endpoint`
Terraform resource.

Unlike [google.compute_global_network_endpoint.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `fqdn` (`string`): Fully qualified domain name of network endpoint.
This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. When `null`, the `fqdn` field will be omitted from the resulting object.
  - `global_network_endpoint_group` (`string`): The global network endpoint group this endpoint is part of.
  - `ip_address` (`string`): IPv4 address external endpoint. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `port` (`number`): Port number of the external endpoint.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_network_endpoint.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_network_endpoint` resource into the root Terraform configuration.


### fn withFqdn

```ts
withFqdn()
```

`google.string.withFqdn` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the fqdn field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `fqdn` field.


### fn withGlobalNetworkEndpointGroup

```ts
withGlobalNetworkEndpointGroup()
```

`google.string.withGlobalNetworkEndpointGroup` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the global_network_endpoint_group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `global_network_endpoint_group` field.


### fn withIpAddress

```ts
withIpAddress()
```

`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_address` field.


### fn withPort

```ts
withPort()
```

`google.number.withPort` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `port` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_global_network_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
