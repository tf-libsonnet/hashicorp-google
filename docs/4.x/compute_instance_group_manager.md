---
permalink: /compute_instance_group_manager/
---

# compute_instance_group_manager

`compute_instance_group_manager` represents the `google_compute_instance_group_manager` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoHealingPolicies()`](#fn-withautohealingpolicies)
* [`fn withAutoHealingPoliciesMixin()`](#fn-withautohealingpoliciesmixin)
* [`fn withBaseInstanceName()`](#fn-withbaseinstancename)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withListManagedInstancesResults()`](#fn-withlistmanagedinstancesresults)
* [`fn withName()`](#fn-withname)
* [`fn withNamedPort()`](#fn-withnamedport)
* [`fn withNamedPortMixin()`](#fn-withnamedportmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withStatefulDisk()`](#fn-withstatefuldisk)
* [`fn withStatefulDiskMixin()`](#fn-withstatefuldiskmixin)
* [`fn withTargetPools()`](#fn-withtargetpools)
* [`fn withTargetSize()`](#fn-withtargetsize)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUpdatePolicy()`](#fn-withupdatepolicy)
* [`fn withUpdatePolicyMixin()`](#fn-withupdatepolicymixin)
* [`fn withVersion()`](#fn-withversion)
* [`fn withVersionMixin()`](#fn-withversionmixin)
* [`fn withWaitForInstances()`](#fn-withwaitforinstances)
* [`fn withWaitForInstancesStatus()`](#fn-withwaitforinstancesstatus)
* [`fn withZone()`](#fn-withzone)
* [`obj auto_healing_policies`](#obj-auto_healing_policies)
  * [`fn new()`](#fn-auto_healing_policiesnew)
* [`obj named_port`](#obj-named_port)
  * [`fn new()`](#fn-named_portnew)
* [`obj stateful_disk`](#obj-stateful_disk)
  * [`fn new()`](#fn-stateful_disknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj update_policy`](#obj-update_policy)
  * [`fn new()`](#fn-update_policynew)
* [`obj version`](#obj-version)
  * [`fn new()`](#fn-versionnew)
  * [`obj version.target_size`](#obj-versiontarget_size)
    * [`fn new()`](#fn-versiontarget_sizenew)

## Fields

### fn new

```ts
new()
```


`google.compute_instance_group_manager.new` injects a new `google_compute_instance_group_manager` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_instance_group_manager.new('some_id')

You can get the reference to the `id` field of the created `google.compute_instance_group_manager` using the reference:

    $._ref.google_compute_instance_group_manager.some_id.get('id')

This is the same as directly entering `"${ google_compute_instance_group_manager.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `base_instance_name` (`string`): The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name.
  - `description` (`string`): An optional textual description of the instance group manager. When `null`, the `description` field will be omitted from the resulting object.
  - `list_managed_instances_results` (`string`): Pagination behavior of the listManagedInstances API method for this managed instance group. Valid values are: &#34;PAGELESS&#34;, &#34;PAGINATED&#34;. If PAGELESS (default), Pagination is disabled for the group&#39;s listManagedInstances API method. maxResults and pageToken query parameters are ignored and all instances are returned in a single response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are respected. When `null`, the `list_managed_instances_results` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `target_pools` (`list`): The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances. When `null`, the `target_pools` field will be omitted from the resulting object.
  - `target_size` (`number`): The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0. When `null`, the `target_size` field will be omitted from the resulting object.
  - `wait_for_instances` (`bool`): Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out. When `null`, the `wait_for_instances` field will be omitted from the resulting object.
  - `wait_for_instances_status` (`string`): When used with wait_for_instances specifies the status to wait for. When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is set, it will wait for the version target to be reached and any per instance configs to be effective as well as all instances to be stable before returning. When `null`, the `wait_for_instances_status` field will be omitted from the resulting object.
  - `zone` (`string`): The zone that instances in this group should be created in. When `null`, the `zone` field will be omitted from the resulting object.
  - `auto_healing_policies` (`list[obj]`): The autohealing policies for this managed instance group. You can specify only one value. When `null`, the `auto_healing_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.auto_healing_policies.new](#fn-auto_healing_policiesnew) constructor.
  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.named_port.new](#fn-named_portnew) constructor.
  - `stateful_disk` (`list[obj]`): Disks created on the instances that will be preserved on instance delete, update, etc. When `null`, the `stateful_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.stateful_disk.new](#fn-stateful_disknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.timeouts.new](#fn-timeoutsnew) constructor.
  - `update_policy` (`list[obj]`): The update policy for this managed instance group. When `null`, the `update_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.update_policy.new](#fn-update_policynew) constructor.
  - `version` (`list[obj]`): Application versions managed by this instance group. Each version deals with a specific instance template, allowing canary release scenarios. When `null`, the `version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.version.new](#fn-versionnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_instance_group_manager.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_group_manager`
Terraform resource.

Unlike [google.compute_instance_group_manager.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `base_instance_name` (`string`): The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name.
  - `description` (`string`): An optional textual description of the instance group manager. When `null`, the `description` field will be omitted from the resulting object.
  - `list_managed_instances_results` (`string`): Pagination behavior of the listManagedInstances API method for this managed instance group. Valid values are: &#34;PAGELESS&#34;, &#34;PAGINATED&#34;. If PAGELESS (default), Pagination is disabled for the group&#39;s listManagedInstances API method. maxResults and pageToken query parameters are ignored and all instances are returned in a single response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are respected. When `null`, the `list_managed_instances_results` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `target_pools` (`list`): The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances. When `null`, the `target_pools` field will be omitted from the resulting object.
  - `target_size` (`number`): The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0. When `null`, the `target_size` field will be omitted from the resulting object.
  - `wait_for_instances` (`bool`): Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out. When `null`, the `wait_for_instances` field will be omitted from the resulting object.
  - `wait_for_instances_status` (`string`): When used with wait_for_instances specifies the status to wait for. When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is set, it will wait for the version target to be reached and any per instance configs to be effective as well as all instances to be stable before returning. When `null`, the `wait_for_instances_status` field will be omitted from the resulting object.
  - `zone` (`string`): The zone that instances in this group should be created in. When `null`, the `zone` field will be omitted from the resulting object.
  - `auto_healing_policies` (`list[obj]`): The autohealing policies for this managed instance group. You can specify only one value. When `null`, the `auto_healing_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.auto_healing_policies.new](#fn-auto_healing_policiesnew) constructor.
  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.named_port.new](#fn-named_portnew) constructor.
  - `stateful_disk` (`list[obj]`): Disks created on the instances that will be preserved on instance delete, update, etc. When `null`, the `stateful_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.stateful_disk.new](#fn-stateful_disknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.timeouts.new](#fn-timeoutsnew) constructor.
  - `update_policy` (`list[obj]`): The update policy for this managed instance group. When `null`, the `update_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.update_policy.new](#fn-update_policynew) constructor.
  - `version` (`list[obj]`): Application versions managed by this instance group. Each version deals with a specific instance template, allowing canary release scenarios. When `null`, the `version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.version.new](#fn-versionnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_instance_group_manager` resource into the root Terraform configuration.


### fn withAutoHealingPolicies

```ts
withAutoHealingPolicies()
```

`google.list[obj].withAutoHealingPolicies` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the auto_healing_policies field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoHealingPoliciesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `auto_healing_policies` field.


### fn withAutoHealingPoliciesMixin

```ts
withAutoHealingPoliciesMixin()
```

`google.list[obj].withAutoHealingPoliciesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the auto_healing_policies field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoHealingPolicies](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `auto_healing_policies` field.


### fn withBaseInstanceName

```ts
withBaseInstanceName()
```

`google.string.withBaseInstanceName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the base_instance_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `base_instance_name` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withListManagedInstancesResults

```ts
withListManagedInstancesResults()
```

`google.string.withListManagedInstancesResults` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the list_managed_instances_results field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `list_managed_instances_results` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNamedPort

```ts
withNamedPort()
```

`google.list[obj].withNamedPort` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the named_port field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNamedPortMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `named_port` field.


### fn withNamedPortMixin

```ts
withNamedPortMixin()
```

`google.list[obj].withNamedPortMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the named_port field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNamedPort](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `named_port` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withStatefulDisk

```ts
withStatefulDisk()
```

`google.list[obj].withStatefulDisk` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stateful_disk field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withStatefulDiskMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stateful_disk` field.


### fn withStatefulDiskMixin

```ts
withStatefulDiskMixin()
```

`google.list[obj].withStatefulDiskMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stateful_disk field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withStatefulDisk](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stateful_disk` field.


### fn withTargetPools

```ts
withTargetPools()
```

`google.list.withTargetPools` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_pools field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_pools` field.


### fn withTargetSize

```ts
withTargetSize()
```

`google.number.withTargetSize` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the target_size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `target_size` field.


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


### fn withUpdatePolicy

```ts
withUpdatePolicy()
```

`google.list[obj].withUpdatePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the update_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withUpdatePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `update_policy` field.


### fn withUpdatePolicyMixin

```ts
withUpdatePolicyMixin()
```

`google.list[obj].withUpdatePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the update_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withUpdatePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `update_policy` field.


### fn withVersion

```ts
withVersion()
```

`google.list[obj].withVersion` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the version field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVersionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `version` field.


### fn withVersionMixin

```ts
withVersionMixin()
```

`google.list[obj].withVersionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the version field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVersion](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `version` field.


### fn withWaitForInstances

```ts
withWaitForInstances()
```

`google.bool.withWaitForInstances` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the wait_for_instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `wait_for_instances` field.


### fn withWaitForInstancesStatus

```ts
withWaitForInstancesStatus()
```

`google.string.withWaitForInstancesStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the wait_for_instances_status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `wait_for_instances_status` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj auto_healing_policies



### fn auto_healing_policies.new

```ts
new()
```


`google.compute_instance_group_manager.auto_healing_policies.new` constructs a new object with attributes and blocks configured for the `auto_healing_policies`
Terraform sub block.



**Args**:
  - `health_check` (`string`): The health check resource that signals autohealing.
  - `initial_delay_sec` (`number`): The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.

**Returns**:
  - An attribute object that represents the `auto_healing_policies` sub block.


## obj named_port



### fn named_port.new

```ts
new()
```


`google.compute_instance_group_manager.named_port.new` constructs a new object with attributes and blocks configured for the `named_port`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of the port.
  - `port` (`number`): The port number.

**Returns**:
  - An attribute object that represents the `named_port` sub block.


## obj stateful_disk



### fn stateful_disk.new

```ts
new()
```


`google.compute_instance_group_manager.stateful_disk.new` constructs a new object with attributes and blocks configured for the `stateful_disk`
Terraform sub block.



**Args**:
  - `delete_rule` (`string`): A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER. When `null`, the `delete_rule` field will be omitted from the resulting object.
  - `device_name` (`string`): The device name of the disk to be attached.

**Returns**:
  - An attribute object that represents the `stateful_disk` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_instance_group_manager.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj update_policy



### fn update_policy.new

```ts
new()
```


`google.compute_instance_group_manager.update_policy.new` constructs a new object with attributes and blocks configured for the `update_policy`
Terraform sub block.



**Args**:
  - `max_surge_fixed` (`number`): The maximum number of instances that can be created above the specified targetSize during the update process. Conflicts with max_surge_percent. If neither is set, defaults to 1 When `null`, the `max_surge_fixed` field will be omitted from the resulting object.
  - `max_surge_percent` (`number`): The maximum number of instances(calculated as percentage) that can be created above the specified targetSize during the update process. Conflicts with max_surge_fixed. When `null`, the `max_surge_percent` field will be omitted from the resulting object.
  - `max_unavailable_fixed` (`number`): The maximum number of instances that can be unavailable during the update process. Conflicts with max_unavailable_percent. If neither is set, defaults to 1. When `null`, the `max_unavailable_fixed` field will be omitted from the resulting object.
  - `max_unavailable_percent` (`number`): The maximum number of instances(calculated as percentage) that can be unavailable during the update process. Conflicts with max_unavailable_fixed. When `null`, the `max_unavailable_percent` field will be omitted from the resulting object.
  - `minimal_action` (`string`): Minimal action to be taken on an instance. You can specify either REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action.
  - `most_disruptive_allowed_action` (`string`): Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all. When `null`, the `most_disruptive_allowed_action` field will be omitted from the resulting object.
  - `replacement_method` (`string`): The instance replacement method for managed instance groups. Valid values are: &#34;RECREATE&#34;, &#34;SUBSTITUTE&#34;. If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0. When `null`, the `replacement_method` field will be omitted from the resulting object.
  - `type` (`string`): The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).

**Returns**:
  - An attribute object that represents the `update_policy` sub block.


## obj version



### fn version.new

```ts
new()
```


`google.compute_instance_group_manager.version.new` constructs a new object with attributes and blocks configured for the `version`
Terraform sub block.



**Args**:
  - `instance_template` (`string`): The full URL to an instance template from which all new instances of this version will be created.
  - `name` (`string`): Version name. When `null`, the `name` field will be omitted from the resulting object.
  - `target_size` (`list[obj]`): The number of instances calculated as a fixed number or a percentage depending on the settings. When `null`, the `target_size` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.version.target_size.new](#fn-target_sizenew) constructor.

**Returns**:
  - An attribute object that represents the `version` sub block.


## obj version.target_size



### fn version.target_size.new

```ts
new()
```


`google.compute_instance_group_manager.version.target_size.new` constructs a new object with attributes and blocks configured for the `target_size`
Terraform sub block.



**Args**:
  - `fixed` (`number`): The number of instances which are managed for this version. Conflicts with percent. When `null`, the `fixed` field will be omitted from the resulting object.
  - `percent` (`number`): The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed. Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions, one of which has a target_size.percent of 60 will create 2 instances of that version. When `null`, the `percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `target_size` sub block.
