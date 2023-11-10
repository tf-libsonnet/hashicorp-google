---
permalink: /memcache_instance/
---

# memcache_instance

`memcache_instance` represents the `google_memcache_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthorizedNetwork()`](#fn-withauthorizednetwork)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMaintenancePolicy()`](#fn-withmaintenancepolicy)
* [`fn withMaintenancePolicyMixin()`](#fn-withmaintenancepolicymixin)
* [`fn withMemcacheParameters()`](#fn-withmemcacheparameters)
* [`fn withMemcacheParametersMixin()`](#fn-withmemcacheparametersmixin)
* [`fn withMemcacheVersion()`](#fn-withmemcacheversion)
* [`fn withName()`](#fn-withname)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withNodeCount()`](#fn-withnodecount)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZones()`](#fn-withzones)
* [`obj maintenance_policy`](#obj-maintenance_policy)
  * [`fn new()`](#fn-maintenance_policynew)
  * [`obj maintenance_policy.weekly_maintenance_window`](#obj-maintenance_policyweekly_maintenance_window)
    * [`fn new()`](#fn-maintenance_policyweekly_maintenance_windownew)
    * [`obj maintenance_policy.weekly_maintenance_window.start_time`](#obj-maintenance_policyweekly_maintenance_windowstart_time)
      * [`fn new()`](#fn-maintenance_policyweekly_maintenance_windowstart_timenew)
* [`obj memcache_parameters`](#obj-memcache_parameters)
  * [`fn new()`](#fn-memcache_parametersnew)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.memcache_instance.new` injects a new `google_memcache_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.memcache_instance.new('some_id')

You can get the reference to the `id` field of the created `google.memcache_instance` using the reference:

    $._ref.google_memcache_instance.some_id.get('id')

This is the same as directly entering `"${ google_memcache_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `authorized_network` (`string`): The full name of the GCE network to connect the instance to.  If not provided,
&#39;default&#39; will be used. When `null`, the `authorized_network` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-visible name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `memcache_version` (`string`): The major version of Memcached software. If not provided, latest supported version will be used.
Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
determined by our system based on the latest supported minor version. Default value: &#34;MEMCACHE_1_5&#34; Possible values: [&#34;MEMCACHE_1_5&#34;] When `null`, the `memcache_version` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the instance.
  - `node_count` (`number`): Number of nodes in the memcache instance.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the Memcache instance. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `zones` (`list`): Zones where memcache nodes should be provisioned.  If not
provided, all zones will be used. When `null`, the `zones` field will be omitted from the resulting object.
  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `memcache_parameters` (`list[obj]`): User-specified parameters for this memcache instance. When `null`, the `memcache_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.memcache_parameters.new](#fn-memcache_parametersnew) constructor.
  - `node_config` (`list[obj]`): Configuration for memcache nodes. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.memcache_instance.newAttrs` constructs a new object with attributes and blocks configured for the `memcache_instance`
Terraform resource.

Unlike [google.memcache_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `authorized_network` (`string`): The full name of the GCE network to connect the instance to.  If not provided,
&#39;default&#39; will be used. When `null`, the `authorized_network` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-visible name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `memcache_version` (`string`): The major version of Memcached software. If not provided, latest supported version will be used.
Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
determined by our system based on the latest supported minor version. Default value: &#34;MEMCACHE_1_5&#34; Possible values: [&#34;MEMCACHE_1_5&#34;] When `null`, the `memcache_version` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the instance.
  - `node_count` (`number`): Number of nodes in the memcache instance.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the Memcache instance. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `zones` (`list`): Zones where memcache nodes should be provisioned.  If not
provided, all zones will be used. When `null`, the `zones` field will be omitted from the resulting object.
  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `memcache_parameters` (`list[obj]`): User-specified parameters for this memcache instance. When `null`, the `memcache_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.memcache_parameters.new](#fn-memcache_parametersnew) constructor.
  - `node_config` (`list[obj]`): Configuration for memcache nodes. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `memcache_instance` resource into the root Terraform configuration.


### fn withAuthorizedNetwork

```ts
withAuthorizedNetwork()
```

`google.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorized_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorized_network` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withMemcacheParameters

```ts
withMemcacheParameters()
```

`google.list[obj].withMemcacheParameters` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the memcache_parameters field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMemcacheParametersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `memcache_parameters` field.


### fn withMemcacheParametersMixin

```ts
withMemcacheParametersMixin()
```

`google.list[obj].withMemcacheParametersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the memcache_parameters field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMemcacheParameters](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `memcache_parameters` field.


### fn withMemcacheVersion

```ts
withMemcacheVersion()
```

`google.string.withMemcacheVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the memcache_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `memcache_version` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withZones

```ts
withZones()
```

`google.list.withZones` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the zones field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `zones` field.


## obj maintenance_policy



### fn maintenance_policy.new

```ts
new()
```


`google.memcache_instance.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`
Terraform sub block.



**Args**:
  - `description` (`string`): Optional. Description of what this policy is for.
Create/Update methods return INVALID_ARGUMENT if the
length is greater than 512. When `null`, the `description` field will be omitted from the resulting object.
  - `weekly_maintenance_window` (`list[obj]`): Required. Maintenance window that is applied to resources covered by this policy.
Minimum 1. For the current version, the maximum number of weekly_maintenance_windows
is expected to be one. When `null`, the `weekly_maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.weekly_maintenance_window.new](#fn-maintenance_policyweekly_maintenance_windownew) constructor.

**Returns**:
  - An attribute object that represents the `maintenance_policy` sub block.


## obj maintenance_policy.weekly_maintenance_window



### fn maintenance_policy.weekly_maintenance_window.new

```ts
new()
```


`google.memcache_instance.maintenance_policy.weekly_maintenance_window.new` constructs a new object with attributes and blocks configured for the `weekly_maintenance_window`
Terraform sub block.



**Args**:
  - `day` (`string`): Required. The day of week that maintenance updates occur.
- DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
- MONDAY: Monday
- TUESDAY: Tuesday
- WEDNESDAY: Wednesday
- THURSDAY: Thursday
- FRIDAY: Friday
- SATURDAY: Saturday
- SUNDAY: Sunday Possible values: [&#34;DAY_OF_WEEK_UNSPECIFIED&#34;, &#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]
  - `duration` (`string`): Required. The length of the maintenance window, ranging from 3 hours to 8 hours.
A duration in seconds with up to nine fractional digits,
terminated by &#39;s&#39;. Example: &#34;3.5s&#34;.
  - `start_time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `start_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.memcache_instance.maintenance_policy.weekly_maintenance_window.start_time.new](#fn-maintenance_policymaintenance_policystart_timenew) constructor.

**Returns**:
  - An attribute object that represents the `weekly_maintenance_window` sub block.


## obj maintenance_policy.weekly_maintenance_window.start_time



### fn maintenance_policy.weekly_maintenance_window.start_time.new

```ts
new()
```


`google.memcache_instance.maintenance_policy.weekly_maintenance_window.start_time.new` constructs a new object with attributes and blocks configured for the `start_time`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.
An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.
  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59.
An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `start_time` sub block.


## obj memcache_parameters



### fn memcache_parameters.new

```ts
new()
```


`google.memcache_instance.memcache_parameters.new` constructs a new object with attributes and blocks configured for the `memcache_parameters`
Terraform sub block.



**Args**:
  - `params` (`obj`): User-defined set of parameters to use in the memcache process. When `null`, the `params` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `memcache_parameters` sub block.


## obj node_config



### fn node_config.new

```ts
new()
```


`google.memcache_instance.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `cpu_count` (`number`): Number of CPUs per node.
  - `memory_size_mb` (`number`): Memory size in Mebibytes for each memcache node.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.memcache_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
