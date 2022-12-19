---
permalink: /compute_node_template/
---

# compute_node_template

`compute_node_template` represents the `google_compute_node_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCpuOvercommitType()`](#fn-withcpuovercommittype)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withNodeAffinityLabels()`](#fn-withnodeaffinitylabels)
* [`fn withNodeType()`](#fn-withnodetype)
* [`fn withNodeTypeFlexibility()`](#fn-withnodetypeflexibility)
* [`fn withNodeTypeFlexibilityMixin()`](#fn-withnodetypeflexibilitymixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withServerBinding()`](#fn-withserverbinding)
* [`fn withServerBindingMixin()`](#fn-withserverbindingmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj node_type_flexibility`](#obj-node_type_flexibility)
  * [`fn new()`](#fn-node_type_flexibilitynew)
* [`obj server_binding`](#obj-server_binding)
  * [`fn new()`](#fn-server_bindingnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_node_template.new` injects a new `google_compute_node_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_node_template.new('some_id')

You can get the reference to the `id` field of the created `google.compute_node_template` using the reference:

    $._ref.google_compute_node_template.some_id.get('id')

This is the same as directly entering `"${ google_compute_node_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cpu_overcommit_type` (`string`): CPU overcommit. Default value: &#34;NONE&#34; Possible values: [&#34;ENABLED&#34;, &#34;NONE&#34;] When `null`, the `cpu_overcommit_type` field will be omitted from the resulting object.
  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.
  - `node_affinity_labels` (`obj`): Labels to use for node affinity, which will be used in
instance scheduling. When `null`, the `node_affinity_labels` field will be omitted from the resulting object.
  - `node_type` (`string`): Node type to use for nodes group that are created from this template.
Only one of nodeTypeFlexibility and nodeType can be specified. When `null`, the `node_type` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where nodes using the node template will be created.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `node_type_flexibility` (`list[obj]`): Flexible properties for the desired node type. Node groups that
use this node template will create nodes of a type that matches
these properties. Only one of nodeTypeFlexibility and nodeType can
be specified. When `null`, the `node_type_flexibility` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.node_type_flexibility.new](#fn-computenodetemplatenodetypeflexibilitynew) constructor.
  - `server_binding` (`list[obj]`): The server binding policy for nodes using this template. Determines
where the nodes should restart following a maintenance event. When `null`, the `server_binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.server_binding.new](#fn-computenodetemplateserverbindingnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.timeouts.new](#fn-computenodetemplatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_node_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_node_template`
Terraform resource.

Unlike [google.compute_node_template.new](#fn-computenodetemplatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cpu_overcommit_type` (`string`): CPU overcommit. Default value: &#34;NONE&#34; Possible values: [&#34;ENABLED&#34;, &#34;NONE&#34;] When `null`, the `cpu_overcommit_type` field will be omitted from the resulting object.
  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.
  - `node_affinity_labels` (`obj`): Labels to use for node affinity, which will be used in
instance scheduling. When `null`, the `node_affinity_labels` field will be omitted from the resulting object.
  - `node_type` (`string`): Node type to use for nodes group that are created from this template.
Only one of nodeTypeFlexibility and nodeType can be specified. When `null`, the `node_type` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where nodes using the node template will be created.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `node_type_flexibility` (`list[obj]`): Flexible properties for the desired node type. Node groups that
use this node template will create nodes of a type that matches
these properties. Only one of nodeTypeFlexibility and nodeType can
be specified. When `null`, the `node_type_flexibility` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.node_type_flexibility.new](#fn-computenodetemplatenodetypeflexibilitynew) constructor.
  - `server_binding` (`list[obj]`): The server binding policy for nodes using this template. Determines
where the nodes should restart following a maintenance event. When `null`, the `server_binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.server_binding.new](#fn-computenodetemplateserverbindingnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.timeouts.new](#fn-computenodetemplatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_node_template` resource into the root Terraform configuration.


### fn withCpuOvercommitType

```ts
withCpuOvercommitType()
```

`google.string.withCpuOvercommitType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cpu_overcommit_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cpu_overcommit_type` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodeAffinityLabels

```ts
withNodeAffinityLabels()
```

`google.obj.withNodeAffinityLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the node_affinity_labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `node_affinity_labels` field.


### fn withNodeType

```ts
withNodeType()
```

`google.string.withNodeType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the node_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `node_type` field.


### fn withNodeTypeFlexibility

```ts
withNodeTypeFlexibility()
```

`google.list[obj].withNodeTypeFlexibility` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_type_flexibility field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeTypeFlexibilityMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_type_flexibility` field.


### fn withNodeTypeFlexibilityMixin

```ts
withNodeTypeFlexibilityMixin()
```

`google.list[obj].withNodeTypeFlexibilityMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_type_flexibility field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeTypeFlexibility](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_type_flexibility` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withServerBinding

```ts
withServerBinding()
```

`google.list[obj].withServerBinding` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the server_binding field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withServerBindingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `server_binding` field.


### fn withServerBindingMixin

```ts
withServerBindingMixin()
```

`google.list[obj].withServerBindingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the server_binding field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withServerBinding](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `server_binding` field.


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


## obj node_type_flexibility



### fn node_type_flexibility.new

```ts
new()
```


`google.compute_node_template.node_type_flexibility.new` constructs a new object with attributes and blocks configured for the `node_type_flexibility`
Terraform sub block.



**Args**:
  - `cpus` (`string`): Number of virtual CPUs to use. When `null`, the `cpus` field will be omitted from the resulting object.
  - `memory` (`string`): Physical memory available to the node, defined in MB. When `null`, the `memory` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_type_flexibility` sub block.


## obj server_binding



### fn server_binding.new

```ts
new()
```


`google.compute_node_template.server_binding.new` constructs a new object with attributes and blocks configured for the `server_binding`
Terraform sub block.



**Args**:
  - `type` (`string`): Type of server binding policy. If &#39;RESTART_NODE_ON_ANY_SERVER&#39;,
nodes using this template will restart on any physical server
following a maintenance event.

If &#39;RESTART_NODE_ON_MINIMAL_SERVER&#39;, nodes using this template
will restart on the same physical server following a maintenance
event, instead of being live migrated to or restarted on a new
physical server. This option may be useful if you are using
software licenses tied to the underlying server characteristics
such as physical sockets or cores, to avoid the need for
additional licenses when maintenance occurs. However, VMs on such
nodes will experience outages while maintenance is applied. Possible values: [&#34;RESTART_NODE_ON_ANY_SERVER&#34;, &#34;RESTART_NODE_ON_MINIMAL_SERVERS&#34;]

**Returns**:
  - An attribute object that represents the `server_binding` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_node_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
