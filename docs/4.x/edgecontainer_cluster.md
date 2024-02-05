---
permalink: /edgecontainer_cluster/
---

# edgecontainer_cluster

`edgecontainer_cluster` represents the `google_edgecontainer_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthorization()`](#fn-withauthorization)
* [`fn withAuthorizationMixin()`](#fn-withauthorizationmixin)
* [`fn withControlPlane()`](#fn-withcontrolplane)
* [`fn withControlPlaneEncryption()`](#fn-withcontrolplaneencryption)
* [`fn withControlPlaneEncryptionMixin()`](#fn-withcontrolplaneencryptionmixin)
* [`fn withControlPlaneMixin()`](#fn-withcontrolplanemixin)
* [`fn withDefaultMaxPodsPerNode()`](#fn-withdefaultmaxpodspernode)
* [`fn withExternalLoadBalancerIpv4AddressPools()`](#fn-withexternalloadbalanceripv4addresspools)
* [`fn withFleet()`](#fn-withfleet)
* [`fn withFleetMixin()`](#fn-withfleetmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMaintenancePolicy()`](#fn-withmaintenancepolicy)
* [`fn withMaintenancePolicyMixin()`](#fn-withmaintenancepolicymixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetworking()`](#fn-withnetworking)
* [`fn withNetworkingMixin()`](#fn-withnetworkingmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withReleaseChannel()`](#fn-withreleasechannel)
* [`fn withSystemAddonsConfig()`](#fn-withsystemaddonsconfig)
* [`fn withSystemAddonsConfigMixin()`](#fn-withsystemaddonsconfigmixin)
* [`fn withTargetVersion()`](#fn-withtargetversion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj authorization`](#obj-authorization)
  * [`fn new()`](#fn-authorizationnew)
  * [`obj authorization.admin_users`](#obj-authorizationadmin_users)
    * [`fn new()`](#fn-authorizationadmin_usersnew)
* [`obj control_plane`](#obj-control_plane)
  * [`fn new()`](#fn-control_planenew)
  * [`obj control_plane.local`](#obj-control_planelocal)
    * [`fn new()`](#fn-control_planelocalnew)
  * [`obj control_plane.remote`](#obj-control_planeremote)
    * [`fn new()`](#fn-control_planeremotenew)
* [`obj control_plane_encryption`](#obj-control_plane_encryption)
  * [`fn new()`](#fn-control_plane_encryptionnew)
* [`obj fleet`](#obj-fleet)
  * [`fn new()`](#fn-fleetnew)
* [`obj maintenance_policy`](#obj-maintenance_policy)
  * [`fn new()`](#fn-maintenance_policynew)
  * [`obj maintenance_policy.window`](#obj-maintenance_policywindow)
    * [`fn new()`](#fn-maintenance_policywindownew)
    * [`obj maintenance_policy.window.recurring_window`](#obj-maintenance_policywindowrecurring_window)
      * [`fn new()`](#fn-maintenance_policywindowrecurring_windownew)
      * [`obj maintenance_policy.window.recurring_window.window`](#obj-maintenance_policywindowrecurring_windowwindow)
        * [`fn new()`](#fn-maintenance_policywindowrecurring_windowwindownew)
* [`obj networking`](#obj-networking)
  * [`fn new()`](#fn-networkingnew)
* [`obj system_addons_config`](#obj-system_addons_config)
  * [`fn new()`](#fn-system_addons_confignew)
  * [`obj system_addons_config.ingress`](#obj-system_addons_configingress)
    * [`fn new()`](#fn-system_addons_configingressnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.edgecontainer_cluster.new` injects a new `google_edgecontainer_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.edgecontainer_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.edgecontainer_cluster` using the reference:

    $._ref.google_edgecontainer_cluster.some_id.get('id')

This is the same as directly entering `"${ google_edgecontainer_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node used if a maximum value is not
specified explicitly for a node pool in this cluster. If unspecified, the
Kubernetes default value will be used. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.
  - `external_load_balancer_ipv4_address_pools` (`list`): Address pools for cluster data plane external load balancing. When `null`, the `external_load_balancer_ipv4_address_pools` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the edgecloud cluster.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The GDCE cluster name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `release_channel` (`string`): The release channel a cluster is subscribed to. Possible values: [&#34;RELEASE_CHANNEL_UNSPECIFIED&#34;, &#34;NONE&#34;, &#34;REGULAR&#34;] When `null`, the `release_channel` field will be omitted from the resulting object.
  - `target_version` (`string`): The target cluster version. For example: &#34;1.5.0&#34;. When `null`, the `target_version` field will be omitted from the resulting object.
  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GEC. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `control_plane` (`list[obj]`): The configuration of the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.new](#fn-control_planenew) constructor.
  - `control_plane_encryption` (`list[obj]`): Remote control plane disk encryption options. This field is only used when
enabling CMEK support. When `null`, the `control_plane_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane_encryption.new](#fn-control_plane_encryptionnew) constructor.
  - `fleet` (`list[obj]`): Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.fleet.new](#fn-fleetnew) constructor.
  - `maintenance_policy` (`list[obj]`): Cluster-wide maintenance policy configuration. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `networking` (`list[obj]`): Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.networking.new](#fn-networkingnew) constructor.
  - `system_addons_config` (`list[obj]`): Config that customers are allowed to define for GDCE system add-ons. When `null`, the `system_addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.system_addons_config.new](#fn-system_addons_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.edgecontainer_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `edgecontainer_cluster`
Terraform resource.

Unlike [google.edgecontainer_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node used if a maximum value is not
specified explicitly for a node pool in this cluster. If unspecified, the
Kubernetes default value will be used. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.
  - `external_load_balancer_ipv4_address_pools` (`list`): Address pools for cluster data plane external load balancing. When `null`, the `external_load_balancer_ipv4_address_pools` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the edgecloud cluster.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `name` (`string`): The GDCE cluster name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `release_channel` (`string`): The release channel a cluster is subscribed to. Possible values: [&#34;RELEASE_CHANNEL_UNSPECIFIED&#34;, &#34;NONE&#34;, &#34;REGULAR&#34;] When `null`, the `release_channel` field will be omitted from the resulting object.
  - `target_version` (`string`): The target cluster version. For example: &#34;1.5.0&#34;. When `null`, the `target_version` field will be omitted from the resulting object.
  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GEC. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `control_plane` (`list[obj]`): The configuration of the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.new](#fn-control_planenew) constructor.
  - `control_plane_encryption` (`list[obj]`): Remote control plane disk encryption options. This field is only used when
enabling CMEK support. When `null`, the `control_plane_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane_encryption.new](#fn-control_plane_encryptionnew) constructor.
  - `fleet` (`list[obj]`): Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.fleet.new](#fn-fleetnew) constructor.
  - `maintenance_policy` (`list[obj]`): Cluster-wide maintenance policy configuration. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `networking` (`list[obj]`): Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.networking.new](#fn-networkingnew) constructor.
  - `system_addons_config` (`list[obj]`): Config that customers are allowed to define for GDCE system add-ons. When `null`, the `system_addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.system_addons_config.new](#fn-system_addons_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgecontainer_cluster` resource into the root Terraform configuration.


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


### fn withControlPlaneEncryption

```ts
withControlPlaneEncryption()
```

`google.list[obj].withControlPlaneEncryption` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane_encryption field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withControlPlaneEncryptionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane_encryption` field.


### fn withControlPlaneEncryptionMixin

```ts
withControlPlaneEncryptionMixin()
```

`google.list[obj].withControlPlaneEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane_encryption field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlaneEncryption](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane_encryption` field.


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


### fn withDefaultMaxPodsPerNode

```ts
withDefaultMaxPodsPerNode()
```

`google.number.withDefaultMaxPodsPerNode` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the default_max_pods_per_node field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `default_max_pods_per_node` field.


### fn withExternalLoadBalancerIpv4AddressPools

```ts
withExternalLoadBalancerIpv4AddressPools()
```

`google.list.withExternalLoadBalancerIpv4AddressPools` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the external_load_balancer_ipv4_address_pools field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `external_load_balancer_ipv4_address_pools` field.


### fn withFleet

```ts
withFleet()
```

`google.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFleetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withFleetMixin

```ts
withFleetMixin()
```

`google.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFleet](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMaintenancePolicy

```ts
withMaintenancePolicy()
```

`google.list[obj].withMaintenancePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaintenancePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.


### fn withMaintenancePolicyMixin

```ts
withMaintenancePolicyMixin()
```

`google.list[obj].withMaintenancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenancePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworking

```ts
withNetworking()
```

`google.list[obj].withNetworking` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networking field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networking` field.


### fn withNetworkingMixin

```ts
withNetworkingMixin()
```

`google.list[obj].withNetworkingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networking field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworking](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networking` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReleaseChannel

```ts
withReleaseChannel()
```

`google.string.withReleaseChannel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the release_channel field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `release_channel` field.


### fn withSystemAddonsConfig

```ts
withSystemAddonsConfig()
```

`google.list[obj].withSystemAddonsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the system_addons_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSystemAddonsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `system_addons_config` field.


### fn withSystemAddonsConfigMixin

```ts
withSystemAddonsConfigMixin()
```

`google.list[obj].withSystemAddonsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the system_addons_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSystemAddonsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `system_addons_config` field.


### fn withTargetVersion

```ts
withTargetVersion()
```

`google.string.withTargetVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_version` field.


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


## obj authorization



### fn authorization.new

```ts
new()
```


`google.edgecontainer_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`
Terraform sub block.



**Args**:
  - `admin_users` (`list[obj]`): User that will be granted the cluster-admin role on the cluster, providing
full access to the cluster. Currently, this is a singular field, but will
be expanded to allow multiple admins in the future. When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.

**Returns**:
  - An attribute object that represents the `authorization` sub block.


## obj authorization.admin_users



### fn authorization.admin_users.new

```ts
new()
```


`google.edgecontainer_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`
Terraform sub block.



**Args**:
  - `username` (`string`): An active Google username.

**Returns**:
  - An attribute object that represents the `admin_users` sub block.


## obj control_plane



### fn control_plane.new

```ts
new()
```


`google.edgecontainer_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`
Terraform sub block.



**Args**:
  - `local_` (`list[obj]`): Local control plane configuration. When `null`, the `local_` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.local_.new](#fn-control_planelocal_new) constructor.
  - `remote` (`list[obj]`): Remote control plane configuration. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.remote.new](#fn-control_planeremotenew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane` sub block.


## obj control_plane.local



### fn control_plane.local.new

```ts
new()
```


`google.edgecontainer_cluster.control_plane.local.new` constructs a new object with attributes and blocks configured for the `local`
Terraform sub block.



**Args**:
  - `machine_filter` (`string`): Only machines matching this filter will be allowed to host control
plane nodes. The filtering language accepts strings like &#34;name=&lt;name&gt;&#34;,
and is documented here: [AIP-160](https://google.aip.dev/160). When `null`, the `machine_filter` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes to serve as replicas of the Control Plane.
Only 1 and 3 are supported. When `null`, the `node_count` field will be omitted from the resulting object.
  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zones where this node pool
will be created. For example: &#39;us-central1-edge-customer-a&#39;. When `null`, the `node_location` field will be omitted from the resulting object.
  - `shared_deployment_policy` (`string`): Policy configuration about how user applications are deployed. Possible values: [&#34;SHARED_DEPLOYMENT_POLICY_UNSPECIFIED&#34;, &#34;ALLOWED&#34;, &#34;DISALLOWED&#34;] When `null`, the `shared_deployment_policy` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `local` sub block.


## obj control_plane.remote



### fn control_plane.remote.new

```ts
new()
```


`google.edgecontainer_cluster.control_plane.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zones where this node pool
will be created. For example: &#39;us-central1-edge-customer-a&#39;. When `null`, the `node_location` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj control_plane_encryption



### fn control_plane_encryption.new

```ts
new()
```


`google.edgecontainer_cluster.control_plane_encryption.new` constructs a new object with attributes and blocks configured for the `control_plane_encryption`
Terraform sub block.



**Args**:
  - `kms_key` (`string`): The Cloud KMS CryptoKey e.g.
projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
to use for protecting control plane disks. If not specified, a
Google-managed key will be used instead. When `null`, the `kms_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `control_plane_encryption` sub block.


## obj fleet



### fn fleet.new

```ts
new()
```


`google.edgecontainer_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`
Terraform sub block.



**Args**:
  - `project` (`string`): The name of the Fleet host project where this cluster will be registered.
Project names are formatted as
&#39;projects/&lt;project-number&gt;&#39;.

**Returns**:
  - An attribute object that represents the `fleet` sub block.


## obj maintenance_policy



### fn maintenance_policy.new

```ts
new()
```


`google.edgecontainer_cluster.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`
Terraform sub block.



**Args**:
  - `window` (`list[obj]`): Specifies the maintenance window in which maintenance may be performed. When `null`, the `window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.window.new](#fn-maintenance_policywindownew) constructor.

**Returns**:
  - An attribute object that represents the `maintenance_policy` sub block.


## obj maintenance_policy.window



### fn maintenance_policy.window.new

```ts
new()
```


`google.edgecontainer_cluster.maintenance_policy.window.new` constructs a new object with attributes and blocks configured for the `window`
Terraform sub block.



**Args**:
  - `recurring_window` (`list[obj]`): Represents an arbitrary window of time that recurs. When `null`, the `recurring_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.window.recurring_window.new](#fn-maintenance_policymaintenance_policyrecurring_windownew) constructor.

**Returns**:
  - An attribute object that represents the `window` sub block.


## obj maintenance_policy.window.recurring_window



### fn maintenance_policy.window.recurring_window.new

```ts
new()
```


`google.edgecontainer_cluster.maintenance_policy.window.recurring_window.new` constructs a new object with attributes and blocks configured for the `recurring_window`
Terraform sub block.



**Args**:
  - `recurrence` (`string`): An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
this window recurs. They go on for the span of time between the start and
end time. When `null`, the `recurrence` field will be omitted from the resulting object.
  - `window` (`list[obj]`): Represents an arbitrary window of time. When `null`, the `window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.window.recurring_window.window.new](#fn-maintenance_policymaintenance_policywindowwindownew) constructor.

**Returns**:
  - An attribute object that represents the `recurring_window` sub block.


## obj maintenance_policy.window.recurring_window.window



### fn maintenance_policy.window.recurring_window.window.new

```ts
new()
```


`google.edgecontainer_cluster.maintenance_policy.window.recurring_window.window.new` constructs a new object with attributes and blocks configured for the `window`
Terraform sub block.



**Args**:
  - `end_time` (`string`): The time that the window ends. The end time must take place after the
start time. When `null`, the `end_time` field will be omitted from the resulting object.
  - `start_time` (`string`): The time that the window first starts. When `null`, the `start_time` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `window` sub block.


## obj networking



### fn networking.new

```ts
new()
```


`google.edgecontainer_cluster.networking.new` constructs a new object with attributes and blocks configured for the `networking`
Terraform sub block.



**Args**:
  - `cluster_ipv4_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these
blocks. Only a single block is supported. This field cannot be changed
after creation.
  - `cluster_ipv6_cidr_blocks` (`list`): If specified, dual stack mode is enabled and all pods in the cluster are
assigned an IPv6 address from these blocks alongside from an IPv4
address. Only a single block is supported. This field cannot be changed
after creation. When `null`, the `cluster_ipv6_cidr_blocks` field will be omitted from the resulting object.
  - `services_ipv4_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address from these
blocks. Only a single block is supported. This field cannot be changed
after creation.
  - `services_ipv6_cidr_blocks` (`list`): If specified, dual stack mode is enabled and all services in the cluster are
assigned an IPv6 address from these blocks alongside from an IPv4
address. Only a single block is supported. This field cannot be changed
after creation. When `null`, the `services_ipv6_cidr_blocks` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `networking` sub block.


## obj system_addons_config



### fn system_addons_config.new

```ts
new()
```


`google.edgecontainer_cluster.system_addons_config.new` constructs a new object with attributes and blocks configured for the `system_addons_config`
Terraform sub block.



**Args**:
  - `ingress` (`list[obj]`): Config for the Ingress add-on which allows customers to create an Ingress
object to manage external access to the servers in a cluster. The add-on
consists of istiod and istio-ingress. When `null`, the `ingress` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.system_addons_config.ingress.new](#fn-system_addons_configingressnew) constructor.

**Returns**:
  - An attribute object that represents the `system_addons_config` sub block.


## obj system_addons_config.ingress



### fn system_addons_config.ingress.new

```ts
new()
```


`google.edgecontainer_cluster.system_addons_config.ingress.new` constructs a new object with attributes and blocks configured for the `ingress`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): Whether Ingress is disabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `ipv4_vip` (`string`): Ingress VIP. When `null`, the `ipv4_vip` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ingress` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.edgecontainer_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
