---
permalink: /vertex_ai_featurestore/
---

# vertex_ai_featurestore

`vertex_ai_featurestore` represents the `google_vertex_ai_featurestore` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEncryptionSpec()`](#fn-withencryptionspec)
* [`fn withEncryptionSpecMixin()`](#fn-withencryptionspecmixin)
* [`fn withForceDestroy()`](#fn-withforcedestroy)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withOnlineServingConfig()`](#fn-withonlineservingconfig)
* [`fn withOnlineServingConfigMixin()`](#fn-withonlineservingconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj encryption_spec`](#obj-encryption_spec)
  * [`fn new()`](#fn-encryption_specnew)
* [`obj online_serving_config`](#obj-online_serving_config)
  * [`fn new()`](#fn-online_serving_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_featurestore.new` injects a new `google_vertex_ai_featurestore` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_featurestore.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_featurestore` using the reference:

    $._ref.google_vertex_ai_featurestore.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_featurestore.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `force_destroy` (`bool`): If set to true, any EntityTypes and Features for this Featurestore will also be deleted When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Featurestore. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the dataset. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `encryption_spec` (`list[obj]`): If set, both of the online and offline data storage will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.encryption_spec.new](#fn-encryption_specnew) constructor.
  - `online_serving_config` (`list[obj]`): Config for online serving resources. When `null`, the `online_serving_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.online_serving_config.new](#fn-online_serving_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_featurestore.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_featurestore`
Terraform resource.

Unlike [google.vertex_ai_featurestore.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `force_destroy` (`bool`): If set to true, any EntityTypes and Features for this Featurestore will also be deleted When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Featurestore. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the dataset. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `encryption_spec` (`list[obj]`): If set, both of the online and offline data storage will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.encryption_spec.new](#fn-encryption_specnew) constructor.
  - `online_serving_config` (`list[obj]`): Config for online serving resources. When `null`, the `online_serving_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.online_serving_config.new](#fn-online_serving_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_featurestore` resource into the root Terraform configuration.


### fn withEncryptionSpec

```ts
withEncryptionSpec()
```

`google.list[obj].withEncryptionSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_spec` field.


### fn withEncryptionSpecMixin

```ts
withEncryptionSpecMixin()
```

`google.list[obj].withEncryptionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_spec` field.


### fn withForceDestroy

```ts
withForceDestroy()
```

`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_destroy` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOnlineServingConfig

```ts
withOnlineServingConfig()
```

`google.list[obj].withOnlineServingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the online_serving_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOnlineServingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `online_serving_config` field.


### fn withOnlineServingConfigMixin

```ts
withOnlineServingConfigMixin()
```

`google.list[obj].withOnlineServingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the online_serving_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOnlineServingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `online_serving_config` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


## obj encryption_spec



### fn encryption_spec.new

```ts
new()
```


`google.vertex_ai_featurestore.encryption_spec.new` constructs a new object with attributes and blocks configured for the `encryption_spec`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the compute resource is created.

**Returns**:
  - An attribute object that represents the `encryption_spec` sub block.


## obj online_serving_config



### fn online_serving_config.new

```ts
new()
```


`google.vertex_ai_featurestore.online_serving_config.new` constructs a new object with attributes and blocks configured for the `online_serving_config`
Terraform sub block.



**Args**:
  - `fixed_node_count` (`number`): The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating.

**Returns**:
  - An attribute object that represents the `online_serving_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vertex_ai_featurestore.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
