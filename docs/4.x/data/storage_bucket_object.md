---
permalink: /data/storage_bucket_object/
---

# data.storage_bucket_object

`storage_bucket_object` represents the `google_storage_bucket_object` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`google.data.storage_bucket_object.new` injects a new `data_google_storage_bucket_object` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.storage_bucket_object.new('some_id')

You can get the reference to the `id` field of the created `google.data.storage_bucket_object` using the reference:

    $._ref.data_google_storage_bucket_object.some_id.get('id')

This is the same as directly entering `"${ data_google_storage_bucket_object.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The name of the containing bucket. When `null`, the `bucket` field will be omitted from the resulting object.
  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.storage_bucket_object.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket_object`
Terraform data source.

Unlike [google.data.storage_bucket_object.new](#fn-storagebucketobjectnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The name of the containing bucket. When `null`, the `bucket` field will be omitted from the resulting object.
  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `storage_bucket_object` data source into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google.storage_bucket_object.withBucket` constructs a mixin object that can be merged into the `storage_bucket_object`
Terraform data source block to set or update the bucket field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bucket` field.


### fn withName

```ts
withName()
```

`google.storage_bucket_object.withName` constructs a mixin object that can be merged into the `storage_bucket_object`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.
