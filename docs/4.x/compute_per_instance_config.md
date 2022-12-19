---
permalink: /compute_per_instance_config/
---

# compute_per_instance_config

`compute_per_instance_config` represents the `google_compute_per_instance_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withInstanceGroupManager()`](#fn-withinstancegroupmanager)
* [`fn withMinimalAction()`](#fn-withminimalaction)
* [`fn withMostDisruptiveAllowedAction()`](#fn-withmostdisruptiveallowedaction)
* [`fn withName()`](#fn-withname)
* [`fn withPreservedState()`](#fn-withpreservedstate)
* [`fn withPreservedStateMixin()`](#fn-withpreservedstatemixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRemoveInstanceStateOnDestroy()`](#fn-withremoveinstancestateondestroy)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj preserved_state`](#obj-preserved_state)
  * [`fn new()`](#fn-preserved_statenew)
  * [`obj preserved_state.disk`](#obj-preserved_statedisk)
    * [`fn new()`](#fn-preserved_statedisknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_per_instance_config.new` injects a new `google_compute_per_instance_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_per_instance_config.new('some_id')

You can get the reference to the `id` field of the created `google.compute_per_instance_config` using the reference:

    $._ref.google_compute_per_instance_config.some_id.get('id')

This is the same as directly entering `"${ google_compute_per_instance_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `instance_group_manager` (`string`): The instance group manager this instance config is part of.
  - `minimal_action` (`string`): The minimal action to perform on the instance during an update.
Default is &#39;NONE&#39;. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE When `null`, the `minimal_action` field will be omitted from the resulting object.
  - `most_disruptive_allowed_action` (`string`): The most disruptive action to perform on the instance during an update.
Default is &#39;REPLACE&#39;. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE When `null`, the `most_disruptive_allowed_action` field will be omitted from the resulting object.
  - `name` (`string`): The name for this per-instance config and its corresponding instance.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `remove_instance_state_on_destroy` (`bool`): When true, deleting this config will immediately remove any specified state from the underlying instance.
When false, deleting this config will *not* immediately remove any state from the underlying instance.
State will be removed on the next instance recreation or update. When `null`, the `remove_instance_state_on_destroy` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the containing instance group manager is located When `null`, the `zone` field will be omitted from the resulting object.
  - `preserved_state` (`list[obj]`): The preserved state for this instance. When `null`, the `preserved_state` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.preserved_state.new](#fn-preserved_statenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_per_instance_config.newAttrs` constructs a new object with attributes and blocks configured for the `compute_per_instance_config`
Terraform resource.

Unlike [google.compute_per_instance_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `instance_group_manager` (`string`): The instance group manager this instance config is part of.
  - `minimal_action` (`string`): The minimal action to perform on the instance during an update.
Default is &#39;NONE&#39;. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE When `null`, the `minimal_action` field will be omitted from the resulting object.
  - `most_disruptive_allowed_action` (`string`): The most disruptive action to perform on the instance during an update.
Default is &#39;REPLACE&#39;. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE When `null`, the `most_disruptive_allowed_action` field will be omitted from the resulting object.
  - `name` (`string`): The name for this per-instance config and its corresponding instance.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `remove_instance_state_on_destroy` (`bool`): When true, deleting this config will immediately remove any specified state from the underlying instance.
When false, deleting this config will *not* immediately remove any state from the underlying instance.
State will be removed on the next instance recreation or update. When `null`, the `remove_instance_state_on_destroy` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the containing instance group manager is located When `null`, the `zone` field will be omitted from the resulting object.
  - `preserved_state` (`list[obj]`): The preserved state for this instance. When `null`, the `preserved_state` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.preserved_state.new](#fn-preserved_statenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_per_instance_config` resource into the root Terraform configuration.


### fn withInstanceGroupManager

```ts
withInstanceGroupManager()
```

`google.string.withInstanceGroupManager` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_group_manager field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_group_manager` field.


### fn withMinimalAction

```ts
withMinimalAction()
```

`google.string.withMinimalAction` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the minimal_action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `minimal_action` field.


### fn withMostDisruptiveAllowedAction

```ts
withMostDisruptiveAllowedAction()
```

`google.string.withMostDisruptiveAllowedAction` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the most_disruptive_allowed_action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `most_disruptive_allowed_action` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPreservedState

```ts
withPreservedState()
```

`google.list[obj].withPreservedState` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the preserved_state field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPreservedStateMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `preserved_state` field.


### fn withPreservedStateMixin

```ts
withPreservedStateMixin()
```

`google.list[obj].withPreservedStateMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the preserved_state field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPreservedState](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `preserved_state` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRemoveInstanceStateOnDestroy

```ts
withRemoveInstanceStateOnDestroy()
```

`google.bool.withRemoveInstanceStateOnDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the remove_instance_state_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `remove_instance_state_on_destroy` field.


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


## obj preserved_state



### fn preserved_state.new

```ts
new()
```


`google.compute_per_instance_config.preserved_state.new` constructs a new object with attributes and blocks configured for the `preserved_state`
Terraform sub block.



**Args**:
  - `metadata` (`obj`): Preserved metadata defined for this instance. This is a list of key-&gt;value pairs. When `null`, the `metadata` field will be omitted from the resulting object.
  - `disk` (`list[obj]`): Stateful disks for the instance. When `null`, the `disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.preserved_state.disk.new](#fn-disknew) constructor.

**Returns**:
  - An attribute object that represents the `preserved_state` sub block.


## obj preserved_state.disk



### fn preserved_state.disk.new

```ts
new()
```


`google.compute_per_instance_config.preserved_state.disk.new` constructs a new object with attributes and blocks configured for the `disk`
Terraform sub block.



**Args**:
  - `delete_rule` (`string`): A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
The available options are &#39;NEVER&#39; and &#39;ON_PERMANENT_INSTANCE_DELETION&#39;.
&#39;NEVER&#39; - detach the disk when the VM is deleted, but do not delete the disk.
&#39;ON_PERMANENT_INSTANCE_DELETION&#39; will delete the stateful disk when the VM is permanently
deleted from the instance group. Default value: &#34;NEVER&#34; Possible values: [&#34;NEVER&#34;, &#34;ON_PERMANENT_INSTANCE_DELETION&#34;] When `null`, the `delete_rule` field will be omitted from the resulting object.
  - `device_name` (`string`): A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.
  - `mode` (`string`): The mode of the disk. Default value: &#34;READ_WRITE&#34; Possible values: [&#34;READ_ONLY&#34;, &#34;READ_WRITE&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `source` (`string`): The URI of an existing persistent disk to attach under the specified device-name in the format
&#39;projects/project-id/zones/zone/disks/disk-name&#39;.

**Returns**:
  - An attribute object that represents the `disk` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_per_instance_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
