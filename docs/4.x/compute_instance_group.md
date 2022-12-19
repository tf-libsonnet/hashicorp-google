---
permalink: /compute_instance_group/
---

# compute_instance_group

`compute_instance_group` represents the `google_compute_instance_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInstances()`](#fn-withinstances)
* [`fn withName()`](#fn-withname)
* [`fn withNamedPort()`](#fn-withnamedport)
* [`fn withNamedPortMixin()`](#fn-withnamedportmixin)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj named_port`](#obj-named_port)
  * [`fn new()`](#fn-named_portnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_instance_group.new` injects a new `google_compute_instance_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_instance_group.new('some_id')

You can get the reference to the `id` field of the created `google.compute_instance_group` using the reference:

    $._ref.google_compute_instance_group.some_id.get('id')

This is the same as directly entering `"${ google_compute_instance_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional textual description of the instance group. When `null`, the `description` field will be omitted from the resulting object.
  - `instances` (`list`): The list of instances in the group, in self_link format. When adding instances they must all be in the same network and zone as the instance group. When `null`, the `instances` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.
  - `network` (`string`): The URL of the network the instance group is in. If this is different from the network where the instances are in, the creation fails. Defaults to the network where the instances are in (if neither network nor instances is specified, this field will be blank). When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): The zone that this instance group should be created in. When `null`, the `zone` field will be omitted from the resulting object.
  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.named_port.new](#fn-computeinstancegroupnamedportnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.timeouts.new](#fn-computeinstancegrouptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_instance_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_group`
Terraform resource.

Unlike [google.compute_instance_group.new](#fn-computeinstancegroupnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional textual description of the instance group. When `null`, the `description` field will be omitted from the resulting object.
  - `instances` (`list`): The list of instances in the group, in self_link format. When adding instances they must all be in the same network and zone as the instance group. When `null`, the `instances` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.
  - `network` (`string`): The URL of the network the instance group is in. If this is different from the network where the instances are in, the creation fails. Defaults to the network where the instances are in (if neither network nor instances is specified, this field will be blank). When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): The zone that this instance group should be created in. When `null`, the `zone` field will be omitted from the resulting object.
  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.named_port.new](#fn-computeinstancegroupnamedportnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.timeouts.new](#fn-computeinstancegrouptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_instance_group` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.compute_instance_group.withDescription` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withInstances

```ts
withInstances()
```

`google.compute_instance_group.withInstances` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `instances` field.


### fn withName

```ts
withName()
```

`google.compute_instance_group.withName` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNamedPort

```ts
withNamedPort()
```

`google.compute_instance_group.withNamedPort` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the named_port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `named_port` field.


### fn withNamedPortMixin

```ts
withNamedPortMixin()
```

`google.compute_instance_group.withNamedPortMixin` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the named_port field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_instance_group.withNamedPort](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `named_port` field.


### fn withNetwork

```ts
withNetwork()
```

`google.compute_instance_group.withNetwork` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withProject

```ts
withProject()
```

`google.compute_instance_group.withProject` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_instance_group.withTimeouts` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_instance_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_instance_group.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withZone

```ts
withZone()
```

`google.compute_instance_group.withZone` constructs a mixin object that can be merged into the `compute_instance_group`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.


## obj named_port



### fn named_port.new

```ts
new()
```


`google.compute_instance_group.named_port.new` constructs a new object with attributes and blocks configured for the `named_port`
Terraform sub block.



**Args**:
  - `name` (`string`): The name which the port will be mapped to.
  - `port` (`number`): The port number to map the name to.

**Returns**:
  - An attribute object that represents the `named_port` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_instance_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
