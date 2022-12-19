---
permalink: /service_networking_peered_dns_domain/
---

# service_networking_peered_dns_domain

`service_networking_peered_dns_domain` represents the `google_service_networking_peered_dns_domain` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDnsSuffix()`](#fn-withdnssuffix)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
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


`google.service_networking_peered_dns_domain.new` injects a new `google_service_networking_peered_dns_domain` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.service_networking_peered_dns_domain.new('some_id')

You can get the reference to the `id` field of the created `google.service_networking_peered_dns_domain` using the reference:

    $._ref.google_service_networking_peered_dns_domain.some_id.get('id')

This is the same as directly entering `"${ google_service_networking_peered_dns_domain.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dns_suffix` (`string`): The DNS domain name suffix of the peered DNS domain.
  - `name` (`string`): Name of the peered DNS domain.
  - `network` (`string`): Network in the consumer project to peer with.
  - `project` (`string`): The ID of the project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com When `null`, the `service` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_networking_peered_dns_domain.timeouts.new](#fn-servicenetworkingpeereddnsdomaintimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.service_networking_peered_dns_domain.newAttrs` constructs a new object with attributes and blocks configured for the `service_networking_peered_dns_domain`
Terraform resource.

Unlike [google.service_networking_peered_dns_domain.new](#fn-servicenetworkingpeereddnsdomainnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dns_suffix` (`string`): The DNS domain name suffix of the peered DNS domain.
  - `name` (`string`): Name of the peered DNS domain.
  - `network` (`string`): Network in the consumer project to peer with.
  - `project` (`string`): The ID of the project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com When `null`, the `service` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_networking_peered_dns_domain.timeouts.new](#fn-servicenetworkingpeereddnsdomaintimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_networking_peered_dns_domain` resource into the root Terraform configuration.


### fn withDnsSuffix

```ts
withDnsSuffix()
```

`google.string.withDnsSuffix` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dns_suffix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dns_suffix` field.


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


### fn withService

```ts
withService()
```

`google.string.withService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


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


`google.service_networking_peered_dns_domain.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
