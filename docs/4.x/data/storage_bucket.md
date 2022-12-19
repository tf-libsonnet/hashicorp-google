---
permalink: /data/storage_bucket/
---

# data.storage_bucket

`storage_bucket` represents the `google_storage_bucket` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`google.data.storage_bucket.new` injects a new `data_google_storage_bucket` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.storage_bucket.new('some_id')

You can get the reference to the `id` field of the created `google.data.storage_bucket` using the reference:

    $._ref.data_google_storage_bucket.some_id.get('id')

This is the same as directly entering `"${ data_google_storage_bucket.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`): The name of the bucket.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.storage_bucket.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket`
Terraform data source.

Unlike [google.data.storage_bucket.new](#fn-storagebucketnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The name of the bucket.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `storage_bucket` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.storage_bucket.withName` constructs a mixin object that can be merged into the `storage_bucket`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.
