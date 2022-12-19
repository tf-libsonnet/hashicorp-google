---
permalink: /kms_secret_ciphertext/
---

# kms_secret_ciphertext

`kms_secret_ciphertext` represents the `google_kms_secret_ciphertext` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdditionalAuthenticatedData()`](#fn-withadditionalauthenticateddata)
* [`fn withCryptoKey()`](#fn-withcryptokey)
* [`fn withPlaintext()`](#fn-withplaintext)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.kms_secret_ciphertext.new` injects a new `google_kms_secret_ciphertext` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.kms_secret_ciphertext.new('some_id')

You can get the reference to the `id` field of the created `google.kms_secret_ciphertext` using the reference:

    $._ref.google_kms_secret_ciphertext.some_id.get('id')

This is the same as directly entering `"${ google_kms_secret_ciphertext.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `additional_authenticated_data` (`string`): The additional authenticated data used for integrity checks during encryption and decryption. When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.
  - `crypto_key` (`string`): The full name of the CryptoKey that will be used to encrypt the provided plaintext.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}&#39;&#39;
  - `plaintext` (`string`): The plaintext to be encrypted.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_secret_ciphertext.timeouts.new](#fn-kmssecretciphertexttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.kms_secret_ciphertext.newAttrs` constructs a new object with attributes and blocks configured for the `kms_secret_ciphertext`
Terraform resource.

Unlike [google.kms_secret_ciphertext.new](#fn-kmssecretciphertextnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `additional_authenticated_data` (`string`): The additional authenticated data used for integrity checks during encryption and decryption. When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.
  - `crypto_key` (`string`): The full name of the CryptoKey that will be used to encrypt the provided plaintext.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}&#39;&#39;
  - `plaintext` (`string`): The plaintext to be encrypted.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_secret_ciphertext.timeouts.new](#fn-kmssecretciphertexttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_secret_ciphertext` resource into the root Terraform configuration.


### fn withAdditionalAuthenticatedData

```ts
withAdditionalAuthenticatedData()
```

`google.string.withAdditionalAuthenticatedData` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the additional_authenticated_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `additional_authenticated_data` field.


### fn withCryptoKey

```ts
withCryptoKey()
```

`google.string.withCryptoKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the crypto_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `crypto_key` field.


### fn withPlaintext

```ts
withPlaintext()
```

`google.string.withPlaintext` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the plaintext field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `plaintext` field.


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


`google.kms_secret_ciphertext.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
