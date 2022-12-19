---
permalink: /data/kms_crypto_key/
---

# data.kms_crypto_key

`kms_crypto_key` represents the `google_kms_crypto_key` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withKeyRing()`](#fn-withkeyring)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`google.data.kms_crypto_key.new` injects a new `data_google_kms_crypto_key` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.kms_crypto_key.new('some_id')

You can get the reference to the `id` field of the created `google.data.kms_crypto_key` using the reference:

    $._ref.data_google_kms_crypto_key.some_id.get('id')

This is the same as directly entering `"${ data_google_kms_crypto_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `key_ring` (`string`): The KeyRing that this key belongs to.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.
  - `name` (`string`): The resource name for the CryptoKey.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.kms_crypto_key.newAttrs` constructs a new object with attributes and blocks configured for the `kms_crypto_key`
Terraform data source.

Unlike [google.data.kms_crypto_key.new](#fn-kmscryptokeynew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `key_ring` (`string`): The KeyRing that this key belongs to.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.
  - `name` (`string`): The resource name for the CryptoKey.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `kms_crypto_key` data source into the root Terraform configuration.


### fn withKeyRing

```ts
withKeyRing()
```

`google.kms_crypto_key.withKeyRing` constructs a mixin object that can be merged into the `kms_crypto_key`
Terraform data source block to set or update the key_ring field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `key_ring` field.


### fn withName

```ts
withName()
```

`google.kms_crypto_key.withName` constructs a mixin object that can be merged into the `kms_crypto_key`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.
