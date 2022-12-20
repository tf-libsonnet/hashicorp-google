---
permalink: /kms_key_ring_import_job/
---

# kms_key_ring_import_job

`kms_key_ring_import_job` represents the `google_kms_key_ring_import_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withImportJobId()`](#fn-withimportjobid)
* [`fn withImportMethod()`](#fn-withimportmethod)
* [`fn withKeyRing()`](#fn-withkeyring)
* [`fn withProtectionLevel()`](#fn-withprotectionlevel)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.kms_key_ring_import_job.new` injects a new `google_kms_key_ring_import_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.kms_key_ring_import_job.new('some_id')

You can get the reference to the `id` field of the created `google.kms_key_ring_import_job` using the reference:

    $._ref.google_kms_key_ring_import_job.some_id.get('id')

This is the same as directly entering `"${ google_kms_key_ring_import_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `import_job_id` (`string`): It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  - `import_method` (`string`): The wrapping method to be used for incoming key material. Possible values: [&#34;RSA_OAEP_3072_SHA1_AES_256&#34;, &#34;RSA_OAEP_4096_SHA1_AES_256&#34;]
  - `key_ring` (`string`): The KeyRing that this import job belongs to.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.
  - `protection_level` (`string`): The protection level of the ImportJob. This must match the protectionLevel of the
versionTemplate on the CryptoKey you attempt to import into. Possible values: [&#34;SOFTWARE&#34;, &#34;HSM&#34;, &#34;EXTERNAL&#34;]
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_key_ring_import_job.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.kms_key_ring_import_job.newAttrs` constructs a new object with attributes and blocks configured for the `kms_key_ring_import_job`
Terraform resource.

Unlike [google.kms_key_ring_import_job.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `import_job_id` (`string`): It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  - `import_method` (`string`): The wrapping method to be used for incoming key material. Possible values: [&#34;RSA_OAEP_3072_SHA1_AES_256&#34;, &#34;RSA_OAEP_4096_SHA1_AES_256&#34;]
  - `key_ring` (`string`): The KeyRing that this import job belongs to.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.
  - `protection_level` (`string`): The protection level of the ImportJob. This must match the protectionLevel of the
versionTemplate on the CryptoKey you attempt to import into. Possible values: [&#34;SOFTWARE&#34;, &#34;HSM&#34;, &#34;EXTERNAL&#34;]
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_key_ring_import_job.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_key_ring_import_job` resource into the root Terraform configuration.


### fn withImportJobId

```ts
withImportJobId()
```

`google.string.withImportJobId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the import_job_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `import_job_id` field.


### fn withImportMethod

```ts
withImportMethod()
```

`google.string.withImportMethod` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the import_method field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `import_method` field.


### fn withKeyRing

```ts
withKeyRing()
```

`google.string.withKeyRing` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key_ring field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key_ring` field.


### fn withProtectionLevel

```ts
withProtectionLevel()
```

`google.string.withProtectionLevel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the protection_level field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `protection_level` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.kms_key_ring_import_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
