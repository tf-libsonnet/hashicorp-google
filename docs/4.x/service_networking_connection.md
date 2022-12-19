---
permalink: /service_networking_connection/
---

# service_networking_connection

`service_networking_connection` represents the `google_service_networking_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withReservedPeeringRanges()`](#fn-withreservedpeeringranges)
* [`fn withService()`](#fn-withservice)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.service_networking_connection.new` injects a new `google_service_networking_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.service_networking_connection.new('some_id')

You can get the reference to the `id` field of the created `google.service_networking_connection` using the reference:

    $._ref.google_service_networking_connection.some_id.get('id')

This is the same as directly entering `"${ google_service_networking_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `network` (`string`): Name of VPC network connected with service producers using VPC peering.
  - `reserved_peering_ranges` (`list`): Named IP address range(s) of PEERING type reserved for this service provider. Note that invoking this method with a different range when connection is already established will not reallocate already provisioned service producer subnetworks.
  - `service` (`string`): Provider peering service that is managing peering connectivity for a service provider organization. For Google services that support this functionality it is &#39;servicenetworking.googleapis.com&#39;.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_networking_connection.timeouts.new](#fn-servicenetworkingconnectiontimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.service_networking_connection.newAttrs` constructs a new object with attributes and blocks configured for the `service_networking_connection`
Terraform resource.

Unlike [google.service_networking_connection.new](#fn-servicenetworkingconnectionnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `network` (`string`): Name of VPC network connected with service producers using VPC peering.
  - `reserved_peering_ranges` (`list`): Named IP address range(s) of PEERING type reserved for this service provider. Note that invoking this method with a different range when connection is already established will not reallocate already provisioned service producer subnetworks.
  - `service` (`string`): Provider peering service that is managing peering connectivity for a service provider organization. For Google services that support this functionality it is &#39;servicenetworking.googleapis.com&#39;.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_networking_connection.timeouts.new](#fn-servicenetworkingconnectiontimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_networking_connection` resource into the root Terraform configuration.


### fn withNetwork

```ts
withNetwork()
```

`google.service_networking_connection.withNetwork` constructs a mixin object that can be merged into the `service_networking_connection`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withReservedPeeringRanges

```ts
withReservedPeeringRanges()
```

`google.service_networking_connection.withReservedPeeringRanges` constructs a mixin object that can be merged into the `service_networking_connection`
Terraform resource block to set or update the reserved_peering_ranges field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `reserved_peering_ranges` field.


### fn withService

```ts
withService()
```

`google.service_networking_connection.withService` constructs a mixin object that can be merged into the `service_networking_connection`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.service_networking_connection.withTimeouts` constructs a mixin object that can be merged into the `service_networking_connection`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.service_networking_connection.withTimeoutsMixin` constructs a mixin object that can be merged into the `service_networking_connection`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.service_networking_connection.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.service_networking_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
