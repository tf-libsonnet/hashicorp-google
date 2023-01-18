---
permalink: /data/container_attached_install_manifest/
---

# data.container_attached_install_manifest

`container_attached_install_manifest` represents the `google_container_attached_install_manifest` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPlatformVersion()`](#fn-withplatformversion)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.container_attached_install_manifest.new` injects a new `data_google_container_attached_install_manifest` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.container_attached_install_manifest.new('some_id')

You can get the reference to the `id` field of the created `google.data.container_attached_install_manifest` using the reference:

    $._ref.data_google_container_attached_install_manifest.some_id.get('id')

This is the same as directly entering `"${ data_google_container_attached_install_manifest.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): Set the `cluster_id` field on the resulting data source block.
  - `location` (`string`): Set the `location` field on the resulting data source block.
  - `platform_version` (`string`): Set the `platform_version` field on the resulting data source block.
  - `project` (`string`): Set the `project` field on the resulting data source block.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.container_attached_install_manifest.newAttrs` constructs a new object with attributes and blocks configured for the `container_attached_install_manifest`
Terraform data source.

Unlike [google.data.container_attached_install_manifest.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): Set the `cluster_id` field on the resulting object.
  - `location` (`string`): Set the `location` field on the resulting object.
  - `platform_version` (`string`): Set the `platform_version` field on the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `container_attached_install_manifest` data source into the root Terraform configuration.


### fn withClusterId

```ts
withClusterId()
```

`google.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the cluster_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPlatformVersion

```ts
withPlatformVersion()
```

`google.string.withPlatformVersion` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the platform_version field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `platform_version` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
