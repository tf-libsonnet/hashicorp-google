---
permalink: /compute_disk_async_replication/
---

# compute_disk_async_replication

`compute_disk_async_replication` represents the `google_compute_disk_async_replication` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withPrimaryDisk()`](#fn-withprimarydisk)
* [`fn withSecondaryDisk()`](#fn-withsecondarydisk)
* [`fn withSecondaryDiskMixin()`](#fn-withsecondarydiskmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj secondary_disk`](#obj-secondary_disk)
  * [`fn new()`](#fn-secondary_disknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_disk_async_replication.new` injects a new `google_compute_disk_async_replication` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_disk_async_replication.new('some_id')

You can get the reference to the `id` field of the created `google.compute_disk_async_replication` using the reference:

    $._ref.google_compute_disk_async_replication.some_id.get('id')

This is the same as directly entering `"${ google_compute_disk_async_replication.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `primary_disk` (`string`): Primary disk for asynchronous replication.
  - `secondary_disk` (`list[obj]`): Secondary disk for asynchronous replication. When `null`, the `secondary_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.secondary_disk.new](#fn-secondary_disknew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_disk_async_replication.newAttrs` constructs a new object with attributes and blocks configured for the `compute_disk_async_replication`
Terraform resource.

Unlike [google.compute_disk_async_replication.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `primary_disk` (`string`): Primary disk for asynchronous replication.
  - `secondary_disk` (`list[obj]`): Secondary disk for asynchronous replication. When `null`, the `secondary_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.secondary_disk.new](#fn-secondary_disknew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_disk_async_replication` resource into the root Terraform configuration.


### fn withPrimaryDisk

```ts
withPrimaryDisk()
```

`google.string.withPrimaryDisk` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the primary_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `primary_disk` field.


### fn withSecondaryDisk

```ts
withSecondaryDisk()
```

`google.list[obj].withSecondaryDisk` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secondary_disk field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSecondaryDiskMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secondary_disk` field.


### fn withSecondaryDiskMixin

```ts
withSecondaryDiskMixin()
```

`google.list[obj].withSecondaryDiskMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secondary_disk field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSecondaryDisk](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secondary_disk` field.


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


## obj secondary_disk



### fn secondary_disk.new

```ts
new()
```


`google.compute_disk_async_replication.secondary_disk.new` constructs a new object with attributes and blocks configured for the `secondary_disk`
Terraform sub block.



**Args**:
  - `disk` (`string`): Secondary disk for asynchronous replication.

**Returns**:
  - An attribute object that represents the `secondary_disk` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_disk_async_replication.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
