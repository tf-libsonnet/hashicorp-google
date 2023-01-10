---
permalink: /gke_backup_backup_plan/
---

# gke_backup_backup_plan

`gke_backup_backup_plan` represents the `google_gke_backup_backup_plan` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackupConfig()`](#fn-withbackupconfig)
* [`fn withBackupConfigMixin()`](#fn-withbackupconfigmixin)
* [`fn withBackupSchedule()`](#fn-withbackupschedule)
* [`fn withBackupScheduleMixin()`](#fn-withbackupschedulemixin)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withDeactivated()`](#fn-withdeactivated)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRetentionPolicy()`](#fn-withretentionpolicy)
* [`fn withRetentionPolicyMixin()`](#fn-withretentionpolicymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj backup_config`](#obj-backup_config)
  * [`fn new()`](#fn-backup_confignew)
  * [`obj backup_config.encryption_key`](#obj-backup_configencryption_key)
    * [`fn new()`](#fn-backup_configencryption_keynew)
  * [`obj backup_config.selected_applications`](#obj-backup_configselected_applications)
    * [`fn new()`](#fn-backup_configselected_applicationsnew)
    * [`obj backup_config.selected_applications.namespaced_names`](#obj-backup_configselected_applicationsnamespaced_names)
      * [`fn new()`](#fn-backup_configselected_applicationsnamespaced_namesnew)
  * [`obj backup_config.selected_namespaces`](#obj-backup_configselected_namespaces)
    * [`fn new()`](#fn-backup_configselected_namespacesnew)
* [`obj backup_schedule`](#obj-backup_schedule)
  * [`fn new()`](#fn-backup_schedulenew)
* [`obj retention_policy`](#obj-retention_policy)
  * [`fn new()`](#fn-retention_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_backup_backup_plan.new` injects a new `google_gke_backup_backup_plan` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_backup_backup_plan.new('some_id')

You can get the reference to the `id` field of the created `google.gke_backup_backup_plan` using the reference:

    $._ref.google_gke_backup_backup_plan.some_id.get('id')

This is the same as directly entering `"${ google_gke_backup_backup_plan.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster` (`string`): The source cluster from which Backups will be created via this BackupPlan.
  - `deactivated` (`bool`): This flag indicates whether this BackupPlan has been deactivated.
Setting this field to True locks the BackupPlan such that no further updates will be allowed
(except deletes), including the deactivated field itself. It also prevents any new Backups
from being created via this BackupPlan (including scheduled Backups). When `null`, the `deactivated` field will be omitted from the resulting object.
  - `description` (`string`): User specified descriptive string for this BackupPlan. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Description: A set of custom labels supplied by the user.
A list of key-&gt;value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The region of the Backup Plan.
  - `name` (`string`): The full name of the BackupPlan Resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `backup_config` (`list[obj]`): Defines the configuration of Backups created via this BackupPlan. When `null`, the `backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.new](#fn-backup_confignew) constructor.
  - `backup_schedule` (`list[obj]`): Defines a schedule for automatic Backup creation via this BackupPlan. When `null`, the `backup_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_schedule.new](#fn-backup_schedulenew) constructor.
  - `retention_policy` (`list[obj]`): RetentionPolicy governs lifecycle of Backups created under this plan. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.retention_policy.new](#fn-retention_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_backup_backup_plan.newAttrs` constructs a new object with attributes and blocks configured for the `gke_backup_backup_plan`
Terraform resource.

Unlike [google.gke_backup_backup_plan.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster` (`string`): The source cluster from which Backups will be created via this BackupPlan.
  - `deactivated` (`bool`): This flag indicates whether this BackupPlan has been deactivated.
Setting this field to True locks the BackupPlan such that no further updates will be allowed
(except deletes), including the deactivated field itself. It also prevents any new Backups
from being created via this BackupPlan (including scheduled Backups). When `null`, the `deactivated` field will be omitted from the resulting object.
  - `description` (`string`): User specified descriptive string for this BackupPlan. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Description: A set of custom labels supplied by the user.
A list of key-&gt;value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The region of the Backup Plan.
  - `name` (`string`): The full name of the BackupPlan Resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `backup_config` (`list[obj]`): Defines the configuration of Backups created via this BackupPlan. When `null`, the `backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.new](#fn-backup_confignew) constructor.
  - `backup_schedule` (`list[obj]`): Defines a schedule for automatic Backup creation via this BackupPlan. When `null`, the `backup_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_schedule.new](#fn-backup_schedulenew) constructor.
  - `retention_policy` (`list[obj]`): RetentionPolicy governs lifecycle of Backups created under this plan. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.retention_policy.new](#fn-retention_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_backup_backup_plan` resource into the root Terraform configuration.


### fn withBackupConfig

```ts
withBackupConfig()
```

`google.list[obj].withBackupConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backup_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBackupConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backup_config` field.


### fn withBackupConfigMixin

```ts
withBackupConfigMixin()
```

`google.list[obj].withBackupConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backup_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBackupConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backup_config` field.


### fn withBackupSchedule

```ts
withBackupSchedule()
```

`google.list[obj].withBackupSchedule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backup_schedule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBackupScheduleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backup_schedule` field.


### fn withBackupScheduleMixin

```ts
withBackupScheduleMixin()
```

`google.list[obj].withBackupScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backup_schedule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBackupSchedule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backup_schedule` field.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withDeactivated

```ts
withDeactivated()
```

`google.bool.withDeactivated` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the deactivated field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `deactivated` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withRetentionPolicy

```ts
withRetentionPolicy()
```

`google.list[obj].withRetentionPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retention_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRetentionPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retention_policy` field.


### fn withRetentionPolicyMixin

```ts
withRetentionPolicyMixin()
```

`google.list[obj].withRetentionPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retention_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRetentionPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retention_policy` field.


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


## obj backup_config



### fn backup_config.new

```ts
new()
```


`google.gke_backup_backup_plan.backup_config.new` constructs a new object with attributes and blocks configured for the `backup_config`
Terraform sub block.



**Args**:
  - `all_namespaces` (`bool`): If True, include all namespaced resources. When `null`, the `all_namespaces` field will be omitted from the resulting object.
  - `include_secrets` (`bool`): This flag specifies whether Kubernetes Secret resources should be included
when they fall into the scope of Backups. When `null`, the `include_secrets` field will be omitted from the resulting object.
  - `include_volume_data` (`bool`): This flag specifies whether volume data should be backed up when PVCs are
included in the scope of a Backup. When `null`, the `include_volume_data` field will be omitted from the resulting object.
  - `encryption_key` (`list[obj]`): This defines a customer managed encryption key that will be used to encrypt the &#34;config&#34;
portion (the Kubernetes resources) of Backups created via this plan. When `null`, the `encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.encryption_key.new](#fn-backup_configencryption_keynew) constructor.
  - `selected_applications` (`list[obj]`): A list of namespaced Kubernetes Resources. When `null`, the `selected_applications` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.selected_applications.new](#fn-backup_configselected_applicationsnew) constructor.
  - `selected_namespaces` (`list[obj]`): If set, include just the resources in the listed namespaces. When `null`, the `selected_namespaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.selected_namespaces.new](#fn-backup_configselected_namespacesnew) constructor.

**Returns**:
  - An attribute object that represents the `backup_config` sub block.


## obj backup_config.encryption_key



### fn backup_config.encryption_key.new

```ts
new()
```


`google.gke_backup_backup_plan.backup_config.encryption_key.new` constructs a new object with attributes and blocks configured for the `encryption_key`
Terraform sub block.



**Args**:
  - `gcp_kms_encryption_key` (`string`): Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/*

**Returns**:
  - An attribute object that represents the `encryption_key` sub block.


## obj backup_config.selected_applications



### fn backup_config.selected_applications.new

```ts
new()
```


`google.gke_backup_backup_plan.backup_config.selected_applications.new` constructs a new object with attributes and blocks configured for the `selected_applications`
Terraform sub block.



**Args**:
  - `namespaced_names` (`list[obj]`): A list of namespaced Kubernetes resources. When `null`, the `namespaced_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_backup_plan.backup_config.selected_applications.namespaced_names.new](#fn-backup_configbackup_confignamespaced_namesnew) constructor.

**Returns**:
  - An attribute object that represents the `selected_applications` sub block.


## obj backup_config.selected_applications.namespaced_names



### fn backup_config.selected_applications.namespaced_names.new

```ts
new()
```


`google.gke_backup_backup_plan.backup_config.selected_applications.namespaced_names.new` constructs a new object with attributes and blocks configured for the `namespaced_names`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of a Kubernetes Resource.
  - `namespace` (`string`): The namespace of a Kubernetes Resource.

**Returns**:
  - An attribute object that represents the `namespaced_names` sub block.


## obj backup_config.selected_namespaces



### fn backup_config.selected_namespaces.new

```ts
new()
```


`google.gke_backup_backup_plan.backup_config.selected_namespaces.new` constructs a new object with attributes and blocks configured for the `selected_namespaces`
Terraform sub block.



**Args**:
  - `namespaces` (`list`): A list of Kubernetes Namespaces.

**Returns**:
  - An attribute object that represents the `selected_namespaces` sub block.


## obj backup_schedule



### fn backup_schedule.new

```ts
new()
```


`google.gke_backup_backup_plan.backup_schedule.new` constructs a new object with attributes and blocks configured for the `backup_schedule`
Terraform sub block.



**Args**:
  - `cron_schedule` (`string`): A standard cron string that defines a repeating schedule for
creating Backups via this BackupPlan.
If this is defined, then backupRetainDays must also be defined. When `null`, the `cron_schedule` field will be omitted from the resulting object.
  - `paused` (`bool`): This flag denotes whether automatic Backup creation is paused for this BackupPlan. When `null`, the `paused` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `backup_schedule` sub block.


## obj retention_policy



### fn retention_policy.new

```ts
new()
```


`google.gke_backup_backup_plan.retention_policy.new` constructs a new object with attributes and blocks configured for the `retention_policy`
Terraform sub block.



**Args**:
  - `backup_delete_lock_days` (`number`): Minimum age for a Backup created via this BackupPlan (in days).
Must be an integer value between 0-90 (inclusive).
A Backup created under this BackupPlan will not be deletable
until it reaches Backup&#39;s (create time &#43; backup_delete_lock_days).
Updating this field of a BackupPlan does not affect existing Backups.
Backups created after a successful update will inherit this new value. When `null`, the `backup_delete_lock_days` field will be omitted from the resulting object.
  - `backup_retain_days` (`number`): The default maximum age of a Backup created via this BackupPlan.
This field MUST be an integer value &gt;= 0 and &lt;= 365. If specified,
a Backup created under this BackupPlan will be automatically deleted
after its age reaches (createTime &#43; backupRetainDays).
If not specified, Backups created under this BackupPlan will NOT be
subject to automatic deletion. Updating this field does NOT affect
existing Backups under it. Backups created AFTER a successful update
will automatically pick up the new value.
NOTE: backupRetainDays must be &gt;= backupDeleteLockDays.
If cronSchedule is defined, then this must be &lt;= 360 * the creation interval.] When `null`, the `backup_retain_days` field will be omitted from the resulting object.
  - `locked` (`bool`): This flag denotes whether the retention policy of this BackupPlan is locked.
If set to True, no further update is allowed on this policy, including
the locked field itself. When `null`, the `locked` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retention_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_backup_backup_plan.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
