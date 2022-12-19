---
permalink: /data/compute_region_instance_group/
---

# data.compute_region_instance_group

`compute_region_instance_group` represents the `google_compute_region_instance_group` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSelfLink()`](#fn-withselflink)

## Fields

### fn new

```ts
new()
```


`google.data.compute_region_instance_group.new` injects a new `data_google_compute_region_instance_group` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.compute_region_instance_group.new('some_id')

You can get the reference to the `id` field of the created `google.data.compute_region_instance_group` using the reference:

    $._ref.data_google_compute_region_instance_group.some_id.get('id')

This is the same as directly entering `"${ data_google_compute_region_instance_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`):  When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`):  When `null`, the `region` field will be omitted from the resulting object.
  - `self_link` (`string`):  When `null`, the `self_link` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.compute_region_instance_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_instance_group`
Terraform data source.

Unlike [google.data.compute_region_instance_group.new](#fn-computeregioninstancegroupnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`):  When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`):  When `null`, the `region` field will be omitted from the resulting object.
  - `self_link` (`string`):  When `null`, the `self_link` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_region_instance_group` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.compute_region_instance_group.withName` constructs a mixin object that can be merged into the `compute_region_instance_group`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.compute_region_instance_group.withProject` constructs a mixin object that can be merged into the `compute_region_instance_group`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.compute_region_instance_group.withRegion` constructs a mixin object that can be merged into the `compute_region_instance_group`
Terraform data source block to set or update the region field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withSelfLink

```ts
withSelfLink()
```

`google.compute_region_instance_group.withSelfLink` constructs a mixin object that can be merged into the `compute_region_instance_group`
Terraform data source block to set or update the self_link field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `self_link` field.
