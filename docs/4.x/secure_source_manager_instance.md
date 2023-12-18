---
permalink: /secure_source_manager_instance/
---

# secure_source_manager_instance

`secure_source_manager_instance` represents the `google_secure_source_manager_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withInstanceId()`](#fn-withinstanceid)
* [`fn withKmsKey()`](#fn-withkmskey)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPrivateConfig()`](#fn-withprivateconfig)
* [`fn withPrivateConfigMixin()`](#fn-withprivateconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj private_config`](#obj-private_config)
  * [`fn new()`](#fn-private_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.secure_source_manager_instance.new` injects a new `google_secure_source_manager_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.secure_source_manager_instance.new('some_id')

You can get the reference to the `id` field of the created `google.secure_source_manager_instance` using the reference:

    $._ref.google_secure_source_manager_instance.some_id.get('id')

This is the same as directly entering `"${ google_secure_source_manager_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `instance_id` (`string`): The name for the Instance.
  - `kms_key` (`string`): Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*. When `null`, the `kms_key` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the Instance.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `private_config` (`list[obj]`): Private settings for private instance. When `null`, the `private_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secure_source_manager_instance.private_config.new](#fn-private_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secure_source_manager_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.secure_source_manager_instance.newAttrs` constructs a new object with attributes and blocks configured for the `secure_source_manager_instance`
Terraform resource.

Unlike [google.secure_source_manager_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `instance_id` (`string`): The name for the Instance.
  - `kms_key` (`string`): Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*. When `null`, the `kms_key` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the Instance.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `private_config` (`list[obj]`): Private settings for private instance. When `null`, the `private_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secure_source_manager_instance.private_config.new](#fn-private_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secure_source_manager_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `secure_source_manager_instance` resource into the root Terraform configuration.


### fn withInstanceId

```ts
withInstanceId()
```

`google.string.withInstanceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_id` field.


### fn withKmsKey

```ts
withKmsKey()
```

`google.string.withKmsKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key` field.


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


### fn withPrivateConfig

```ts
withPrivateConfig()
```

`google.list[obj].withPrivateConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPrivateConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_config` field.


### fn withPrivateConfigMixin

```ts
withPrivateConfigMixin()
```

`google.list[obj].withPrivateConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPrivateConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_config` field.


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


## obj private_config



### fn private_config.new

```ts
new()
```


`google.secure_source_manager_instance.private_config.new` constructs a new object with attributes and blocks configured for the `private_config`
Terraform sub block.



**Args**:
  - `ca_pool` (`string`): CA pool resource, resource must in the format of &#39;projects/{project}/locations/{location}/caPools/{ca_pool}&#39;.
  - `is_private` (`bool`): &#39;Indicate if it&#39;s private instance.&#39;

**Returns**:
  - An attribute object that represents the `private_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.secure_source_manager_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
