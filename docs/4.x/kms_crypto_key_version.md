---
permalink: /kms_crypto_key_version/
---

# kms_crypto_key_version

`kms_crypto_key_version` represents the `google_kms_crypto_key_version` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCryptoKey()`](#fn-withcryptokey)
* [`fn withState()`](#fn-withstate)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.kms_crypto_key_version.new` injects a new `google_kms_crypto_key_version` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.kms_crypto_key_version.new('some_id')

You can get the reference to the `id` field of the created `google.kms_crypto_key_version` using the reference:

    $._ref.google_kms_crypto_key_version.some_id.get('id')

This is the same as directly entering `"${ google_kms_crypto_key_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `crypto_key` (`string`): The name of the cryptoKey associated with the CryptoKeyVersions.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}&#39;&#39;
  - `state` (`string`): The current state of the CryptoKeyVersion. Possible values: [&#34;PENDING_GENERATION&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;, &#34;DESTROYED&#34;, &#34;DESTROY_SCHEDULED&#34;, &#34;PENDING_IMPORT&#34;, &#34;IMPORT_FAILED&#34;] When `null`, the `state` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key_version.timeouts.new](#fn-kmscryptokeyversiontimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.kms_crypto_key_version.newAttrs` constructs a new object with attributes and blocks configured for the `kms_crypto_key_version`
Terraform resource.

Unlike [google.kms_crypto_key_version.new](#fn-kmscryptokeyversionnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `crypto_key` (`string`): The name of the cryptoKey associated with the CryptoKeyVersions.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}&#39;&#39;
  - `state` (`string`): The current state of the CryptoKeyVersion. Possible values: [&#34;PENDING_GENERATION&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;, &#34;DESTROYED&#34;, &#34;DESTROY_SCHEDULED&#34;, &#34;PENDING_IMPORT&#34;, &#34;IMPORT_FAILED&#34;] When `null`, the `state` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key_version.timeouts.new](#fn-kmscryptokeyversiontimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_crypto_key_version` resource into the root Terraform configuration.


### fn withCryptoKey

```ts
withCryptoKey()
```

`google.kms_crypto_key_version.withCryptoKey` constructs a mixin object that can be merged into the `kms_crypto_key_version`
Terraform resource block to set or update the crypto_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `crypto_key` field.


### fn withState

```ts
withState()
```

`google.kms_crypto_key_version.withState` constructs a mixin object that can be merged into the `kms_crypto_key_version`
Terraform resource block to set or update the state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `state` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.kms_crypto_key_version.withTimeouts` constructs a mixin object that can be merged into the `kms_crypto_key_version`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.kms_crypto_key_version.withTimeoutsMixin` constructs a mixin object that can be merged into the `kms_crypto_key_version`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.kms_crypto_key_version.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.kms_crypto_key_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
