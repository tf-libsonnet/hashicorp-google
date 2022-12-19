---
permalink: /data/project/
---

# data.project

`project` represents the `google_project` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withProjectId()`](#fn-withprojectid)

## Fields

### fn new

```ts
new()
```


`google.data.project.new` injects a new `data_google_project` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.project.new('some_id')

You can get the reference to the `id` field of the created `google.data.project` using the reference:

    $._ref.data_google_project.some_id.get('id')

This is the same as directly entering `"${ data_google_project.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `project_id` (`string`): The project ID. Changing this forces a new project to be created. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.project.newAttrs` constructs a new object with attributes and blocks configured for the `project`
Terraform data source.

Unlike [google.data.project.new](#fn-projectnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project_id` (`string`): The project ID. Changing this forces a new project to be created. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `project` data source into the root Terraform configuration.


### fn withProjectId

```ts
withProjectId()
```

`google.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.
