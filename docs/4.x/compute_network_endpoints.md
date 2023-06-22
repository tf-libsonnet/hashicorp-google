---
permalink: /compute_network_endpoints/
---

# compute_network_endpoints

`compute_network_endpoints` represents the `google_compute_network_endpoints` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withNetworkEndpointGroup()`](#fn-withnetworkendpointgroup)
* [`fn withNetworkEndpoints()`](#fn-withnetworkendpoints)
* [`fn withNetworkEndpointsMixin()`](#fn-withnetworkendpointsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj network_endpoints`](#obj-network_endpoints)
  * [`fn new()`](#fn-network_endpointsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_network_endpoints.new` injects a new `google_compute_network_endpoints` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_network_endpoints.new('some_id')

You can get the reference to the `id` field of the created `google.compute_network_endpoints` using the reference:

    $._ref.google_compute_network_endpoints.some_id.get('id')

This is the same as directly entering `"${ google_compute_network_endpoints.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `network_endpoint_group` (`string`): The network endpoint group these endpoints are part of.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `network_endpoints` (`list[obj]`): The network endpoints to be added to the enclosing network endpoint group
(NEG). Each endpoint specifies an IP address and port, along with
additional information depending on the NEG type. When `null`, the `network_endpoints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.network_endpoints.new](#fn-network_endpointsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_network_endpoints.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_endpoints`
Terraform resource.

Unlike [google.compute_network_endpoints.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `network_endpoint_group` (`string`): The network endpoint group these endpoints are part of.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `network_endpoints` (`list[obj]`): The network endpoints to be added to the enclosing network endpoint group
(NEG). Each endpoint specifies an IP address and port, along with
additional information depending on the NEG type. When `null`, the `network_endpoints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.network_endpoints.new](#fn-network_endpointsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_endpoints` resource into the root Terraform configuration.


### fn withNetworkEndpointGroup

```ts
withNetworkEndpointGroup()
```

`google.string.withNetworkEndpointGroup` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network_endpoint_group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network_endpoint_group` field.


### fn withNetworkEndpoints

```ts
withNetworkEndpoints()
```

`google.list[obj].withNetworkEndpoints` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_endpoints field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkEndpointsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_endpoints` field.


### fn withNetworkEndpointsMixin

```ts
withNetworkEndpointsMixin()
```

`google.list[obj].withNetworkEndpointsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_endpoints field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkEndpoints](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_endpoints` field.


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


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj network_endpoints



### fn network_endpoints.new

```ts
new()
```


`google.compute_network_endpoints.network_endpoints.new` constructs a new object with attributes and blocks configured for the `network_endpoints`
Terraform sub block.



**Args**:
  - `instance` (`string`): The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone as the network endpoint group. When `null`, the `instance` field will be omitted from the resulting object.
  - `ip_address` (`string`): IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range).
  - `port` (`number`): Port number of network endpoint.
**Note** &#39;port&#39; is required unless the Network Endpoint Group is created
with the type of &#39;GCE_VM_IP&#39; When `null`, the `port` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_endpoints` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_network_endpoints.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
