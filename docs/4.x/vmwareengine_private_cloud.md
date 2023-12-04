---
permalink: /vmwareengine_private_cloud/
---

# vmwareengine_private_cloud

`vmwareengine_private_cloud` represents the `google_vmwareengine_private_cloud` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withManagementCluster()`](#fn-withmanagementcluster)
* [`fn withManagementClusterMixin()`](#fn-withmanagementclustermixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj management_cluster`](#obj-management_cluster)
  * [`fn new()`](#fn-management_clusternew)
  * [`obj management_cluster.node_type_configs`](#obj-management_clusternode_type_configs)
    * [`fn new()`](#fn-management_clusternode_type_configsnew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vmwareengine_private_cloud.new` injects a new `google_vmwareengine_private_cloud` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vmwareengine_private_cloud.new('some_id')

You can get the reference to the `id` field of the created `google.vmwareengine_private_cloud` using the reference:

    $._ref.google_vmwareengine_private_cloud.some_id.get('id')

This is the same as directly entering `"${ google_vmwareengine_private_cloud.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): User-provided description for this private cloud. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location where the PrivateCloud should reside.
  - `name` (`string`): The ID of the PrivateCloud.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `management_cluster` (`list[obj]`): The management cluster for this private cloud. This used for creating and managing the default cluster. When `null`, the `management_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.management_cluster.new](#fn-management_clusternew) constructor.
  - `network_config` (`list[obj]`): Network configuration in the consumer project with which the peering has to be done. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vmwareengine_private_cloud.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_private_cloud`
Terraform resource.

Unlike [google.vmwareengine_private_cloud.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): User-provided description for this private cloud. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location where the PrivateCloud should reside.
  - `name` (`string`): The ID of the PrivateCloud.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `management_cluster` (`list[obj]`): The management cluster for this private cloud. This used for creating and managing the default cluster. When `null`, the `management_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.management_cluster.new](#fn-management_clusternew) constructor.
  - `network_config` (`list[obj]`): Network configuration in the consumer project with which the peering has to be done. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_private_cloud` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withManagementCluster

```ts
withManagementCluster()
```

`google.list[obj].withManagementCluster` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management_cluster field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagementClusterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management_cluster` field.


### fn withManagementClusterMixin

```ts
withManagementClusterMixin()
```

`google.list[obj].withManagementClusterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management_cluster field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManagementCluster](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management_cluster` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworkConfig

```ts
withNetworkConfig()
```

`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_config` field.


### fn withNetworkConfigMixin

```ts
withNetworkConfigMixin()
```

`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_config` field.


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


## obj management_cluster



### fn management_cluster.new

```ts
new()
```


`google.vmwareengine_private_cloud.management_cluster.new` constructs a new object with attributes and blocks configured for the `management_cluster`
Terraform sub block.



**Args**:
  - `cluster_id` (`string`): The user-provided identifier of the new Cluster. The identifier must meet the following requirements:
  * Only contains 1-63 alphanumeric characters and hyphens
  * Begins with an alphabetical character
  * Ends with a non-hyphen character
  * Not formatted as a UUID
  * Complies with RFC 1034 (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  - `node_type_configs` (`list[obj]`): The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). When `null`, the `node_type_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.management_cluster.node_type_configs.new](#fn-management_clusternode_type_configsnew) constructor.

**Returns**:
  - An attribute object that represents the `management_cluster` sub block.


## obj management_cluster.node_type_configs



### fn management_cluster.node_type_configs.new

```ts
new()
```


`google.vmwareengine_private_cloud.management_cluster.node_type_configs.new` constructs a new object with attributes and blocks configured for the `node_type_configs`
Terraform sub block.



**Args**:
  - `custom_core_count` (`number`): Customized number of cores available to each node of the type.
This number must always be one of &#39;nodeType.availableCustomCoreCounts&#39;.
If zero is provided max value from &#39;nodeType.availableCustomCoreCounts&#39; will be used.
This cannot be changed once the PrivateCloud is created. When `null`, the `custom_core_count` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes of this type in the cluster.
  - `node_type_id` (`string`): Set the `node_type_id` field on the resulting object.

**Returns**:
  - An attribute object that represents the `node_type_configs` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.vmwareengine_private_cloud.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `management_cidr` (`string`): Management CIDR used by VMware management appliances.
  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network attached to the private cloud.
Specify the name in the following form: projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
where {project} can either be a project number or a project ID. When `null`, the `vmware_engine_network` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vmwareengine_private_cloud.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
