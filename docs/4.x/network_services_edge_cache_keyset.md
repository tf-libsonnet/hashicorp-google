---
permalink: /network_services_edge_cache_keyset/
---

# network_services_edge_cache_keyset

`network_services_edge_cache_keyset` represents the `google_network_services_edge_cache_keyset` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPublicKey()`](#fn-withpublickey)
* [`fn withPublicKeyMixin()`](#fn-withpublickeymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withValidationSharedKeys()`](#fn-withvalidationsharedkeys)
* [`fn withValidationSharedKeysMixin()`](#fn-withvalidationsharedkeysmixin)
* [`obj public_key`](#obj-public_key)
  * [`fn new()`](#fn-public_keynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj validation_shared_keys`](#obj-validation_shared_keys)
  * [`fn new()`](#fn-validation_shared_keysnew)

## Fields

### fn new

```ts
new()
```


`google.network_services_edge_cache_keyset.new` injects a new `google_network_services_edge_cache_keyset` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_services_edge_cache_keyset.new('some_id')

You can get the reference to the `id` field of the created `google.network_services_edge_cache_keyset` using the reference:

    $._ref.google_network_services_edge_cache_keyset.some_id.get('id')

This is the same as directly entering `"${ google_network_services_edge_cache_keyset.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `public_key` (`list[obj]`): An ordered list of Ed25519 public keys to use for validating signed requests.
You must specify &#39;public_keys&#39; or &#39;validation_shared_keys&#39; (or both). The keys in &#39;public_keys&#39; are checked first.
You may specify no more than one Google-managed public key.
If you specify &#39;public_keys&#39;, you must specify at least one (1) key and may specify up to three (3) keys.

Ed25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.
Ensure that the private key is kept secret, and that only authorized users can add public keys to a keyset. When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_keyset.public_key.new](#fn-networkservicesedgecachekeysetpublickeynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_keyset.timeouts.new](#fn-networkservicesedgecachekeysettimeoutsnew) constructor.
  - `validation_shared_keys` (`list[obj]`): An ordered list of shared keys to use for validating signed requests.
Shared keys are secret.  Ensure that only authorized users can add &#39;validation_shared_keys&#39; to a keyset.
You can rotate keys by appending (pushing) a new key to the list of &#39;validation_shared_keys&#39; and removing any superseded keys.
You must specify &#39;public_keys&#39; or &#39;validation_shared_keys&#39; (or both). The keys in &#39;public_keys&#39; are checked first. When `null`, the `validation_shared_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_keyset.validation_shared_keys.new](#fn-networkservicesedgecachekeysetvalidationsharedkeysnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_services_edge_cache_keyset.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_edge_cache_keyset`
Terraform resource.

Unlike [google.network_services_edge_cache_keyset.new](#fn-networkservicesedgecachekeysetnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the EdgeCache resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `public_key` (`list[obj]`): An ordered list of Ed25519 public keys to use for validating signed requests.
You must specify &#39;public_keys&#39; or &#39;validation_shared_keys&#39; (or both). The keys in &#39;public_keys&#39; are checked first.
You may specify no more than one Google-managed public key.
If you specify &#39;public_keys&#39;, you must specify at least one (1) key and may specify up to three (3) keys.

Ed25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.
Ensure that the private key is kept secret, and that only authorized users can add public keys to a keyset. When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_keyset.public_key.new](#fn-networkservicesedgecachekeysetpublickeynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_keyset.timeouts.new](#fn-networkservicesedgecachekeysettimeoutsnew) constructor.
  - `validation_shared_keys` (`list[obj]`): An ordered list of shared keys to use for validating signed requests.
Shared keys are secret.  Ensure that only authorized users can add &#39;validation_shared_keys&#39; to a keyset.
You can rotate keys by appending (pushing) a new key to the list of &#39;validation_shared_keys&#39; and removing any superseded keys.
You must specify &#39;public_keys&#39; or &#39;validation_shared_keys&#39; (or both). The keys in &#39;public_keys&#39; are checked first. When `null`, the `validation_shared_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_edge_cache_keyset.validation_shared_keys.new](#fn-networkservicesedgecachekeysetvalidationsharedkeysnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_edge_cache_keyset` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.network_services_edge_cache_keyset.withDescription` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.network_services_edge_cache_keyset.withLabels` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.network_services_edge_cache_keyset.withName` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.network_services_edge_cache_keyset.withProject` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withPublicKey

```ts
withPublicKey()
```

`google.network_services_edge_cache_keyset.withPublicKey` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the public_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `public_key` field.


### fn withPublicKeyMixin

```ts
withPublicKeyMixin()
```

`google.network_services_edge_cache_keyset.withPublicKeyMixin` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the public_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.network_services_edge_cache_keyset.withPublicKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `public_key` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.network_services_edge_cache_keyset.withTimeouts` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.network_services_edge_cache_keyset.withTimeoutsMixin` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.network_services_edge_cache_keyset.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withValidationSharedKeys

```ts
withValidationSharedKeys()
```

`google.network_services_edge_cache_keyset.withValidationSharedKeys` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the validation_shared_keys field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `validation_shared_keys` field.


### fn withValidationSharedKeysMixin

```ts
withValidationSharedKeysMixin()
```

`google.network_services_edge_cache_keyset.withValidationSharedKeysMixin` constructs a mixin object that can be merged into the `network_services_edge_cache_keyset`
Terraform resource block to set or update the validation_shared_keys field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.network_services_edge_cache_keyset.withValidationSharedKeys](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `validation_shared_keys` field.


## obj public_key



### fn public_key.new

```ts
new()
```


`google.network_services_edge_cache_keyset.public_key.new` constructs a new object with attributes and blocks configured for the `public_key`
Terraform sub block.



**Args**:
  - `managed` (`bool`): Set to true to have the CDN automatically manage this public key value. When `null`, the `managed` field will be omitted from the resulting object.
  - `value` (`string`): The base64-encoded value of the Ed25519 public key. The base64 encoding can be padded (44 bytes) or unpadded (43 bytes).
Representations or encodings of the public key other than this will be rejected with an error. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `public_key` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_services_edge_cache_keyset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj validation_shared_keys



### fn validation_shared_keys.new

```ts
new()
```


`google.network_services_edge_cache_keyset.validation_shared_keys.new` constructs a new object with attributes and blocks configured for the `validation_shared_keys`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The name of the secret version in Secret Manager.

The resource name of the secret version must be in the format &#39;projects/*/secrets/*/versions/*&#39; where the &#39;*&#39; values are replaced by the secrets themselves.
The secrets must be at least 16 bytes large.  The recommended secret size depends on the signature algorithm you are using.
* If you are using HMAC-SHA1, we suggest 20-byte secrets.
* If you are using HMAC-SHA256, we suggest 32-byte secrets.
See RFC 2104, Section 3 for more details on these recommendations.

**Returns**:
  - An attribute object that represents the `validation_shared_keys` sub block.
