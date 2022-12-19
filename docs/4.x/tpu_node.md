---
permalink: /tpu_node/
---

# tpu_node

`tpu_node` represents the `google_tpu_node` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAcceleratorType()`](#fn-withacceleratortype)
* [`fn withCidrBlock()`](#fn-withcidrblock)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withSchedulingConfig()`](#fn-withschedulingconfig)
* [`fn withSchedulingConfigMixin()`](#fn-withschedulingconfigmixin)
* [`fn withTensorflowVersion()`](#fn-withtensorflowversion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUseServiceNetworking()`](#fn-withuseservicenetworking)
* [`fn withZone()`](#fn-withzone)
* [`obj scheduling_config`](#obj-scheduling_config)
  * [`fn new()`](#fn-scheduling_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.tpu_node.new` injects a new `google_tpu_node` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.tpu_node.new('some_id')

You can get the reference to the `id` field of the created `google.tpu_node` using the reference:

    $._ref.google_tpu_node.some_id.get('id')

This is the same as directly entering `"${ google_tpu_node.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `accelerator_type` (`string`): The type of hardware accelerators associated with this node.
  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP
address. This CIDR block must be a /29 block; the Compute Engine
networks API forbids a smaller block, and using a larger block would
be wasteful (a node can only consume one IP address).

Errors will occur if the CIDR block has already been used for a
currently existing TPU node, the CIDR block conflicts with any
subnetworks in the user&#39;s provided network, or the provided network
is peered with another network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.
  - `description` (`string`): The user-supplied description of the TPU. Maximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The immutable name of the TPU.
  - `network` (`string`): The name of a network to peer the TPU node to. It must be a
preexisting Compute Engine network inside of the project on which
this API has been activated. If none is provided, &#34;default&#34; will be
used. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `tensorflow_version` (`string`): The version of Tensorflow running in the Node.
  - `use_service_networking` (`bool`): Whether the VPC peering for the node is set up through Service Networking API.
The VPC Peering should be set up before provisioning the node. If this field is set,
cidr_block field should not be specified. If the network that you want to peer the
TPU Node to is a Shared VPC network, the node must be created with this this field enabled. When `null`, the `use_service_networking` field will be omitted from the resulting object.
  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `scheduling_config` (`list[obj]`): Sets the scheduling options for this TPU instance. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.scheduling_config.new](#fn-scheduling_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.tpu_node.newAttrs` constructs a new object with attributes and blocks configured for the `tpu_node`
Terraform resource.

Unlike [google.tpu_node.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `accelerator_type` (`string`): The type of hardware accelerators associated with this node.
  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP
address. This CIDR block must be a /29 block; the Compute Engine
networks API forbids a smaller block, and using a larger block would
be wasteful (a node can only consume one IP address).

Errors will occur if the CIDR block has already been used for a
currently existing TPU node, the CIDR block conflicts with any
subnetworks in the user&#39;s provided network, or the provided network
is peered with another network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.
  - `description` (`string`): The user-supplied description of the TPU. Maximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The immutable name of the TPU.
  - `network` (`string`): The name of a network to peer the TPU node to. It must be a
preexisting Compute Engine network inside of the project on which
this API has been activated. If none is provided, &#34;default&#34; will be
used. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `tensorflow_version` (`string`): The version of Tensorflow running in the Node.
  - `use_service_networking` (`bool`): Whether the VPC peering for the node is set up through Service Networking API.
The VPC Peering should be set up before provisioning the node. If this field is set,
cidr_block field should not be specified. If the network that you want to peer the
TPU Node to is a Shared VPC network, the node must be created with this this field enabled. When `null`, the `use_service_networking` field will be omitted from the resulting object.
  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `scheduling_config` (`list[obj]`): Sets the scheduling options for this TPU instance. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.scheduling_config.new](#fn-scheduling_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `tpu_node` resource into the root Terraform configuration.


### fn withAcceleratorType

```ts
withAcceleratorType()
```

`google.string.withAcceleratorType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the accelerator_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `accelerator_type` field.


### fn withCidrBlock

```ts
withCidrBlock()
```

`google.string.withCidrBlock` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cidr_block field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cidr_block` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSchedulingConfig

```ts
withSchedulingConfig()
```

`google.list[obj].withSchedulingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSchedulingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.


### fn withSchedulingConfigMixin

```ts
withSchedulingConfigMixin()
```

`google.list[obj].withSchedulingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSchedulingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.


### fn withTensorflowVersion

```ts
withTensorflowVersion()
```

`google.string.withTensorflowVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tensorflow_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tensorflow_version` field.


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


### fn withUseServiceNetworking

```ts
withUseServiceNetworking()
```

`google.bool.withUseServiceNetworking` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the use_service_networking field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `use_service_networking` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj scheduling_config



### fn scheduling_config.new

```ts
new()
```


`google.tpu_node.scheduling_config.new` constructs a new object with attributes and blocks configured for the `scheduling_config`
Terraform sub block.



**Args**:
  - `preemptible` (`bool`): Defines whether the TPU instance is preemptible.

**Returns**:
  - An attribute object that represents the `scheduling_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.tpu_node.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
