---
permalink: /alloydb_instance/
---

# alloydb_instance

`alloydb_instance` represents the `google_alloydb_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAvailabilityType()`](#fn-withavailabilitytype)
* [`fn withClientConnectionConfig()`](#fn-withclientconnectionconfig)
* [`fn withClientConnectionConfigMixin()`](#fn-withclientconnectionconfigmixin)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withDatabaseFlags()`](#fn-withdatabaseflags)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withGceZone()`](#fn-withgcezone)
* [`fn withInstanceId()`](#fn-withinstanceid)
* [`fn withInstanceType()`](#fn-withinstancetype)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMachineConfig()`](#fn-withmachineconfig)
* [`fn withMachineConfigMixin()`](#fn-withmachineconfigmixin)
* [`fn withQueryInsightsConfig()`](#fn-withqueryinsightsconfig)
* [`fn withQueryInsightsConfigMixin()`](#fn-withqueryinsightsconfigmixin)
* [`fn withReadPoolConfig()`](#fn-withreadpoolconfig)
* [`fn withReadPoolConfigMixin()`](#fn-withreadpoolconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj client_connection_config`](#obj-client_connection_config)
  * [`fn new()`](#fn-client_connection_confignew)
  * [`obj client_connection_config.ssl_config`](#obj-client_connection_configssl_config)
    * [`fn new()`](#fn-client_connection_configssl_confignew)
* [`obj machine_config`](#obj-machine_config)
  * [`fn new()`](#fn-machine_confignew)
* [`obj query_insights_config`](#obj-query_insights_config)
  * [`fn new()`](#fn-query_insights_confignew)
* [`obj read_pool_config`](#obj-read_pool_config)
  * [`fn new()`](#fn-read_pool_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.alloydb_instance.new` injects a new `google_alloydb_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.alloydb_instance.new('some_id')

You can get the reference to the `id` field of the created `google.alloydb_instance` using the reference:

    $._ref.google_alloydb_instance.some_id.get('id')

This is the same as directly entering `"${ google_alloydb_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `availability_type` (`string`): &#39;Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
Note that primary and read instances can have different availability types.
Only READ_POOL instance supports ZONAL type. Users can&#39;t specify the zone for READ_POOL instance.
Zone is automatically chosen from the list of zones in the region specified.
Read pool of size 1 can only have zonal availability. Read pools with node count of 2 or more
can have regional availability (nodes are present in 2 or more zones in a region).&#39; Possible values: [&#34;AVAILABILITY_TYPE_UNSPECIFIED&#34;, &#34;ZONAL&#34;, &#34;REGIONAL&#34;] When `null`, the `availability_type` field will be omitted from the resulting object.
  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format
&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;
  - `database_flags` (`obj`): Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. When `null`, the `database_flags` field will be omitted from the resulting object.
  - `display_name` (`string`): User-settable and human-readable display name for the Instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `gce_zone` (`string`): The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. When `null`, the `gce_zone` field will be omitted from the resulting object.
  - `instance_id` (`string`): The ID of the alloydb instance.
  - `instance_type` (`string`): The type of the instance.
If the instance type is READ_POOL, provide the associated PRIMARY/SECONDARY instance in the &#39;depends_on&#39; meta-data attribute.
If the instance type is SECONDARY, point to the cluster_type of the associated secondary cluster instead of mentioning SECONDARY.
Example: {instance_type = google_alloydb_cluster.&lt;secondary_cluster_name&gt;.cluster_type} instead of {instance_type = SECONDARY}
If the instance type is SECONDARY, the terraform delete instance operation does not delete the secondary instance but abandons it instead.
Use deletion_policy = &#34;FORCE&#34; in the associated secondary cluster and delete the cluster forcefully to delete the secondary cluster as well its associated secondary instance.
Users can undo the delete secondary instance action by importing the deleted secondary instance by calling terraform import. Possible values: [&#34;PRIMARY&#34;, &#34;READ_POOL&#34;, &#34;SECONDARY&#34;]
  - `labels` (`obj`): User-defined labels for the alloydb instance.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `client_connection_config` (`list[obj]`): Client connection specific configurations. When `null`, the `client_connection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.client_connection_config.new](#fn-client_connection_confignew) constructor.
  - `machine_config` (`list[obj]`): Configurations for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.machine_config.new](#fn-machine_confignew) constructor.
  - `query_insights_config` (`list[obj]`): Configuration for query insights. When `null`, the `query_insights_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.query_insights_config.new](#fn-query_insights_confignew) constructor.
  - `read_pool_config` (`list[obj]`): Read pool specific config. If the instance type is READ_POOL, this configuration must be provided. When `null`, the `read_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.read_pool_config.new](#fn-read_pool_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.alloydb_instance.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_instance`
Terraform resource.

Unlike [google.alloydb_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `availability_type` (`string`): &#39;Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
Note that primary and read instances can have different availability types.
Only READ_POOL instance supports ZONAL type. Users can&#39;t specify the zone for READ_POOL instance.
Zone is automatically chosen from the list of zones in the region specified.
Read pool of size 1 can only have zonal availability. Read pools with node count of 2 or more
can have regional availability (nodes are present in 2 or more zones in a region).&#39; Possible values: [&#34;AVAILABILITY_TYPE_UNSPECIFIED&#34;, &#34;ZONAL&#34;, &#34;REGIONAL&#34;] When `null`, the `availability_type` field will be omitted from the resulting object.
  - `cluster` (`string`): Identifies the alloydb cluster. Must be in the format
&#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39;
  - `database_flags` (`obj`): Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. When `null`, the `database_flags` field will be omitted from the resulting object.
  - `display_name` (`string`): User-settable and human-readable display name for the Instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `gce_zone` (`string`): The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. When `null`, the `gce_zone` field will be omitted from the resulting object.
  - `instance_id` (`string`): The ID of the alloydb instance.
  - `instance_type` (`string`): The type of the instance.
If the instance type is READ_POOL, provide the associated PRIMARY/SECONDARY instance in the &#39;depends_on&#39; meta-data attribute.
If the instance type is SECONDARY, point to the cluster_type of the associated secondary cluster instead of mentioning SECONDARY.
Example: {instance_type = google_alloydb_cluster.&lt;secondary_cluster_name&gt;.cluster_type} instead of {instance_type = SECONDARY}
If the instance type is SECONDARY, the terraform delete instance operation does not delete the secondary instance but abandons it instead.
Use deletion_policy = &#34;FORCE&#34; in the associated secondary cluster and delete the cluster forcefully to delete the secondary cluster as well its associated secondary instance.
Users can undo the delete secondary instance action by importing the deleted secondary instance by calling terraform import. Possible values: [&#34;PRIMARY&#34;, &#34;READ_POOL&#34;, &#34;SECONDARY&#34;]
  - `labels` (`obj`): User-defined labels for the alloydb instance.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `client_connection_config` (`list[obj]`): Client connection specific configurations. When `null`, the `client_connection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.client_connection_config.new](#fn-client_connection_confignew) constructor.
  - `machine_config` (`list[obj]`): Configurations for the machines that host the underlying database engine. When `null`, the `machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.machine_config.new](#fn-machine_confignew) constructor.
  - `query_insights_config` (`list[obj]`): Configuration for query insights. When `null`, the `query_insights_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.query_insights_config.new](#fn-query_insights_confignew) constructor.
  - `read_pool_config` (`list[obj]`): Read pool specific config. If the instance type is READ_POOL, this configuration must be provided. When `null`, the `read_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.read_pool_config.new](#fn-read_pool_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_instance` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAvailabilityType

```ts
withAvailabilityType()
```

`google.string.withAvailabilityType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the availability_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `availability_type` field.


### fn withClientConnectionConfig

```ts
withClientConnectionConfig()
```

`google.list[obj].withClientConnectionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the client_connection_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withClientConnectionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `client_connection_config` field.


### fn withClientConnectionConfigMixin

```ts
withClientConnectionConfigMixin()
```

`google.list[obj].withClientConnectionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the client_connection_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withClientConnectionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `client_connection_config` field.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withDatabaseFlags

```ts
withDatabaseFlags()
```

`google.obj.withDatabaseFlags` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the database_flags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `database_flags` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withGceZone

```ts
withGceZone()
```

`google.string.withGceZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the gce_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `gce_zone` field.


### fn withInstanceId

```ts
withInstanceId()
```

`google.string.withInstanceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_id` field.


### fn withInstanceType

```ts
withInstanceType()
```

`google.string.withInstanceType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_type` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMachineConfig

```ts
withMachineConfig()
```

`google.list[obj].withMachineConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the machine_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMachineConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `machine_config` field.


### fn withMachineConfigMixin

```ts
withMachineConfigMixin()
```

`google.list[obj].withMachineConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the machine_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMachineConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `machine_config` field.


### fn withQueryInsightsConfig

```ts
withQueryInsightsConfig()
```

`google.list[obj].withQueryInsightsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the query_insights_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withQueryInsightsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `query_insights_config` field.


### fn withQueryInsightsConfigMixin

```ts
withQueryInsightsConfigMixin()
```

`google.list[obj].withQueryInsightsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the query_insights_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withQueryInsightsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `query_insights_config` field.


### fn withReadPoolConfig

```ts
withReadPoolConfig()
```

`google.list[obj].withReadPoolConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the read_pool_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withReadPoolConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `read_pool_config` field.


### fn withReadPoolConfigMixin

```ts
withReadPoolConfigMixin()
```

`google.list[obj].withReadPoolConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the read_pool_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withReadPoolConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `read_pool_config` field.


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


## obj client_connection_config



### fn client_connection_config.new

```ts
new()
```


`google.alloydb_instance.client_connection_config.new` constructs a new object with attributes and blocks configured for the `client_connection_config`
Terraform sub block.



**Args**:
  - `require_connectors` (`bool`): Configuration to enforce connectors only (ex: AuthProxy) connections to the database. When `null`, the `require_connectors` field will be omitted from the resulting object.
  - `ssl_config` (`list[obj]`): SSL config option for this instance. When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_instance.client_connection_config.ssl_config.new](#fn-client_connection_configssl_confignew) constructor.

**Returns**:
  - An attribute object that represents the `client_connection_config` sub block.


## obj client_connection_config.ssl_config



### fn client_connection_config.ssl_config.new

```ts
new()
```


`google.alloydb_instance.client_connection_config.ssl_config.new` constructs a new object with attributes and blocks configured for the `ssl_config`
Terraform sub block.



**Args**:
  - `ssl_mode` (`string`): SSL mode. Specifies client-server SSL/TLS connection behavior. Possible values: [&#34;ENCRYPTED_ONLY&#34;, &#34;ALLOW_UNENCRYPTED_AND_ENCRYPTED&#34;] When `null`, the `ssl_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ssl_config` sub block.


## obj machine_config



### fn machine_config.new

```ts
new()
```


`google.alloydb_instance.machine_config.new` constructs a new object with attributes and blocks configured for the `machine_config`
Terraform sub block.



**Args**:
  - `cpu_count` (`number`): The number of CPU&#39;s in the VM instance. When `null`, the `cpu_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `machine_config` sub block.


## obj query_insights_config



### fn query_insights_config.new

```ts
new()
```


`google.alloydb_instance.query_insights_config.new` constructs a new object with attributes and blocks configured for the `query_insights_config`
Terraform sub block.



**Args**:
  - `query_plans_per_minute` (`number`): Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid. When `null`, the `query_plans_per_minute` field will be omitted from the resulting object.
  - `query_string_length` (`number`): Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid. When `null`, the `query_string_length` field will be omitted from the resulting object.
  - `record_application_tags` (`bool`): Record application tags for an instance. This flag is turned &#34;on&#34; by default. When `null`, the `record_application_tags` field will be omitted from the resulting object.
  - `record_client_address` (`bool`): Record client address for an instance. Client address is PII information. This flag is turned &#34;on&#34; by default. When `null`, the `record_client_address` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `query_insights_config` sub block.


## obj read_pool_config



### fn read_pool_config.new

```ts
new()
```


`google.alloydb_instance.read_pool_config.new` constructs a new object with attributes and blocks configured for the `read_pool_config`
Terraform sub block.



**Args**:
  - `node_count` (`number`): Read capacity, i.e. number of nodes in a read pool instance. When `null`, the `node_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `read_pool_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.alloydb_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
