---
permalink: /data/kms_secret_ciphertext/
---

# data.kms_secret_ciphertext

`kms_secret_ciphertext` represents the `google_kms_secret_ciphertext` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCryptoKey()`](#fn-withcryptokey)
* [`fn withPlaintext()`](#fn-withplaintext)

## Fields

### fn new

```ts
new()
```


`google.data.kms_secret_ciphertext.new` injects a new `data_google_kms_secret_ciphertext` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.kms_secret_ciphertext.new('some_id')

You can get the reference to the `id` field of the created `google.data.kms_secret_ciphertext` using the reference:

    $._ref.data_google_kms_secret_ciphertext.some_id.get('id')

This is the same as directly entering `"${ data_google_kms_secret_ciphertext.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `crypto_key` (`string`): 
  - `plaintext` (`string`): 

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.kms_secret_ciphertext.newAttrs` constructs a new object with attributes and blocks configured for the `kms_secret_ciphertext`
Terraform data source.

Unlike [google.data.kms_secret_ciphertext.new](#fn-kmssecretciphertextnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `crypto_key` (`string`): 
  - `plaintext` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `kms_secret_ciphertext` data source into the root Terraform configuration.


### fn withCryptoKey

```ts
withCryptoKey()
```

`google.kms_secret_ciphertext.withCryptoKey` constructs a mixin object that can be merged into the `kms_secret_ciphertext`
Terraform data source block to set or update the crypto_key field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `crypto_key` field.


### fn withPlaintext

```ts
withPlaintext()
```

`google.kms_secret_ciphertext.withPlaintext` constructs a mixin object that can be merged into the `kms_secret_ciphertext`
Terraform data source block to set or update the plaintext field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `plaintext` field.
