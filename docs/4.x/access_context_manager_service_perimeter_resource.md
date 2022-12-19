---
permalink: /access_context_manager_service_perimeter_resource/
---

# access_context_manager_service_perimeter_resource

`access_context_manager_service_perimeter_resource` represents the `google_access_context_manager_service_perimeter_resource` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withPerimeterName()`](#fn-withperimetername)
* [`fn withResource()`](#fn-withresource)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_service_perimeter_resource.new` injects a new `google_access_context_manager_service_perimeter_resource` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_service_perimeter_resource.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_service_perimeter_resource` using the reference:

    $._ref.google_access_context_manager_service_perimeter_resource.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_service_perimeter_resource.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `perimeter_name` (`string`): The name of the Service Perimeter to add this resource to.
  - `resource` (`string`): A GCP resource that is inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number}
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_resource.timeouts.new](#fn-access_context_manager_service_perimeter_resourcetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_service_perimeter_resource.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeter_resource`
Terraform resource.

Unlike [google.access_context_manager_service_perimeter_resource.new](#fn-access_context_manager_service_perimeter_resourcenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `perimeter_name` (`string`): The name of the Service Perimeter to add this resource to.
  - `resource` (`string`): A GCP resource that is inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number}
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_resource.timeouts.new](#fn-access_context_manager_service_perimeter_resourcetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeter_resource` resource into the root Terraform configuration.


### fn withPerimeterName

```ts
withPerimeterName()
```

`google.string.withPerimeterName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the perimeter_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `perimeter_name` field.


### fn withResource

```ts
withResource()
```

`google.string.withResource` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the resource field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `resource` field.


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


`google.access_context_manager_service_perimeter_resource.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
