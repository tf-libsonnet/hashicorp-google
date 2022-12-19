---
permalink: /compute_network_endpoint/
---

# compute_network_endpoint

`compute_network_endpoint` represents the `google_compute_network_endpoint` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withIpAddress()`](#fn-withipaddress)
* [`fn withNetworkEndpointGroup()`](#fn-withnetworkendpointgroup)
* [`fn withPort()`](#fn-withport)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_network_endpoint.new` injects a new `google_compute_network_endpoint` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_network_endpoint.new('some_id')

You can get the reference to the `id` field of the created `google.compute_network_endpoint` using the reference:

    $._ref.google_compute_network_endpoint.some_id.get('id')

This is the same as directly entering `"${ google_compute_network_endpoint.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `instance` (`string`): The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone of network endpoint group. When `null`, the `instance` field will be omitted from the resulting object.
  - `ip_address` (`string`): IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range).
  - `network_endpoint_group` (`string`): The network endpoint group this endpoint is part of.
  - `port` (`number`): Port number of network endpoint. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint.timeouts.new](#fn-computenetworkendpointtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_network_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_endpoint`
Terraform resource.

Unlike [google.compute_network_endpoint.new](#fn-computenetworkendpointnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `instance` (`string`): The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone of network endpoint group. When `null`, the `instance` field will be omitted from the resulting object.
  - `ip_address` (`string`): IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range).
  - `network_endpoint_group` (`string`): The network endpoint group this endpoint is part of.
  - `port` (`number`): Port number of network endpoint. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint.timeouts.new](#fn-computenetworkendpointtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_endpoint` resource into the root Terraform configuration.


### fn withInstance

```ts
withInstance()
```

`google.compute_network_endpoint.withInstance` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `instance` field.


### fn withIpAddress

```ts
withIpAddress()
```

`google.compute_network_endpoint.withIpAddress` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the ip_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `ip_address` field.


### fn withNetworkEndpointGroup

```ts
withNetworkEndpointGroup()
```

`google.compute_network_endpoint.withNetworkEndpointGroup` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the network_endpoint_group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network_endpoint_group` field.


### fn withPort

```ts
withPort()
```

`google.compute_network_endpoint.withPort` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `port` field.


### fn withProject

```ts
withProject()
```

`google.compute_network_endpoint.withProject` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_network_endpoint.withTimeouts` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_network_endpoint.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_network_endpoint.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withZone

```ts
withZone()
```

`google.compute_network_endpoint.withZone` constructs a mixin object that can be merged into the `compute_network_endpoint`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_network_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
