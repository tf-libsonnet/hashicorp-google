---
permalink: /sql_database_instance/
---

# sql_database_instance

`sql_database_instance` represents the `google_sql_database_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClone()`](#fn-withclone)
* [`fn withCloneMixin()`](#fn-withclonemixin)
* [`fn withDatabaseVersion()`](#fn-withdatabaseversion)
* [`fn withDeletionProtection()`](#fn-withdeletionprotection)
* [`fn withEncryptionKeyName()`](#fn-withencryptionkeyname)
* [`fn withMaintenanceVersion()`](#fn-withmaintenanceversion)
* [`fn withMasterInstanceName()`](#fn-withmasterinstancename)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReplicaConfiguration()`](#fn-withreplicaconfiguration)
* [`fn withReplicaConfigurationMixin()`](#fn-withreplicaconfigurationmixin)
* [`fn withRestoreBackupContext()`](#fn-withrestorebackupcontext)
* [`fn withRestoreBackupContextMixin()`](#fn-withrestorebackupcontextmixin)
* [`fn withRootPassword()`](#fn-withrootpassword)
* [`fn withSettings()`](#fn-withsettings)
* [`fn withSettingsMixin()`](#fn-withsettingsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj clone`](#obj-clone)
  * [`fn new()`](#fn-clonenew)
* [`obj replica_configuration`](#obj-replica_configuration)
  * [`fn new()`](#fn-replica_configurationnew)
* [`obj restore_backup_context`](#obj-restore_backup_context)
  * [`fn new()`](#fn-restore_backup_contextnew)
* [`obj settings`](#obj-settings)
  * [`fn new()`](#fn-settingsnew)
  * [`obj settings.active_directory_config`](#obj-settingsactive_directory_config)
    * [`fn new()`](#fn-settingsactive_directory_confignew)
  * [`obj settings.backup_configuration`](#obj-settingsbackup_configuration)
    * [`fn new()`](#fn-settingsbackup_configurationnew)
    * [`obj settings.backup_configuration.backup_retention_settings`](#obj-settingsbackup_configurationbackup_retention_settings)
      * [`fn new()`](#fn-settingsbackup_configurationbackup_retention_settingsnew)
  * [`obj settings.database_flags`](#obj-settingsdatabase_flags)
    * [`fn new()`](#fn-settingsdatabase_flagsnew)
  * [`obj settings.deny_maintenance_period`](#obj-settingsdeny_maintenance_period)
    * [`fn new()`](#fn-settingsdeny_maintenance_periodnew)
  * [`obj settings.insights_config`](#obj-settingsinsights_config)
    * [`fn new()`](#fn-settingsinsights_confignew)
  * [`obj settings.ip_configuration`](#obj-settingsip_configuration)
    * [`fn new()`](#fn-settingsip_configurationnew)
    * [`obj settings.ip_configuration.authorized_networks`](#obj-settingsip_configurationauthorized_networks)
      * [`fn new()`](#fn-settingsip_configurationauthorized_networksnew)
  * [`obj settings.location_preference`](#obj-settingslocation_preference)
    * [`fn new()`](#fn-settingslocation_preferencenew)
  * [`obj settings.maintenance_window`](#obj-settingsmaintenance_window)
    * [`fn new()`](#fn-settingsmaintenance_windownew)
  * [`obj settings.password_validation_policy`](#obj-settingspassword_validation_policy)
    * [`fn new()`](#fn-settingspassword_validation_policynew)
  * [`obj settings.sql_server_audit_config`](#obj-settingssql_server_audit_config)
    * [`fn new()`](#fn-settingssql_server_audit_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.sql_database_instance.new` injects a new `google_sql_database_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.sql_database_instance.new('some_id')

You can get the reference to the `id` field of the created `google.sql_database_instance` using the reference:

    $._ref.google_sql_database_instance.some_id.get('id')

This is the same as directly entering `"${ google_sql_database_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `database_version` (`string`): The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions.
  - `deletion_protection` (`bool`): Used to block Terraform from deleting a SQL Instance. Defaults to true. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `encryption_key_name` (`string`):  When `null`, the `encryption_key_name` field will be omitted from the resulting object.
  - `maintenance_version` (`string`): Maintenance version. When `null`, the `maintenance_version` field will be omitted from the resulting object.
  - `master_instance_name` (`string`): The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups. When `null`, the `master_instance_name` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region the instance will sit in. Note, Cloud SQL is not available in all regions. A valid region must be provided to use this resource. If a region is not provided in the resource definition, the provider region will be used instead, but this will be an apply-time error for instances if the provider region is not supported with Cloud SQL. If you choose not to provide the region argument for this resource, make sure you understand this. When `null`, the `region` field will be omitted from the resulting object.
  - `root_password` (`string`): Initial root password. Required for MS SQL Server. When `null`, the `root_password` field will be omitted from the resulting object.
  - `clone` (`list[obj]`): Configuration for creating a new instance as a clone of another instance. When `null`, the `clone` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.clone.new](#fn-clonenew) constructor.
  - `replica_configuration` (`list[obj]`): The configuration for replication. When `null`, the `replica_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.replica_configuration.new](#fn-replica_configurationnew) constructor.
  - `restore_backup_context` (`list[obj]`):  When `null`, the `restore_backup_context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.restore_backup_context.new](#fn-restore_backup_contextnew) constructor.
  - `settings` (`list[obj]`): The settings to use for the database. The configuration is detailed below. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.new](#fn-settingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.sql_database_instance.newAttrs` constructs a new object with attributes and blocks configured for the `sql_database_instance`
Terraform resource.

Unlike [google.sql_database_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `database_version` (`string`): The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions.
  - `deletion_protection` (`bool`): Used to block Terraform from deleting a SQL Instance. Defaults to true. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `encryption_key_name` (`string`):  When `null`, the `encryption_key_name` field will be omitted from the resulting object.
  - `maintenance_version` (`string`): Maintenance version. When `null`, the `maintenance_version` field will be omitted from the resulting object.
  - `master_instance_name` (`string`): The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups. When `null`, the `master_instance_name` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region the instance will sit in. Note, Cloud SQL is not available in all regions. A valid region must be provided to use this resource. If a region is not provided in the resource definition, the provider region will be used instead, but this will be an apply-time error for instances if the provider region is not supported with Cloud SQL. If you choose not to provide the region argument for this resource, make sure you understand this. When `null`, the `region` field will be omitted from the resulting object.
  - `root_password` (`string`): Initial root password. Required for MS SQL Server. When `null`, the `root_password` field will be omitted from the resulting object.
  - `clone` (`list[obj]`): Configuration for creating a new instance as a clone of another instance. When `null`, the `clone` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.clone.new](#fn-clonenew) constructor.
  - `replica_configuration` (`list[obj]`): The configuration for replication. When `null`, the `replica_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.replica_configuration.new](#fn-replica_configurationnew) constructor.
  - `restore_backup_context` (`list[obj]`):  When `null`, the `restore_backup_context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.restore_backup_context.new](#fn-restore_backup_contextnew) constructor.
  - `settings` (`list[obj]`): The settings to use for the database. The configuration is detailed below. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.new](#fn-settingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_database_instance` resource into the root Terraform configuration.


### fn withClone

```ts
withClone()
```

`google.list[obj].withClone` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the clone field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloneMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `clone` field.


### fn withCloneMixin

```ts
withCloneMixin()
```

`google.list[obj].withCloneMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the clone field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withClone](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `clone` field.


### fn withDatabaseVersion

```ts
withDatabaseVersion()
```

`google.string.withDatabaseVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_version` field.


### fn withDeletionProtection

```ts
withDeletionProtection()
```

`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the deletion_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `deletion_protection` field.


### fn withEncryptionKeyName

```ts
withEncryptionKeyName()
```

`google.string.withEncryptionKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the encryption_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `encryption_key_name` field.


### fn withMaintenanceVersion

```ts
withMaintenanceVersion()
```

`google.string.withMaintenanceVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the maintenance_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `maintenance_version` field.


### fn withMasterInstanceName

```ts
withMasterInstanceName()
```

`google.string.withMasterInstanceName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the master_instance_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `master_instance_name` field.


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


### fn withReplicaConfiguration

```ts
withReplicaConfiguration()
```

`google.list[obj].withReplicaConfiguration` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the replica_configuration field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withReplicaConfigurationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `replica_configuration` field.


### fn withReplicaConfigurationMixin

```ts
withReplicaConfigurationMixin()
```

`google.list[obj].withReplicaConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the replica_configuration field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withReplicaConfiguration](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `replica_configuration` field.


### fn withRestoreBackupContext

```ts
withRestoreBackupContext()
```

`google.list[obj].withRestoreBackupContext` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_backup_context field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRestoreBackupContextMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_backup_context` field.


### fn withRestoreBackupContextMixin

```ts
withRestoreBackupContextMixin()
```

`google.list[obj].withRestoreBackupContextMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_backup_context field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreBackupContext](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_backup_context` field.


### fn withRootPassword

```ts
withRootPassword()
```

`google.string.withRootPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the root_password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `root_password` field.


### fn withSettings

```ts
withSettings()
```

`google.list[obj].withSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `settings` field.


### fn withSettingsMixin

```ts
withSettingsMixin()
```

`google.list[obj].withSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `settings` field.


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


## obj clone



### fn clone.new

```ts
new()
```


`google.sql_database_instance.clone.new` constructs a new object with attributes and blocks configured for the `clone`
Terraform sub block.



**Args**:
  - `allocated_ip_range` (`string`): The name of the allocated ip range for the private ip CloudSQL instance. For example: &#34;google-managed-services-default&#34;. If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. When `null`, the `allocated_ip_range` field will be omitted from the resulting object.
  - `point_in_time` (`string`): The timestamp of the point in time that should be restored. When `null`, the `point_in_time` field will be omitted from the resulting object.
  - `source_instance_name` (`string`): The name of the instance from which the point in time should be restored.

**Returns**:
  - An attribute object that represents the `clone` sub block.


## obj replica_configuration



### fn replica_configuration.new

```ts
new()
```


`google.sql_database_instance.replica_configuration.new` constructs a new object with attributes and blocks configured for the `replica_configuration`
Terraform sub block.



**Args**:
  - `ca_certificate` (`string`): PEM representation of the trusted CA&#39;s x509 certificate. When `null`, the `ca_certificate` field will be omitted from the resulting object.
  - `client_certificate` (`string`): PEM representation of the replica&#39;s x509 certificate. When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): PEM representation of the replica&#39;s private key. The corresponding public key in encoded in the client_certificate. When `null`, the `client_key` field will be omitted from the resulting object.
  - `connect_retry_interval` (`number`): The number of seconds between connect retries. MySQL&#39;s default is 60 seconds. When `null`, the `connect_retry_interval` field will be omitted from the resulting object.
  - `dump_file_path` (`string`): Path to a SQL file in Google Cloud Storage from which replica instances are created. Format is gs://bucket/filename. When `null`, the `dump_file_path` field will be omitted from the resulting object.
  - `failover_target` (`bool`): Specifies if the replica is the failover target. If the field is set to true the replica will be designated as a failover replica. If the master instance fails, the replica instance will be promoted as the new master instance. When `null`, the `failover_target` field will be omitted from the resulting object.
  - `master_heartbeat_period` (`number`): Time in ms between replication heartbeats. When `null`, the `master_heartbeat_period` field will be omitted from the resulting object.
  - `password` (`string`): Password for the replication connection. When `null`, the `password` field will be omitted from the resulting object.
  - `ssl_cipher` (`string`): Permissible ciphers for use in SSL encryption. When `null`, the `ssl_cipher` field will be omitted from the resulting object.
  - `username` (`string`): Username for replication connection. When `null`, the `username` field will be omitted from the resulting object.
  - `verify_server_certificate` (`bool`): True if the master&#39;s common name value is checked during the SSL handshake. When `null`, the `verify_server_certificate` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `replica_configuration` sub block.


## obj restore_backup_context



### fn restore_backup_context.new

```ts
new()
```


`google.sql_database_instance.restore_backup_context.new` constructs a new object with attributes and blocks configured for the `restore_backup_context`
Terraform sub block.



**Args**:
  - `backup_run_id` (`number`): The ID of the backup run to restore from.
  - `instance_id` (`string`): The ID of the instance that the backup was taken from. When `null`, the `instance_id` field will be omitted from the resulting object.
  - `project` (`string`): The full project ID of the source instance. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `restore_backup_context` sub block.


## obj settings



### fn settings.new

```ts
new()
```


`google.sql_database_instance.settings.new` constructs a new object with attributes and blocks configured for the `settings`
Terraform sub block.



**Args**:
  - `activation_policy` (`string`): This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND. When `null`, the `activation_policy` field will be omitted from the resulting object.
  - `availability_type` (`string`): The availability type of the Cloud SQL instance, high availability
(REGIONAL) or single zone (ZONAL). For all instances, ensure that
settings.backup_configuration.enabled is set to true.
For MySQL instances, ensure that settings.backup_configuration.binary_log_enabled is set to true.
For Postgres instances, ensure that settings.backup_configuration.point_in_time_recovery_enabled
is set to true. Defaults to ZONAL. When `null`, the `availability_type` field will be omitted from the resulting object.
  - `collation` (`string`): The name of server instance collation. When `null`, the `collation` field will be omitted from the resulting object.
  - `connector_enforcement` (`string`): Specifies if connections must use Cloud SQL connectors. When `null`, the `connector_enforcement` field will be omitted from the resulting object.
  - `disk_autoresize` (`bool`): Enables auto-resizing of the storage size. Defaults to true. When `null`, the `disk_autoresize` field will be omitted from the resulting object.
  - `disk_autoresize_limit` (`number`): The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. When `null`, the `disk_autoresize_limit` field will be omitted from the resulting object.
  - `disk_size` (`number`): The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB. When `null`, the `disk_size` field will be omitted from the resulting object.
  - `disk_type` (`string`): The type of data disk: PD_SSD or PD_HDD. Defaults to PD_SSD. When `null`, the `disk_type` field will be omitted from the resulting object.
  - `pricing_plan` (`string`): Pricing plan for this instance, can only be PER_USE. When `null`, the `pricing_plan` field will be omitted from the resulting object.
  - `tier` (`string`): The machine type to use. See tiers for more details and supported versions. Postgres supports only shared-core machine types, and custom machine types such as db-custom-2-13312. See the Custom Machine Type Documentation to learn about specifying custom machine types.
  - `time_zone` (`string`): The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `user_labels` (`obj`): A set of key/value user label pairs to assign to the instance. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `active_directory_config` (`list[obj]`):  When `null`, the `active_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.active_directory_config.new](#fn-sql_database_instanceactive_directory_confignew) constructor.
  - `backup_configuration` (`list[obj]`):  When `null`, the `backup_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.backup_configuration.new](#fn-sql_database_instancebackup_configurationnew) constructor.
  - `database_flags` (`list[obj]`):  When `null`, the `database_flags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.database_flags.new](#fn-sql_database_instancedatabase_flagsnew) constructor.
  - `deny_maintenance_period` (`list[obj]`):  When `null`, the `deny_maintenance_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.deny_maintenance_period.new](#fn-sql_database_instancedeny_maintenance_periodnew) constructor.
  - `insights_config` (`list[obj]`): Configuration of Query Insights. When `null`, the `insights_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.insights_config.new](#fn-sql_database_instanceinsights_confignew) constructor.
  - `ip_configuration` (`list[obj]`):  When `null`, the `ip_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.ip_configuration.new](#fn-sql_database_instanceip_configurationnew) constructor.
  - `location_preference` (`list[obj]`):  When `null`, the `location_preference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.location_preference.new](#fn-sql_database_instancelocation_preferencenew) constructor.
  - `maintenance_window` (`list[obj]`): Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.maintenance_window.new](#fn-sql_database_instancemaintenance_windownew) constructor.
  - `password_validation_policy` (`list[obj]`):  When `null`, the `password_validation_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.password_validation_policy.new](#fn-sql_database_instancepassword_validation_policynew) constructor.
  - `sql_server_audit_config` (`list[obj]`):  When `null`, the `sql_server_audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.sql_server_audit_config.new](#fn-sql_database_instancesql_server_audit_confignew) constructor.

**Returns**:
  - An attribute object that represents the `settings` sub block.


## obj settings.active_directory_config



### fn settings.active_directory_config.new

```ts
new()
```


`google.sql_database_instance.settings.active_directory_config.new` constructs a new object with attributes and blocks configured for the `active_directory_config`
Terraform sub block.



**Args**:
  - `domain` (`string`): Domain name of the Active Directory for SQL Server (e.g., mydomain.com).

**Returns**:
  - An attribute object that represents the `active_directory_config` sub block.


## obj settings.backup_configuration



### fn settings.backup_configuration.new

```ts
new()
```


`google.sql_database_instance.settings.backup_configuration.new` constructs a new object with attributes and blocks configured for the `backup_configuration`
Terraform sub block.



**Args**:
  - `binary_log_enabled` (`bool`): True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Can only be used with MySQL. When `null`, the `binary_log_enabled` field will be omitted from the resulting object.
  - `enabled` (`bool`): True if backup configuration is enabled. When `null`, the `enabled` field will be omitted from the resulting object.
  - `location` (`string`): Location of the backup configuration. When `null`, the `location` field will be omitted from the resulting object.
  - `point_in_time_recovery_enabled` (`bool`): True if Point-in-time recovery is enabled. When `null`, the `point_in_time_recovery_enabled` field will be omitted from the resulting object.
  - `start_time` (`string`): HH:MM format time indicating when backup configuration starts. When `null`, the `start_time` field will be omitted from the resulting object.
  - `transaction_log_retention_days` (`number`): The number of days of transaction logs we retain for point in time restore, from 1-7. When `null`, the `transaction_log_retention_days` field will be omitted from the resulting object.
  - `backup_retention_settings` (`list[obj]`):  When `null`, the `backup_retention_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.backup_configuration.backup_retention_settings.new](#fn-sql_database_instancesettingsbackup_retention_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `backup_configuration` sub block.


## obj settings.backup_configuration.backup_retention_settings



### fn settings.backup_configuration.backup_retention_settings.new

```ts
new()
```


`google.sql_database_instance.settings.backup_configuration.backup_retention_settings.new` constructs a new object with attributes and blocks configured for the `backup_retention_settings`
Terraform sub block.



**Args**:
  - `retained_backups` (`number`): Number of backups to retain.
  - `retention_unit` (`string`): The unit that &#39;retainedBackups&#39; represents. Defaults to COUNT When `null`, the `retention_unit` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `backup_retention_settings` sub block.


## obj settings.database_flags



### fn settings.database_flags.new

```ts
new()
```


`google.sql_database_instance.settings.database_flags.new` constructs a new object with attributes and blocks configured for the `database_flags`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the flag.
  - `value` (`string`): Value of the flag.

**Returns**:
  - An attribute object that represents the `database_flags` sub block.


## obj settings.deny_maintenance_period



### fn settings.deny_maintenance_period.new

```ts
new()
```


`google.sql_database_instance.settings.deny_maintenance_period.new` constructs a new object with attributes and blocks configured for the `deny_maintenance_period`
Terraform sub block.



**Args**:
  - `end_date` (`string`): End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  - `start_date` (`string`): Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  - `time` (`string`): Time in UTC when the &#34;deny maintenance period&#34; starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00

**Returns**:
  - An attribute object that represents the `deny_maintenance_period` sub block.


## obj settings.insights_config



### fn settings.insights_config.new

```ts
new()
```


`google.sql_database_instance.settings.insights_config.new` constructs a new object with attributes and blocks configured for the `insights_config`
Terraform sub block.



**Args**:
  - `query_insights_enabled` (`bool`): True if Query Insights feature is enabled. When `null`, the `query_insights_enabled` field will be omitted from the resulting object.
  - `query_plans_per_minute` (`number`): Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. When `null`, the `query_plans_per_minute` field will be omitted from the resulting object.
  - `query_string_length` (`number`): Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. When `null`, the `query_string_length` field will be omitted from the resulting object.
  - `record_application_tags` (`bool`): True if Query Insights will record application tags from query when enabled. When `null`, the `record_application_tags` field will be omitted from the resulting object.
  - `record_client_address` (`bool`): True if Query Insights will record client address when enabled. When `null`, the `record_client_address` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `insights_config` sub block.


## obj settings.ip_configuration



### fn settings.ip_configuration.new

```ts
new()
```


`google.sql_database_instance.settings.ip_configuration.new` constructs a new object with attributes and blocks configured for the `ip_configuration`
Terraform sub block.



**Args**:
  - `allocated_ip_range` (`string`): The name of the allocated ip range for the private ip CloudSQL instance. For example: &#34;google-managed-services-default&#34;. If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. When `null`, the `allocated_ip_range` field will be omitted from the resulting object.
  - `ipv4_enabled` (`bool`): Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4_enabled must be enabled or a private_network must be configured. When `null`, the `ipv4_enabled` field will be omitted from the resulting object.
  - `private_network` (`string`): The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4_enabled must be enabled or a private_network must be configured. This setting can be updated, but it cannot be removed after it is set. When `null`, the `private_network` field will be omitted from the resulting object.
  - `require_ssl` (`bool`):  When `null`, the `require_ssl` field will be omitted from the resulting object.
  - `authorized_networks` (`list[obj]`):  When `null`, the `authorized_networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database_instance.settings.ip_configuration.authorized_networks.new](#fn-sql_database_instancesettingsauthorized_networksnew) constructor.

**Returns**:
  - An attribute object that represents the `ip_configuration` sub block.


## obj settings.ip_configuration.authorized_networks



### fn settings.ip_configuration.authorized_networks.new

```ts
new()
```


`google.sql_database_instance.settings.ip_configuration.authorized_networks.new` constructs a new object with attributes and blocks configured for the `authorized_networks`
Terraform sub block.



**Args**:
  - `expiration_time` (`string`):  When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `name` (`string`):  When `null`, the `name` field will be omitted from the resulting object.
  - `value` (`string`): 

**Returns**:
  - An attribute object that represents the `authorized_networks` sub block.


## obj settings.location_preference



### fn settings.location_preference.new

```ts
new()
```


`google.sql_database_instance.settings.location_preference.new` constructs a new object with attributes and blocks configured for the `location_preference`
Terraform sub block.



**Args**:
  - `follow_gae_application` (`string`): A Google App Engine application whose zone to remain in. Must be in the same region as this instance. When `null`, the `follow_gae_application` field will be omitted from the resulting object.
  - `secondary_zone` (`string`): The preferred Compute Engine zone for the secondary/failover When `null`, the `secondary_zone` field will be omitted from the resulting object.
  - `zone` (`string`): The preferred compute engine zone. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `location_preference` sub block.


## obj settings.maintenance_window



### fn settings.maintenance_window.new

```ts
new()
```


`google.sql_database_instance.settings.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of week (1-7), starting on Monday When `null`, the `day` field will be omitted from the resulting object.
  - `hour` (`number`): Hour of day (0-23), ignored if day not set When `null`, the `hour` field will be omitted from the resulting object.
  - `update_track` (`string`): Receive updates earlier (canary) or later (stable) When `null`, the `update_track` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `maintenance_window` sub block.


## obj settings.password_validation_policy



### fn settings.password_validation_policy.new

```ts
new()
```


`google.sql_database_instance.settings.password_validation_policy.new` constructs a new object with attributes and blocks configured for the `password_validation_policy`
Terraform sub block.



**Args**:
  - `complexity` (`string`): Password complexity. When `null`, the `complexity` field will be omitted from the resulting object.
  - `disallow_username_substring` (`bool`): Disallow username as a part of the password. When `null`, the `disallow_username_substring` field will be omitted from the resulting object.
  - `enable_password_policy` (`bool`): Whether the password policy is enabled or not.
  - `min_length` (`number`): Minimum number of characters allowed. When `null`, the `min_length` field will be omitted from the resulting object.
  - `password_change_interval` (`string`): Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL. When `null`, the `password_change_interval` field will be omitted from the resulting object.
  - `reuse_interval` (`number`): Number of previous passwords that cannot be reused. When `null`, the `reuse_interval` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `password_validation_policy` sub block.


## obj settings.sql_server_audit_config



### fn settings.sql_server_audit_config.new

```ts
new()
```


`google.sql_database_instance.settings.sql_server_audit_config.new` constructs a new object with attributes and blocks configured for the `sql_server_audit_config`
Terraform sub block.



**Args**:
  - `bucket` (`string`): The name of the destination bucket (e.g., gs://mybucket).
  - `retention_interval` (`string`): How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;.. When `null`, the `retention_interval` field will be omitted from the resulting object.
  - `upload_interval` (`string`): How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `upload_interval` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sql_server_audit_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.sql_database_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
