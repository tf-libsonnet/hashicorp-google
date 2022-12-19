---
permalink: /data/storage_object_signed_url/
---

# data.storage_object_signed_url

`storage_object_signed_url` represents the `google_storage_object_signed_url` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withContentMd5()`](#fn-withcontentmd5)
* [`fn withContentType()`](#fn-withcontenttype)
* [`fn withCredentials()`](#fn-withcredentials)
* [`fn withDuration()`](#fn-withduration)
* [`fn withExtensionHeaders()`](#fn-withextensionheaders)
* [`fn withHttpMethod()`](#fn-withhttpmethod)
* [`fn withPath()`](#fn-withpath)

## Fields

### fn new

```ts
new()
```


`google.data.storage_object_signed_url.new` injects a new `data_google_storage_object_signed_url` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.storage_object_signed_url.new('some_id')

You can get the reference to the `id` field of the created `google.data.storage_object_signed_url` using the reference:

    $._ref.data_google_storage_object_signed_url.some_id.get('id')

This is the same as directly entering `"${ data_google_storage_object_signed_url.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `bucket` (`string`): Set the `bucket` field on the resulting data source block.
  - `content_md5` (`string`): Set the `content_md5` field on the resulting data source block. When `null`, the `content_md5` field will be omitted from the resulting object.
  - `content_type` (`string`): Set the `content_type` field on the resulting data source block. When `null`, the `content_type` field will be omitted from the resulting object.
  - `credentials` (`string`): Set the `credentials` field on the resulting data source block. When `null`, the `credentials` field will be omitted from the resulting object.
  - `duration` (`string`): Set the `duration` field on the resulting data source block. When `null`, the `duration` field will be omitted from the resulting object.
  - `extension_headers` (`obj`): Set the `extension_headers` field on the resulting data source block. When `null`, the `extension_headers` field will be omitted from the resulting object.
  - `http_method` (`string`): Set the `http_method` field on the resulting data source block. When `null`, the `http_method` field will be omitted from the resulting object.
  - `path` (`string`): Set the `path` field on the resulting data source block.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.storage_object_signed_url.newAttrs` constructs a new object with attributes and blocks configured for the `storage_object_signed_url`
Terraform data source.

Unlike [google.data.storage_object_signed_url.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): Set the `bucket` field on the resulting object.
  - `content_md5` (`string`): Set the `content_md5` field on the resulting object. When `null`, the `content_md5` field will be omitted from the resulting object.
  - `content_type` (`string`): Set the `content_type` field on the resulting object. When `null`, the `content_type` field will be omitted from the resulting object.
  - `credentials` (`string`): Set the `credentials` field on the resulting object. When `null`, the `credentials` field will be omitted from the resulting object.
  - `duration` (`string`): Set the `duration` field on the resulting object. When `null`, the `duration` field will be omitted from the resulting object.
  - `extension_headers` (`obj`): Set the `extension_headers` field on the resulting object. When `null`, the `extension_headers` field will be omitted from the resulting object.
  - `http_method` (`string`): Set the `http_method` field on the resulting object. When `null`, the `http_method` field will be omitted from the resulting object.
  - `path` (`string`): Set the `path` field on the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `storage_object_signed_url` data source into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the bucket field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withContentMd5

```ts
withContentMd5()
```

`google.string.withContentMd5` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the content_md5 field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_md5` field.


### fn withContentType

```ts
withContentType()
```

`google.string.withContentType` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the content_type field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_type` field.


### fn withCredentials

```ts
withCredentials()
```

`google.string.withCredentials` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the credentials field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `credentials` field.


### fn withDuration

```ts
withDuration()
```

`google.string.withDuration` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the duration field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `duration` field.


### fn withExtensionHeaders

```ts
withExtensionHeaders()
```

`google.obj.withExtensionHeaders` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the extension_headers field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `extension_headers` field.


### fn withHttpMethod

```ts
withHttpMethod()
```

`google.string.withHttpMethod` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the http_method field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `http_method` field.


### fn withPath

```ts
withPath()
```

`google.string.withPath` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the path field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `path` field.
