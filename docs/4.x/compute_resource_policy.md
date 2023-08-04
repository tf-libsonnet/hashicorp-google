---
permalink: /compute_resource_policy/
---

# compute_resource_policy

`compute_resource_policy` represents the `google_compute_resource_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDiskConsistencyGroupPolicy()`](#fn-withdiskconsistencygrouppolicy)
* [`fn withDiskConsistencyGroupPolicyMixin()`](#fn-withdiskconsistencygrouppolicymixin)
* [`fn withGroupPlacementPolicy()`](#fn-withgroupplacementpolicy)
* [`fn withGroupPlacementPolicyMixin()`](#fn-withgroupplacementpolicymixin)
* [`fn withInstanceSchedulePolicy()`](#fn-withinstanceschedulepolicy)
* [`fn withInstanceSchedulePolicyMixin()`](#fn-withinstanceschedulepolicymixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSnapshotSchedulePolicy()`](#fn-withsnapshotschedulepolicy)
* [`fn withSnapshotSchedulePolicyMixin()`](#fn-withsnapshotschedulepolicymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj disk_consistency_group_policy`](#obj-disk_consistency_group_policy)
  * [`fn new()`](#fn-disk_consistency_group_policynew)
* [`obj group_placement_policy`](#obj-group_placement_policy)
  * [`fn new()`](#fn-group_placement_policynew)
* [`obj instance_schedule_policy`](#obj-instance_schedule_policy)
  * [`fn new()`](#fn-instance_schedule_policynew)
  * [`obj instance_schedule_policy.vm_start_schedule`](#obj-instance_schedule_policyvm_start_schedule)
    * [`fn new()`](#fn-instance_schedule_policyvm_start_schedulenew)
  * [`obj instance_schedule_policy.vm_stop_schedule`](#obj-instance_schedule_policyvm_stop_schedule)
    * [`fn new()`](#fn-instance_schedule_policyvm_stop_schedulenew)
* [`obj snapshot_schedule_policy`](#obj-snapshot_schedule_policy)
  * [`fn new()`](#fn-snapshot_schedule_policynew)
  * [`obj snapshot_schedule_policy.retention_policy`](#obj-snapshot_schedule_policyretention_policy)
    * [`fn new()`](#fn-snapshot_schedule_policyretention_policynew)
  * [`obj snapshot_schedule_policy.schedule`](#obj-snapshot_schedule_policyschedule)
    * [`fn new()`](#fn-snapshot_schedule_policyschedulenew)
    * [`obj snapshot_schedule_policy.schedule.daily_schedule`](#obj-snapshot_schedule_policyscheduledaily_schedule)
      * [`fn new()`](#fn-snapshot_schedule_policyscheduledaily_schedulenew)
    * [`obj snapshot_schedule_policy.schedule.hourly_schedule`](#obj-snapshot_schedule_policyschedulehourly_schedule)
      * [`fn new()`](#fn-snapshot_schedule_policyschedulehourly_schedulenew)
    * [`obj snapshot_schedule_policy.schedule.weekly_schedule`](#obj-snapshot_schedule_policyscheduleweekly_schedule)
      * [`fn new()`](#fn-snapshot_schedule_policyscheduleweekly_schedulenew)
      * [`obj snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks`](#obj-snapshot_schedule_policyscheduleweekly_scheduleday_of_weeks)
        * [`fn new()`](#fn-snapshot_schedule_policyscheduleweekly_scheduleday_of_weeksnew)
  * [`obj snapshot_schedule_policy.snapshot_properties`](#obj-snapshot_schedule_policysnapshot_properties)
    * [`fn new()`](#fn-snapshot_schedule_policysnapshot_propertiesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_resource_policy.new` injects a new `google_compute_resource_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_resource_policy.new('some_id')

You can get the reference to the `id` field of the created `google.compute_resource_policy` using the reference:

    $._ref.google_compute_resource_policy.some_id.get('id')

This is the same as directly entering `"${ google_compute_resource_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the resource, provided by the client when initially creating
the resource. The resource name must be 1-63 characters long, and comply
with RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])&#39;? which means the
first character must be a lowercase letter, and all following characters
must be a dash, lowercase letter, or digit, except the last character,
which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where resource policy resides. When `null`, the `region` field will be omitted from the resulting object.
  - `disk_consistency_group_policy` (`list[obj]`): Replication consistency group for asynchronous disk replication. When `null`, the `disk_consistency_group_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.disk_consistency_group_policy.new](#fn-disk_consistency_group_policynew) constructor.
  - `group_placement_policy` (`list[obj]`): Resource policy for instances used for placement configuration. When `null`, the `group_placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.group_placement_policy.new](#fn-group_placement_policynew) constructor.
  - `instance_schedule_policy` (`list[obj]`): Resource policy for scheduling instance operations. When `null`, the `instance_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.new](#fn-instance_schedule_policynew) constructor.
  - `snapshot_schedule_policy` (`list[obj]`): Policy for creating snapshots of persistent disks. When `null`, the `snapshot_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.new](#fn-snapshot_schedule_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_resource_policy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_resource_policy`
Terraform resource.

Unlike [google.compute_resource_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the resource, provided by the client when initially creating
the resource. The resource name must be 1-63 characters long, and comply
with RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])&#39;? which means the
first character must be a lowercase letter, and all following characters
must be a dash, lowercase letter, or digit, except the last character,
which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where resource policy resides. When `null`, the `region` field will be omitted from the resulting object.
  - `disk_consistency_group_policy` (`list[obj]`): Replication consistency group for asynchronous disk replication. When `null`, the `disk_consistency_group_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.disk_consistency_group_policy.new](#fn-disk_consistency_group_policynew) constructor.
  - `group_placement_policy` (`list[obj]`): Resource policy for instances used for placement configuration. When `null`, the `group_placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.group_placement_policy.new](#fn-group_placement_policynew) constructor.
  - `instance_schedule_policy` (`list[obj]`): Resource policy for scheduling instance operations. When `null`, the `instance_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.new](#fn-instance_schedule_policynew) constructor.
  - `snapshot_schedule_policy` (`list[obj]`): Policy for creating snapshots of persistent disks. When `null`, the `snapshot_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.new](#fn-snapshot_schedule_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_resource_policy` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDiskConsistencyGroupPolicy

```ts
withDiskConsistencyGroupPolicy()
```

`google.list[obj].withDiskConsistencyGroupPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the disk_consistency_group_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDiskConsistencyGroupPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `disk_consistency_group_policy` field.


### fn withDiskConsistencyGroupPolicyMixin

```ts
withDiskConsistencyGroupPolicyMixin()
```

`google.list[obj].withDiskConsistencyGroupPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the disk_consistency_group_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDiskConsistencyGroupPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `disk_consistency_group_policy` field.


### fn withGroupPlacementPolicy

```ts
withGroupPlacementPolicy()
```

`google.list[obj].withGroupPlacementPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the group_placement_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGroupPlacementPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `group_placement_policy` field.


### fn withGroupPlacementPolicyMixin

```ts
withGroupPlacementPolicyMixin()
```

`google.list[obj].withGroupPlacementPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the group_placement_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGroupPlacementPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `group_placement_policy` field.


### fn withInstanceSchedulePolicy

```ts
withInstanceSchedulePolicy()
```

`google.list[obj].withInstanceSchedulePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the instance_schedule_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInstanceSchedulePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `instance_schedule_policy` field.


### fn withInstanceSchedulePolicyMixin

```ts
withInstanceSchedulePolicyMixin()
```

`google.list[obj].withInstanceSchedulePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the instance_schedule_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInstanceSchedulePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `instance_schedule_policy` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withSnapshotSchedulePolicy

```ts
withSnapshotSchedulePolicy()
```

`google.list[obj].withSnapshotSchedulePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the snapshot_schedule_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSnapshotSchedulePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `snapshot_schedule_policy` field.


### fn withSnapshotSchedulePolicyMixin

```ts
withSnapshotSchedulePolicyMixin()
```

`google.list[obj].withSnapshotSchedulePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the snapshot_schedule_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSnapshotSchedulePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `snapshot_schedule_policy` field.


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


## obj disk_consistency_group_policy



### fn disk_consistency_group_policy.new

```ts
new()
```


`google.compute_resource_policy.disk_consistency_group_policy.new` constructs a new object with attributes and blocks configured for the `disk_consistency_group_policy`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enable disk consistency on the resource policy.

**Returns**:
  - An attribute object that represents the `disk_consistency_group_policy` sub block.


## obj group_placement_policy



### fn group_placement_policy.new

```ts
new()
```


`google.compute_resource_policy.group_placement_policy.new` constructs a new object with attributes and blocks configured for the `group_placement_policy`
Terraform sub block.



**Args**:
  - `availability_domain_count` (`number`): The number of availability domains instances will be spread across. If two instances are in different
availability domain, they will not be put in the same low latency network When `null`, the `availability_domain_count` field will be omitted from the resulting object.
  - `collocation` (`string`): Collocation specifies whether to place VMs inside the same availability domain on the same low-latency network.
Specify &#39;COLLOCATED&#39; to enable collocation. Can only be specified with &#39;vm_count&#39;. If compute instances are created
with a COLLOCATED policy, then exactly &#39;vm_count&#39; instances must be created at the same time with the resource policy
attached. Possible values: [&#34;COLLOCATED&#34;] When `null`, the `collocation` field will be omitted from the resulting object.
  - `vm_count` (`number`): Number of VMs in this placement group. Google does not recommend that you use this field
unless you use a compact policy and you want your policy to work only if it contains this
exact number of VMs. When `null`, the `vm_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `group_placement_policy` sub block.


## obj instance_schedule_policy



### fn instance_schedule_policy.new

```ts
new()
```


`google.compute_resource_policy.instance_schedule_policy.new` constructs a new object with attributes and blocks configured for the `instance_schedule_policy`
Terraform sub block.



**Args**:
  - `expiration_time` (`string`): The expiration time of the schedule. The timestamp is an RFC3339 string. When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `start_time` (`string`): The start time of the schedule. The timestamp is an RFC3339 string. When `null`, the `start_time` field will be omitted from the resulting object.
  - `time_zone` (`string`): Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name
from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  - `vm_start_schedule` (`list[obj]`): Specifies the schedule for starting instances. When `null`, the `vm_start_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.vm_start_schedule.new](#fn-instance_schedule_policyvm_start_schedulenew) constructor.
  - `vm_stop_schedule` (`list[obj]`): Specifies the schedule for stopping instances. When `null`, the `vm_stop_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.vm_stop_schedule.new](#fn-instance_schedule_policyvm_stop_schedulenew) constructor.

**Returns**:
  - An attribute object that represents the `instance_schedule_policy` sub block.


## obj instance_schedule_policy.vm_start_schedule



### fn instance_schedule_policy.vm_start_schedule.new

```ts
new()
```


`google.compute_resource_policy.instance_schedule_policy.vm_start_schedule.new` constructs a new object with attributes and blocks configured for the `vm_start_schedule`
Terraform sub block.



**Args**:
  - `schedule` (`string`): Specifies the frequency for the operation, using the unix-cron format.

**Returns**:
  - An attribute object that represents the `vm_start_schedule` sub block.


## obj instance_schedule_policy.vm_stop_schedule



### fn instance_schedule_policy.vm_stop_schedule.new

```ts
new()
```


`google.compute_resource_policy.instance_schedule_policy.vm_stop_schedule.new` constructs a new object with attributes and blocks configured for the `vm_stop_schedule`
Terraform sub block.



**Args**:
  - `schedule` (`string`): Specifies the frequency for the operation, using the unix-cron format.

**Returns**:
  - An attribute object that represents the `vm_stop_schedule` sub block.


## obj snapshot_schedule_policy



### fn snapshot_schedule_policy.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.new` constructs a new object with attributes and blocks configured for the `snapshot_schedule_policy`
Terraform sub block.



**Args**:
  - `retention_policy` (`list[obj]`): Retention policy applied to snapshots created by this resource policy. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.retention_policy.new](#fn-snapshot_schedule_policyretention_policynew) constructor.
  - `schedule` (`list[obj]`): Contains one of an &#39;hourlySchedule&#39;, &#39;dailySchedule&#39;, or &#39;weeklySchedule&#39;. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.new](#fn-snapshot_schedule_policyschedulenew) constructor.
  - `snapshot_properties` (`list[obj]`): Properties with which the snapshots are created, such as labels. When `null`, the `snapshot_properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.snapshot_properties.new](#fn-snapshot_schedule_policysnapshot_propertiesnew) constructor.

**Returns**:
  - An attribute object that represents the `snapshot_schedule_policy` sub block.


## obj snapshot_schedule_policy.retention_policy



### fn snapshot_schedule_policy.retention_policy.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.retention_policy.new` constructs a new object with attributes and blocks configured for the `retention_policy`
Terraform sub block.



**Args**:
  - `max_retention_days` (`number`): Maximum age of the snapshot that is allowed to be kept.
  - `on_source_disk_delete` (`string`): Specifies the behavior to apply to scheduled snapshots when
the source disk is deleted. Default value: &#34;KEEP_AUTO_SNAPSHOTS&#34; Possible values: [&#34;KEEP_AUTO_SNAPSHOTS&#34;, &#34;APPLY_RETENTION_POLICY&#34;] When `null`, the `on_source_disk_delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retention_policy` sub block.


## obj snapshot_schedule_policy.schedule



### fn snapshot_schedule_policy.schedule.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`
Terraform sub block.



**Args**:
  - `daily_schedule` (`list[obj]`): The policy will execute every nth day at the specified time. When `null`, the `daily_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.daily_schedule.new](#fn-snapshot_schedule_policysnapshot_schedule_policydaily_schedulenew) constructor.
  - `hourly_schedule` (`list[obj]`): The policy will execute every nth hour starting at the specified time. When `null`, the `hourly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.hourly_schedule.new](#fn-snapshot_schedule_policysnapshot_schedule_policyhourly_schedulenew) constructor.
  - `weekly_schedule` (`list[obj]`): Allows specifying a snapshot time for each day of the week. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.new](#fn-snapshot_schedule_policysnapshot_schedule_policyweekly_schedulenew) constructor.

**Returns**:
  - An attribute object that represents the `schedule` sub block.


## obj snapshot_schedule_policy.schedule.daily_schedule



### fn snapshot_schedule_policy.schedule.daily_schedule.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.schedule.daily_schedule.new` constructs a new object with attributes and blocks configured for the `daily_schedule`
Terraform sub block.



**Args**:
  - `days_in_cycle` (`number`): Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle. Days in cycle for snapshot schedule policy must be 1.
  - `start_time` (`string`): This must be in UTC format that resolves to one of
00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example,
both 13:00-5 and 08:00 are valid.

**Returns**:
  - An attribute object that represents the `daily_schedule` sub block.


## obj snapshot_schedule_policy.schedule.hourly_schedule



### fn snapshot_schedule_policy.schedule.hourly_schedule.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.schedule.hourly_schedule.new` constructs a new object with attributes and blocks configured for the `hourly_schedule`
Terraform sub block.



**Args**:
  - `hours_in_cycle` (`number`): The number of hours between snapshots.
  - `start_time` (`string`): Time within the window to start the operations.
It must be in an hourly format &#34;HH:MM&#34;,
where HH : [00-23] and MM : [00] GMT.
eg: 21:00

**Returns**:
  - An attribute object that represents the `hourly_schedule` sub block.


## obj snapshot_schedule_policy.schedule.weekly_schedule



### fn snapshot_schedule_policy.schedule.weekly_schedule.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`
Terraform sub block.



**Args**:
  - `day_of_weeks` (`list[obj]`): May contain up to seven (one for each day of the week) snapshot times. When `null`, the `day_of_weeks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks.new](#fn-snapshot_schedule_policysnapshot_schedule_policyscheduleday_of_weeksnew) constructor.

**Returns**:
  - An attribute object that represents the `weekly_schedule` sub block.


## obj snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks



### fn snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks.new` constructs a new object with attributes and blocks configured for the `day_of_weeks`
Terraform sub block.



**Args**:
  - `day` (`string`): The day of the week to create the snapshot. e.g. MONDAY Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]
  - `start_time` (`string`): Time within the window to start the operations.
It must be in format &#34;HH:MM&#34;, where HH : [00-23] and MM : [00-00] GMT.

**Returns**:
  - An attribute object that represents the `day_of_weeks` sub block.


## obj snapshot_schedule_policy.snapshot_properties



### fn snapshot_schedule_policy.snapshot_properties.new

```ts
new()
```


`google.compute_resource_policy.snapshot_schedule_policy.snapshot_properties.new` constructs a new object with attributes and blocks configured for the `snapshot_properties`
Terraform sub block.



**Args**:
  - `chain_name` (`string`): Creates the new snapshot in the snapshot chain labeled with the
specified name. The chain name must be 1-63 characters long and comply
with RFC1035. When `null`, the `chain_name` field will be omitted from the resulting object.
  - `guest_flush` (`bool`): Whether to perform a &#39;guest aware&#39; snapshot. When `null`, the `guest_flush` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key-value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `storage_locations` (`list`): Cloud Storage bucket location to store the auto snapshot
(regional or multi-regional) When `null`, the `storage_locations` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `snapshot_properties` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_resource_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
