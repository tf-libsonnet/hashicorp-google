---
permalink: /data/compute_instance_template/
---

# data.compute_instance_template

`compute_instance_template` represents the `google_compute_instance_template` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withMostRecent()`](#fn-withmostrecent)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.compute_instance_template.new` injects a new `data_google_compute_instance_template` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.compute_instance_template.new('some_id')

You can get the reference to the `id` field of the created `google.data.compute_instance_template` using the reference:

    $._ref.data_google_compute_instance_template.some_id.get('id')

This is the same as directly entering `"${ data_google_compute_instance_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `filter` (`string`):  When `null`, the `filter` field will be omitted from the resulting object.
  - `most_recent` (`bool`):  When `null`, the `most_recent` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.compute_instance_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_template`
Terraform data source.

Unlike [google.data.compute_instance_template.new](#fn-computeinstancetemplatenew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `filter` (`string`):  When `null`, the `filter` field will be omitted from the resulting object.
  - `most_recent` (`bool`):  When `null`, the `most_recent` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_instance_template` data source into the root Terraform configuration.


### fn withFilter

```ts
withFilter()
```

`google.compute_instance_template.withFilter` constructs a mixin object that can be merged into the `compute_instance_template`
Terraform data source block to set or update the filter field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `filter` field.


### fn withMostRecent

```ts
withMostRecent()
```

`google.compute_instance_template.withMostRecent` constructs a mixin object that can be merged into the `compute_instance_template`
Terraform data source block to set or update the most_recent field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `most_recent` field.


### fn withName

```ts
withName()
```

`google.compute_instance_template.withName` constructs a mixin object that can be merged into the `compute_instance_template`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.compute_instance_template.withProject` constructs a mixin object that can be merged into the `compute_instance_template`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.
