---
permalink: /container_node_pool/
---

# container_node_pool

`container_node_pool` represents the `google_container_node_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoscaling()`](#fn-withautoscaling)
* [`fn withAutoscalingMixin()`](#fn-withautoscalingmixin)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withInitialNodeCount()`](#fn-withinitialnodecount)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withManagement()`](#fn-withmanagement)
* [`fn withManagementMixin()`](#fn-withmanagementmixin)
* [`fn withMaxPodsPerNode()`](#fn-withmaxpodspernode)
* [`fn withName()`](#fn-withname)
* [`fn withNamePrefix()`](#fn-withnameprefix)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withNodeCount()`](#fn-withnodecount)
* [`fn withNodeLocations()`](#fn-withnodelocations)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUpgradeSettings()`](#fn-withupgradesettings)
* [`fn withUpgradeSettingsMixin()`](#fn-withupgradesettingsmixin)
* [`fn withVersion()`](#fn-withversion)
* [`obj autoscaling`](#obj-autoscaling)
  * [`fn new()`](#fn-autoscalingnew)
* [`obj management`](#obj-management)
  * [`fn new()`](#fn-managementnew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
  * [`obj node_config.gcfs_config`](#obj-node_configgcfs_config)
    * [`fn new()`](#fn-node_configgcfs_confignew)
  * [`obj node_config.gvnic`](#obj-node_configgvnic)
    * [`fn new()`](#fn-node_configgvnicnew)
  * [`obj node_config.reservation_affinity`](#obj-node_configreservation_affinity)
    * [`fn new()`](#fn-node_configreservation_affinitynew)
  * [`obj node_config.shielded_instance_config`](#obj-node_configshielded_instance_config)
    * [`fn new()`](#fn-node_configshielded_instance_confignew)
  * [`obj node_config.workload_metadata_config`](#obj-node_configworkload_metadata_config)
    * [`fn new()`](#fn-node_configworkload_metadata_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj upgrade_settings`](#obj-upgrade_settings)
  * [`fn new()`](#fn-upgrade_settingsnew)
  * [`obj upgrade_settings.blue_green_settings`](#obj-upgrade_settingsblue_green_settings)
    * [`fn new()`](#fn-upgrade_settingsblue_green_settingsnew)
    * [`obj upgrade_settings.blue_green_settings.standard_rollout_policy`](#obj-upgrade_settingsblue_green_settingsstandard_rollout_policy)
      * [`fn new()`](#fn-upgrade_settingsblue_green_settingsstandard_rollout_policynew)

## Fields

### fn new

```ts
new()
```


`google.container_node_pool.new` injects a new `google_container_node_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_node_pool.new('some_id')

You can get the reference to the `id` field of the created `google.container_node_pool` using the reference:

    $._ref.google_container_node_pool.some_id.get('id')

This is the same as directly entering `"${ google_container_node_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster` (`string`): The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters.
  - `initial_node_count` (`number`): The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. When `null`, the `initial_node_count` field will be omitted from the resulting object.
  - `location` (`string`): The location (region or zone) of the cluster. When `null`, the `location` field will be omitted from the resulting object.
  - `max_pods_per_node` (`number`): The maximum number of pods per node in this node pool. Note that this does not work on node pools which are &#34;route-based&#34; - that is, node pools belonging to clusters that do not have IP Aliasing enabled. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.
  - `name` (`string`): The name of the node pool. If left blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. When `null`, the `node_count` field will be omitted from the resulting object.
  - `node_locations` (`list`): The list of zones in which the node pool&#39;s nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. When `null`, the `node_locations` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which to create the node pool. If blank, the provider-configured project will be used. When `null`, the `project` field will be omitted from the resulting object.
  - `version` (`string`): The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. When `null`, the `version` field will be omitted from the resulting object.
  - `autoscaling` (`list[obj]`): Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.
  - `management` (`list[obj]`): Node management configuration, wherein auto-repair and auto-upgrade is configured. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.management.new](#fn-managementnew) constructor.
  - `network_config` (`list[obj]`): Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.network_config.new](#fn-network_confignew) constructor.
  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.timeouts.new](#fn-timeoutsnew) constructor.
  - `upgrade_settings` (`list[obj]`): Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.new](#fn-upgrade_settingsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `container_node_pool`
Terraform resource.

Unlike [google.container_node_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster` (`string`): The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters.
  - `initial_node_count` (`number`): The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. When `null`, the `initial_node_count` field will be omitted from the resulting object.
  - `location` (`string`): The location (region or zone) of the cluster. When `null`, the `location` field will be omitted from the resulting object.
  - `max_pods_per_node` (`number`): The maximum number of pods per node in this node pool. Note that this does not work on node pools which are &#34;route-based&#34; - that is, node pools belonging to clusters that do not have IP Aliasing enabled. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.
  - `name` (`string`): The name of the node pool. If left blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. When `null`, the `node_count` field will be omitted from the resulting object.
  - `node_locations` (`list`): The list of zones in which the node pool&#39;s nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster&#39;s zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. When `null`, the `node_locations` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which to create the node pool. If blank, the provider-configured project will be used. When `null`, the `project` field will be omitted from the resulting object.
  - `version` (`string`): The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it&#39;s recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source&#39;s version_prefix field to approximate fuzzy versions in a Terraform-compatible way. When `null`, the `version` field will be omitted from the resulting object.
  - `autoscaling` (`list[obj]`): Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.
  - `management` (`list[obj]`): Node management configuration, wherein auto-repair and auto-upgrade is configured. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.management.new](#fn-managementnew) constructor.
  - `network_config` (`list[obj]`): Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.network_config.new](#fn-network_confignew) constructor.
  - `node_config` (`list[obj]`): The configuration of the nodepool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.timeouts.new](#fn-timeoutsnew) constructor.
  - `upgrade_settings` (`list[obj]`): Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. When `null`, the `upgrade_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.new](#fn-upgrade_settingsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_node_pool` resource into the root Terraform configuration.


### fn withAutoscaling

```ts
withAutoscaling()
```

`google.list[obj].withAutoscaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoscalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling` field.


### fn withAutoscalingMixin

```ts
withAutoscalingMixin()
```

`google.list[obj].withAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling` field.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withInitialNodeCount

```ts
withInitialNodeCount()
```

`google.number.withInitialNodeCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the initial_node_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `initial_node_count` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withManagement

```ts
withManagement()
```

`google.list[obj].withManagement` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagementMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management` field.


### fn withManagementMixin

```ts
withManagementMixin()
```

`google.list[obj].withManagementMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManagement](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management` field.


### fn withMaxPodsPerNode

```ts
withMaxPodsPerNode()
```

`google.number.withMaxPodsPerNode` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_pods_per_node field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_pods_per_node` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNamePrefix

```ts
withNamePrefix()
```

`google.string.withNamePrefix` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name_prefix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name_prefix` field.


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


### fn withNodeConfig

```ts
withNodeConfig()
```

`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeConfigMixin

```ts
withNodeConfigMixin()
```

`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeCount

```ts
withNodeCount()
```

`google.number.withNodeCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the node_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `node_count` field.


### fn withNodeLocations

```ts
withNodeLocations()
```

`google.list.withNodeLocations` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the node_locations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `node_locations` field.


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


### fn withUpgradeSettings

```ts
withUpgradeSettings()
```

`google.list[obj].withUpgradeSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the upgrade_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withUpgradeSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `upgrade_settings` field.


### fn withUpgradeSettingsMixin

```ts
withUpgradeSettingsMixin()
```

`google.list[obj].withUpgradeSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the upgrade_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withUpgradeSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `upgrade_settings` field.


### fn withVersion

```ts
withVersion()
```

`google.string.withVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version` field.


## obj autoscaling



### fn autoscaling.new

```ts
new()
```


`google.container_node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`
Terraform sub block.



**Args**:
  - `location_policy` (`string`): Location policy specifies the algorithm used when scaling-up the node pool. &#34;BALANCED&#34; - Is a best effort policy that aims to balance the sizes of available zones. &#34;ANY&#34; - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs. When `null`, the `location_policy` field will be omitted from the resulting object.
  - `max_node_count` (`number`): Maximum number of nodes per zone in the node pool. Must be &gt;= min_node_count. Cannot be used with total limits. When `null`, the `max_node_count` field will be omitted from the resulting object.
  - `min_node_count` (`number`): Minimum number of nodes per zone in the node pool. Must be &gt;=0 and &lt;= max_node_count. Cannot be used with total limits. When `null`, the `min_node_count` field will be omitted from the resulting object.
  - `total_max_node_count` (`number`): Maximum number of all nodes in the node pool. Must be &gt;= total_min_node_count. Cannot be used with per zone limits. When `null`, the `total_max_node_count` field will be omitted from the resulting object.
  - `total_min_node_count` (`number`): Minimum number of all nodes in the node pool. Must be &gt;=0 and &lt;= total_max_node_count. Cannot be used with per zone limits. When `null`, the `total_min_node_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling` sub block.


## obj management



### fn management.new

```ts
new()
```


`google.container_node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`
Terraform sub block.



**Args**:
  - `auto_repair` (`bool`): Whether the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.
  - `auto_upgrade` (`bool`): Whether the nodes will be automatically upgraded. When `null`, the `auto_upgrade` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `management` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.container_node_pool.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `create_pod_range` (`bool`): Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. When `null`, the `create_pod_range` field will be omitted from the resulting object.
  - `enable_private_nodes` (`bool`): Whether nodes have internal IP addresses only. When `null`, the `enable_private_nodes` field will be omitted from the resulting object.
  - `pod_ipv4_cidr_block` (`string`): The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. When `null`, the `pod_ipv4_cidr_block` field will be omitted from the resulting object.
  - `pod_range` (`string`): The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. When `null`, the `pod_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj node_config



### fn node_config.new

```ts
new()
```


`google.container_node_pool.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `boot_disk_kms_key` (`string`): The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. When `null`, the `boot_disk_kms_key` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd When `null`, the `disk_type` field will be omitted from the resulting object.
  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.
  - `image_type` (`string`): The image type to use for this node. Note that for a given image type, the latest version of it will be used. When `null`, the `image_type` field will be omitted from the resulting object.
  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. When `null`, the `labels` field will be omitted from the resulting object.
  - `local_ssd_count` (`number`): The number of local SSD disks to be attached to the node. When `null`, the `local_ssd_count` field will be omitted from the resulting object.
  - `logging_variant` (`string`): Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. When `null`, the `logging_variant` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `metadata` (`obj`): The metadata key/value pairs assigned to instances in the cluster. When `null`, the `metadata` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `node_group` (`string`): Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. When `null`, the `node_group` field will be omitted from the resulting object.
  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs. When `null`, the `oauth_scopes` field will be omitted from the resulting object.
  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. When `null`, the `preemptible` field will be omitted from the resulting object.
  - `resource_labels` (`obj`): The GCE resource labels (a map of key/value pairs) to be applied to the node pool. When `null`, the `resource_labels` field will be omitted from the resulting object.
  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. When `null`, the `service_account` field will be omitted from the resulting object.
  - `spot` (`bool`): Whether the nodes are created as spot VM instances. When `null`, the `spot` field will be omitted from the resulting object.
  - `tags` (`list`): The list of instance tags applied to all nodes. When `null`, the `tags` field will be omitted from the resulting object.
  - `taint` (`list`): List of Kubernetes taints to be applied to each node. When `null`, the `taint` field will be omitted from the resulting object.
  - `gcfs_config` (`list[obj]`): GCFS configuration for this node. When `null`, the `gcfs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.gcfs_config.new](#fn-node_configgcfs_confignew) constructor.
  - `gvnic` (`list[obj]`): Enable or disable gvnic in the node pool. When `null`, the `gvnic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.gvnic.new](#fn-node_configgvnicnew) constructor.
  - `reservation_affinity` (`list[obj]`): The reservation affinity configuration for the node pool. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.reservation_affinity.new](#fn-node_configreservation_affinitynew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.shielded_instance_config.new](#fn-node_configshielded_instance_confignew) constructor.
  - `workload_metadata_config` (`list[obj]`): The workload metadata configuration for this node. When `null`, the `workload_metadata_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.node_config.workload_metadata_config.new](#fn-node_configworkload_metadata_confignew) constructor.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj node_config.gcfs_config



### fn node_config.gcfs_config.new

```ts
new()
```


`google.container_node_pool.node_config.gcfs_config.new` constructs a new object with attributes and blocks configured for the `gcfs_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not GCFS is enabled

**Returns**:
  - An attribute object that represents the `gcfs_config` sub block.


## obj node_config.gvnic



### fn node_config.gvnic.new

```ts
new()
```


`google.container_node_pool.node_config.gvnic.new` constructs a new object with attributes and blocks configured for the `gvnic`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not gvnic is enabled

**Returns**:
  - An attribute object that represents the `gvnic` sub block.


## obj node_config.reservation_affinity



### fn node_config.reservation_affinity.new

```ts
new()
```


`google.container_node_pool.node_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `consume_reservation_type` (`string`): Corresponds to the type of reservation consumption.
  - `key` (`string`): The label key of a reservation resource. When `null`, the `key` field will be omitted from the resulting object.
  - `values` (`list`): The label values of the reservation resource. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj node_config.shielded_instance_config



### fn node_config.shielded_instance_config.new

```ts
new()
```


`google.container_node_pool.node_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj node_config.workload_metadata_config



### fn node_config.workload_metadata_config.new

```ts
new()
```


`google.container_node_pool.node_config.workload_metadata_config.new` constructs a new object with attributes and blocks configured for the `workload_metadata_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Mode is the configuration for how to expose metadata to workloads running on the node.

**Returns**:
  - An attribute object that represents the `workload_metadata_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj upgrade_settings



### fn upgrade_settings.new

```ts
new()
```


`google.container_node_pool.upgrade_settings.new` constructs a new object with attributes and blocks configured for the `upgrade_settings`
Terraform sub block.



**Args**:
  - `max_surge` (`number`): The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. When `null`, the `max_surge` field will be omitted from the resulting object.
  - `max_unavailable` (`number`): The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. When `null`, the `max_unavailable` field will be omitted from the resulting object.
  - `strategy` (`string`): Update strategy for the given nodepool. When `null`, the `strategy` field will be omitted from the resulting object.
  - `blue_green_settings` (`list[obj]`): Settings for BlueGreen node pool upgrade. When `null`, the `blue_green_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.blue_green_settings.new](#fn-upgrade_settingsblue_green_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `upgrade_settings` sub block.


## obj upgrade_settings.blue_green_settings



### fn upgrade_settings.blue_green_settings.new

```ts
new()
```


`google.container_node_pool.upgrade_settings.blue_green_settings.new` constructs a new object with attributes and blocks configured for the `blue_green_settings`
Terraform sub block.



**Args**:
  - `node_pool_soak_duration` (`string`): Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. When `null`, the `node_pool_soak_duration` field will be omitted from the resulting object.
  - `standard_rollout_policy` (`list[obj]`): Standard rollout policy is the default policy for blue-green. When `null`, the `standard_rollout_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new](#fn-upgrade_settingsupgrade_settingsstandard_rollout_policynew) constructor.

**Returns**:
  - An attribute object that represents the `blue_green_settings` sub block.


## obj upgrade_settings.blue_green_settings.standard_rollout_policy



### fn upgrade_settings.blue_green_settings.standard_rollout_policy.new

```ts
new()
```


`google.container_node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy.new` constructs a new object with attributes and blocks configured for the `standard_rollout_policy`
Terraform sub block.



**Args**:
  - `batch_node_count` (`number`): Number of blue nodes to drain in a batch. When `null`, the `batch_node_count` field will be omitted from the resulting object.
  - `batch_percentage` (`number`): Percentage of the blue pool nodes to drain in a batch. When `null`, the `batch_percentage` field will be omitted from the resulting object.
  - `batch_soak_duration` (`string`): Soak time after each batch gets drained. When `null`, the `batch_soak_duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `standard_rollout_policy` sub block.
