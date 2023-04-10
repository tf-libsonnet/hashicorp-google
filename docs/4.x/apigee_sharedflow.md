---
permalink: /apigee_sharedflow/
---

# apigee_sharedflow

`apigee_sharedflow` represents the `google_apigee_sharedflow` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfigBundle()`](#fn-withconfigbundle)
* [`fn withDetectMd5Hash()`](#fn-withdetectmd5hash)
* [`fn withName()`](#fn-withname)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_sharedflow.new` injects a new `google_apigee_sharedflow` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_sharedflow.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_sharedflow` using the reference:

    $._ref.google_apigee_sharedflow.some_id.get('id')

This is the same as directly entering `"${ google_apigee_sharedflow.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `config_bundle` (`string`): A path to the config bundle zip you want to upload. Must be defined if content is not.
  - `detect_md5hash` (`string`): A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. When `null`, the `detect_md5hash` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the shared flow.
  - `org_id` (`string`): The Apigee Organization name associated with the Apigee instance.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_sharedflow.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_sharedflow.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_sharedflow`
Terraform resource.

Unlike [google.apigee_sharedflow.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config_bundle` (`string`): A path to the config bundle zip you want to upload. Must be defined if content is not.
  - `detect_md5hash` (`string`): A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. When `null`, the `detect_md5hash` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the shared flow.
  - `org_id` (`string`): The Apigee Organization name associated with the Apigee instance.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_sharedflow.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_sharedflow` resource into the root Terraform configuration.


### fn withConfigBundle

```ts
withConfigBundle()
```

`google.string.withConfigBundle` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the config_bundle field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `config_bundle` field.


### fn withDetectMd5Hash

```ts
withDetectMd5Hash()
```

`google.string.withDetectMd5Hash` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the detect_md5hash field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `detect_md5hash` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


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


`google.apigee_sharedflow.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
