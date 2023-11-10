---
permalink: /gkeonprem_vmware_node_pool/
---

# gkeonprem_vmware_node_pool

`gkeonprem_vmware_node_pool` represents the `google_gkeonprem_vmware_node_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNodePoolAutoscaling()`](#fn-withnodepoolautoscaling)
* [`fn withNodePoolAutoscalingMixin()`](#fn-withnodepoolautoscalingmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVmwareCluster()`](#fn-withvmwarecluster)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
  * [`obj config.taints`](#obj-configtaints)
    * [`fn new()`](#fn-configtaintsnew)
* [`obj node_pool_autoscaling`](#obj-node_pool_autoscaling)
  * [`fn new()`](#fn-node_pool_autoscalingnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gkeonprem_vmware_node_pool.new` injects a new `google_gkeonprem_vmware_node_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gkeonprem_vmware_node_pool.new('some_id')

You can get the reference to the `id` field of the created `google.gkeonprem_vmware_node_pool` using the reference:

    $._ref.google_gkeonprem_vmware_node_pool.some_id.get('id')

This is the same as directly entering `"${ google_gkeonprem_vmware_node_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Annotations on the node Pool.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name for the node pool. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The vmware node pool name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `vmware_cluster` (`string`): The cluster this node pool belongs to.
  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.config.new](#fn-confignew) constructor.
  - `node_pool_autoscaling` (`list[obj]`): Node Pool autoscaling config for the node pool. When `null`, the `node_pool_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.node_pool_autoscaling.new](#fn-node_pool_autoscalingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gkeonprem_vmware_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_vmware_node_pool`
Terraform resource.

Unlike [google.gkeonprem_vmware_node_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Annotations on the node Pool.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name for the node pool. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The vmware node pool name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `vmware_cluster` (`string`): The cluster this node pool belongs to.
  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.config.new](#fn-confignew) constructor.
  - `node_pool_autoscaling` (`list[obj]`): Node Pool autoscaling config for the node pool. When `null`, the `node_pool_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.node_pool_autoscaling.new](#fn-node_pool_autoscalingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_vmware_node_pool` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withConfig

```ts
withConfig()
```

`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodePoolAutoscaling

```ts
withNodePoolAutoscaling()
```

`google.list[obj].withNodePoolAutoscaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_pool_autoscaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodePoolAutoscalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_pool_autoscaling` field.


### fn withNodePoolAutoscalingMixin

```ts
withNodePoolAutoscalingMixin()
```

`google.list[obj].withNodePoolAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_pool_autoscaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodePoolAutoscaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_pool_autoscaling` field.


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


### fn withVmwareCluster

```ts
withVmwareCluster()
```

`google.string.withVmwareCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vmware_cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vmware_cluster` field.


## obj config



### fn config.new

```ts
new()
```


`google.gkeonprem_vmware_node_pool.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): VMware disk size to be used during creation. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `cpus` (`number`): The number of CPUs for each node in the node pool. When `null`, the `cpus` field will be omitted from the resulting object.
  - `enable_load_balancer` (`bool`): Allow node pool traffic to be load balanced. Only works for clusters with
MetalLB load balancers. When `null`, the `enable_load_balancer` field will be omitted from the resulting object.
  - `image` (`string`): The OS image name in vCenter, only valid when using Windows. When `null`, the `image` field will be omitted from the resulting object.
  - `image_type` (`string`): The OS image to be used for each node in a node pool.
Currently &#39;cos&#39;, &#39;ubuntu&#39;, &#39;ubuntu_containerd&#39; and &#39;windows&#39; are supported.
  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node.
These will added in addition to any default label(s) that
Kubernetes may apply to the node.
In case of conflict in label keys, the applied set may differ depending on
the Kubernetes version -- it&#39;s best to assume the behavior is undefined
and conflicts should be avoided. When `null`, the `labels` field will be omitted from the resulting object.
  - `memory_mb` (`number`): The megabytes of memory for each node in the node pool. When `null`, the `memory_mb` field will be omitted from the resulting object.
  - `replicas` (`number`): The number of nodes in the node pool. When `null`, the `replicas` field will be omitted from the resulting object.
  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.config.taints.new](#fn-configtaintsnew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.taints



### fn config.taints.new

```ts
new()
```


`google.gkeonprem_vmware_node_pool.config.taints.new` constructs a new object with attributes and blocks configured for the `taints`
Terraform sub block.



**Args**:
  - `effect` (`string`): Available taint effects. Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;NO_SCHEDULE&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.
  - `key` (`string`): Key associated with the effect.
  - `value` (`string`): Value associated with the effect.

**Returns**:
  - An attribute object that represents the `taints` sub block.


## obj node_pool_autoscaling



### fn node_pool_autoscaling.new

```ts
new()
```


`google.gkeonprem_vmware_node_pool.node_pool_autoscaling.new` constructs a new object with attributes and blocks configured for the `node_pool_autoscaling`
Terraform sub block.



**Args**:
  - `max_replicas` (`number`): Maximum number of replicas in the NodePool.
  - `min_replicas` (`number`): Minimum number of replicas in the NodePool.

**Returns**:
  - An attribute object that represents the `node_pool_autoscaling` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gkeonprem_vmware_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
