---
permalink: /gkeonprem_vmware_cluster/
---

# gkeonprem_vmware_cluster

`gkeonprem_vmware_cluster` represents the `google_gkeonprem_vmware_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdminClusterMembership()`](#fn-withadminclustermembership)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAntiAffinityGroups()`](#fn-withantiaffinitygroups)
* [`fn withAntiAffinityGroupsMixin()`](#fn-withantiaffinitygroupsmixin)
* [`fn withAuthorization()`](#fn-withauthorization)
* [`fn withAuthorizationMixin()`](#fn-withauthorizationmixin)
* [`fn withAutoRepairConfig()`](#fn-withautorepairconfig)
* [`fn withAutoRepairConfigMixin()`](#fn-withautorepairconfigmixin)
* [`fn withControlPlaneNode()`](#fn-withcontrolplanenode)
* [`fn withControlPlaneNodeMixin()`](#fn-withcontrolplanenodemixin)
* [`fn withDataplaneV2()`](#fn-withdataplanev2)
* [`fn withDataplaneV2Mixin()`](#fn-withdataplanev2mixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnableControlPlaneV2()`](#fn-withenablecontrolplanev2)
* [`fn withLoadBalancer()`](#fn-withloadbalancer)
* [`fn withLoadBalancerMixin()`](#fn-withloadbalancermixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withOnPremVersion()`](#fn-withonpremversion)
* [`fn withProject()`](#fn-withproject)
* [`fn withStorage()`](#fn-withstorage)
* [`fn withStorageMixin()`](#fn-withstoragemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUpgradePolicy()`](#fn-withupgradepolicy)
* [`fn withUpgradePolicyMixin()`](#fn-withupgradepolicymixin)
* [`fn withVcenter()`](#fn-withvcenter)
* [`fn withVcenterMixin()`](#fn-withvcentermixin)
* [`fn withVmTrackingEnabled()`](#fn-withvmtrackingenabled)
* [`obj anti_affinity_groups`](#obj-anti_affinity_groups)
  * [`fn new()`](#fn-anti_affinity_groupsnew)
* [`obj authorization`](#obj-authorization)
  * [`fn new()`](#fn-authorizationnew)
  * [`obj authorization.admin_users`](#obj-authorizationadmin_users)
    * [`fn new()`](#fn-authorizationadmin_usersnew)
* [`obj auto_repair_config`](#obj-auto_repair_config)
  * [`fn new()`](#fn-auto_repair_confignew)
* [`obj control_plane_node`](#obj-control_plane_node)
  * [`fn new()`](#fn-control_plane_nodenew)
  * [`obj control_plane_node.auto_resize_config`](#obj-control_plane_nodeauto_resize_config)
    * [`fn new()`](#fn-control_plane_nodeauto_resize_confignew)
* [`obj dataplane_v2`](#obj-dataplane_v2)
  * [`fn new()`](#fn-dataplane_v2new)
* [`obj load_balancer`](#obj-load_balancer)
  * [`fn new()`](#fn-load_balancernew)
  * [`obj load_balancer.f5_config`](#obj-load_balancerf5_config)
    * [`fn new()`](#fn-load_balancerf5_confignew)
  * [`obj load_balancer.manual_lb_config`](#obj-load_balancermanual_lb_config)
    * [`fn new()`](#fn-load_balancermanual_lb_confignew)
  * [`obj load_balancer.metal_lb_config`](#obj-load_balancermetal_lb_config)
    * [`fn new()`](#fn-load_balancermetal_lb_confignew)
    * [`obj load_balancer.metal_lb_config.address_pools`](#obj-load_balancermetal_lb_configaddress_pools)
      * [`fn new()`](#fn-load_balancermetal_lb_configaddress_poolsnew)
  * [`obj load_balancer.vip_config`](#obj-load_balancervip_config)
    * [`fn new()`](#fn-load_balancervip_confignew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
  * [`obj network_config.control_plane_v2_config`](#obj-network_configcontrol_plane_v2_config)
    * [`fn new()`](#fn-network_configcontrol_plane_v2_confignew)
    * [`obj network_config.control_plane_v2_config.control_plane_ip_block`](#obj-network_configcontrol_plane_v2_configcontrol_plane_ip_block)
      * [`fn new()`](#fn-network_configcontrol_plane_v2_configcontrol_plane_ip_blocknew)
      * [`obj network_config.control_plane_v2_config.control_plane_ip_block.ips`](#obj-network_configcontrol_plane_v2_configcontrol_plane_ip_blockips)
        * [`fn new()`](#fn-network_configcontrol_plane_v2_configcontrol_plane_ip_blockipsnew)
  * [`obj network_config.dhcp_ip_config`](#obj-network_configdhcp_ip_config)
    * [`fn new()`](#fn-network_configdhcp_ip_confignew)
  * [`obj network_config.host_config`](#obj-network_confighost_config)
    * [`fn new()`](#fn-network_confighost_confignew)
  * [`obj network_config.static_ip_config`](#obj-network_configstatic_ip_config)
    * [`fn new()`](#fn-network_configstatic_ip_confignew)
    * [`obj network_config.static_ip_config.ip_blocks`](#obj-network_configstatic_ip_configip_blocks)
      * [`fn new()`](#fn-network_configstatic_ip_configip_blocksnew)
      * [`obj network_config.static_ip_config.ip_blocks.ips`](#obj-network_configstatic_ip_configip_blocksips)
        * [`fn new()`](#fn-network_configstatic_ip_configip_blocksipsnew)
* [`obj storage`](#obj-storage)
  * [`fn new()`](#fn-storagenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj upgrade_policy`](#obj-upgrade_policy)
  * [`fn new()`](#fn-upgrade_policynew)
* [`obj vcenter`](#obj-vcenter)
  * [`fn new()`](#fn-vcenternew)

## Fields

### fn new

```ts
new()
```


`google.gkeonprem_vmware_cluster.new` injects a new `google_gkeonprem_vmware_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gkeonprem_vmware_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.gkeonprem_vmware_cluster` using the reference:

    $._ref.google_gkeonprem_vmware_cluster.some_id.get('id')

This is the same as directly entering `"${ google_gkeonprem_vmware_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `admin_cluster_membership` (`string`): The admin cluster this VMware User Cluster belongs to.
This is the full resource name of the admin cluster&#39;s hub membership.
In the future, references to other resource types might be allowed if
admin clusters are modeled as their own resources.
  - `annotations` (`obj`): Annotations on the VMware User Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): A human readable description of this VMware User Cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_control_plane_v2` (`bool`): Enable control plane V2. Default to false. When `null`, the `enable_control_plane_v2` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The VMware cluster name.
  - `on_prem_version` (`string`): The Anthos clusters on the VMware version for your user cluster.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `vm_tracking_enabled` (`bool`): Enable VM tracking. When `null`, the `vm_tracking_enabled` field will be omitted from the resulting object.
  - `anti_affinity_groups` (`list[obj]`): AAGConfig specifies whether to spread VMware User Cluster nodes across at
least three physical hosts in the datacenter. When `null`, the `anti_affinity_groups` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.anti_affinity_groups.new](#fn-anti_affinity_groupsnew) constructor.
  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GKE On-Prem. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `auto_repair_config` (`list[obj]`): Configuration for auto repairing. When `null`, the `auto_repair_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.auto_repair_config.new](#fn-auto_repair_confignew) constructor.
  - `control_plane_node` (`list[obj]`): VMware User Cluster control plane nodes must have either 1 or 3 replicas. When `null`, the `control_plane_node` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.control_plane_node.new](#fn-control_plane_nodenew) constructor.
  - `dataplane_v2` (`list[obj]`): VmwareDataplaneV2Config specifies configuration for Dataplane V2. When `null`, the `dataplane_v2` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.dataplane_v2.new](#fn-dataplane_v2new) constructor.
  - `load_balancer` (`list[obj]`): Load Balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.new](#fn-load_balancernew) constructor.
  - `network_config` (`list[obj]`): The VMware User Cluster network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.new](#fn-network_confignew) constructor.
  - `storage` (`list[obj]`): Storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.storage.new](#fn-storagenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.timeouts.new](#fn-timeoutsnew) constructor.
  - `upgrade_policy` (`list[obj]`): Specifies upgrade policy for the cluster. When `null`, the `upgrade_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.upgrade_policy.new](#fn-upgrade_policynew) constructor.
  - `vcenter` (`list[obj]`): VmwareVCenterConfig specifies vCenter config for the user cluster.
Inherited from the admin cluster. When `null`, the `vcenter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.vcenter.new](#fn-vcenternew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gkeonprem_vmware_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_vmware_cluster`
Terraform resource.

Unlike [google.gkeonprem_vmware_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `admin_cluster_membership` (`string`): The admin cluster this VMware User Cluster belongs to.
This is the full resource name of the admin cluster&#39;s hub membership.
In the future, references to other resource types might be allowed if
admin clusters are modeled as their own resources.
  - `annotations` (`obj`): Annotations on the VMware User Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): A human readable description of this VMware User Cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_control_plane_v2` (`bool`): Enable control plane V2. Default to false. When `null`, the `enable_control_plane_v2` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The VMware cluster name.
  - `on_prem_version` (`string`): The Anthos clusters on the VMware version for your user cluster.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `vm_tracking_enabled` (`bool`): Enable VM tracking. When `null`, the `vm_tracking_enabled` field will be omitted from the resulting object.
  - `anti_affinity_groups` (`list[obj]`): AAGConfig specifies whether to spread VMware User Cluster nodes across at
least three physical hosts in the datacenter. When `null`, the `anti_affinity_groups` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.anti_affinity_groups.new](#fn-anti_affinity_groupsnew) constructor.
  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GKE On-Prem. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `auto_repair_config` (`list[obj]`): Configuration for auto repairing. When `null`, the `auto_repair_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.auto_repair_config.new](#fn-auto_repair_confignew) constructor.
  - `control_plane_node` (`list[obj]`): VMware User Cluster control plane nodes must have either 1 or 3 replicas. When `null`, the `control_plane_node` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.control_plane_node.new](#fn-control_plane_nodenew) constructor.
  - `dataplane_v2` (`list[obj]`): VmwareDataplaneV2Config specifies configuration for Dataplane V2. When `null`, the `dataplane_v2` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.dataplane_v2.new](#fn-dataplane_v2new) constructor.
  - `load_balancer` (`list[obj]`): Load Balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.new](#fn-load_balancernew) constructor.
  - `network_config` (`list[obj]`): The VMware User Cluster network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.new](#fn-network_confignew) constructor.
  - `storage` (`list[obj]`): Storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.storage.new](#fn-storagenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.timeouts.new](#fn-timeoutsnew) constructor.
  - `upgrade_policy` (`list[obj]`): Specifies upgrade policy for the cluster. When `null`, the `upgrade_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.upgrade_policy.new](#fn-upgrade_policynew) constructor.
  - `vcenter` (`list[obj]`): VmwareVCenterConfig specifies vCenter config for the user cluster.
Inherited from the admin cluster. When `null`, the `vcenter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.vcenter.new](#fn-vcenternew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_vmware_cluster` resource into the root Terraform configuration.


### fn withAdminClusterMembership

```ts
withAdminClusterMembership()
```

`google.string.withAdminClusterMembership` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the admin_cluster_membership field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `admin_cluster_membership` field.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAntiAffinityGroups

```ts
withAntiAffinityGroups()
```

`google.list[obj].withAntiAffinityGroups` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the anti_affinity_groups field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAntiAffinityGroupsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `anti_affinity_groups` field.


### fn withAntiAffinityGroupsMixin

```ts
withAntiAffinityGroupsMixin()
```

`google.list[obj].withAntiAffinityGroupsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the anti_affinity_groups field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAntiAffinityGroups](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `anti_affinity_groups` field.


### fn withAuthorization

```ts
withAuthorization()
```

`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAuthorizationMixin

```ts
withAuthorizationMixin()
```

`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAutoRepairConfig

```ts
withAutoRepairConfig()
```

`google.list[obj].withAutoRepairConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the auto_repair_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoRepairConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `auto_repair_config` field.


### fn withAutoRepairConfigMixin

```ts
withAutoRepairConfigMixin()
```

`google.list[obj].withAutoRepairConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the auto_repair_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoRepairConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `auto_repair_config` field.


### fn withControlPlaneNode

```ts
withControlPlaneNode()
```

`google.list[obj].withControlPlaneNode` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane_node field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withControlPlaneNodeMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane_node` field.


### fn withControlPlaneNodeMixin

```ts
withControlPlaneNodeMixin()
```

`google.list[obj].withControlPlaneNodeMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane_node field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlaneNode](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane_node` field.


### fn withDataplaneV2

```ts
withDataplaneV2()
```

`google.list[obj].withDataplaneV2` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dataplane_v2 field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDataplaneV2Mixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dataplane_v2` field.


### fn withDataplaneV2Mixin

```ts
withDataplaneV2Mixin()
```

`google.list[obj].withDataplaneV2Mixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dataplane_v2 field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDataplaneV2](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dataplane_v2` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnableControlPlaneV2

```ts
withEnableControlPlaneV2()
```

`google.bool.withEnableControlPlaneV2` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_control_plane_v2 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_control_plane_v2` field.


### fn withLoadBalancer

```ts
withLoadBalancer()
```

`google.list[obj].withLoadBalancer` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the load_balancer field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLoadBalancerMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `load_balancer` field.


### fn withLoadBalancerMixin

```ts
withLoadBalancerMixin()
```

`google.list[obj].withLoadBalancerMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the load_balancer field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLoadBalancer](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `load_balancer` field.


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


### fn withOnPremVersion

```ts
withOnPremVersion()
```

`google.string.withOnPremVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the on_prem_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `on_prem_version` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withStorage

```ts
withStorage()
```

`google.list[obj].withStorage` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the storage field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withStorageMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `storage` field.


### fn withStorageMixin

```ts
withStorageMixin()
```

`google.list[obj].withStorageMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the storage field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withStorage](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `storage` field.


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


### fn withUpgradePolicy

```ts
withUpgradePolicy()
```

`google.list[obj].withUpgradePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the upgrade_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withUpgradePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `upgrade_policy` field.


### fn withUpgradePolicyMixin

```ts
withUpgradePolicyMixin()
```

`google.list[obj].withUpgradePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the upgrade_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withUpgradePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `upgrade_policy` field.


### fn withVcenter

```ts
withVcenter()
```

`google.list[obj].withVcenter` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vcenter field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVcenterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vcenter` field.


### fn withVcenterMixin

```ts
withVcenterMixin()
```

`google.list[obj].withVcenterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vcenter field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVcenter](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vcenter` field.


### fn withVmTrackingEnabled

```ts
withVmTrackingEnabled()
```

`google.bool.withVmTrackingEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the vm_tracking_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `vm_tracking_enabled` field.


## obj anti_affinity_groups



### fn anti_affinity_groups.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.anti_affinity_groups.new` constructs a new object with attributes and blocks configured for the `anti_affinity_groups`
Terraform sub block.



**Args**:
  - `aag_config_disabled` (`bool`): Spread nodes across at least three physical hosts (requires at least three
hosts).
Enabled by default.

**Returns**:
  - An attribute object that represents the `anti_affinity_groups` sub block.


## obj authorization



### fn authorization.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`
Terraform sub block.



**Args**:
  - `admin_users` (`list[obj]`): Users that will be granted the cluster-admin role on the cluster, providing
full access to the cluster. When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.

**Returns**:
  - An attribute object that represents the `authorization` sub block.


## obj authorization.admin_users



### fn authorization.admin_users.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`
Terraform sub block.



**Args**:
  - `username` (`string`): The name of the user, e.g. &#39;my-gcp-id@gmail.com&#39;.

**Returns**:
  - An attribute object that represents the `admin_users` sub block.


## obj auto_repair_config



### fn auto_repair_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.auto_repair_config.new` constructs a new object with attributes and blocks configured for the `auto_repair_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether auto repair is enabled.

**Returns**:
  - An attribute object that represents the `auto_repair_config` sub block.


## obj control_plane_node



### fn control_plane_node.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.control_plane_node.new` constructs a new object with attributes and blocks configured for the `control_plane_node`
Terraform sub block.



**Args**:
  - `cpus` (`number`): The number of CPUs for each admin cluster node that serve as control planes
for this VMware User Cluster. (default: 4 CPUs) When `null`, the `cpus` field will be omitted from the resulting object.
  - `memory` (`number`): The megabytes of memory for each admin cluster node that serves as a
control plane for this VMware User Cluster (default: 8192 MB memory). When `null`, the `memory` field will be omitted from the resulting object.
  - `replicas` (`number`): The number of control plane nodes for this VMware User Cluster.
(default: 1 replica). When `null`, the `replicas` field will be omitted from the resulting object.
  - `auto_resize_config` (`list[obj]`): AutoResizeConfig provides auto resizing configurations. When `null`, the `auto_resize_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.control_plane_node.auto_resize_config.new](#fn-control_plane_nodeauto_resize_confignew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane_node` sub block.


## obj control_plane_node.auto_resize_config



### fn control_plane_node.auto_resize_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.control_plane_node.auto_resize_config.new` constructs a new object with attributes and blocks configured for the `auto_resize_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether to enable control plane node auto resizing.

**Returns**:
  - An attribute object that represents the `auto_resize_config` sub block.


## obj dataplane_v2



### fn dataplane_v2.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.dataplane_v2.new` constructs a new object with attributes and blocks configured for the `dataplane_v2`
Terraform sub block.



**Args**:
  - `advanced_networking` (`bool`): Enable advanced networking which requires dataplane_v2_enabled to be set true. When `null`, the `advanced_networking` field will be omitted from the resulting object.
  - `dataplane_v2_enabled` (`bool`): Enables Dataplane V2. When `null`, the `dataplane_v2_enabled` field will be omitted from the resulting object.
  - `windows_dataplane_v2_enabled` (`bool`): Enable Dataplane V2 for clusters with Windows nodes. When `null`, the `windows_dataplane_v2_enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `dataplane_v2` sub block.


## obj load_balancer



### fn load_balancer.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.load_balancer.new` constructs a new object with attributes and blocks configured for the `load_balancer`
Terraform sub block.



**Args**:
  - `f5_config` (`list[obj]`): Configuration for F5 Big IP typed load balancers. When `null`, the `f5_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.f5_config.new](#fn-load_balancerf5_confignew) constructor.
  - `manual_lb_config` (`list[obj]`): Manually configured load balancers. When `null`, the `manual_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.manual_lb_config.new](#fn-load_balancermanual_lb_confignew) constructor.
  - `metal_lb_config` (`list[obj]`): Configuration for MetalLB typed load balancers. When `null`, the `metal_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.new](#fn-load_balancermetal_lb_confignew) constructor.
  - `vip_config` (`list[obj]`): The VIPs used by the load balancer. When `null`, the `vip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.vip_config.new](#fn-load_balancervip_confignew) constructor.

**Returns**:
  - An attribute object that represents the `load_balancer` sub block.


## obj load_balancer.f5_config



### fn load_balancer.f5_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.load_balancer.f5_config.new` constructs a new object with attributes and blocks configured for the `f5_config`
Terraform sub block.



**Args**:
  - `address` (`string`): The load balancer&#39;s IP address. When `null`, the `address` field will be omitted from the resulting object.
  - `partition` (`string`): he preexisting partition to be used by the load balancer. T
his partition is usually created for the admin cluster for example:
&#39;my-f5-admin-partition&#39;. When `null`, the `partition` field will be omitted from the resulting object.
  - `snat_pool` (`string`): The pool name. Only necessary, if using SNAT. When `null`, the `snat_pool` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `f5_config` sub block.


## obj load_balancer.manual_lb_config



### fn load_balancer.manual_lb_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.load_balancer.manual_lb_config.new` constructs a new object with attributes and blocks configured for the `manual_lb_config`
Terraform sub block.



**Args**:
  - `control_plane_node_port` (`number`): NodePort for control plane service. The Kubernetes API server in the admin
cluster is implemented as a Service of type NodePort (ex. 30968). When `null`, the `control_plane_node_port` field will be omitted from the resulting object.
  - `ingress_http_node_port` (`number`): NodePort for ingress service&#39;s http. The ingress service in the admin
cluster is implemented as a Service of type NodePort (ex. 32527). When `null`, the `ingress_http_node_port` field will be omitted from the resulting object.
  - `ingress_https_node_port` (`number`): NodePort for ingress service&#39;s https. The ingress service in the admin
cluster is implemented as a Service of type NodePort (ex. 30139). When `null`, the `ingress_https_node_port` field will be omitted from the resulting object.
  - `konnectivity_server_node_port` (`number`): NodePort for konnectivity server service running as a sidecar in each
kube-apiserver pod (ex. 30564). When `null`, the `konnectivity_server_node_port` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `manual_lb_config` sub block.


## obj load_balancer.metal_lb_config



### fn load_balancer.metal_lb_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.new` constructs a new object with attributes and blocks configured for the `metal_lb_config`
Terraform sub block.



**Args**:
  - `address_pools` (`list[obj]`): AddressPools is a list of non-overlapping IP pools used by load balancer
typed services. All addresses must be routable to load balancer nodes.
IngressVIP must be included in the pools. When `null`, the `address_pools` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.address_pools.new](#fn-load_balancerload_balanceraddress_poolsnew) constructor.

**Returns**:
  - An attribute object that represents the `metal_lb_config` sub block.


## obj load_balancer.metal_lb_config.address_pools



### fn load_balancer.metal_lb_config.address_pools.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.address_pools.new` constructs a new object with attributes and blocks configured for the `address_pools`
Terraform sub block.



**Args**:
  - `addresses` (`list`): The addresses that are part of this pool. Each address
must be either in the CIDR form (1.2.3.0/24) or range
form (1.2.3.1-1.2.3.5).
  - `avoid_buggy_ips` (`bool`): If true, avoid using IPs ending in .0 or .255.
This avoids buggy consumer devices mistakenly dropping IPv4 traffic for
those special IP addresses. When `null`, the `avoid_buggy_ips` field will be omitted from the resulting object.
  - `manual_assign` (`bool`): If true, prevent IP addresses from being automatically assigned. When `null`, the `manual_assign` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the address pool.

**Returns**:
  - An attribute object that represents the `address_pools` sub block.


## obj load_balancer.vip_config



### fn load_balancer.vip_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.load_balancer.vip_config.new` constructs a new object with attributes and blocks configured for the `vip_config`
Terraform sub block.



**Args**:
  - `control_plane_vip` (`string`): The VIP which you previously set aside for the Kubernetes API of this cluster. When `null`, the `control_plane_vip` field will be omitted from the resulting object.
  - `ingress_vip` (`string`): The VIP which you previously set aside for ingress traffic into this cluster. When `null`, the `ingress_vip` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vip_config` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `pod_address_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
Only a single range is supported. This field cannot be changed after creation.
  - `service_address_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address
from these ranges. Only a single range is supported.. This field
cannot be changed after creation.
  - `control_plane_v2_config` (`list[obj]`): Configuration for control plane V2 mode. When `null`, the `control_plane_v2_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.new](#fn-network_configcontrol_plane_v2_confignew) constructor.
  - `dhcp_ip_config` (`list[obj]`): Configuration settings for a DHCP IP configuration. When `null`, the `dhcp_ip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.dhcp_ip_config.new](#fn-network_configdhcp_ip_confignew) constructor.
  - `host_config` (`list[obj]`): Represents common network settings irrespective of the host&#39;s IP address. When `null`, the `host_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.host_config.new](#fn-network_confighost_confignew) constructor.
  - `static_ip_config` (`list[obj]`): Configuration settings for a static IP configuration. When `null`, the `static_ip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.static_ip_config.new](#fn-network_configstatic_ip_confignew) constructor.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj network_config.control_plane_v2_config



### fn network_config.control_plane_v2_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.new` constructs a new object with attributes and blocks configured for the `control_plane_v2_config`
Terraform sub block.



**Args**:
  - `control_plane_ip_block` (`list[obj]`): Static IP addresses for the control plane nodes. When `null`, the `control_plane_ip_block` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.new](#fn-network_confignetwork_configcontrol_plane_ip_blocknew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane_v2_config` sub block.


## obj network_config.control_plane_v2_config.control_plane_ip_block



### fn network_config.control_plane_v2_config.control_plane_ip_block.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.new` constructs a new object with attributes and blocks configured for the `control_plane_ip_block`
Terraform sub block.



**Args**:
  - `gateway` (`string`): The network gateway used by the VMware User Cluster. When `null`, the `gateway` field will be omitted from the resulting object.
  - `netmask` (`string`): The netmask used by the VMware User Cluster. When `null`, the `netmask` field will be omitted from the resulting object.
  - `ips` (`list[obj]`): The node&#39;s network configurations used by the VMware User Cluster. When `null`, the `ips` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.ips.new](#fn-network_confignetwork_configcontrol_plane_v2_configipsnew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane_ip_block` sub block.


## obj network_config.control_plane_v2_config.control_plane_ip_block.ips



### fn network_config.control_plane_v2_config.control_plane_ip_block.ips.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.ips.new` constructs a new object with attributes and blocks configured for the `ips`
Terraform sub block.



**Args**:
  - `hostname` (`string`): Hostname of the machine. VM&#39;s name will be used if this field is empty. When `null`, the `hostname` field will be omitted from the resulting object.
  - `ip` (`string`): IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24). When `null`, the `ip` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ips` sub block.


## obj network_config.dhcp_ip_config



### fn network_config.dhcp_ip_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.dhcp_ip_config.new` constructs a new object with attributes and blocks configured for the `dhcp_ip_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): enabled is a flag to mark if DHCP IP allocation is
used for VMware user clusters.

**Returns**:
  - An attribute object that represents the `dhcp_ip_config` sub block.


## obj network_config.host_config



### fn network_config.host_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.host_config.new` constructs a new object with attributes and blocks configured for the `host_config`
Terraform sub block.



**Args**:
  - `dns_search_domains` (`list`): DNS search domains. When `null`, the `dns_search_domains` field will be omitted from the resulting object.
  - `dns_servers` (`list`): DNS servers. When `null`, the `dns_servers` field will be omitted from the resulting object.
  - `ntp_servers` (`list`): NTP servers. When `null`, the `ntp_servers` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `host_config` sub block.


## obj network_config.static_ip_config



### fn network_config.static_ip_config.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.static_ip_config.new` constructs a new object with attributes and blocks configured for the `static_ip_config`
Terraform sub block.



**Args**:
  - `ip_blocks` (`list[obj]`): Represents the configuration values for static IP allocation to nodes. When `null`, the `ip_blocks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.new](#fn-network_confignetwork_configip_blocksnew) constructor.

**Returns**:
  - An attribute object that represents the `static_ip_config` sub block.


## obj network_config.static_ip_config.ip_blocks



### fn network_config.static_ip_config.ip_blocks.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.new` constructs a new object with attributes and blocks configured for the `ip_blocks`
Terraform sub block.



**Args**:
  - `gateway` (`string`): The network gateway used by the VMware User Cluster.
  - `netmask` (`string`): The netmask used by the VMware User Cluster.
  - `ips` (`list[obj]`): The node&#39;s network configurations used by the VMware User Cluster. When `null`, the `ips` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.ips.new](#fn-network_confignetwork_configstatic_ip_configipsnew) constructor.

**Returns**:
  - An attribute object that represents the `ip_blocks` sub block.


## obj network_config.static_ip_config.ip_blocks.ips



### fn network_config.static_ip_config.ip_blocks.ips.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.ips.new` constructs a new object with attributes and blocks configured for the `ips`
Terraform sub block.



**Args**:
  - `hostname` (`string`): Hostname of the machine. VM&#39;s name will be used if this field is empty. When `null`, the `hostname` field will be omitted from the resulting object.
  - `ip` (`string`): IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).

**Returns**:
  - An attribute object that represents the `ips` sub block.


## obj storage



### fn storage.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.storage.new` constructs a new object with attributes and blocks configured for the `storage`
Terraform sub block.



**Args**:
  - `vsphere_csi_disabled` (`bool`): Whether or not to deploy vSphere CSI components in the VMware User Cluster.
Enabled by default.

**Returns**:
  - An attribute object that represents the `storage` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj upgrade_policy



### fn upgrade_policy.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.upgrade_policy.new` constructs a new object with attributes and blocks configured for the `upgrade_policy`
Terraform sub block.



**Args**:
  - `control_plane_only` (`bool`): Controls whether the upgrade applies to the control plane only. When `null`, the `control_plane_only` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `upgrade_policy` sub block.


## obj vcenter



### fn vcenter.new

```ts
new()
```


`google.gkeonprem_vmware_cluster.vcenter.new` constructs a new object with attributes and blocks configured for the `vcenter`
Terraform sub block.



**Args**:
  - `ca_cert_data` (`string`): Contains the vCenter CA certificate public key for SSL verification. When `null`, the `ca_cert_data` field will be omitted from the resulting object.
  - `cluster` (`string`): The name of the vCenter cluster for the user cluster. When `null`, the `cluster` field will be omitted from the resulting object.
  - `datacenter` (`string`): The name of the vCenter datacenter for the user cluster. When `null`, the `datacenter` field will be omitted from the resulting object.
  - `datastore` (`string`): The name of the vCenter datastore for the user cluster. When `null`, the `datastore` field will be omitted from the resulting object.
  - `folder` (`string`): The name of the vCenter folder for the user cluster. When `null`, the `folder` field will be omitted from the resulting object.
  - `resource_pool` (`string`): The name of the vCenter resource pool for the user cluster. When `null`, the `resource_pool` field will be omitted from the resulting object.
  - `storage_policy_name` (`string`): The name of the vCenter storage policy for the user cluster. When `null`, the `storage_policy_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vcenter` sub block.
