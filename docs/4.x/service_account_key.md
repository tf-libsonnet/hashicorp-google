---
permalink: /service_account_key/
---

# service_account_key

`service_account_key` represents the `google_service_account_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withKeepers()`](#fn-withkeepers)
* [`fn withKeyAlgorithm()`](#fn-withkeyalgorithm)
* [`fn withPrivateKeyType()`](#fn-withprivatekeytype)
* [`fn withPublicKeyData()`](#fn-withpublickeydata)
* [`fn withPublicKeyType()`](#fn-withpublickeytype)
* [`fn withServiceAccountId()`](#fn-withserviceaccountid)

## Fields

### fn new

```ts
new()
```


`google.service_account_key.new` injects a new `google_service_account_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.service_account_key.new('some_id')

You can get the reference to the `id` field of the created `google.service_account_key` using the reference:

    $._ref.google_service_account_key.some_id.get('id')

This is the same as directly entering `"${ google_service_account_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `keepers` (`obj`): Arbitrary map of values that, when changed, will trigger recreation of resource. When `null`, the `keepers` field will be omitted from the resulting object.
  - `key_algorithm` (`string`): The algorithm used to generate the key, used only on create. KEY_ALG_RSA_2048 is the default algorithm. Valid values are: &#34;KEY_ALG_RSA_1024&#34;, &#34;KEY_ALG_RSA_2048&#34;. When `null`, the `key_algorithm` field will be omitted from the resulting object.
  - `private_key_type` (`string`):  When `null`, the `private_key_type` field will be omitted from the resulting object.
  - `public_key_data` (`string`): A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is a base64 encoded X509_PEM. When `null`, the `public_key_data` field will be omitted from the resulting object.
  - `public_key_type` (`string`):  When `null`, the `public_key_type` field will be omitted from the resulting object.
  - `service_account_id` (`string`): The ID of the parent service account of the key. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the provider&#39;s configuration.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.service_account_key.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_key`
Terraform resource.

Unlike [google.service_account_key.new](#fn-service_account_keynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `keepers` (`obj`): Arbitrary map of values that, when changed, will trigger recreation of resource. When `null`, the `keepers` field will be omitted from the resulting object.
  - `key_algorithm` (`string`): The algorithm used to generate the key, used only on create. KEY_ALG_RSA_2048 is the default algorithm. Valid values are: &#34;KEY_ALG_RSA_1024&#34;, &#34;KEY_ALG_RSA_2048&#34;. When `null`, the `key_algorithm` field will be omitted from the resulting object.
  - `private_key_type` (`string`):  When `null`, the `private_key_type` field will be omitted from the resulting object.
  - `public_key_data` (`string`): A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is a base64 encoded X509_PEM. When `null`, the `public_key_data` field will be omitted from the resulting object.
  - `public_key_type` (`string`):  When `null`, the `public_key_type` field will be omitted from the resulting object.
  - `service_account_id` (`string`): The ID of the parent service account of the key. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the provider&#39;s configuration.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_account_key` resource into the root Terraform configuration.


### fn withKeepers

```ts
withKeepers()
```

`google.obj.withKeepers` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the keepers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `keepers` field.


### fn withKeyAlgorithm

```ts
withKeyAlgorithm()
```

`google.string.withKeyAlgorithm` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key_algorithm field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key_algorithm` field.


### fn withPrivateKeyType

```ts
withPrivateKeyType()
```

`google.string.withPrivateKeyType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the private_key_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `private_key_type` field.


### fn withPublicKeyData

```ts
withPublicKeyData()
```

`google.string.withPublicKeyData` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the public_key_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `public_key_data` field.


### fn withPublicKeyType

```ts
withPublicKeyType()
```

`google.string.withPublicKeyType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the public_key_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `public_key_type` field.


### fn withServiceAccountId

```ts
withServiceAccountId()
```

`google.string.withServiceAccountId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account_id` field.
