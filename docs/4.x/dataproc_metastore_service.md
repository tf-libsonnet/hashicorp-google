---
permalink: /dataproc_metastore_service/
---

# dataproc_metastore_service

`dataproc_metastore_service` represents the `google_dataproc_metastore_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDatabaseType()`](#fn-withdatabasetype)
* [`fn withEncryptionConfig()`](#fn-withencryptionconfig)
* [`fn withEncryptionConfigMixin()`](#fn-withencryptionconfigmixin)
* [`fn withHiveMetastoreConfig()`](#fn-withhivemetastoreconfig)
* [`fn withHiveMetastoreConfigMixin()`](#fn-withhivemetastoreconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMaintenanceWindow()`](#fn-withmaintenancewindow)
* [`fn withMaintenanceWindowMixin()`](#fn-withmaintenancewindowmixin)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withPort()`](#fn-withport)
* [`fn withProject()`](#fn-withproject)
* [`fn withReleaseChannel()`](#fn-withreleasechannel)
* [`fn withServiceId()`](#fn-withserviceid)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj encryption_config`](#obj-encryption_config)
  * [`fn new()`](#fn-encryption_confignew)
* [`obj hive_metastore_config`](#obj-hive_metastore_config)
  * [`fn new()`](#fn-hive_metastore_confignew)
  * [`obj hive_metastore_config.kerberos_config`](#obj-hive_metastore_configkerberos_config)
    * [`fn new()`](#fn-hive_metastore_configkerberos_confignew)
    * [`obj hive_metastore_config.kerberos_config.keytab`](#obj-hive_metastore_configkerberos_configkeytab)
      * [`fn new()`](#fn-hive_metastore_configkerberos_configkeytabnew)
* [`obj maintenance_window`](#obj-maintenance_window)
  * [`fn new()`](#fn-maintenance_windownew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
  * [`obj network_config.consumers`](#obj-network_configconsumers)
    * [`fn new()`](#fn-network_configconsumersnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dataproc_metastore_service.new` injects a new `google_dataproc_metastore_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataproc_metastore_service.new('some_id')

You can get the reference to the `id` field of the created `google.dataproc_metastore_service` using the reference:

    $._ref.google_dataproc_metastore_service.some_id.get('id')

This is the same as directly entering `"${ google_dataproc_metastore_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `database_type` (`string`): The database type that the Metastore service stores its data. Default value: &#34;MYSQL&#34; Possible values: [&#34;MYSQL&#34;, &#34;SPANNER&#34;] When `null`, the `database_type` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the metastore service. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the metastore service should reside.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:

&#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `port` (`number`): The TCP port at which the metastore service is reached. Default: 9083. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `release_channel` (`string`): The release channel of the service. If unspecified, defaults to &#39;STABLE&#39;. Default value: &#34;STABLE&#34; Possible values: [&#34;CANARY&#34;, &#34;STABLE&#34;] When `null`, the `release_channel` field will be omitted from the resulting object.
  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters.
  - `tier` (`string`): The tier of the service. Possible values: [&#34;DEVELOPER&#34;, &#34;ENTERPRISE&#34;] When `null`, the `tier` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): Information used to configure the Dataproc Metastore service to encrypt
customer data at rest. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.encryption_config.new](#fn-encryption_confignew) constructor.
  - `hive_metastore_config` (`list[obj]`): Configuration information specific to running Hive metastore software as the metastore service. When `null`, the `hive_metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.new](#fn-hive_metastore_confignew) constructor.
  - `maintenance_window` (`list[obj]`): The one hour maintenance window of the metastore service.
This specifies when the service can be restarted for maintenance purposes in UTC time.
Maintenance window is not needed for services with the &#39;SPANNER&#39; database type. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.maintenance_window.new](#fn-maintenance_windownew) constructor.
  - `network_config` (`list[obj]`): The configuration specifying the network settings for the Dataproc Metastore service. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataproc_metastore_service.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_metastore_service`
Terraform resource.

Unlike [google.dataproc_metastore_service.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `database_type` (`string`): The database type that the Metastore service stores its data. Default value: &#34;MYSQL&#34; Possible values: [&#34;MYSQL&#34;, &#34;SPANNER&#34;] When `null`, the `database_type` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the metastore service. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the metastore service should reside.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:

&#34;projects/{projectNumber}/global/networks/{network_id}&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `port` (`number`): The TCP port at which the metastore service is reached. Default: 9083. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `release_channel` (`string`): The release channel of the service. If unspecified, defaults to &#39;STABLE&#39;. Default value: &#34;STABLE&#34; Possible values: [&#34;CANARY&#34;, &#34;STABLE&#34;] When `null`, the `release_channel` field will be omitted from the resulting object.
  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters.
  - `tier` (`string`): The tier of the service. Possible values: [&#34;DEVELOPER&#34;, &#34;ENTERPRISE&#34;] When `null`, the `tier` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): Information used to configure the Dataproc Metastore service to encrypt
customer data at rest. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.encryption_config.new](#fn-encryption_confignew) constructor.
  - `hive_metastore_config` (`list[obj]`): Configuration information specific to running Hive metastore software as the metastore service. When `null`, the `hive_metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.new](#fn-hive_metastore_confignew) constructor.
  - `maintenance_window` (`list[obj]`): The one hour maintenance window of the metastore service.
This specifies when the service can be restarted for maintenance purposes in UTC time.
Maintenance window is not needed for services with the &#39;SPANNER&#39; database type. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.maintenance_window.new](#fn-maintenance_windownew) constructor.
  - `network_config` (`list[obj]`): The configuration specifying the network settings for the Dataproc Metastore service. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_metastore_service` resource into the root Terraform configuration.


### fn withDatabaseType

```ts
withDatabaseType()
```

`google.string.withDatabaseType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_type` field.


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


### fn withHiveMetastoreConfig

```ts
withHiveMetastoreConfig()
```

`google.list[obj].withHiveMetastoreConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_metastore_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHiveMetastoreConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_metastore_config` field.


### fn withHiveMetastoreConfigMixin

```ts
withHiveMetastoreConfigMixin()
```

`google.list[obj].withHiveMetastoreConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_metastore_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHiveMetastoreConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_metastore_config` field.


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


### fn withMaintenanceWindow

```ts
withMaintenanceWindow()
```

`google.list[obj].withMaintenanceWindow` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaintenanceWindowMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.


### fn withMaintenanceWindowMixin

```ts
withMaintenanceWindowMixin()
```

`google.list[obj].withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceWindow](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.


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


### fn withPort

```ts
withPort()
```

`google.number.withPort` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `port` field.


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


### fn withServiceId

```ts
withServiceId()
```

`google.string.withServiceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_id` field.


### fn withTier

```ts
withTier()
```

`google.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


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


## obj encryption_config



### fn encryption_config.new

```ts
new()
```


`google.dataproc_metastore_service.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key` (`string`): The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
Use the following format: &#39;projects/([^/]&#43;)/locations/([^/]&#43;)/keyRings/([^/]&#43;)/cryptoKeys/([^/]&#43;)&#39;

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj hive_metastore_config



### fn hive_metastore_config.new

```ts
new()
```


`google.dataproc_metastore_service.hive_metastore_config.new` constructs a new object with attributes and blocks configured for the `hive_metastore_config`
Terraform sub block.



**Args**:
  - `config_overrides` (`obj`): A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).
The mappings override system defaults (some keys cannot be overridden) When `null`, the `config_overrides` field will be omitted from the resulting object.
  - `version` (`string`): The Hive metastore schema version.
  - `kerberos_config` (`list[obj]`): Information used to configure the Hive metastore service as a service principal in a Kerberos realm. When `null`, the `kerberos_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.kerberos_config.new](#fn-dataproc_metastore_servicekerberos_confignew) constructor.

**Returns**:
  - An attribute object that represents the `hive_metastore_config` sub block.


## obj hive_metastore_config.kerberos_config



### fn hive_metastore_config.kerberos_config.new

```ts
new()
```


`google.dataproc_metastore_service.hive_metastore_config.kerberos_config.new` constructs a new object with attributes and blocks configured for the `kerberos_config`
Terraform sub block.



**Args**:
  - `krb5_config_gcs_uri` (`string`): A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  - `principal` (`string`): A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form &#34;primary/instance@REALM&#34;, but there is no exact format.
  - `keytab` (`list[obj]`): A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC). When `null`, the `keytab` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.hive_metastore_config.kerberos_config.keytab.new](#fn-dataproc_metastore_servicehive_metastore_configkeytabnew) constructor.

**Returns**:
  - An attribute object that represents the `kerberos_config` sub block.


## obj hive_metastore_config.kerberos_config.keytab



### fn hive_metastore_config.kerberos_config.keytab.new

```ts
new()
```


`google.dataproc_metastore_service.hive_metastore_config.kerberos_config.keytab.new` constructs a new object with attributes and blocks configured for the `keytab`
Terraform sub block.



**Args**:
  - `cloud_secret` (`string`): The relative resource name of a Secret Manager secret version, in the following form:

&#34;projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}&#34;.

**Returns**:
  - An attribute object that represents the `keytab` sub block.


## obj maintenance_window



### fn maintenance_window.new

```ts
new()
```


`google.dataproc_metastore_service.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`
Terraform sub block.



**Args**:
  - `day_of_week` (`string`): The day of week, when the window starts. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]
  - `hour_of_day` (`number`): The hour of day (0-23) when the window starts.

**Returns**:
  - An attribute object that represents the `maintenance_window` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.dataproc_metastore_service.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `consumers` (`list[obj]`): The consumer-side network configuration for the Dataproc Metastore instance. When `null`, the `consumers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_metastore_service.network_config.consumers.new](#fn-dataproc_metastore_serviceconsumersnew) constructor.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj network_config.consumers



### fn network_config.consumers.new

```ts
new()
```


`google.dataproc_metastore_service.network_config.consumers.new` constructs a new object with attributes and blocks configured for the `consumers`
Terraform sub block.



**Args**:
  - `subnetwork` (`string`): The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service&#39;s endpoint.
It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network.
There must be at least one IP address available in the subnet&#39;s primary range. The subnet is specified in the following form:
&#39;projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id}

**Returns**:
  - An attribute object that represents the `consumers` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataproc_metastore_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
