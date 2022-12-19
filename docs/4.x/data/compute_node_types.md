---
permalink: /data/compute_node_types/
---

# data.compute_node_types

`compute_node_types` represents the `google_compute_node_types` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withProject()`](#fn-withproject)
* [`fn withZone()`](#fn-withzone)

## Fields

### fn new

```ts
new()
```


`google.data.compute_node_types.new` injects a new `data_google_compute_node_types` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.compute_node_types.new('some_id')

You can get the reference to the `id` field of the created `google.data.compute_node_types` using the reference:

    $._ref.data_google_compute_node_types.some_id.get('id')

This is the same as directly entering `"${ data_google_compute_node_types.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`):  When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.compute_node_types.newAttrs` constructs a new object with attributes and blocks configured for the `compute_node_types`
Terraform data source.

Unlike [google.data.compute_node_types.new](#fn-computenodetypesnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`):  When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_node_types` data source into the root Terraform configuration.


### fn withProject

```ts
withProject()
```

`google.compute_node_types.withProject` constructs a mixin object that can be merged into the `compute_node_types`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withZone

```ts
withZone()
```

`google.compute_node_types.withZone` constructs a mixin object that can be merged into the `compute_node_types`
Terraform data source block to set or update the zone field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.
