---
permalink: /data/kms_secret/
---

# data.kms_secret

`kms_secret` represents the `google_kms_secret` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdditionalAuthenticatedData()`](#fn-withadditionalauthenticateddata)
* [`fn withCiphertext()`](#fn-withciphertext)
* [`fn withCryptoKey()`](#fn-withcryptokey)

## Fields

### fn new

```ts
new()
```


`google.data.kms_secret.new` injects a new `data_google_kms_secret` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.kms_secret.new('some_id')

You can get the reference to the `id` field of the created `google.data.kms_secret` using the reference:

    $._ref.data_google_kms_secret.some_id.get('id')

This is the same as directly entering `"${ data_google_kms_secret.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `additional_authenticated_data` (`string`):  When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.
  - `ciphertext` (`string`): 
  - `crypto_key` (`string`): 

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.kms_secret.newAttrs` constructs a new object with attributes and blocks configured for the `kms_secret`
Terraform data source.

Unlike [google.data.kms_secret.new](#fn-kms_secretnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `additional_authenticated_data` (`string`):  When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.
  - `ciphertext` (`string`): 
  - `crypto_key` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `kms_secret` data source into the root Terraform configuration.


### fn withAdditionalAuthenticatedData

```ts
withAdditionalAuthenticatedData()
```

`google.string.withAdditionalAuthenticatedData` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the additional_authenticated_data field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `additional_authenticated_data` field.


### fn withCiphertext

```ts
withCiphertext()
```

`google.string.withCiphertext` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the ciphertext field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ciphertext` field.


### fn withCryptoKey

```ts
withCryptoKey()
```

`google.string.withCryptoKey` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the crypto_key field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `crypto_key` field.
