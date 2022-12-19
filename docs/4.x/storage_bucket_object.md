---
permalink: /storage_bucket_object/
---

# storage_bucket_object

`storage_bucket_object` represents the `google_storage_bucket_object` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withCacheControl()`](#fn-withcachecontrol)
* [`fn withContent()`](#fn-withcontent)
* [`fn withContentDisposition()`](#fn-withcontentdisposition)
* [`fn withContentEncoding()`](#fn-withcontentencoding)
* [`fn withContentLanguage()`](#fn-withcontentlanguage)
* [`fn withContentType()`](#fn-withcontenttype)
* [`fn withCustomerEncryption()`](#fn-withcustomerencryption)
* [`fn withCustomerEncryptionMixin()`](#fn-withcustomerencryptionmixin)
* [`fn withDetectMd5Hash()`](#fn-withdetectmd5hash)
* [`fn withEventBasedHold()`](#fn-witheventbasedhold)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withName()`](#fn-withname)
* [`fn withSource()`](#fn-withsource)
* [`fn withStorageClass()`](#fn-withstorageclass)
* [`fn withTemporaryHold()`](#fn-withtemporaryhold)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj customer_encryption`](#obj-customer_encryption)
  * [`fn new()`](#fn-customer_encryptionnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.storage_bucket_object.new` injects a new `google_storage_bucket_object` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_bucket_object.new('some_id')

You can get the reference to the `id` field of the created `google.storage_bucket_object` using the reference:

    $._ref.google_storage_bucket_object.some_id.get('id')

This is the same as directly entering `"${ google_storage_bucket_object.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The name of the containing bucket.
  - `cache_control` (`string`): Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600 When `null`, the `cache_control` field will be omitted from the resulting object.
  - `content` (`string`): Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. When `null`, the `content` field will be omitted from the resulting object.
  - `content_disposition` (`string`): Content-Disposition of the object data. When `null`, the `content_disposition` field will be omitted from the resulting object.
  - `content_encoding` (`string`): Content-Encoding of the object data. When `null`, the `content_encoding` field will be omitted from the resulting object.
  - `content_language` (`string`): Content-Language of the object data. When `null`, the `content_language` field will be omitted from the resulting object.
  - `content_type` (`string`): Content-Type of the object data. Defaults to &#34;application/octet-stream&#34; or &#34;text/plain; charset=utf-8&#34;. When `null`, the `content_type` field will be omitted from the resulting object.
  - `detect_md5hash` (`string`): Set the `detect_md5hash` field on the resulting resource block. When `null`, the `detect_md5hash` field will be omitted from the resulting object.
  - `event_based_hold` (`bool`): Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold&#39;s release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). When `null`, the `event_based_hold` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata&#39;s kmsKeyName value, if any. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `metadata` (`obj`): User-provided metadata, in key/value pairs. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead.
  - `source` (`string`): A path to the data you want to upload. Must be defined if content is not. When `null`, the `source` field will be omitted from the resulting object.
  - `storage_class` (`string`): The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket&#39;s default storage class or to a standard class. When `null`, the `storage_class` field will be omitted from the resulting object.
  - `temporary_hold` (`bool`): Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. When `null`, the `temporary_hold` field will be omitted from the resulting object.
  - `customer_encryption` (`list[obj]`): Encryption key; encoded using base64. When `null`, the `customer_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.customer_encryption.new](#fn-customer_encryptionnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_bucket_object.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket_object`
Terraform resource.

Unlike [google.storage_bucket_object.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The name of the containing bucket.
  - `cache_control` (`string`): Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600 When `null`, the `cache_control` field will be omitted from the resulting object.
  - `content` (`string`): Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. When `null`, the `content` field will be omitted from the resulting object.
  - `content_disposition` (`string`): Content-Disposition of the object data. When `null`, the `content_disposition` field will be omitted from the resulting object.
  - `content_encoding` (`string`): Content-Encoding of the object data. When `null`, the `content_encoding` field will be omitted from the resulting object.
  - `content_language` (`string`): Content-Language of the object data. When `null`, the `content_language` field will be omitted from the resulting object.
  - `content_type` (`string`): Content-Type of the object data. Defaults to &#34;application/octet-stream&#34; or &#34;text/plain; charset=utf-8&#34;. When `null`, the `content_type` field will be omitted from the resulting object.
  - `detect_md5hash` (`string`): Set the `detect_md5hash` field on the resulting object. When `null`, the `detect_md5hash` field will be omitted from the resulting object.
  - `event_based_hold` (`bool`): Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold&#39;s release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). When `null`, the `event_based_hold` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata&#39;s kmsKeyName value, if any. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `metadata` (`obj`): User-provided metadata, in key/value pairs. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead.
  - `source` (`string`): A path to the data you want to upload. Must be defined if content is not. When `null`, the `source` field will be omitted from the resulting object.
  - `storage_class` (`string`): The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket&#39;s default storage class or to a standard class. When `null`, the `storage_class` field will be omitted from the resulting object.
  - `temporary_hold` (`bool`): Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. When `null`, the `temporary_hold` field will be omitted from the resulting object.
  - `customer_encryption` (`list[obj]`): Encryption key; encoded using base64. When `null`, the `customer_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.customer_encryption.new](#fn-customer_encryptionnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_bucket_object` resource into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withCacheControl

```ts
withCacheControl()
```

`google.string.withCacheControl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cache_control field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cache_control` field.


### fn withContent

```ts
withContent()
```

`google.string.withContent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content` field.


### fn withContentDisposition

```ts
withContentDisposition()
```

`google.string.withContentDisposition` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content_disposition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_disposition` field.


### fn withContentEncoding

```ts
withContentEncoding()
```

`google.string.withContentEncoding` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content_encoding field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_encoding` field.


### fn withContentLanguage

```ts
withContentLanguage()
```

`google.string.withContentLanguage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content_language field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_language` field.


### fn withContentType

```ts
withContentType()
```

`google.string.withContentType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_type` field.


### fn withCustomerEncryption

```ts
withCustomerEncryption()
```

`google.list[obj].withCustomerEncryption` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the customer_encryption field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCustomerEncryptionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `customer_encryption` field.


### fn withCustomerEncryptionMixin

```ts
withCustomerEncryptionMixin()
```

`google.list[obj].withCustomerEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the customer_encryption field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCustomerEncryption](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `customer_encryption` field.


### fn withDetectMd5Hash

```ts
withDetectMd5Hash()
```

`google.string.withDetectMd5Hash` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the detect_md5hash field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `detect_md5hash` field.


### fn withEventBasedHold

```ts
withEventBasedHold()
```

`google.bool.withEventBasedHold` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the event_based_hold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `event_based_hold` field.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key_name` field.


### fn withMetadata

```ts
withMetadata()
```

`google.obj.withMetadata` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the metadata field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `metadata` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withSource

```ts
withSource()
```

`google.string.withSource` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source` field.


### fn withStorageClass

```ts
withStorageClass()
```

`google.string.withStorageClass` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the storage_class field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `storage_class` field.


### fn withTemporaryHold

```ts
withTemporaryHold()
```

`google.bool.withTemporaryHold` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the temporary_hold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `temporary_hold` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj customer_encryption



### fn customer_encryption.new

```ts
new()
```


`google.storage_bucket_object.customer_encryption.new` constructs a new object with attributes and blocks configured for the `customer_encryption`
Terraform sub block.



**Args**:
  - `encryption_algorithm` (`string`): The encryption algorithm. Default: AES256 When `null`, the `encryption_algorithm` field will be omitted from the resulting object.
  - `encryption_key` (`string`): Base64 encoded customer supplied encryption key.

**Returns**:
  - An attribute object that represents the `customer_encryption` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.storage_bucket_object.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
