---
permalink: /alloydb_cluster/
---

# alloydb_cluster

`alloydb_cluster` represents the `google_alloydb_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutomatedBackupPolicy()`](#fn-withautomatedbackuppolicy)
* [`fn withAutomatedBackupPolicyMixin()`](#fn-withautomatedbackuppolicymixin)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withContinuousBackupConfig()`](#fn-withcontinuousbackupconfig)
* [`fn withContinuousBackupConfigMixin()`](#fn-withcontinuousbackupconfigmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEncryptionConfig()`](#fn-withencryptionconfig)
* [`fn withEncryptionConfigMixin()`](#fn-withencryptionconfigmixin)
* [`fn withInitialUser()`](#fn-withinitialuser)
* [`fn withInitialUserMixin()`](#fn-withinitialusermixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRestoreBackupSource()`](#fn-withrestorebackupsource)
* [`fn withRestoreBackupSourceMixin()`](#fn-withrestorebackupsourcemixin)
* [`fn withRestoreContinuousBackupSource()`](#fn-withrestorecontinuousbackupsource)
* [`fn withRestoreContinuousBackupSourceMixin()`](#fn-withrestorecontinuousbackupsourcemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj automated_backup_policy`](#obj-automated_backup_policy)
  * [`fn new()`](#fn-automated_backup_policynew)
  * [`obj automated_backup_policy.encryption_config`](#obj-automated_backup_policyencryption_config)
    * [`fn new()`](#fn-automated_backup_policyencryption_confignew)
  * [`obj automated_backup_policy.quantity_based_retention`](#obj-automated_backup_policyquantity_based_retention)
    * [`fn new()`](#fn-automated_backup_policyquantity_based_retentionnew)
  * [`obj automated_backup_policy.time_based_retention`](#obj-automated_backup_policytime_based_retention)
    * [`fn new()`](#fn-automated_backup_policytime_based_retentionnew)
  * [`obj automated_backup_policy.weekly_schedule`](#obj-automated_backup_policyweekly_schedule)
    * [`fn new()`](#fn-automated_backup_policyweekly_schedulenew)
    * [`obj automated_backup_policy.weekly_schedule.start_times`](#obj-automated_backup_policyweekly_schedulestart_times)
      * [`fn new()`](#fn-automated_backup_policyweekly_schedulestart_timesnew)
* [`obj continuous_backup_config`](#obj-continuous_backup_config)
  * [`fn new()`](#fn-continuous_backup_confignew)
  * [`obj continuous_backup_config.encryption_config`](#obj-continuous_backup_configencryption_config)
    * [`fn new()`](#fn-continuous_backup_configencryption_confignew)
* [`obj encryption_config`](#obj-encryption_config)
  * [`fn new()`](#fn-encryption_confignew)
* [`obj initial_user`](#obj-initial_user)
  * [`fn new()`](#fn-initial_usernew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
* [`obj restore_backup_source`](#obj-restore_backup_source)
  * [`fn new()`](#fn-restore_backup_sourcenew)
* [`obj restore_continuous_backup_source`](#obj-restore_continuous_backup_source)
  * [`fn new()`](#fn-restore_continuous_backup_sourcenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.alloydb_cluster.new` injects a new `google_alloydb_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.alloydb_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.alloydb_cluster` using the reference:

    $._ref.google_alloydb_cluster.some_id.get('id')

This is the same as directly entering `"${ google_alloydb_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): The ID of the alloydb cluster.
  - `display_name` (`string`): User-settable and human-readable display name for the Cluster. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the alloydb cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the alloydb cluster should reside.
  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:

&#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `automated_backup_policy` (`list[obj]`): The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default. When `null`, the `automated_backup_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.new](#fn-automated_backup_policynew) constructor.
  - `continuous_backup_config` (`list[obj]`): The continuous backup config for this cluster.

If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days. When `null`, the `continuous_backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.continuous_backup_config.new](#fn-continuous_backup_confignew) constructor.
  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.encryption_config.new](#fn-encryption_confignew) constructor.
  - `initial_user` (`list[obj]`): Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.initial_user.new](#fn-initial_usernew) constructor.
  - `network_config` (`list[obj]`): Metadata related to network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.network_config.new](#fn-network_confignew) constructor.
  - `restore_backup_source` (`list[obj]`): The source when restoring from a backup. Conflicts with &#39;restore_continuous_backup_source&#39;, both can&#39;t be set together. When `null`, the `restore_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_backup_source.new](#fn-restore_backup_sourcenew) constructor.
  - `restore_continuous_backup_source` (`list[obj]`): The source when restoring via point in time recovery (PITR). Conflicts with &#39;restore_backup_source&#39;, both can&#39;t be set together. When `null`, the `restore_continuous_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_continuous_backup_source.new](#fn-restore_continuous_backup_sourcenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.alloydb_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_cluster`
Terraform resource.

Unlike [google.alloydb_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): The ID of the alloydb cluster.
  - `display_name` (`string`): User-settable and human-readable display name for the Cluster. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the alloydb cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the alloydb cluster should reside.
  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:

&#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `automated_backup_policy` (`list[obj]`): The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default. When `null`, the `automated_backup_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.new](#fn-automated_backup_policynew) constructor.
  - `continuous_backup_config` (`list[obj]`): The continuous backup config for this cluster.

If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days. When `null`, the `continuous_backup_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.continuous_backup_config.new](#fn-continuous_backup_confignew) constructor.
  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.encryption_config.new](#fn-encryption_confignew) constructor.
  - `initial_user` (`list[obj]`): Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.initial_user.new](#fn-initial_usernew) constructor.
  - `network_config` (`list[obj]`): Metadata related to network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.network_config.new](#fn-network_confignew) constructor.
  - `restore_backup_source` (`list[obj]`): The source when restoring from a backup. Conflicts with &#39;restore_continuous_backup_source&#39;, both can&#39;t be set together. When `null`, the `restore_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_backup_source.new](#fn-restore_backup_sourcenew) constructor.
  - `restore_continuous_backup_source` (`list[obj]`): The source when restoring via point in time recovery (PITR). Conflicts with &#39;restore_backup_source&#39;, both can&#39;t be set together. When `null`, the `restore_continuous_backup_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.restore_continuous_backup_source.new](#fn-restore_continuous_backup_sourcenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_cluster` resource into the root Terraform configuration.


### fn withAutomatedBackupPolicy

```ts
withAutomatedBackupPolicy()
```

`google.list[obj].withAutomatedBackupPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the automated_backup_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutomatedBackupPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `automated_backup_policy` field.


### fn withAutomatedBackupPolicyMixin

```ts
withAutomatedBackupPolicyMixin()
```

`google.list[obj].withAutomatedBackupPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the automated_backup_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutomatedBackupPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `automated_backup_policy` field.


### fn withClusterId

```ts
withClusterId()
```

`google.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withContinuousBackupConfig

```ts
withContinuousBackupConfig()
```

`google.list[obj].withContinuousBackupConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the continuous_backup_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withContinuousBackupConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `continuous_backup_config` field.


### fn withContinuousBackupConfigMixin

```ts
withContinuousBackupConfigMixin()
```

`google.list[obj].withContinuousBackupConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the continuous_backup_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withContinuousBackupConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `continuous_backup_config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEncryptionConfig

```ts
withEncryptionConfig()
```

`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withEncryptionConfigMixin

```ts
withEncryptionConfigMixin()
```

`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withInitialUser

```ts
withInitialUser()
```

`google.list[obj].withInitialUser` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the initial_user field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInitialUserMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `initial_user` field.


### fn withInitialUserMixin

```ts
withInitialUserMixin()
```

`google.list[obj].withInitialUserMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the initial_user field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInitialUser](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `initial_user` field.


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


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


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


### fn withRestoreBackupSource

```ts
withRestoreBackupSource()
```

`google.list[obj].withRestoreBackupSource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_backup_source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRestoreBackupSourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_backup_source` field.


### fn withRestoreBackupSourceMixin

```ts
withRestoreBackupSourceMixin()
```

`google.list[obj].withRestoreBackupSourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_backup_source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreBackupSource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_backup_source` field.


### fn withRestoreContinuousBackupSource

```ts
withRestoreContinuousBackupSource()
```

`google.list[obj].withRestoreContinuousBackupSource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_continuous_backup_source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRestoreContinuousBackupSourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_continuous_backup_source` field.


### fn withRestoreContinuousBackupSourceMixin

```ts
withRestoreContinuousBackupSourceMixin()
```

`google.list[obj].withRestoreContinuousBackupSourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_continuous_backup_source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreContinuousBackupSource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_continuous_backup_source` field.


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


## obj automated_backup_policy



### fn automated_backup_policy.new

```ts
new()
```


`google.alloydb_cluster.automated_backup_policy.new` constructs a new object with attributes and blocks configured for the `automated_backup_policy`
Terraform sub block.



**Args**:
  - `backup_window` (`string`): The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.

The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `backup_window` field will be omitted from the resulting object.
  - `enabled` (`bool`): Whether automated backups are enabled. When `null`, the `enabled` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to backups created using this configuration. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. When `null`, the `location` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.encryption_config.new](#fn-automated_backup_policyencryption_confignew) constructor.
  - `quantity_based_retention` (`list[obj]`): Quantity-based Backup retention policy to retain recent backups. Conflicts with &#39;time_based_retention&#39;, both can&#39;t be set together. When `null`, the `quantity_based_retention` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.quantity_based_retention.new](#fn-automated_backup_policyquantity_based_retentionnew) constructor.
  - `time_based_retention` (`list[obj]`): Time-based Backup retention policy. Conflicts with &#39;quantity_based_retention&#39;, both can&#39;t be set together. When `null`, the `time_based_retention` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.time_based_retention.new](#fn-automated_backup_policytime_based_retentionnew) constructor.
  - `weekly_schedule` (`list[obj]`): Weekly schedule for the Backup. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.weekly_schedule.new](#fn-automated_backup_policyweekly_schedulenew) constructor.

**Returns**:
  - An attribute object that represents the `automated_backup_policy` sub block.


## obj automated_backup_policy.encryption_config



### fn automated_backup_policy.encryption_config.new

```ts
new()
```


`google.alloydb_cluster.automated_backup_policy.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj automated_backup_policy.quantity_based_retention



### fn automated_backup_policy.quantity_based_retention.new

```ts
new()
```


`google.alloydb_cluster.automated_backup_policy.quantity_based_retention.new` constructs a new object with attributes and blocks configured for the `quantity_based_retention`
Terraform sub block.



**Args**:
  - `count` (`number`): The number of backups to retain. When `null`, the `count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `quantity_based_retention` sub block.


## obj automated_backup_policy.time_based_retention



### fn automated_backup_policy.time_based_retention.new

```ts
new()
```


`google.alloydb_cluster.automated_backup_policy.time_based_retention.new` constructs a new object with attributes and blocks configured for the `time_based_retention`
Terraform sub block.



**Args**:
  - `retention_period` (`string`): The retention period.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `retention_period` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `time_based_retention` sub block.


## obj automated_backup_policy.weekly_schedule



### fn automated_backup_policy.weekly_schedule.new

```ts
new()
```


`google.alloydb_cluster.automated_backup_policy.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`
Terraform sub block.



**Args**:
  - `days_of_week` (`list`): The days of the week to perform a backup. At least one day of the week must be provided. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `days_of_week` field will be omitted from the resulting object.
  - `start_times` (`list[obj]`): The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). When `null`, the `start_times` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.weekly_schedule.start_times.new](#fn-automated_backup_policyautomated_backup_policystart_timesnew) constructor.

**Returns**:
  - An attribute object that represents the `weekly_schedule` sub block.


## obj automated_backup_policy.weekly_schedule.start_times



### fn automated_backup_policy.weekly_schedule.start_times.new

```ts
new()
```


`google.alloydb_cluster.automated_backup_policy.weekly_schedule.start_times.new` constructs a new object with attributes and blocks configured for the `start_times`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.
  - `minutes` (`number`): Minutes of hour of day. Currently, only the value 0 is supported. When `null`, the `minutes` field will be omitted from the resulting object.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Currently, only the value 0 is supported. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Seconds of minutes of the time. Currently, only the value 0 is supported. When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `start_times` sub block.


## obj continuous_backup_config



### fn continuous_backup_config.new

```ts
new()
```


`google.alloydb_cluster.continuous_backup_config.new` constructs a new object with attributes and blocks configured for the `continuous_backup_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether continuous backup recovery is enabled. If not set, defaults to true. When `null`, the `enabled` field will be omitted from the resulting object.
  - `recovery_window_days` (`number`): The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.

If not set, defaults to 14 days. When `null`, the `recovery_window_days` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.continuous_backup_config.encryption_config.new](#fn-continuous_backup_configencryption_confignew) constructor.

**Returns**:
  - An attribute object that represents the `continuous_backup_config` sub block.


## obj continuous_backup_config.encryption_config



### fn continuous_backup_config.encryption_config.new

```ts
new()
```


`google.alloydb_cluster.continuous_backup_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj encryption_config



### fn encryption_config.new

```ts
new()
```


`google.alloydb_cluster.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj initial_user



### fn initial_user.new

```ts
new()
```


`google.alloydb_cluster.initial_user.new` constructs a new object with attributes and blocks configured for the `initial_user`
Terraform sub block.



**Args**:
  - `password` (`string`): The initial password for the user.
  - `user` (`string`): The database username. When `null`, the `user` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `initial_user` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.alloydb_cluster.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `allocated_ip_range` (`string`): The name of the allocated IP range for the private IP AlloyDB cluster. For example: &#34;google-managed-services-default&#34;.
If set, the instance IPs for this cluster will be created in the allocated range. When `null`, the `allocated_ip_range` field will be omitted from the resulting object.
  - `network` (`string`): The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
It is specified in the form: &#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj restore_backup_source



### fn restore_backup_source.new

```ts
new()
```


`google.alloydb_cluster.restore_backup_source.new` constructs a new object with attributes and blocks configured for the `restore_backup_source`
Terraform sub block.



**Args**:
  - `backup_name` (`string`): The name of the backup that this cluster is restored from.

**Returns**:
  - An attribute object that represents the `restore_backup_source` sub block.


## obj restore_continuous_backup_source



### fn restore_continuous_backup_source.new

```ts
new()
```


`google.alloydb_cluster.restore_continuous_backup_source.new` constructs a new object with attributes and blocks configured for the `restore_continuous_backup_source`
Terraform sub block.



**Args**:
  - `cluster` (`string`): The name of the source cluster that this cluster is restored from.
  - `point_in_time` (`string`): The point in time that this cluster is restored to, in RFC 3339 format.

**Returns**:
  - An attribute object that represents the `restore_continuous_backup_source` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.alloydb_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
