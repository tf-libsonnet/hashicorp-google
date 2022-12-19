---
permalink: /data/artifact_registry_repository/
---

# data.artifact_registry_repository

`artifact_registry_repository` represents the `google_artifact_registry_repository` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withRepositoryId()`](#fn-withrepositoryid)

## Fields

### fn new

```ts
new()
```


`google.data.artifact_registry_repository.new` injects a new `data_google_artifact_registry_repository` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.artifact_registry_repository.new('some_id')

You can get the reference to the `id` field of the created `google.data.artifact_registry_repository` using the reference:

    $._ref.data_google_artifact_registry_repository.some_id.get('id')

This is the same as directly entering `"${ data_google_artifact_registry_repository.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `location` (`string`): The name of the location this repository is located in.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `repository_id` (`string`): The last part of the repository name, for example:
&#34;repo1&#34;

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.artifact_registry_repository.newAttrs` constructs a new object with attributes and blocks configured for the `artifact_registry_repository`
Terraform data source.

Unlike [google.data.artifact_registry_repository.new](#fn-artifactregistryrepositorynew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The name of the location this repository is located in.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `repository_id` (`string`): The last part of the repository name, for example:
&#34;repo1&#34;

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `artifact_registry_repository` data source into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.artifact_registry_repository.withLocation` constructs a mixin object that can be merged into the `artifact_registry_repository`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.artifact_registry_repository.withProject` constructs a mixin object that can be merged into the `artifact_registry_repository`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRepositoryId

```ts
withRepositoryId()
```

`google.artifact_registry_repository.withRepositoryId` constructs a mixin object that can be merged into the `artifact_registry_repository`
Terraform data source block to set or update the repository_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `repository_id` field.
