---
permalink: /data/compute_instance_group/
---

# data.compute_instance_group

`compute_instance_group` represents the `google_compute_instance_group` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSelfLink()`](#fn-withselflink)
* [`fn withZone()`](#fn-withzone)

## Fields

### fn new

```ts
new()
```


`google.data.compute_instance_group.new` injects a new `data_google_compute_instance_group` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.compute_instance_group.new('some_id')

You can get the reference to the `id` field of the created `google.data.compute_instance_group` using the reference:

    $._ref.data_google_compute_instance_group.some_id.get('id')

This is the same as directly entering `"${ data_google_compute_instance_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`): Set the `name` field on the resulting data source block. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `self_link` (`string`): Set the `self_link` field on the resulting data source block. When `null`, the `self_link` field will be omitted from the resulting object.
  - `zone` (`string`): Set the `zone` field on the resulting data source block. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.compute_instance_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_group`
Terraform data source.

Unlike [google.data.compute_instance_group.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): Set the `name` field on the resulting object. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `self_link` (`string`): Set the `self_link` field on the resulting object. When `null`, the `self_link` field will be omitted from the resulting object.
  - `zone` (`string`): Set the `zone` field on the resulting object. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_instance_group` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSelfLink

```ts
withSelfLink()
```

`google.string.withSelfLink` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the self_link field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `self_link` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the zone field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.
