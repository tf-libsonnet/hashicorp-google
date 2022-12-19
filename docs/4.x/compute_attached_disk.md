---
permalink: /compute_attached_disk/
---

# compute_attached_disk

`compute_attached_disk` represents the `google_compute_attached_disk` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeviceName()`](#fn-withdevicename)
* [`fn withDisk()`](#fn-withdisk)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withMode()`](#fn-withmode)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_attached_disk.new` injects a new `google_compute_attached_disk` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_attached_disk.new('some_id')

You can get the reference to the `id` field of the created `google.compute_attached_disk` using the reference:

    $._ref.google_compute_attached_disk.some_id.get('id')

This is the same as directly entering `"${ google_compute_attached_disk.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `device_name` (`string`): Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disks-x, where x is a number assigned by Google Compute Engine. When `null`, the `device_name` field will be omitted from the resulting object.
  - `disk` (`string`): name or self_link of the disk that will be attached.
  - `instance` (`string`): name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider.
  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. When `null`, the `mode` field will be omitted from the resulting object.
  - `project` (`string`): The project that the referenced compute instance is a part of. If instance is referenced by its self_link the project defined in the link will take precedence. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): The zone that the referenced compute instance is located within. If instance is referenced by its self_link the zone defined in the link will take precedence. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_attached_disk.timeouts.new](#fn-computeattacheddisktimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_attached_disk.newAttrs` constructs a new object with attributes and blocks configured for the `compute_attached_disk`
Terraform resource.

Unlike [google.compute_attached_disk.new](#fn-computeattacheddisknew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `device_name` (`string`): Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disks-x, where x is a number assigned by Google Compute Engine. When `null`, the `device_name` field will be omitted from the resulting object.
  - `disk` (`string`): name or self_link of the disk that will be attached.
  - `instance` (`string`): name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider.
  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. When `null`, the `mode` field will be omitted from the resulting object.
  - `project` (`string`): The project that the referenced compute instance is a part of. If instance is referenced by its self_link the project defined in the link will take precedence. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): The zone that the referenced compute instance is located within. If instance is referenced by its self_link the zone defined in the link will take precedence. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_attached_disk.timeouts.new](#fn-computeattacheddisktimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_attached_disk` resource into the root Terraform configuration.


### fn withDeviceName

```ts
withDeviceName()
```

`google.string.withDeviceName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the device_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `device_name` field.


### fn withDisk

```ts
withDisk()
```

`google.string.withDisk` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `disk` field.


### fn withInstance

```ts
withInstance()
```

`google.string.withInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance` field.


### fn withMode

```ts
withMode()
```

`google.string.withMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `mode` field.


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


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_attached_disk.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
