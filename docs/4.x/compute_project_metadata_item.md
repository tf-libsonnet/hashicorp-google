---
permalink: /compute_project_metadata_item/
---

# compute_project_metadata_item

`compute_project_metadata_item` represents the `google_compute_project_metadata_item` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withKey()`](#fn-withkey)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withValue()`](#fn-withvalue)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_project_metadata_item.new` injects a new `google_compute_project_metadata_item` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_project_metadata_item.new('some_id')

You can get the reference to the `id` field of the created `google.compute_project_metadata_item` using the reference:

    $._ref.google_compute_project_metadata_item.some_id.get('id')

This is the same as directly entering `"${ google_compute_project_metadata_item.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `key` (`string`): The metadata key to set.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `value` (`string`): The value to set for the given metadata key.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_project_metadata_item.timeouts.new](#fn-computeprojectmetadataitemtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_project_metadata_item.newAttrs` constructs a new object with attributes and blocks configured for the `compute_project_metadata_item`
Terraform resource.

Unlike [google.compute_project_metadata_item.new](#fn-computeprojectmetadataitemnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `key` (`string`): The metadata key to set.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `value` (`string`): The value to set for the given metadata key.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_project_metadata_item.timeouts.new](#fn-computeprojectmetadataitemtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_project_metadata_item` resource into the root Terraform configuration.


### fn withKey

```ts
withKey()
```

`google.compute_project_metadata_item.withKey` constructs a mixin object that can be merged into the `compute_project_metadata_item`
Terraform resource block to set or update the key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `key` field.


### fn withProject

```ts
withProject()
```

`google.compute_project_metadata_item.withProject` constructs a mixin object that can be merged into the `compute_project_metadata_item`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_project_metadata_item.withTimeouts` constructs a mixin object that can be merged into the `compute_project_metadata_item`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_project_metadata_item.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_project_metadata_item`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_project_metadata_item.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withValue

```ts
withValue()
```

`google.compute_project_metadata_item.withValue` constructs a mixin object that can be merged into the `compute_project_metadata_item`
Terraform resource block to set or update the value field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `value` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_project_metadata_item.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
