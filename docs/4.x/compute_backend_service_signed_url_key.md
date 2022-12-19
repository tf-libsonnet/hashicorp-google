---
permalink: /compute_backend_service_signed_url_key/
---

# compute_backend_service_signed_url_key

`compute_backend_service_signed_url_key` represents the `google_compute_backend_service_signed_url_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackendService()`](#fn-withbackendservice)
* [`fn withKeyValue()`](#fn-withkeyvalue)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_backend_service_signed_url_key.new` injects a new `google_compute_backend_service_signed_url_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_backend_service_signed_url_key.new('some_id')

You can get the reference to the `id` field of the created `google.compute_backend_service_signed_url_key` using the reference:

    $._ref.google_compute_backend_service_signed_url_key.some_id.get('id')

This is the same as directly entering `"${ google_compute_backend_service_signed_url_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `backend_service` (`string`): The backend service this signed URL key belongs.
  - `key_value` (`string`): 128-bit key value used for signing the URL. The key value must be a
valid RFC 4648 Section 5 base64url encoded string.
  - `name` (`string`): Name of the signed URL key.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_service_signed_url_key.timeouts.new](#fn-computebackendservicesignedurlkeytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_backend_service_signed_url_key.newAttrs` constructs a new object with attributes and blocks configured for the `compute_backend_service_signed_url_key`
Terraform resource.

Unlike [google.compute_backend_service_signed_url_key.new](#fn-computebackendservicesignedurlkeynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `backend_service` (`string`): The backend service this signed URL key belongs.
  - `key_value` (`string`): 128-bit key value used for signing the URL. The key value must be a
valid RFC 4648 Section 5 base64url encoded string.
  - `name` (`string`): Name of the signed URL key.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_service_signed_url_key.timeouts.new](#fn-computebackendservicesignedurlkeytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_backend_service_signed_url_key` resource into the root Terraform configuration.


### fn withBackendService

```ts
withBackendService()
```

`google.string.withBackendService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the backend_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `backend_service` field.


### fn withKeyValue

```ts
withKeyValue()
```

`google.string.withKeyValue` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key_value field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key_value` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


`google.compute_backend_service_signed_url_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
