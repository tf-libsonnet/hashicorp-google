---
permalink: /secret_manager_secret_version/
---

# secret_manager_secret_version

`secret_manager_secret_version` represents the `google_secret_manager_secret_version` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withIsSecretDataBase64()`](#fn-withissecretdatabase64)
* [`fn withSecret()`](#fn-withsecret)
* [`fn withSecretData()`](#fn-withsecretdata)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.secret_manager_secret_version.new` injects a new `google_secret_manager_secret_version` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.secret_manager_secret_version.new('some_id')

You can get the reference to the `id` field of the created `google.secret_manager_secret_version` using the reference:

    $._ref.google_secret_manager_secret_version.some_id.get('id')

This is the same as directly entering `"${ google_secret_manager_secret_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `deletion_policy` (`string`): The deletion policy for the secret version. Setting &#39;ABANDON&#39; allows the resource
to be abandoned rather than deleted. Setting &#39;DISABLE&#39; allows the resource to be
disabled rather than deleted. Default is &#39;DELETE&#39;. Possible values are:
  * DELETE
  * DISABLE
  * ABANDON When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `enabled` (`bool`): The current state of the SecretVersion. When `null`, the `enabled` field will be omitted from the resulting object.
  - `is_secret_data_base64` (`bool`): If set to &#39;true&#39;, the secret data is expected to be base64-encoded string and would be sent as is. When `null`, the `is_secret_data_base64` field will be omitted from the resulting object.
  - `secret` (`string`): Secret Manager secret resource
  - `secret_data` (`string`): The secret data. Must be no larger than 64KiB.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret_version.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.secret_manager_secret_version.newAttrs` constructs a new object with attributes and blocks configured for the `secret_manager_secret_version`
Terraform resource.

Unlike [google.secret_manager_secret_version.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deletion_policy` (`string`): The deletion policy for the secret version. Setting &#39;ABANDON&#39; allows the resource
to be abandoned rather than deleted. Setting &#39;DISABLE&#39; allows the resource to be
disabled rather than deleted. Default is &#39;DELETE&#39;. Possible values are:
  * DELETE
  * DISABLE
  * ABANDON When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `enabled` (`bool`): The current state of the SecretVersion. When `null`, the `enabled` field will be omitted from the resulting object.
  - `is_secret_data_base64` (`bool`): If set to &#39;true&#39;, the secret data is expected to be base64-encoded string and would be sent as is. When `null`, the `is_secret_data_base64` field will be omitted from the resulting object.
  - `secret` (`string`): Secret Manager secret resource
  - `secret_data` (`string`): The secret data. Must be no larger than 64KiB.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret_version.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `secret_manager_secret_version` resource into the root Terraform configuration.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withIsSecretDataBase64

```ts
withIsSecretDataBase64()
```

`google.bool.withIsSecretDataBase64` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_secret_data_base64 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_secret_data_base64` field.


### fn withSecret

```ts
withSecret()
```

`google.string.withSecret` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the secret field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `secret` field.


### fn withSecretData

```ts
withSecretData()
```

`google.string.withSecretData` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the secret_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `secret_data` field.


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


`google.secret_manager_secret_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
