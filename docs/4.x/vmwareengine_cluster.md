---
permalink: /vmwareengine_cluster/
---

# vmwareengine_cluster

`vmwareengine_cluster` represents the `google_vmwareengine_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withNodeTypeConfigs()`](#fn-withnodetypeconfigs)
* [`fn withNodeTypeConfigsMixin()`](#fn-withnodetypeconfigsmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj node_type_configs`](#obj-node_type_configs)
  * [`fn new()`](#fn-node_type_configsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vmwareengine_cluster.new` injects a new `google_vmwareengine_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vmwareengine_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.vmwareengine_cluster` using the reference:

    $._ref.google_vmwareengine_cluster.some_id.get('id')

This is the same as directly entering `"${ google_vmwareengine_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): The ID of the Cluster.
  - `parent` (`string`): The resource name of the private cloud to create a new cluster in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  - `node_type_configs` (`list[obj]`): The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). When `null`, the `node_type_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_cluster.node_type_configs.new](#fn-node_type_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vmwareengine_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_cluster`
Terraform resource.

Unlike [google.vmwareengine_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The ID of the Cluster.
  - `parent` (`string`): The resource name of the private cloud to create a new cluster in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  - `node_type_configs` (`list[obj]`): The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). When `null`, the `node_type_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_cluster.node_type_configs.new](#fn-node_type_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_cluster` resource into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodeTypeConfigs

```ts
withNodeTypeConfigs()
```

`google.list[obj].withNodeTypeConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_type_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeTypeConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_type_configs` field.


### fn withNodeTypeConfigsMixin

```ts
withNodeTypeConfigsMixin()
```

`google.list[obj].withNodeTypeConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_type_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeTypeConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_type_configs` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


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


## obj node_type_configs



### fn node_type_configs.new

```ts
new()
```


`google.vmwareengine_cluster.node_type_configs.new` constructs a new object with attributes and blocks configured for the `node_type_configs`
Terraform sub block.



**Args**:
  - `custom_core_count` (`number`): Customized number of cores available to each node of the type.
This number must always be one of &#39;nodeType.availableCustomCoreCounts&#39;.
If zero is provided max value from &#39;nodeType.availableCustomCoreCounts&#39; will be used.
Once the customer is created then corecount cannot be changed. When `null`, the `custom_core_count` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes of this type in the cluster.
  - `node_type_id` (`string`): Set the `node_type_id` field on the resulting object.

**Returns**:
  - An attribute object that represents the `node_type_configs` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vmwareengine_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
