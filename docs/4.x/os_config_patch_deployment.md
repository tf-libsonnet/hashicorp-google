---
permalink: /os_config_patch_deployment/
---

# os_config_patch_deployment

`os_config_patch_deployment` represents the `google_os_config_patch_deployment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDuration()`](#fn-withduration)
* [`fn withInstanceFilter()`](#fn-withinstancefilter)
* [`fn withInstanceFilterMixin()`](#fn-withinstancefiltermixin)
* [`fn withOneTimeSchedule()`](#fn-withonetimeschedule)
* [`fn withOneTimeScheduleMixin()`](#fn-withonetimeschedulemixin)
* [`fn withPatchConfig()`](#fn-withpatchconfig)
* [`fn withPatchConfigMixin()`](#fn-withpatchconfigmixin)
* [`fn withPatchDeploymentId()`](#fn-withpatchdeploymentid)
* [`fn withProject()`](#fn-withproject)
* [`fn withRecurringSchedule()`](#fn-withrecurringschedule)
* [`fn withRecurringScheduleMixin()`](#fn-withrecurringschedulemixin)
* [`fn withRollout()`](#fn-withrollout)
* [`fn withRolloutMixin()`](#fn-withrolloutmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj instance_filter`](#obj-instance_filter)
  * [`fn new()`](#fn-instance_filternew)
  * [`obj instance_filter.group_labels`](#obj-instance_filtergroup_labels)
    * [`fn new()`](#fn-instance_filtergroup_labelsnew)
* [`obj one_time_schedule`](#obj-one_time_schedule)
  * [`fn new()`](#fn-one_time_schedulenew)
* [`obj patch_config`](#obj-patch_config)
  * [`fn new()`](#fn-patch_confignew)
  * [`obj patch_config.apt`](#obj-patch_configapt)
    * [`fn new()`](#fn-patch_configaptnew)
  * [`obj patch_config.goo`](#obj-patch_configgoo)
    * [`fn new()`](#fn-patch_configgoonew)
  * [`obj patch_config.post_step`](#obj-patch_configpost_step)
    * [`fn new()`](#fn-patch_configpost_stepnew)
    * [`obj patch_config.post_step.linux_exec_step_config`](#obj-patch_configpost_steplinux_exec_step_config)
      * [`fn new()`](#fn-patch_configpost_steplinux_exec_step_confignew)
      * [`obj patch_config.post_step.linux_exec_step_config.gcs_object`](#obj-patch_configpost_steplinux_exec_step_configgcs_object)
        * [`fn new()`](#fn-patch_configpost_steplinux_exec_step_configgcs_objectnew)
    * [`obj patch_config.post_step.windows_exec_step_config`](#obj-patch_configpost_stepwindows_exec_step_config)
      * [`fn new()`](#fn-patch_configpost_stepwindows_exec_step_confignew)
      * [`obj patch_config.post_step.windows_exec_step_config.gcs_object`](#obj-patch_configpost_stepwindows_exec_step_configgcs_object)
        * [`fn new()`](#fn-patch_configpost_stepwindows_exec_step_configgcs_objectnew)
  * [`obj patch_config.pre_step`](#obj-patch_configpre_step)
    * [`fn new()`](#fn-patch_configpre_stepnew)
    * [`obj patch_config.pre_step.linux_exec_step_config`](#obj-patch_configpre_steplinux_exec_step_config)
      * [`fn new()`](#fn-patch_configpre_steplinux_exec_step_confignew)
      * [`obj patch_config.pre_step.linux_exec_step_config.gcs_object`](#obj-patch_configpre_steplinux_exec_step_configgcs_object)
        * [`fn new()`](#fn-patch_configpre_steplinux_exec_step_configgcs_objectnew)
    * [`obj patch_config.pre_step.windows_exec_step_config`](#obj-patch_configpre_stepwindows_exec_step_config)
      * [`fn new()`](#fn-patch_configpre_stepwindows_exec_step_confignew)
      * [`obj patch_config.pre_step.windows_exec_step_config.gcs_object`](#obj-patch_configpre_stepwindows_exec_step_configgcs_object)
        * [`fn new()`](#fn-patch_configpre_stepwindows_exec_step_configgcs_objectnew)
  * [`obj patch_config.windows_update`](#obj-patch_configwindows_update)
    * [`fn new()`](#fn-patch_configwindows_updatenew)
  * [`obj patch_config.yum`](#obj-patch_configyum)
    * [`fn new()`](#fn-patch_configyumnew)
  * [`obj patch_config.zypper`](#obj-patch_configzypper)
    * [`fn new()`](#fn-patch_configzyppernew)
* [`obj recurring_schedule`](#obj-recurring_schedule)
  * [`fn new()`](#fn-recurring_schedulenew)
  * [`obj recurring_schedule.monthly`](#obj-recurring_schedulemonthly)
    * [`fn new()`](#fn-recurring_schedulemonthlynew)
    * [`obj recurring_schedule.monthly.week_day_of_month`](#obj-recurring_schedulemonthlyweek_day_of_month)
      * [`fn new()`](#fn-recurring_schedulemonthlyweek_day_of_monthnew)
  * [`obj recurring_schedule.time_of_day`](#obj-recurring_scheduletime_of_day)
    * [`fn new()`](#fn-recurring_scheduletime_of_daynew)
  * [`obj recurring_schedule.time_zone`](#obj-recurring_scheduletime_zone)
    * [`fn new()`](#fn-recurring_scheduletime_zonenew)
  * [`obj recurring_schedule.weekly`](#obj-recurring_scheduleweekly)
    * [`fn new()`](#fn-recurring_scheduleweeklynew)
* [`obj rollout`](#obj-rollout)
  * [`fn new()`](#fn-rolloutnew)
  * [`obj rollout.disruption_budget`](#obj-rolloutdisruption_budget)
    * [`fn new()`](#fn-rolloutdisruption_budgetnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.os_config_patch_deployment.new` injects a new `google_os_config_patch_deployment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.os_config_patch_deployment.new('some_id')

You can get the reference to the `id` field of the created `google.os_config_patch_deployment` using the reference:

    $._ref.google_os_config_patch_deployment.some_id.get('id')

This is the same as directly entering `"${ google_os_config_patch_deployment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the patch deployment. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `duration` (`string`): Duration of the patch. After the duration ends, the patch times out.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34; When `null`, the `duration` field will be omitted from the resulting object.
  - `patch_deployment_id` (`string`): A name for the patch deployment in the project. When creating a name the following rules apply:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the project.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `instance_filter` (`list[obj]`): VM instances to patch. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.instance_filter.new](#fn-instance_filternew) constructor.
  - `one_time_schedule` (`list[obj]`): Schedule a one-time execution. When `null`, the `one_time_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.one_time_schedule.new](#fn-one_time_schedulenew) constructor.
  - `patch_config` (`list[obj]`): Patch configuration that is applied. When `null`, the `patch_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.new](#fn-patch_confignew) constructor.
  - `recurring_schedule` (`list[obj]`): Schedule recurring executions. When `null`, the `recurring_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.new](#fn-recurring_schedulenew) constructor.
  - `rollout` (`list[obj]`): Rollout strategy of the patch job. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.rollout.new](#fn-rolloutnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.os_config_patch_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `os_config_patch_deployment`
Terraform resource.

Unlike [google.os_config_patch_deployment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the patch deployment. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `duration` (`string`): Duration of the patch. After the duration ends, the patch times out.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34; When `null`, the `duration` field will be omitted from the resulting object.
  - `patch_deployment_id` (`string`): A name for the patch deployment in the project. When creating a name the following rules apply:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the project.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `instance_filter` (`list[obj]`): VM instances to patch. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.instance_filter.new](#fn-instance_filternew) constructor.
  - `one_time_schedule` (`list[obj]`): Schedule a one-time execution. When `null`, the `one_time_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.one_time_schedule.new](#fn-one_time_schedulenew) constructor.
  - `patch_config` (`list[obj]`): Patch configuration that is applied. When `null`, the `patch_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.new](#fn-patch_confignew) constructor.
  - `recurring_schedule` (`list[obj]`): Schedule recurring executions. When `null`, the `recurring_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.new](#fn-recurring_schedulenew) constructor.
  - `rollout` (`list[obj]`): Rollout strategy of the patch job. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.rollout.new](#fn-rolloutnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `os_config_patch_deployment` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDuration

```ts
withDuration()
```

`google.string.withDuration` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the duration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `duration` field.


### fn withInstanceFilter

```ts
withInstanceFilter()
```

`google.list[obj].withInstanceFilter` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the instance_filter field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInstanceFilterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `instance_filter` field.


### fn withInstanceFilterMixin

```ts
withInstanceFilterMixin()
```

`google.list[obj].withInstanceFilterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the instance_filter field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInstanceFilter](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `instance_filter` field.


### fn withOneTimeSchedule

```ts
withOneTimeSchedule()
```

`google.list[obj].withOneTimeSchedule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the one_time_schedule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOneTimeScheduleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `one_time_schedule` field.


### fn withOneTimeScheduleMixin

```ts
withOneTimeScheduleMixin()
```

`google.list[obj].withOneTimeScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the one_time_schedule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOneTimeSchedule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `one_time_schedule` field.


### fn withPatchConfig

```ts
withPatchConfig()
```

`google.list[obj].withPatchConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the patch_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPatchConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `patch_config` field.


### fn withPatchConfigMixin

```ts
withPatchConfigMixin()
```

`google.list[obj].withPatchConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the patch_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPatchConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `patch_config` field.


### fn withPatchDeploymentId

```ts
withPatchDeploymentId()
```

`google.string.withPatchDeploymentId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the patch_deployment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `patch_deployment_id` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRecurringSchedule

```ts
withRecurringSchedule()
```

`google.list[obj].withRecurringSchedule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the recurring_schedule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRecurringScheduleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `recurring_schedule` field.


### fn withRecurringScheduleMixin

```ts
withRecurringScheduleMixin()
```

`google.list[obj].withRecurringScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the recurring_schedule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRecurringSchedule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `recurring_schedule` field.


### fn withRollout

```ts
withRollout()
```

`google.list[obj].withRollout` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rollout field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRolloutMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rollout` field.


### fn withRolloutMixin

```ts
withRolloutMixin()
```

`google.list[obj].withRolloutMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rollout field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRollout](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rollout` field.


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


## obj instance_filter



### fn instance_filter.new

```ts
new()
```


`google.os_config_patch_deployment.instance_filter.new` constructs a new object with attributes and blocks configured for the `instance_filter`
Terraform sub block.



**Args**:
  - `all` (`bool`): Target all VM instances in the project. If true, no other criteria is permitted. When `null`, the `all` field will be omitted from the resulting object.
  - `instance_name_prefixes` (`list`): Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
VMs when targeting configs, for example prefix=&#34;prod-&#34;. When `null`, the `instance_name_prefixes` field will be omitted from the resulting object.
  - `instances` (`list`): Targets any of the VM instances specified. Instances are specified by their URI in the &#39;form zones/{{zone}}/instances/{{instance_name}}&#39;,
&#39;projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}&#39;, or
&#39;https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}&#39; When `null`, the `instances` field will be omitted from the resulting object.
  - `zones` (`list`): Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone. When `null`, the `zones` field will be omitted from the resulting object.
  - `group_labels` (`list[obj]`): Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances. When `null`, the `group_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.instance_filter.group_labels.new](#fn-os_config_patch_deploymentgroup_labelsnew) constructor.

**Returns**:
  - An attribute object that represents the `instance_filter` sub block.


## obj instance_filter.group_labels



### fn instance_filter.group_labels.new

```ts
new()
```


`google.os_config_patch_deployment.instance_filter.group_labels.new` constructs a new object with attributes and blocks configured for the `group_labels`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Compute Engine instance labels that must be present for a VM instance to be targeted by this filter

**Returns**:
  - An attribute object that represents the `group_labels` sub block.


## obj one_time_schedule



### fn one_time_schedule.new

```ts
new()
```


`google.os_config_patch_deployment.one_time_schedule.new` constructs a new object with attributes and blocks configured for the `one_time_schedule`
Terraform sub block.



**Args**:
  - `execute_time` (`string`): The desired patch job execution time. A timestamp in RFC3339 UTC &#34;Zulu&#34; format,
accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;.

**Returns**:
  - An attribute object that represents the `one_time_schedule` sub block.


## obj patch_config



### fn patch_config.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.new` constructs a new object with attributes and blocks configured for the `patch_config`
Terraform sub block.



**Args**:
  - `mig_instances_allowed` (`bool`): Allows the patch job to run on Managed instance groups (MIGs). When `null`, the `mig_instances_allowed` field will be omitted from the resulting object.
  - `reboot_config` (`string`): Post-patch reboot settings. Possible values: [&#34;DEFAULT&#34;, &#34;ALWAYS&#34;, &#34;NEVER&#34;] When `null`, the `reboot_config` field will be omitted from the resulting object.
  - `apt` (`list[obj]`): Apt update settings. Use this setting to override the default apt patch rules. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.apt.new](#fn-os_config_patch_deploymentaptnew) constructor.
  - `goo` (`list[obj]`): goo update settings. Use this setting to override the default goo patch rules. When `null`, the `goo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.goo.new](#fn-os_config_patch_deploymentgoonew) constructor.
  - `post_step` (`list[obj]`): The ExecStep to run after the patch update. When `null`, the `post_step` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.new](#fn-os_config_patch_deploymentpost_stepnew) constructor.
  - `pre_step` (`list[obj]`): The ExecStep to run before the patch update. When `null`, the `pre_step` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.new](#fn-os_config_patch_deploymentpre_stepnew) constructor.
  - `windows_update` (`list[obj]`): Windows update settings. Use this setting to override the default Windows patch rules. When `null`, the `windows_update` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.windows_update.new](#fn-os_config_patch_deploymentwindows_updatenew) constructor.
  - `yum` (`list[obj]`): Yum update settings. Use this setting to override the default yum patch rules. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.yum.new](#fn-os_config_patch_deploymentyumnew) constructor.
  - `zypper` (`list[obj]`): zypper update settings. Use this setting to override the default zypper patch rules. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.zypper.new](#fn-os_config_patch_deploymentzyppernew) constructor.

**Returns**:
  - An attribute object that represents the `patch_config` sub block.


## obj patch_config.apt



### fn patch_config.apt.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.apt.new` constructs a new object with attributes and blocks configured for the `apt`
Terraform sub block.



**Args**:
  - `excludes` (`list`): List of packages to exclude from update. These packages will be excluded. When `null`, the `excludes` field will be omitted from the resulting object.
  - `exclusive_packages` (`list`): An exclusive list of packages to be updated. These are the only packages that will be updated.
If these packages are not installed, they will be ignored. This field cannot be specified with
any other patch configuration fields. When `null`, the `exclusive_packages` field will be omitted from the resulting object.
  - `type` (`string`): By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead. Possible values: [&#34;DIST&#34;, &#34;UPGRADE&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `apt` sub block.


## obj patch_config.goo



### fn patch_config.goo.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.goo.new` constructs a new object with attributes and blocks configured for the `goo`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): goo update settings. Use this setting to override the default goo patch rules.

**Returns**:
  - An attribute object that represents the `goo` sub block.


## obj patch_config.post_step



### fn patch_config.post_step.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.post_step.new` constructs a new object with attributes and blocks configured for the `post_step`
Terraform sub block.



**Args**:
  - `linux_exec_step_config` (`list[obj]`): The ExecStepConfig for all Linux VMs targeted by the PatchJob. When `null`, the `linux_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.new](#fn-os_config_patch_deploymentpatch_configlinux_exec_step_confignew) constructor.
  - `windows_exec_step_config` (`list[obj]`): The ExecStepConfig for all Windows VMs targeted by the PatchJob. When `null`, the `windows_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.new](#fn-os_config_patch_deploymentpatch_configwindows_exec_step_confignew) constructor.

**Returns**:
  - An attribute object that represents the `post_step` sub block.


## obj patch_config.post_step.linux_exec_step_config



### fn patch_config.post_step.linux_exec_step_config.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.new` constructs a new object with attributes and blocks configured for the `linux_exec_step_config`
Terraform sub block.



**Args**:
  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.
  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.
  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.gcs_object.new](#fn-os_config_patch_deploymentpatch_configpost_stepgcs_objectnew) constructor.

**Returns**:
  - An attribute object that represents the `linux_exec_step_config` sub block.


## obj patch_config.post_step.linux_exec_step_config.gcs_object



### fn patch_config.post_step.linux_exec_step_config.gcs_object.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Bucket of the Cloud Storage object.
  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  - `object` (`string`): Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs_object` sub block.


## obj patch_config.post_step.windows_exec_step_config



### fn patch_config.post_step.windows_exec_step_config.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.new` constructs a new object with attributes and blocks configured for the `windows_exec_step_config`
Terraform sub block.



**Args**:
  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.
  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.
  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.gcs_object.new](#fn-os_config_patch_deploymentpatch_configpost_stepgcs_objectnew) constructor.

**Returns**:
  - An attribute object that represents the `windows_exec_step_config` sub block.


## obj patch_config.post_step.windows_exec_step_config.gcs_object



### fn patch_config.post_step.windows_exec_step_config.gcs_object.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Bucket of the Cloud Storage object.
  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  - `object` (`string`): Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs_object` sub block.


## obj patch_config.pre_step



### fn patch_config.pre_step.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.pre_step.new` constructs a new object with attributes and blocks configured for the `pre_step`
Terraform sub block.



**Args**:
  - `linux_exec_step_config` (`list[obj]`): The ExecStepConfig for all Linux VMs targeted by the PatchJob. When `null`, the `linux_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.new](#fn-os_config_patch_deploymentpatch_configlinux_exec_step_confignew) constructor.
  - `windows_exec_step_config` (`list[obj]`): The ExecStepConfig for all Windows VMs targeted by the PatchJob. When `null`, the `windows_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.new](#fn-os_config_patch_deploymentpatch_configwindows_exec_step_confignew) constructor.

**Returns**:
  - An attribute object that represents the `pre_step` sub block.


## obj patch_config.pre_step.linux_exec_step_config



### fn patch_config.pre_step.linux_exec_step_config.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.new` constructs a new object with attributes and blocks configured for the `linux_exec_step_config`
Terraform sub block.



**Args**:
  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.
  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.
  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.gcs_object.new](#fn-os_config_patch_deploymentpatch_configpre_stepgcs_objectnew) constructor.

**Returns**:
  - An attribute object that represents the `linux_exec_step_config` sub block.


## obj patch_config.pre_step.linux_exec_step_config.gcs_object



### fn patch_config.pre_step.linux_exec_step_config.gcs_object.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Bucket of the Cloud Storage object.
  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  - `object` (`string`): Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs_object` sub block.


## obj patch_config.pre_step.windows_exec_step_config



### fn patch_config.pre_step.windows_exec_step_config.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.new` constructs a new object with attributes and blocks configured for the `windows_exec_step_config`
Terraform sub block.



**Args**:
  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.
  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.
  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.gcs_object.new](#fn-os_config_patch_deploymentpatch_configpre_stepgcs_objectnew) constructor.

**Returns**:
  - An attribute object that represents the `windows_exec_step_config` sub block.


## obj patch_config.pre_step.windows_exec_step_config.gcs_object



### fn patch_config.pre_step.windows_exec_step_config.gcs_object.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Bucket of the Cloud Storage object.
  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  - `object` (`string`): Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs_object` sub block.


## obj patch_config.windows_update



### fn patch_config.windows_update.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.windows_update.new` constructs a new object with attributes and blocks configured for the `windows_update`
Terraform sub block.



**Args**:
  - `classifications` (`list`): Only apply updates of these windows update classifications. If empty, all updates are applied. Possible values: [&#34;CRITICAL&#34;, &#34;SECURITY&#34;, &#34;DEFINITION&#34;, &#34;DRIVER&#34;, &#34;FEATURE_PACK&#34;, &#34;SERVICE_PACK&#34;, &#34;TOOL&#34;, &#34;UPDATE_ROLLUP&#34;, &#34;UPDATE&#34;] When `null`, the `classifications` field will be omitted from the resulting object.
  - `excludes` (`list`): List of KBs to exclude from update. When `null`, the `excludes` field will be omitted from the resulting object.
  - `exclusive_patches` (`list`): An exclusive list of kbs to be updated. These are the only patches that will be updated.
This field must not be used with other patch configurations. When `null`, the `exclusive_patches` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `windows_update` sub block.


## obj patch_config.yum



### fn patch_config.yum.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.yum.new` constructs a new object with attributes and blocks configured for the `yum`
Terraform sub block.



**Args**:
  - `excludes` (`list`): List of packages to exclude from update. These packages will be excluded. When `null`, the `excludes` field will be omitted from the resulting object.
  - `exclusive_packages` (`list`): An exclusive list of packages to be updated. These are the only packages that will be updated.
If these packages are not installed, they will be ignored. This field cannot be specified with
any other patch configuration fields. When `null`, the `exclusive_packages` field will be omitted from the resulting object.
  - `minimal` (`bool`): Will cause patch to run yum update-minimal instead. When `null`, the `minimal` field will be omitted from the resulting object.
  - `security` (`bool`): Adds the --security flag to yum update. Not supported on all platforms. When `null`, the `security` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `yum` sub block.


## obj patch_config.zypper



### fn patch_config.zypper.new

```ts
new()
```


`google.os_config_patch_deployment.patch_config.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`
Terraform sub block.



**Args**:
  - `categories` (`list`): Install only patches with these categories. Common categories include security, recommended, and feature. When `null`, the `categories` field will be omitted from the resulting object.
  - `excludes` (`list`): List of packages to exclude from update. When `null`, the `excludes` field will be omitted from the resulting object.
  - `exclusive_patches` (`list`): An exclusive list of patches to be updated. These are the only patches that will be installed using &#39;zypper patch patch:&#39; command.
This field must not be used with any other patch configuration fields. When `null`, the `exclusive_patches` field will be omitted from the resulting object.
  - `severities` (`list`): Install only patches with these severities. Common severities include critical, important, moderate, and low. When `null`, the `severities` field will be omitted from the resulting object.
  - `with_optional` (`bool`): Adds the --with-optional flag to zypper patch. When `null`, the `with_optional` field will be omitted from the resulting object.
  - `with_update` (`bool`): Adds the --with-update flag, to zypper patch. When `null`, the `with_update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `zypper` sub block.


## obj recurring_schedule



### fn recurring_schedule.new

```ts
new()
```


`google.os_config_patch_deployment.recurring_schedule.new` constructs a new object with attributes and blocks configured for the `recurring_schedule`
Terraform sub block.



**Args**:
  - `end_time` (`string`): The end time at which a recurring patch deployment schedule is no longer active.
A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `end_time` field will be omitted from the resulting object.
  - `start_time` (`string`): The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.
A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `start_time` field will be omitted from the resulting object.
  - `monthly` (`list[obj]`): Schedule with monthly executions. When `null`, the `monthly` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.monthly.new](#fn-os_config_patch_deploymentmonthlynew) constructor.
  - `time_of_day` (`list[obj]`): Time of the day to run a recurring deployment. When `null`, the `time_of_day` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.time_of_day.new](#fn-os_config_patch_deploymenttime_of_daynew) constructor.
  - `time_zone` (`list[obj]`): Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are
determined by the chosen time zone. When `null`, the `time_zone` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.time_zone.new](#fn-os_config_patch_deploymenttime_zonenew) constructor.
  - `weekly` (`list[obj]`): Schedule with weekly executions. When `null`, the `weekly` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.weekly.new](#fn-os_config_patch_deploymentweeklynew) constructor.

**Returns**:
  - An attribute object that represents the `recurring_schedule` sub block.


## obj recurring_schedule.monthly



### fn recurring_schedule.monthly.new

```ts
new()
```


`google.os_config_patch_deployment.recurring_schedule.monthly.new` constructs a new object with attributes and blocks configured for the `monthly`
Terraform sub block.



**Args**:
  - `month_day` (`number`): One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.
Months without the target day will be skipped. For example, a schedule to run &#34;every month on the 31st&#34;
will not run in February, April, June, etc. When `null`, the `month_day` field will be omitted from the resulting object.
  - `week_day_of_month` (`list[obj]`): Week day in a month. When `null`, the `week_day_of_month` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.monthly.week_day_of_month.new](#fn-os_config_patch_deploymentrecurring_scheduleweek_day_of_monthnew) constructor.

**Returns**:
  - An attribute object that represents the `monthly` sub block.


## obj recurring_schedule.monthly.week_day_of_month



### fn recurring_schedule.monthly.week_day_of_month.new

```ts
new()
```


`google.os_config_patch_deployment.recurring_schedule.monthly.week_day_of_month.new` constructs a new object with attributes and blocks configured for the `week_day_of_month`
Terraform sub block.



**Args**:
  - `day_of_week` (`string`): A day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]
  - `week_ordinal` (`number`): Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.

**Returns**:
  - An attribute object that represents the `week_day_of_month` sub block.


## obj recurring_schedule.time_of_day



### fn recurring_schedule.time_of_day.new

```ts
new()
```


`google.os_config_patch_deployment.recurring_schedule.time_of_day.new` constructs a new object with attributes and blocks configured for the `time_of_day`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.
An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.
  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `time_of_day` sub block.


## obj recurring_schedule.time_zone



### fn recurring_schedule.time_zone.new

```ts
new()
```


`google.os_config_patch_deployment.recurring_schedule.time_zone.new` constructs a new object with attributes and blocks configured for the `time_zone`
Terraform sub block.



**Args**:
  - `version` (`string`): IANA Time Zone Database version number, e.g. &#34;2019a&#34;. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `time_zone` sub block.


## obj recurring_schedule.weekly



### fn recurring_schedule.weekly.new

```ts
new()
```


`google.os_config_patch_deployment.recurring_schedule.weekly.new` constructs a new object with attributes and blocks configured for the `weekly`
Terraform sub block.



**Args**:
  - `day_of_week` (`string`): IANA Time Zone Database time zone, e.g. &#34;America/New_York&#34;. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]

**Returns**:
  - An attribute object that represents the `weekly` sub block.


## obj rollout



### fn rollout.new

```ts
new()
```


`google.os_config_patch_deployment.rollout.new` constructs a new object with attributes and blocks configured for the `rollout`
Terraform sub block.



**Args**:
  - `mode` (`string`): Mode of the patch rollout. Possible values: [&#34;ZONE_BY_ZONE&#34;, &#34;CONCURRENT_ZONES&#34;]
  - `disruption_budget` (`list[obj]`): The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up.
During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps.
A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget.
For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone.
For example, if the disruption budget has a fixed value of 10, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops. When `null`, the `disruption_budget` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.rollout.disruption_budget.new](#fn-os_config_patch_deploymentdisruption_budgetnew) constructor.

**Returns**:
  - An attribute object that represents the `rollout` sub block.


## obj rollout.disruption_budget



### fn rollout.disruption_budget.new

```ts
new()
```


`google.os_config_patch_deployment.rollout.disruption_budget.new` constructs a new object with attributes and blocks configured for the `disruption_budget`
Terraform sub block.



**Args**:
  - `fixed` (`number`): Specifies a fixed value. When `null`, the `fixed` field will be omitted from the resulting object.
  - `percentage` (`number`): Specifies the relative value defined as a percentage, which will be multiplied by a reference value. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disruption_budget` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.os_config_patch_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
