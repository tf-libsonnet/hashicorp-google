---
permalink: /network_connectivity_service_connection_policy/
---

# network_connectivity_service_connection_policy

`network_connectivity_service_connection_policy` represents the `google_network_connectivity_service_connection_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withPscConfig()`](#fn-withpscconfig)
* [`fn withPscConfigMixin()`](#fn-withpscconfigmixin)
* [`fn withServiceClass()`](#fn-withserviceclass)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj psc_config`](#obj-psc_config)
  * [`fn new()`](#fn-psc_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_connectivity_service_connection_policy.new` injects a new `google_network_connectivity_service_connection_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_connectivity_service_connection_policy.new('some_id')

You can get the reference to the `id` field of the created `google.network_connectivity_service_connection_policy` using the reference:

    $._ref.google_network_connectivity_service_connection_policy.some_id.get('id')

This is the same as directly entering `"${ google_network_connectivity_service_connection_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the ServiceConnectionPolicy.
  - `name` (`string`): The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  - `network` (`string`): The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `service_class` (`string`): The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  - `psc_config` (`list[obj]`): Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. When `null`, the `psc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.psc_config.new](#fn-psc_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_connectivity_service_connection_policy.newAttrs` constructs a new object with attributes and blocks configured for the `network_connectivity_service_connection_policy`
Terraform resource.

Unlike [google.network_connectivity_service_connection_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the ServiceConnectionPolicy.
  - `name` (`string`): The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  - `network` (`string`): The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `service_class` (`string`): The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  - `psc_config` (`list[obj]`): Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. When `null`, the `psc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.psc_config.new](#fn-psc_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_connectivity_service_connection_policy` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


### fn withPscConfig

```ts
withPscConfig()
```

`google.list[obj].withPscConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the psc_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPscConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `psc_config` field.


### fn withPscConfigMixin

```ts
withPscConfigMixin()
```

`google.list[obj].withPscConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the psc_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPscConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `psc_config` field.


### fn withServiceClass

```ts
withServiceClass()
```

`google.string.withServiceClass` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_class field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_class` field.


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


## obj psc_config



### fn psc_config.new

```ts
new()
```


`google.network_connectivity_service_connection_policy.psc_config.new` constructs a new object with attributes and blocks configured for the `psc_config`
Terraform sub block.



**Args**:
  - `limit` (`string`): Max number of PSC connections for this policy. When `null`, the `limit` field will be omitted from the resulting object.
  - `subnetworks` (`list`): IDs of the subnetworks or fully qualified identifiers for the subnetworks

**Returns**:
  - An attribute object that represents the `psc_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_connectivity_service_connection_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
