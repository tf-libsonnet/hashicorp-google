---
permalink: /apigee_addons_config/
---

# apigee_addons_config

`apigee_addons_config` represents the `google_apigee_addons_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAddonsConfig()`](#fn-withaddonsconfig)
* [`fn withAddonsConfigMixin()`](#fn-withaddonsconfigmixin)
* [`fn withOrg()`](#fn-withorg)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj addons_config`](#obj-addons_config)
  * [`fn new()`](#fn-addons_confignew)
  * [`obj addons_config.advanced_api_ops_config`](#obj-addons_configadvanced_api_ops_config)
    * [`fn new()`](#fn-addons_configadvanced_api_ops_confignew)
  * [`obj addons_config.api_security_config`](#obj-addons_configapi_security_config)
    * [`fn new()`](#fn-addons_configapi_security_confignew)
  * [`obj addons_config.connectors_platform_config`](#obj-addons_configconnectors_platform_config)
    * [`fn new()`](#fn-addons_configconnectors_platform_confignew)
  * [`obj addons_config.integration_config`](#obj-addons_configintegration_config)
    * [`fn new()`](#fn-addons_configintegration_confignew)
  * [`obj addons_config.monetization_config`](#obj-addons_configmonetization_config)
    * [`fn new()`](#fn-addons_configmonetization_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_addons_config.new` injects a new `google_apigee_addons_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_addons_config.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_addons_config` using the reference:

    $._ref.google_apigee_addons_config.some_id.get('id')

This is the same as directly entering `"${ google_apigee_addons_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `org` (`string`): Name of the Apigee organization.
  - `addons_config` (`list[obj]`): Addon configurations of the Apigee organization. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.new](#fn-addons_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_addons_config.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_addons_config`
Terraform resource.

Unlike [google.apigee_addons_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `org` (`string`): Name of the Apigee organization.
  - `addons_config` (`list[obj]`): Addon configurations of the Apigee organization. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.new](#fn-addons_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_addons_config` resource into the root Terraform configuration.


### fn withAddonsConfig

```ts
withAddonsConfig()
```

`google.list[obj].withAddonsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the addons_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAddonsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `addons_config` field.


### fn withAddonsConfigMixin

```ts
withAddonsConfigMixin()
```

`google.list[obj].withAddonsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the addons_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAddonsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `addons_config` field.


### fn withOrg

```ts
withOrg()
```

`google.string.withOrg` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org` field.


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


## obj addons_config



### fn addons_config.new

```ts
new()
```


`google.apigee_addons_config.addons_config.new` constructs a new object with attributes and blocks configured for the `addons_config`
Terraform sub block.



**Args**:
  - `advanced_api_ops_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `advanced_api_ops_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.advanced_api_ops_config.new](#fn-addons_configadvanced_api_ops_confignew) constructor.
  - `api_security_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `api_security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.api_security_config.new](#fn-addons_configapi_security_confignew) constructor.
  - `connectors_platform_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `connectors_platform_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.connectors_platform_config.new](#fn-addons_configconnectors_platform_confignew) constructor.
  - `integration_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `integration_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.integration_config.new](#fn-addons_configintegration_confignew) constructor.
  - `monetization_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `monetization_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.monetization_config.new](#fn-addons_configmonetization_confignew) constructor.

**Returns**:
  - An attribute object that represents the `addons_config` sub block.


## obj addons_config.advanced_api_ops_config



### fn addons_config.advanced_api_ops_config.new

```ts
new()
```


`google.apigee_addons_config.addons_config.advanced_api_ops_config.new` constructs a new object with attributes and blocks configured for the `advanced_api_ops_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `advanced_api_ops_config` sub block.


## obj addons_config.api_security_config



### fn addons_config.api_security_config.new

```ts
new()
```


`google.apigee_addons_config.addons_config.api_security_config.new` constructs a new object with attributes and blocks configured for the `api_security_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `api_security_config` sub block.


## obj addons_config.connectors_platform_config



### fn addons_config.connectors_platform_config.new

```ts
new()
```


`google.apigee_addons_config.addons_config.connectors_platform_config.new` constructs a new object with attributes and blocks configured for the `connectors_platform_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `connectors_platform_config` sub block.


## obj addons_config.integration_config



### fn addons_config.integration_config.new

```ts
new()
```


`google.apigee_addons_config.addons_config.integration_config.new` constructs a new object with attributes and blocks configured for the `integration_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `integration_config` sub block.


## obj addons_config.monetization_config



### fn addons_config.monetization_config.new

```ts
new()
```


`google.apigee_addons_config.addons_config.monetization_config.new` constructs a new object with attributes and blocks configured for the `monetization_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `monetization_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_addons_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
