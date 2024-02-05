---
permalink: /database_migration_service_connection_profile/
---

# database_migration_service_connection_profile

`database_migration_service_connection_profile` represents the `google_database_migration_service_connection_profile` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlloydb()`](#fn-withalloydb)
* [`fn withAlloydbMixin()`](#fn-withalloydbmixin)
* [`fn withCloudsql()`](#fn-withcloudsql)
* [`fn withCloudsqlMixin()`](#fn-withcloudsqlmixin)
* [`fn withConnectionProfileId()`](#fn-withconnectionprofileid)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMysql()`](#fn-withmysql)
* [`fn withMysqlMixin()`](#fn-withmysqlmixin)
* [`fn withOracle()`](#fn-withoracle)
* [`fn withOracleMixin()`](#fn-withoraclemixin)
* [`fn withPostgresql()`](#fn-withpostgresql)
* [`fn withPostgresqlMixin()`](#fn-withpostgresqlmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj alloydb`](#obj-alloydb)
  * [`fn new()`](#fn-alloydbnew)
  * [`obj alloydb.settings`](#obj-alloydbsettings)
    * [`fn new()`](#fn-alloydbsettingsnew)
    * [`obj alloydb.settings.initial_user`](#obj-alloydbsettingsinitial_user)
      * [`fn new()`](#fn-alloydbsettingsinitial_usernew)
    * [`obj alloydb.settings.primary_instance_settings`](#obj-alloydbsettingsprimary_instance_settings)
      * [`fn new()`](#fn-alloydbsettingsprimary_instance_settingsnew)
      * [`obj alloydb.settings.primary_instance_settings.machine_config`](#obj-alloydbsettingsprimary_instance_settingsmachine_config)
        * [`fn new()`](#fn-alloydbsettingsprimary_instance_settingsmachine_confignew)
* [`obj cloudsql`](#obj-cloudsql)
  * [`fn new()`](#fn-cloudsqlnew)
  * [`obj cloudsql.settings`](#obj-cloudsqlsettings)
    * [`fn new()`](#fn-cloudsqlsettingsnew)
    * [`obj cloudsql.settings.ip_config`](#obj-cloudsqlsettingsip_config)
      * [`fn new()`](#fn-cloudsqlsettingsip_confignew)
      * [`obj cloudsql.settings.ip_config.authorized_networks`](#obj-cloudsqlsettingsip_configauthorized_networks)
        * [`fn new()`](#fn-cloudsqlsettingsip_configauthorized_networksnew)
* [`obj mysql`](#obj-mysql)
  * [`fn new()`](#fn-mysqlnew)
  * [`obj mysql.ssl`](#obj-mysqlssl)
    * [`fn new()`](#fn-mysqlsslnew)
* [`obj oracle`](#obj-oracle)
  * [`fn new()`](#fn-oraclenew)
  * [`obj oracle.forward_ssh_connectivity`](#obj-oracleforward_ssh_connectivity)
    * [`fn new()`](#fn-oracleforward_ssh_connectivitynew)
  * [`obj oracle.private_connectivity`](#obj-oracleprivate_connectivity)
    * [`fn new()`](#fn-oracleprivate_connectivitynew)
  * [`obj oracle.ssl`](#obj-oraclessl)
    * [`fn new()`](#fn-oraclesslnew)
  * [`obj oracle.static_service_ip_connectivity`](#obj-oraclestatic_service_ip_connectivity)
    * [`fn new()`](#fn-oraclestatic_service_ip_connectivitynew)
* [`obj postgresql`](#obj-postgresql)
  * [`fn new()`](#fn-postgresqlnew)
  * [`obj postgresql.ssl`](#obj-postgresqlssl)
    * [`fn new()`](#fn-postgresqlsslnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.database_migration_service_connection_profile.new` injects a new `google_database_migration_service_connection_profile` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.database_migration_service_connection_profile.new('some_id')

You can get the reference to the `id` field of the created `google.database_migration_service_connection_profile` using the reference:

    $._ref.google_database_migration_service_connection_profile.some_id.get('id')

This is the same as directly entering `"${ google_database_migration_service_connection_profile.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connection_profile_id` (`string`): The ID of the connection profile.
  - `display_name` (`string`): The connection profile display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the connection profile should reside. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `alloydb` (`list[obj]`): Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster. When `null`, the `alloydb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.new](#fn-alloydbnew) constructor.
  - `cloudsql` (`list[obj]`): Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance. When `null`, the `cloudsql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.new](#fn-cloudsqlnew) constructor.
  - `mysql` (`list[obj]`): Specifies connection parameters required specifically for MySQL databases. When `null`, the `mysql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.mysql.new](#fn-mysqlnew) constructor.
  - `oracle` (`list[obj]`): Specifies connection parameters required specifically for Oracle databases. When `null`, the `oracle` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.oracle.new](#fn-oraclenew) constructor.
  - `postgresql` (`list[obj]`): Specifies connection parameters required specifically for PostgreSQL databases. When `null`, the `postgresql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.postgresql.new](#fn-postgresqlnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.database_migration_service_connection_profile.newAttrs` constructs a new object with attributes and blocks configured for the `database_migration_service_connection_profile`
Terraform resource.

Unlike [google.database_migration_service_connection_profile.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connection_profile_id` (`string`): The ID of the connection profile.
  - `display_name` (`string`): The connection profile display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the connection profile should reside. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `alloydb` (`list[obj]`): Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster. When `null`, the `alloydb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.new](#fn-alloydbnew) constructor.
  - `cloudsql` (`list[obj]`): Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance. When `null`, the `cloudsql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.new](#fn-cloudsqlnew) constructor.
  - `mysql` (`list[obj]`): Specifies connection parameters required specifically for MySQL databases. When `null`, the `mysql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.mysql.new](#fn-mysqlnew) constructor.
  - `oracle` (`list[obj]`): Specifies connection parameters required specifically for Oracle databases. When `null`, the `oracle` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.oracle.new](#fn-oraclenew) constructor.
  - `postgresql` (`list[obj]`): Specifies connection parameters required specifically for PostgreSQL databases. When `null`, the `postgresql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.postgresql.new](#fn-postgresqlnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `database_migration_service_connection_profile` resource into the root Terraform configuration.


### fn withAlloydb

```ts
withAlloydb()
```

`google.list[obj].withAlloydb` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the alloydb field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAlloydbMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `alloydb` field.


### fn withAlloydbMixin

```ts
withAlloydbMixin()
```

`google.list[obj].withAlloydbMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the alloydb field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAlloydb](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `alloydb` field.


### fn withCloudsql

```ts
withCloudsql()
```

`google.list[obj].withCloudsql` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloudsql field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloudsqlMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloudsql` field.


### fn withCloudsqlMixin

```ts
withCloudsqlMixin()
```

`google.list[obj].withCloudsqlMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloudsql field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCloudsql](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloudsql` field.


### fn withConnectionProfileId

```ts
withConnectionProfileId()
```

`google.string.withConnectionProfileId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connection_profile_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connection_profile_id` field.


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


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMysql

```ts
withMysql()
```

`google.list[obj].withMysql` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mysql field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMysqlMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mysql` field.


### fn withMysqlMixin

```ts
withMysqlMixin()
```

`google.list[obj].withMysqlMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mysql field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMysql](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mysql` field.


### fn withOracle

```ts
withOracle()
```

`google.list[obj].withOracle` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oracle field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOracleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oracle` field.


### fn withOracleMixin

```ts
withOracleMixin()
```

`google.list[obj].withOracleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oracle field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOracle](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oracle` field.


### fn withPostgresql

```ts
withPostgresql()
```

`google.list[obj].withPostgresql` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the postgresql field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPostgresqlMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `postgresql` field.


### fn withPostgresqlMixin

```ts
withPostgresqlMixin()
```

`google.list[obj].withPostgresqlMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the postgresql field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPostgresql](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `postgresql` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj alloydb



### fn alloydb.new

```ts
new()
```


`google.database_migration_service_connection_profile.alloydb.new` constructs a new object with attributes and blocks configured for the `alloydb`
Terraform sub block.



**Args**:
  - `cluster_id` (`string`): Required. The AlloyDB cluster ID that this connection profile is associated with.
  - `settings` (`list[obj]`): Immutable. Metadata used to create the destination AlloyDB cluster. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.new](#fn-alloydbsettingsnew) constructor.

**Returns**:
  - An attribute object that represents the `alloydb` sub block.


## obj alloydb.settings



### fn alloydb.settings.new

```ts
new()
```


`google.database_migration_service_connection_profile.alloydb.settings.new` constructs a new object with attributes and blocks configured for the `settings`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Labels for the AlloyDB cluster created by DMS. When `null`, the `labels` field will be omitted from the resulting object.
  - `vpc_network` (`string`): Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
It is specified in the form: &#39;projects/{project_number}/global/networks/{network_id}&#39;. This is required to create a cluster.
  - `initial_user` (`list[obj]`): Required. Input only. Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.initial_user.new](#fn-alloydballoydbinitial_usernew) constructor.
  - `primary_instance_settings` (`list[obj]`): Settings for the cluster&#39;s primary instance When `null`, the `primary_instance_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.new](#fn-alloydballoydbprimary_instance_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `settings` sub block.


## obj alloydb.settings.initial_user



### fn alloydb.settings.initial_user.new

```ts
new()
```


`google.database_migration_service_connection_profile.alloydb.settings.initial_user.new` constructs a new object with attributes and blocks configured for the `initial_user`
Terraform sub block.



**Args**:
  - `password` (`string`): The initial password for the user.
  - `user` (`string`): The database username.

**Returns**:
  - An attribute object that represents the `initial_user` sub block.


## obj alloydb.settings.primary_instance_settings



### fn alloydb.settings.primary_instance_settings.new

```ts
new()
```


`google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.new` constructs a new object with attributes and blocks configured for the `primary_instance_settings`
Terraform sub block.



**Args**:
  - `database_flags` (`obj`): Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used. When `null`, the `database_flags` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels for the AlloyDB primary instance created by DMS. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_config` (`list[obj]`): Configuration for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.machine_config.new](#fn-alloydballoydbsettingsmachine_confignew) constructor.

**Returns**:
  - An attribute object that represents the `primary_instance_settings` sub block.


## obj alloydb.settings.primary_instance_settings.machine_config



### fn alloydb.settings.primary_instance_settings.machine_config.new

```ts
new()
```


`google.database_migration_service_connection_profile.alloydb.settings.primary_instance_settings.machine_config.new` constructs a new object with attributes and blocks configured for the `machine_config`
Terraform sub block.



**Args**:
  - `cpu_count` (`number`): The number of CPU&#39;s in the VM instance.

**Returns**:
  - An attribute object that represents the `machine_config` sub block.


## obj cloudsql



### fn cloudsql.new

```ts
new()
```


`google.database_migration_service_connection_profile.cloudsql.new` constructs a new object with attributes and blocks configured for the `cloudsql`
Terraform sub block.



**Args**:
  - `settings` (`list[obj]`): Immutable. Metadata used to create the destination Cloud SQL database. When `null`, the `settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.settings.new](#fn-cloudsqlsettingsnew) constructor.

**Returns**:
  - An attribute object that represents the `cloudsql` sub block.


## obj cloudsql.settings



### fn cloudsql.settings.new

```ts
new()
```


`google.database_migration_service_connection_profile.cloudsql.settings.new` constructs a new object with attributes and blocks configured for the `settings`
Terraform sub block.



**Args**:
  - `activation_policy` (`string`): The activation policy specifies when the instance is activated; it is applicable only when the instance state is &#39;RUNNABLE&#39;. Possible values: [&#34;ALWAYS&#34;, &#34;NEVER&#34;] When `null`, the `activation_policy` field will be omitted from the resulting object.
  - `auto_storage_increase` (`bool`): If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity.
If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB. When `null`, the `auto_storage_increase` field will be omitted from the resulting object.
  - `cmek_key_name` (`string`): The KMS key name used for the csql instance. When `null`, the `cmek_key_name` field will be omitted from the resulting object.
  - `collation` (`string`): The Cloud SQL default instance level collation. When `null`, the `collation` field will be omitted from the resulting object.
  - `data_disk_size_gb` (`string`): The storage capacity available to the database, in GB. The minimum (and default) size is 10GB. When `null`, the `data_disk_size_gb` field will be omitted from the resulting object.
  - `data_disk_type` (`string`): The type of storage. Possible values: [&#34;PD_SSD&#34;, &#34;PD_HDD&#34;] When `null`, the `data_disk_type` field will be omitted from the resulting object.
  - `database_flags` (`obj`): The database flags passed to the Cloud SQL instance at startup. When `null`, the `database_flags` field will be omitted from the resulting object.
  - `database_version` (`string`): The database engine type and version.
Currently supported values located at https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles#sqldatabaseversion When `null`, the `database_version` field will be omitted from the resulting object.
  - `edition` (`string`): The edition of the given Cloud SQL instance. Possible values: [&#34;ENTERPRISE&#34;, &#34;ENTERPRISE_PLUS&#34;] When `null`, the `edition` field will be omitted from the resulting object.
  - `root_password` (`string`): Input only. Initial root password. When `null`, the `root_password` field will be omitted from the resulting object.
  - `source_id` (`string`): The Database Migration Service source connection profile ID, in the format: projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID
  - `storage_auto_resize_limit` (`string`): The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. When `null`, the `storage_auto_resize_limit` field will be omitted from the resulting object.
  - `tier` (`string`): The tier (or machine type) for this instance, for example: db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances).
For more information, see https://cloud.google.com/sql/docs/mysql/instance-settings When `null`, the `tier` field will be omitted from the resulting object.
  - `user_labels` (`obj`): The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `zone` (`string`): The Google Cloud Platform zone where your Cloud SQL datdabse instance is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `ip_config` (`list[obj]`): The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled. When `null`, the `ip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.settings.ip_config.new](#fn-cloudsqlcloudsqlip_confignew) constructor.

**Returns**:
  - An attribute object that represents the `settings` sub block.


## obj cloudsql.settings.ip_config



### fn cloudsql.settings.ip_config.new

```ts
new()
```


`google.database_migration_service_connection_profile.cloudsql.settings.ip_config.new` constructs a new object with attributes and blocks configured for the `ip_config`
Terraform sub block.



**Args**:
  - `enable_ipv4` (`bool`): Whether the instance should be assigned an IPv4 address or not. When `null`, the `enable_ipv4` field will be omitted from the resulting object.
  - `private_network` (`string`): The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default.
This setting can be updated, but it cannot be removed after it is set. When `null`, the `private_network` field will be omitted from the resulting object.
  - `require_ssl` (`bool`): Whether SSL connections over IP should be enforced or not. When `null`, the `require_ssl` field will be omitted from the resulting object.
  - `authorized_networks` (`list[obj]`): The list of external networks that are allowed to connect to the instance using the IP. When `null`, the `authorized_networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.cloudsql.settings.ip_config.authorized_networks.new](#fn-cloudsqlcloudsqlsettingsauthorized_networksnew) constructor.

**Returns**:
  - An attribute object that represents the `ip_config` sub block.


## obj cloudsql.settings.ip_config.authorized_networks



### fn cloudsql.settings.ip_config.authorized_networks.new

```ts
new()
```


`google.database_migration_service_connection_profile.cloudsql.settings.ip_config.authorized_networks.new` constructs a new object with attributes and blocks configured for the `authorized_networks`
Terraform sub block.



**Args**:
  - `expire_time` (`string`): The time when this access control entry expires in RFC 3339 format. When `null`, the `expire_time` field will be omitted from the resulting object.
  - `label` (`string`): A label to identify this entry. When `null`, the `label` field will be omitted from the resulting object.
  - `ttl` (`string`): Input only. The time-to-leave of this access control entry. When `null`, the `ttl` field will be omitted from the resulting object.
  - `value` (`string`): The allowlisted value for the access control list.

**Returns**:
  - An attribute object that represents the `authorized_networks` sub block.


## obj mysql



### fn mysql.new

```ts
new()
```


`google.database_migration_service_connection_profile.mysql.new` constructs a new object with attributes and blocks configured for the `mysql`
Terraform sub block.



**Args**:
  - `cloud_sql_id` (`string`): If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source. When `null`, the `cloud_sql_id` field will be omitted from the resulting object.
  - `host` (`string`): Required. The IP or hostname of the source MySQL database.
  - `password` (`string`): Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  - `port` (`number`): Required. The network port of the source MySQL database.
  - `username` (`string`): Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  - `ssl` (`list[obj]`): SSL configuration for the destination to connect to the source database. When `null`, the `ssl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.mysql.ssl.new](#fn-mysqlsslnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql` sub block.


## obj mysql.ssl



### fn mysql.ssl.new

```ts
new()
```


`google.database_migration_service_connection_profile.mysql.ssl.new` constructs a new object with attributes and blocks configured for the `ssl`
Terraform sub block.



**Args**:
  - `ca_certificate` (`string`): Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server&#39;s certificate.
The replica will use this certificate to verify it&#39;s connecting to the right host.
  - `client_certificate` (`string`): Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
If this field is used then the &#39;clientKey&#39; field is mandatory When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
If this field is used then the &#39;clientCertificate&#39; field is mandatory. When `null`, the `client_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ssl` sub block.


## obj oracle



### fn oracle.new

```ts
new()
```


`google.database_migration_service_connection_profile.oracle.new` constructs a new object with attributes and blocks configured for the `oracle`
Terraform sub block.



**Args**:
  - `database_service` (`string`): Required. Database service for the Oracle connection.
  - `host` (`string`): Required. The IP or hostname of the source Oracle database.
  - `password` (`string`): Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  - `port` (`number`): Required. The network port of the source Oracle database.
  - `username` (`string`): Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  - `forward_ssh_connectivity` (`list[obj]`): SSL configuration for the destination to connect to the source database. When `null`, the `forward_ssh_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.oracle.forward_ssh_connectivity.new](#fn-oracleforward_ssh_connectivitynew) constructor.
  - `private_connectivity` (`list[obj]`): Configuration for using a private network to communicate with the source database When `null`, the `private_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.oracle.private_connectivity.new](#fn-oracleprivate_connectivitynew) constructor.
  - `ssl` (`list[obj]`): SSL configuration for the destination to connect to the source database. When `null`, the `ssl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.oracle.ssl.new](#fn-oraclesslnew) constructor.
  - `static_service_ip_connectivity` (`list[obj]`): This object has no nested fields.

Static IP address connectivity configured on service project. When `null`, the `static_service_ip_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.oracle.static_service_ip_connectivity.new](#fn-oraclestatic_service_ip_connectivitynew) constructor.

**Returns**:
  - An attribute object that represents the `oracle` sub block.


## obj oracle.forward_ssh_connectivity



### fn oracle.forward_ssh_connectivity.new

```ts
new()
```


`google.database_migration_service_connection_profile.oracle.forward_ssh_connectivity.new` constructs a new object with attributes and blocks configured for the `forward_ssh_connectivity`
Terraform sub block.



**Args**:
  - `hostname` (`string`): Required. Hostname for the SSH tunnel.
  - `password` (`string`): Input only. SSH password. Only one of &#39;password&#39; and &#39;private_key&#39; can be configured. When `null`, the `password` field will be omitted from the resulting object.
  - `port` (`number`): Port for the SSH tunnel, default value is 22.
  - `private_key` (`string`): Input only. SSH private key. Only one of &#39;password&#39; and &#39;private_key&#39; can be configured. When `null`, the `private_key` field will be omitted from the resulting object.
  - `username` (`string`): Required. Username for the SSH tunnel.

**Returns**:
  - An attribute object that represents the `forward_ssh_connectivity` sub block.


## obj oracle.private_connectivity



### fn oracle.private_connectivity.new

```ts
new()
```


`google.database_migration_service_connection_profile.oracle.private_connectivity.new` constructs a new object with attributes and blocks configured for the `private_connectivity`
Terraform sub block.



**Args**:
  - `private_connection` (`string`): Required. The resource name (URI) of the private connection.

**Returns**:
  - An attribute object that represents the `private_connectivity` sub block.


## obj oracle.ssl



### fn oracle.ssl.new

```ts
new()
```


`google.database_migration_service_connection_profile.oracle.ssl.new` constructs a new object with attributes and blocks configured for the `ssl`
Terraform sub block.



**Args**:
  - `ca_certificate` (`string`): Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server&#39;s certificate.
The replica will use this certificate to verify it&#39;s connecting to the right host.
  - `client_certificate` (`string`): Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
If this field is used then the &#39;clientKey&#39; field is mandatory When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
If this field is used then the &#39;clientCertificate&#39; field is mandatory. When `null`, the `client_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ssl` sub block.


## obj oracle.static_service_ip_connectivity



### fn oracle.static_service_ip_connectivity.new

```ts
new()
```


`google.database_migration_service_connection_profile.oracle.static_service_ip_connectivity.new` constructs a new object with attributes and blocks configured for the `static_service_ip_connectivity`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `static_service_ip_connectivity` sub block.


## obj postgresql



### fn postgresql.new

```ts
new()
```


`google.database_migration_service_connection_profile.postgresql.new` constructs a new object with attributes and blocks configured for the `postgresql`
Terraform sub block.



**Args**:
  - `cloud_sql_id` (`string`): If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source. When `null`, the `cloud_sql_id` field will be omitted from the resulting object.
  - `host` (`string`): Required. The IP or hostname of the source MySQL database.
  - `password` (`string`): Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  - `port` (`number`): Required. The network port of the source MySQL database.
  - `username` (`string`): Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  - `ssl` (`list[obj]`): SSL configuration for the destination to connect to the source database. When `null`, the `ssl` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.database_migration_service_connection_profile.postgresql.ssl.new](#fn-postgresqlsslnew) constructor.

**Returns**:
  - An attribute object that represents the `postgresql` sub block.


## obj postgresql.ssl



### fn postgresql.ssl.new

```ts
new()
```


`google.database_migration_service_connection_profile.postgresql.ssl.new` constructs a new object with attributes and blocks configured for the `ssl`
Terraform sub block.



**Args**:
  - `ca_certificate` (`string`): Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server&#39;s certificate.
The replica will use this certificate to verify it&#39;s connecting to the right host.
  - `client_certificate` (`string`): Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
If this field is used then the &#39;clientKey&#39; field is mandatory When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
If this field is used then the &#39;clientCertificate&#39; field is mandatory. When `null`, the `client_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ssl` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.database_migration_service_connection_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
