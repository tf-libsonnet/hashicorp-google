---
permalink: /data/compute_router_status/
---

# data.compute_router_status

`compute_router_status` represents the `google_compute_router_status` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)

## Fields

### fn new

```ts
new()
```


`google.data.compute_router_status.new` injects a new `data_google_compute_router_status` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.compute_router_status.new('some_id')

You can get the reference to the `id` field of the created `google.data.compute_router_status` using the reference:

    $._ref.data_google_compute_router_status.some_id.get('id')

This is the same as directly entering `"${ data_google_compute_router_status.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`): Name of the router to query.
  - `project` (`string`): Project ID of the target router. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region of the target router. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.compute_router_status.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_status`
Terraform data source.

Unlike [google.data.compute_router_status.new](#fn-computerouterstatusnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): Name of the router to query.
  - `project` (`string`): Project ID of the target router. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region of the target router. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_router_status` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.compute_router_status.withName` constructs a mixin object that can be merged into the `compute_router_status`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.compute_router_status.withProject` constructs a mixin object that can be merged into the `compute_router_status`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.compute_router_status.withRegion` constructs a mixin object that can be merged into the `compute_router_status`
Terraform data source block to set or update the region field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.
