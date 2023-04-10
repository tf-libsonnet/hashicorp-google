---
permalink: /apigee_keystores_aliases_pkcs12/
---

# apigee_keystores_aliases_pkcs12

`apigee_keystores_aliases_pkcs12` represents the `google_apigee_keystores_aliases_pkcs12` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlias()`](#fn-withalias)
* [`fn withEnvironment()`](#fn-withenvironment)
* [`fn withFile()`](#fn-withfile)
* [`fn withFilehash()`](#fn-withfilehash)
* [`fn withKeystore()`](#fn-withkeystore)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_keystores_aliases_pkcs12.new` injects a new `google_apigee_keystores_aliases_pkcs12` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_keystores_aliases_pkcs12.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_keystores_aliases_pkcs12` using the reference:

    $._ref.google_apigee_keystores_aliases_pkcs12.some_id.get('id')

This is the same as directly entering `"${ google_apigee_keystores_aliases_pkcs12.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `alias` (`string`): Alias Name
  - `environment` (`string`): Environment associated with the alias
  - `file` (`string`): Cert content
  - `filehash` (`string`): Hash of the pkcs file
  - `keystore` (`string`): Keystore Name
  - `org_id` (`string`): Organization ID associated with the alias
  - `password` (`string`): Password for the Private Key if it&#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_pkcs12.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_keystores_aliases_pkcs12.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_keystores_aliases_pkcs12`
Terraform resource.

Unlike [google.apigee_keystores_aliases_pkcs12.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `alias` (`string`): Alias Name
  - `environment` (`string`): Environment associated with the alias
  - `file` (`string`): Cert content
  - `filehash` (`string`): Hash of the pkcs file
  - `keystore` (`string`): Keystore Name
  - `org_id` (`string`): Organization ID associated with the alias
  - `password` (`string`): Password for the Private Key if it&#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_pkcs12.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_keystores_aliases_pkcs12` resource into the root Terraform configuration.


### fn withAlias

```ts
withAlias()
```

`google.string.withAlias` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the alias field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `alias` field.


### fn withEnvironment

```ts
withEnvironment()
```

`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the environment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `environment` field.


### fn withFile

```ts
withFile()
```

`google.string.withFile` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the file field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `file` field.


### fn withFilehash

```ts
withFilehash()
```

`google.string.withFilehash` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filehash field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filehash` field.


### fn withKeystore

```ts
withKeystore()
```

`google.string.withKeystore` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the keystore field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `keystore` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withPassword

```ts
withPassword()
```

`google.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


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


`google.apigee_keystores_aliases_pkcs12.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
