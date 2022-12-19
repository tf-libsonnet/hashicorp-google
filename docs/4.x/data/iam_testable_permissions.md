---
permalink: /data/iam_testable_permissions/
---

# data.iam_testable_permissions

`iam_testable_permissions` represents the `google_iam_testable_permissions` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCustomSupportLevel()`](#fn-withcustomsupportlevel)
* [`fn withFullResourceName()`](#fn-withfullresourcename)
* [`fn withStages()`](#fn-withstages)

## Fields

### fn new

```ts
new()
```


`google.data.iam_testable_permissions.new` injects a new `data_google_iam_testable_permissions` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.iam_testable_permissions.new('some_id')

You can get the reference to the `id` field of the created `google.data.iam_testable_permissions` using the reference:

    $._ref.data_google_iam_testable_permissions.some_id.get('id')

This is the same as directly entering `"${ data_google_iam_testable_permissions.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `custom_support_level` (`string`): Set the `custom_support_level` field on the resulting data source block. When `null`, the `custom_support_level` field will be omitted from the resulting object.
  - `full_resource_name` (`string`): Set the `full_resource_name` field on the resulting data source block.
  - `stages` (`list`): Set the `stages` field on the resulting data source block. When `null`, the `stages` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.iam_testable_permissions.newAttrs` constructs a new object with attributes and blocks configured for the `iam_testable_permissions`
Terraform data source.

Unlike [google.data.iam_testable_permissions.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `custom_support_level` (`string`): Set the `custom_support_level` field on the resulting object. When `null`, the `custom_support_level` field will be omitted from the resulting object.
  - `full_resource_name` (`string`): Set the `full_resource_name` field on the resulting object.
  - `stages` (`list`): Set the `stages` field on the resulting object. When `null`, the `stages` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iam_testable_permissions` data source into the root Terraform configuration.


### fn withCustomSupportLevel

```ts
withCustomSupportLevel()
```

`google.string.withCustomSupportLevel` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the custom_support_level field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `custom_support_level` field.


### fn withFullResourceName

```ts
withFullResourceName()
```

`google.string.withFullResourceName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the full_resource_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `full_resource_name` field.


### fn withStages

```ts
withStages()
```

`google.list.withStages` constructs a mixin object that can be merged into the `list`
Terraform data source block to set or update the stages field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `stages` field.
