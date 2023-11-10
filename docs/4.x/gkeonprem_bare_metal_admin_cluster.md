---
permalink: /gkeonprem_bare_metal_admin_cluster/
---

# gkeonprem_bare_metal_admin_cluster

`gkeonprem_bare_metal_admin_cluster` represents the `google_gkeonprem_bare_metal_admin_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withBareMetalVersion()`](#fn-withbaremetalversion)
* [`fn withClusterOperations()`](#fn-withclusteroperations)
* [`fn withClusterOperationsMixin()`](#fn-withclusteroperationsmixin)
* [`fn withControlPlane()`](#fn-withcontrolplane)
* [`fn withControlPlaneMixin()`](#fn-withcontrolplanemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLoadBalancer()`](#fn-withloadbalancer)
* [`fn withLoadBalancerMixin()`](#fn-withloadbalancermixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMaintenanceConfig()`](#fn-withmaintenanceconfig)
* [`fn withMaintenanceConfigMixin()`](#fn-withmaintenanceconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withNodeAccessConfig()`](#fn-withnodeaccessconfig)
* [`fn withNodeAccessConfigMixin()`](#fn-withnodeaccessconfigmixin)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withProxy()`](#fn-withproxy)
* [`fn withProxyMixin()`](#fn-withproxymixin)
* [`fn withSecurityConfig()`](#fn-withsecurityconfig)
* [`fn withSecurityConfigMixin()`](#fn-withsecurityconfigmixin)
* [`fn withStorage()`](#fn-withstorage)
* [`fn withStorageMixin()`](#fn-withstoragemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj cluster_operations`](#obj-cluster_operations)
  * [`fn new()`](#fn-cluster_operationsnew)
* [`obj control_plane`](#obj-control_plane)
  * [`fn new()`](#fn-control_planenew)
  * [`obj control_plane.api_server_args`](#obj-control_planeapi_server_args)
    * [`fn new()`](#fn-control_planeapi_server_argsnew)
  * [`obj control_plane.control_plane_node_pool_config`](#obj-control_planecontrol_plane_node_pool_config)
    * [`fn new()`](#fn-control_planecontrol_plane_node_pool_confignew)
    * [`obj control_plane.control_plane_node_pool_config.node_pool_config`](#obj-control_planecontrol_plane_node_pool_confignode_pool_config)
      * [`fn new()`](#fn-control_planecontrol_plane_node_pool_confignode_pool_confignew)
      * [`obj control_plane.control_plane_node_pool_config.node_pool_config.node_configs`](#obj-control_planecontrol_plane_node_pool_confignode_pool_confignode_configs)
        * [`fn new()`](#fn-control_planecontrol_plane_node_pool_confignode_pool_confignode_configsnew)
      * [`obj control_plane.control_plane_node_pool_config.node_pool_config.taints`](#obj-control_planecontrol_plane_node_pool_confignode_pool_configtaints)
        * [`fn new()`](#fn-control_planecontrol_plane_node_pool_confignode_pool_configtaintsnew)
* [`obj load_balancer`](#obj-load_balancer)
  * [`fn new()`](#fn-load_balancernew)
  * [`obj load_balancer.manual_lb_config`](#obj-load_balancermanual_lb_config)
    * [`fn new()`](#fn-load_balancermanual_lb_confignew)
  * [`obj load_balancer.port_config`](#obj-load_balancerport_config)
    * [`fn new()`](#fn-load_balancerport_confignew)
  * [`obj load_balancer.vip_config`](#obj-load_balancervip_config)
    * [`fn new()`](#fn-load_balancervip_confignew)
* [`obj maintenance_config`](#obj-maintenance_config)
  * [`fn new()`](#fn-maintenance_confignew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
  * [`obj network_config.island_mode_cidr`](#obj-network_configisland_mode_cidr)
    * [`fn new()`](#fn-network_configisland_mode_cidrnew)
* [`obj node_access_config`](#obj-node_access_config)
  * [`fn new()`](#fn-node_access_confignew)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
* [`obj proxy`](#obj-proxy)
  * [`fn new()`](#fn-proxynew)
* [`obj security_config`](#obj-security_config)
  * [`fn new()`](#fn-security_confignew)
  * [`obj security_config.authorization`](#obj-security_configauthorization)
    * [`fn new()`](#fn-security_configauthorizationnew)
    * [`obj security_config.authorization.admin_users`](#obj-security_configauthorizationadmin_users)
      * [`fn new()`](#fn-security_configauthorizationadmin_usersnew)
* [`obj storage`](#obj-storage)
  * [`fn new()`](#fn-storagenew)
  * [`obj storage.lvp_node_mounts_config`](#obj-storagelvp_node_mounts_config)
    * [`fn new()`](#fn-storagelvp_node_mounts_confignew)
  * [`obj storage.lvp_share_config`](#obj-storagelvp_share_config)
    * [`fn new()`](#fn-storagelvp_share_confignew)
    * [`obj storage.lvp_share_config.lvp_config`](#obj-storagelvp_share_configlvp_config)
      * [`fn new()`](#fn-storagelvp_share_configlvp_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.new` injects a new `google_gkeonprem_bare_metal_admin_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gkeonprem_bare_metal_admin_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.gkeonprem_bare_metal_admin_cluster` using the reference:

    $._ref.google_gkeonprem_bare_metal_admin_cluster.some_id.get('id')

This is the same as directly entering `"${ google_gkeonprem_bare_metal_admin_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Annotations on the Bare Metal Admin Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `bare_metal_version` (`string`): A human readable description of this Bare Metal Admin Cluster. When `null`, the `bare_metal_version` field will be omitted from the resulting object.
  - `description` (`string`): A human readable description of this Bare Metal Admin Cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The bare metal admin cluster name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `cluster_operations` (`list[obj]`): Specifies the Admin Cluster&#39;s observability infrastructure. When `null`, the `cluster_operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.cluster_operations.new](#fn-cluster_operationsnew) constructor.
  - `control_plane` (`list[obj]`): Specifies the control plane configuration. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.new](#fn-control_planenew) constructor.
  - `load_balancer` (`list[obj]`): Specifies the load balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.load_balancer.new](#fn-load_balancernew) constructor.
  - `maintenance_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `maintenance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.maintenance_config.new](#fn-maintenance_confignew) constructor.
  - `network_config` (`list[obj]`): Network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.network_config.new](#fn-network_confignew) constructor.
  - `node_access_config` (`list[obj]`): Specifies the node access related settings for the bare metal user cluster. When `null`, the `node_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.node_access_config.new](#fn-node_access_confignew) constructor.
  - `node_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.node_config.new](#fn-node_confignew) constructor.
  - `proxy` (`list[obj]`): Specifies the cluster proxy configuration. When `null`, the `proxy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.proxy.new](#fn-proxynew) constructor.
  - `security_config` (`list[obj]`): Specifies the security related settings for the Bare Metal User Cluster. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.security_config.new](#fn-security_confignew) constructor.
  - `storage` (`list[obj]`): Specifies the cluster storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.storage.new](#fn-storagenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gkeonprem_bare_metal_admin_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_bare_metal_admin_cluster`
Terraform resource.

Unlike [google.gkeonprem_bare_metal_admin_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Annotations on the Bare Metal Admin Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `bare_metal_version` (`string`): A human readable description of this Bare Metal Admin Cluster. When `null`, the `bare_metal_version` field will be omitted from the resulting object.
  - `description` (`string`): A human readable description of this Bare Metal Admin Cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The bare metal admin cluster name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `cluster_operations` (`list[obj]`): Specifies the Admin Cluster&#39;s observability infrastructure. When `null`, the `cluster_operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.cluster_operations.new](#fn-cluster_operationsnew) constructor.
  - `control_plane` (`list[obj]`): Specifies the control plane configuration. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.new](#fn-control_planenew) constructor.
  - `load_balancer` (`list[obj]`): Specifies the load balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.load_balancer.new](#fn-load_balancernew) constructor.
  - `maintenance_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `maintenance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.maintenance_config.new](#fn-maintenance_confignew) constructor.
  - `network_config` (`list[obj]`): Network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.network_config.new](#fn-network_confignew) constructor.
  - `node_access_config` (`list[obj]`): Specifies the node access related settings for the bare metal user cluster. When `null`, the `node_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.node_access_config.new](#fn-node_access_confignew) constructor.
  - `node_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.node_config.new](#fn-node_confignew) constructor.
  - `proxy` (`list[obj]`): Specifies the cluster proxy configuration. When `null`, the `proxy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.proxy.new](#fn-proxynew) constructor.
  - `security_config` (`list[obj]`): Specifies the security related settings for the Bare Metal User Cluster. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.security_config.new](#fn-security_confignew) constructor.
  - `storage` (`list[obj]`): Specifies the cluster storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.storage.new](#fn-storagenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_bare_metal_admin_cluster` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withBareMetalVersion

```ts
withBareMetalVersion()
```

`google.string.withBareMetalVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bare_metal_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bare_metal_version` field.


### fn withClusterOperations

```ts
withClusterOperations()
```

`google.list[obj].withClusterOperations` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_operations field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withClusterOperationsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_operations` field.


### fn withClusterOperationsMixin

```ts
withClusterOperationsMixin()
```

`google.list[obj].withClusterOperationsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_operations field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withClusterOperations](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_operations` field.


### fn withControlPlane

```ts
withControlPlane()
```

`google.list[obj].withControlPlane` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withControlPlaneMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane` field.


### fn withControlPlaneMixin

```ts
withControlPlaneMixin()
```

`google.list[obj].withControlPlaneMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlane](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withMaintenanceConfig

```ts
withMaintenanceConfig()
```

`google.list[obj].withMaintenanceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaintenanceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_config` field.


### fn withMaintenanceConfigMixin

```ts
withMaintenanceConfigMixin()
```

`google.list[obj].withMaintenanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_config` field.


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


### fn withNodeAccessConfig

```ts
withNodeAccessConfig()
```

`google.list[obj].withNodeAccessConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_access_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeAccessConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_access_config` field.


### fn withNodeAccessConfigMixin

```ts
withNodeAccessConfigMixin()
```

`google.list[obj].withNodeAccessConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_access_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeAccessConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_access_config` field.


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


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withProxy

```ts
withProxy()
```

`google.list[obj].withProxy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the proxy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withProxyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `proxy` field.


### fn withProxyMixin

```ts
withProxyMixin()
```

`google.list[obj].withProxyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the proxy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withProxy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `proxy` field.


### fn withSecurityConfig

```ts
withSecurityConfig()
```

`google.list[obj].withSecurityConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the security_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSecurityConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `security_config` field.


### fn withSecurityConfigMixin

```ts
withSecurityConfigMixin()
```

`google.list[obj].withSecurityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the security_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSecurityConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `security_config` field.


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


## obj cluster_operations



### fn cluster_operations.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.cluster_operations.new` constructs a new object with attributes and blocks configured for the `cluster_operations`
Terraform sub block.



**Args**:
  - `enable_application_logs` (`bool`): Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics). When `null`, the `enable_application_logs` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cluster_operations` sub block.


## obj control_plane



### fn control_plane.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`
Terraform sub block.



**Args**:
  - `api_server_args` (`list[obj]`): Customizes the default API server args. Only a subset of
customized flags are supported. Please refer to the API server
documentation below to know the exact format:
https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/ When `null`, the `api_server_args` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.api_server_args.new](#fn-control_planeapi_server_argsnew) constructor.
  - `control_plane_node_pool_config` (`list[obj]`): Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster&#39;s control plane. The NodePool will have the same name and namespace as the cluster. When `null`, the `control_plane_node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.new](#fn-control_planecontrol_plane_node_pool_confignew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane` sub block.


## obj control_plane.api_server_args



### fn control_plane.api_server_args.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.control_plane.api_server_args.new` constructs a new object with attributes and blocks configured for the `api_server_args`
Terraform sub block.



**Args**:
  - `argument` (`string`): The argument name as it appears on the API Server command line please make sure to remove the leading dashes.
  - `value` (`string`): The value of the arg as it will be passed to the API Server command line.

**Returns**:
  - An attribute object that represents the `api_server_args` sub block.


## obj control_plane.control_plane_node_pool_config



### fn control_plane.control_plane_node_pool_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.new` constructs a new object with attributes and blocks configured for the `control_plane_node_pool_config`
Terraform sub block.



**Args**:
  - `node_pool_config` (`list[obj]`): The generic configuration for a node pool running the control plane. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.node_pool_config.new](#fn-control_planecontrol_planenode_pool_confignew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane_node_pool_config` sub block.


## obj control_plane.control_plane_node_pool_config.node_pool_config



### fn control_plane.control_plane_node_pool_config.node_pool_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`
Terraform sub block.



**Args**:
  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it&#39;s best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `operating_system` (`string`): Specifies the nodes operating system (default: LINUX). When `null`, the `operating_system` field will be omitted from the resulting object.
  - `node_configs` (`list[obj]`): The list of machine addresses in the Bare Metal Node Pool. When `null`, the `node_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.node_pool_config.node_configs.new](#fn-control_planecontrol_planecontrol_plane_node_pool_confignode_configsnew) constructor.
  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.node_pool_config.taints.new](#fn-control_planecontrol_planecontrol_plane_node_pool_configtaintsnew) constructor.

**Returns**:
  - An attribute object that represents the `node_pool_config` sub block.


## obj control_plane.control_plane_node_pool_config.node_pool_config.node_configs



### fn control_plane.control_plane_node_pool_config.node_pool_config.node_configs.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.node_pool_config.node_configs.new` constructs a new object with attributes and blocks configured for the `node_configs`
Terraform sub block.



**Args**:
  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it&#39;s best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `node_ip` (`string`): The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 When `null`, the `node_ip` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_configs` sub block.


## obj control_plane.control_plane_node_pool_config.node_pool_config.taints



### fn control_plane.control_plane_node_pool_config.node_pool_config.taints.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.control_plane.control_plane_node_pool_config.node_pool_config.taints.new` constructs a new object with attributes and blocks configured for the `taints`
Terraform sub block.



**Args**:
  - `effect` (`string`): Specifies the nodes operating system (default: LINUX). Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.
  - `key` (`string`): Key associated with the effect. When `null`, the `key` field will be omitted from the resulting object.
  - `value` (`string`): Value associated with the effect. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `taints` sub block.


## obj load_balancer



### fn load_balancer.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.load_balancer.new` constructs a new object with attributes and blocks configured for the `load_balancer`
Terraform sub block.



**Args**:
  - `manual_lb_config` (`list[obj]`): A nested object resource When `null`, the `manual_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.load_balancer.manual_lb_config.new](#fn-load_balancermanual_lb_confignew) constructor.
  - `port_config` (`list[obj]`): Specifies the load balancer ports. When `null`, the `port_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.load_balancer.port_config.new](#fn-load_balancerport_confignew) constructor.
  - `vip_config` (`list[obj]`): Specified the Bare Metal Load Balancer Config When `null`, the `vip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.load_balancer.vip_config.new](#fn-load_balancervip_confignew) constructor.

**Returns**:
  - An attribute object that represents the `load_balancer` sub block.


## obj load_balancer.manual_lb_config



### fn load_balancer.manual_lb_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.load_balancer.manual_lb_config.new` constructs a new object with attributes and blocks configured for the `manual_lb_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether manual load balancing is enabled.

**Returns**:
  - An attribute object that represents the `manual_lb_config` sub block.


## obj load_balancer.port_config



### fn load_balancer.port_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.load_balancer.port_config.new` constructs a new object with attributes and blocks configured for the `port_config`
Terraform sub block.



**Args**:
  - `control_plane_load_balancer_port` (`number`): The port that control plane hosted load balancers will listen on.

**Returns**:
  - An attribute object that represents the `port_config` sub block.


## obj load_balancer.vip_config



### fn load_balancer.vip_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.load_balancer.vip_config.new` constructs a new object with attributes and blocks configured for the `vip_config`
Terraform sub block.



**Args**:
  - `control_plane_vip` (`string`): The VIP which you previously set aside for the Kubernetes API of this Bare Metal Admin Cluster.

**Returns**:
  - An attribute object that represents the `vip_config` sub block.


## obj maintenance_config



### fn maintenance_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.maintenance_config.new` constructs a new object with attributes and blocks configured for the `maintenance_config`
Terraform sub block.



**Args**:
  - `maintenance_address_cidr_blocks` (`list`): All IPv4 address from these ranges will be placed into maintenance mode.
Nodes in maintenance mode will be cordoned and drained. When both of these
are true, the &#34;baremetal.cluster.gke.io/maintenance&#34; annotation will be set
on the node resource.

**Returns**:
  - An attribute object that represents the `maintenance_config` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `island_mode_cidr` (`list[obj]`): A nested object resource When `null`, the `island_mode_cidr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.network_config.island_mode_cidr.new](#fn-network_configisland_mode_cidrnew) constructor.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj network_config.island_mode_cidr



### fn network_config.island_mode_cidr.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.network_config.island_mode_cidr.new` constructs a new object with attributes and blocks configured for the `island_mode_cidr`
Terraform sub block.



**Args**:
  - `pod_address_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  - `service_address_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.

**Returns**:
  - An attribute object that represents the `island_mode_cidr` sub block.


## obj node_access_config



### fn node_access_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.node_access_config.new` constructs a new object with attributes and blocks configured for the `node_access_config`
Terraform sub block.



**Args**:
  - `login_user` (`string`): LoginUser is the user name used to access node machines.
It defaults to &#34;root&#34; if not set. When `null`, the `login_user` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_access_config` sub block.


## obj node_config



### fn node_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `max_pods_per_node` (`number`): The maximum number of pods a node can run. The size of the CIDR range
assigned to the node will be derived from this parameter. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj proxy



### fn proxy.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.proxy.new` constructs a new object with attributes and blocks configured for the `proxy`
Terraform sub block.



**Args**:
  - `no_proxy` (`list`): A list of IPs, hostnames, and domains that should skip the proxy.
Examples: [&#34;127.0.0.1&#34;, &#34;example.com&#34;, &#34;.corp&#34;, &#34;localhost&#34;]. When `null`, the `no_proxy` field will be omitted from the resulting object.
  - `uri` (`string`): Specifies the address of your proxy server.
Examples: http://domain
WARNING: Do not provide credentials in the format
http://(username:password@)domain these will be rejected by the server.

**Returns**:
  - An attribute object that represents the `proxy` sub block.


## obj security_config



### fn security_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.security_config.new` constructs a new object with attributes and blocks configured for the `security_config`
Terraform sub block.



**Args**:
  - `authorization` (`list[obj]`): Configures user access to the Bare Metal User cluster. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.security_config.authorization.new](#fn-security_configauthorizationnew) constructor.

**Returns**:
  - An attribute object that represents the `security_config` sub block.


## obj security_config.authorization



### fn security_config.authorization.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.security_config.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`
Terraform sub block.



**Args**:
  - `admin_users` (`list[obj]`): Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster. When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.security_config.authorization.admin_users.new](#fn-security_configsecurity_configadmin_usersnew) constructor.

**Returns**:
  - An attribute object that represents the `authorization` sub block.


## obj security_config.authorization.admin_users



### fn security_config.authorization.admin_users.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.security_config.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`
Terraform sub block.



**Args**:
  - `username` (`string`): The name of the user, e.g. &#39;my-gcp-id@gmail.com&#39;.

**Returns**:
  - An attribute object that represents the `admin_users` sub block.


## obj storage



### fn storage.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.storage.new` constructs a new object with attributes and blocks configured for the `storage`
Terraform sub block.



**Args**:
  - `lvp_node_mounts_config` (`list[obj]`): Specifies the config for local PersistentVolumes backed
by mounted node disks. These disks need to be formatted and mounted by the
user, which can be done before or after cluster creation. When `null`, the `lvp_node_mounts_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.storage.lvp_node_mounts_config.new](#fn-storagelvp_node_mounts_confignew) constructor.
  - `lvp_share_config` (`list[obj]`): Specifies the config for local PersistentVolumes backed by
subdirectories in a shared filesystem. These subdirectores are
automatically created during cluster creation. When `null`, the `lvp_share_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.storage.lvp_share_config.new](#fn-storagelvp_share_confignew) constructor.

**Returns**:
  - An attribute object that represents the `storage` sub block.


## obj storage.lvp_node_mounts_config



### fn storage.lvp_node_mounts_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.storage.lvp_node_mounts_config.new` constructs a new object with attributes and blocks configured for the `lvp_node_mounts_config`
Terraform sub block.



**Args**:
  - `path` (`string`): The host machine path.
  - `storage_class` (`string`): The StorageClass name that PVs will be created with.

**Returns**:
  - An attribute object that represents the `lvp_node_mounts_config` sub block.


## obj storage.lvp_share_config



### fn storage.lvp_share_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.storage.lvp_share_config.new` constructs a new object with attributes and blocks configured for the `lvp_share_config`
Terraform sub block.



**Args**:
  - `shared_path_pv_count` (`number`): The number of subdirectories to create under path. When `null`, the `shared_path_pv_count` field will be omitted from the resulting object.
  - `lvp_config` (`list[obj]`): Defines the machine path and storage class for the LVP Share. When `null`, the `lvp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_admin_cluster.storage.lvp_share_config.lvp_config.new](#fn-storagestoragelvp_confignew) constructor.

**Returns**:
  - An attribute object that represents the `lvp_share_config` sub block.


## obj storage.lvp_share_config.lvp_config



### fn storage.lvp_share_config.lvp_config.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.storage.lvp_share_config.lvp_config.new` constructs a new object with attributes and blocks configured for the `lvp_config`
Terraform sub block.



**Args**:
  - `path` (`string`): The host machine path.
  - `storage_class` (`string`): The StorageClass name that PVs will be created with.

**Returns**:
  - An attribute object that represents the `lvp_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gkeonprem_bare_metal_admin_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
