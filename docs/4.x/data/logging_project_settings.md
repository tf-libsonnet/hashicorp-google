---
permalink: /data/logging_project_settings/
---

# data.logging_project_settings

`logging_project_settings` represents the `google_logging_project_settings` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.logging_project_settings.new` injects a new `data_google_logging_project_settings` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.logging_project_settings.new('some_id')

You can get the reference to the `id` field of the created `google.data.logging_project_settings` using the reference:

    $._ref.data_google_logging_project_settings.some_id.get('id')

This is the same as directly entering `"${ data_google_logging_project_settings.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `project` (`string`): The project for which to retrieve settings.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.logging_project_settings.newAttrs` constructs a new object with attributes and blocks configured for the `logging_project_settings`
Terraform data source.

Unlike [google.data.logging_project_settings.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`): The project for which to retrieve settings.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `logging_project_settings` data source into the root Terraform configuration.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
