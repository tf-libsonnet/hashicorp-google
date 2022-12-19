---
permalink: /data/container_engine_versions/
---

# data.container_engine_versions

`container_engine_versions` represents the `google_container_engine_versions` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withVersionPrefix()`](#fn-withversionprefix)

## Fields

### fn new

```ts
new()
```


`google.data.container_engine_versions.new` injects a new `data_google_container_engine_versions` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.container_engine_versions.new('some_id')

You can get the reference to the `id` field of the created `google.data.container_engine_versions` using the reference:

    $._ref.data_google_container_engine_versions.some_id.get('id')

This is the same as directly entering `"${ data_google_container_engine_versions.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `location` (`string`):  When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `version_prefix` (`string`):  When `null`, the `version_prefix` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.container_engine_versions.newAttrs` constructs a new object with attributes and blocks configured for the `container_engine_versions`
Terraform data source.

Unlike [google.data.container_engine_versions.new](#fn-containerengineversionsnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`):  When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `version_prefix` (`string`):  When `null`, the `version_prefix` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `container_engine_versions` data source into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.container_engine_versions.withLocation` constructs a mixin object that can be merged into the `container_engine_versions`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.container_engine_versions.withProject` constructs a mixin object that can be merged into the `container_engine_versions`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withVersionPrefix

```ts
withVersionPrefix()
```

`google.container_engine_versions.withVersionPrefix` constructs a mixin object that can be merged into the `container_engine_versions`
Terraform data source block to set or update the version_prefix field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `version_prefix` field.
