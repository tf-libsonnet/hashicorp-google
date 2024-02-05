---
permalink: /redis_instance/
---

# redis_instance

`redis_instance` represents the `google_redis_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlternativeLocationId()`](#fn-withalternativelocationid)
* [`fn withAuthEnabled()`](#fn-withauthenabled)
* [`fn withAuthorizedNetwork()`](#fn-withauthorizednetwork)
* [`fn withConnectMode()`](#fn-withconnectmode)
* [`fn withCustomerManagedKey()`](#fn-withcustomermanagedkey)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocationId()`](#fn-withlocationid)
* [`fn withMaintenancePolicy()`](#fn-withmaintenancepolicy)
* [`fn withMaintenancePolicyMixin()`](#fn-withmaintenancepolicymixin)
* [`fn withMemorySizeGb()`](#fn-withmemorysizegb)
* [`fn withName()`](#fn-withname)
* [`fn withPersistenceConfig()`](#fn-withpersistenceconfig)
* [`fn withPersistenceConfigMixin()`](#fn-withpersistenceconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withReadReplicasMode()`](#fn-withreadreplicasmode)
* [`fn withRedisConfigs()`](#fn-withredisconfigs)
* [`fn withRedisVersion()`](#fn-withredisversion)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReplicaCount()`](#fn-withreplicacount)
* [`fn withReservedIpRange()`](#fn-withreservediprange)
* [`fn withSecondaryIpRange()`](#fn-withsecondaryiprange)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTransitEncryptionMode()`](#fn-withtransitencryptionmode)
* [`obj maintenance_policy`](#obj-maintenance_policy)
  * [`fn new()`](#fn-maintenance_policynew)
  * [`obj maintenance_policy.weekly_maintenance_window`](#obj-maintenance_policyweekly_maintenance_window)
    * [`fn new()`](#fn-maintenance_policyweekly_maintenance_windownew)
    * [`obj maintenance_policy.weekly_maintenance_window.start_time`](#obj-maintenance_policyweekly_maintenance_windowstart_time)
      * [`fn new()`](#fn-maintenance_policyweekly_maintenance_windowstart_timenew)
* [`obj persistence_config`](#obj-persistence_config)
  * [`fn new()`](#fn-persistence_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.redis_instance.new` injects a new `google_redis_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.redis_instance.new('some_id')

You can get the reference to the `id` field of the created `google.redis_instance` using the reference:

    $._ref.google_redis_instance.some_id.get('id')

This is the same as directly entering `"${ google_redis_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `alternative_location_id` (`string`): Only applicable to STANDARD_HA tier which protects the instance
against zonal failures by provisioning it across two zones.
If provided, it must be a different zone from the one provided in
[locationId]. When `null`, the `alternative_location_id` field will be omitted from the resulting object.
  - `auth_enabled` (`bool`): Optional. Indicates whether OSS Redis AUTH is enabled for the
instance. If set to &#34;true&#34; AUTH is enabled on the instance.
Default value is &#34;false&#34; meaning AUTH is disabled. When `null`, the `auth_enabled` field will be omitted from the resulting object.
  - `authorized_network` (`string`): The full name of the Google Compute Engine network to which the
instance is connected. If left unspecified, the default network
will be used. When `null`, the `authorized_network` field will be omitted from the resulting object.
  - `connect_mode` (`string`): The connection mode of the Redis instance. Default value: &#34;DIRECT_PEERING&#34; Possible values: [&#34;DIRECT_PEERING&#34;, &#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `connect_mode` field will be omitted from the resulting object.
  - `customer_managed_key` (`string`): Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
instance. If this is provided, CMEK is enabled. When `null`, the `customer_managed_key` field will be omitted from the resulting object.
  - `display_name` (`string`): An arbitrary and optional user-provided name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location_id` (`string`): The zone where the instance will be provisioned. If not provided,
the service will choose a zone for the instance. For STANDARD_HA tier,
instances will be created across two zones for protection against
zonal failures. If [alternativeLocationId] is also provided, it must
be different from [locationId]. When `null`, the `location_id` field will be omitted from the resulting object.
  - `memory_size_gb` (`number`): Redis memory size in GiB.
  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `read_replicas_mode` (`string`): Optional. Read replica mode. Can only be specified when trying to create the instance.
If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
- READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
instance cannot scale up or down the number of replicas.
- READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
can scale up and down the number of replicas. Possible values: [&#34;READ_REPLICAS_DISABLED&#34;, &#34;READ_REPLICAS_ENABLED&#34;] When `null`, the `read_replicas_mode` field will be omitted from the resulting object.
  - `redis_configs` (`obj`): Redis configuration parameters, according to http://redis.io/topics/config.
Please check Memorystore documentation for the list of supported parameters:
https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs When `null`, the `redis_configs` field will be omitted from the resulting object.
  - `redis_version` (`string`): The version of Redis software. If not provided, latest supported
version will be used. Please check the API documentation linked
at the top for the latest valid values. When `null`, the `redis_version` field will be omitted from the resulting object.
  - `region` (`string`): The name of the Redis region of the instance. When `null`, the `region` field will be omitted from the resulting object.
  - `replica_count` (`number`): Optional. The number of replica nodes. The valid range for the Standard Tier with
read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
for a Standard Tier instance, the only valid value is 1 and the default is 1.
The valid value for basic tier is 0 and the default is also 0. When `null`, the `replica_count` field will be omitted from the resulting object.
  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this
instance. If not provided, the service will choose an unused /29
block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
unique and non-overlapping with existing subnets in an authorized
network. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.
  - `secondary_ip_range` (`string`): Optional. Additional IP range for node placement. Required when enabling read replicas on
an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
&#34;auto&#34;. For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
range associated with the private service access connection, or &#34;auto&#34;. When `null`, the `secondary_ip_range` field will be omitted from the resulting object.
  - `tier` (`string`): The service tier of the instance. Must be one of these values:

- BASIC: standalone instance
- STANDARD_HA: highly available primary/replica instances Default value: &#34;BASIC&#34; Possible values: [&#34;BASIC&#34;, &#34;STANDARD_HA&#34;] When `null`, the `tier` field will be omitted from the resulting object.
  - `transit_encryption_mode` (`string`): The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.

- SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication Default value: &#34;DISABLED&#34; Possible values: [&#34;SERVER_AUTHENTICATION&#34;, &#34;DISABLED&#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.
  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `persistence_config` (`list[obj]`): Persistence configuration for an instance. When `null`, the `persistence_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.persistence_config.new](#fn-persistence_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.redis_instance.newAttrs` constructs a new object with attributes and blocks configured for the `redis_instance`
Terraform resource.

Unlike [google.redis_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `alternative_location_id` (`string`): Only applicable to STANDARD_HA tier which protects the instance
against zonal failures by provisioning it across two zones.
If provided, it must be a different zone from the one provided in
[locationId]. When `null`, the `alternative_location_id` field will be omitted from the resulting object.
  - `auth_enabled` (`bool`): Optional. Indicates whether OSS Redis AUTH is enabled for the
instance. If set to &#34;true&#34; AUTH is enabled on the instance.
Default value is &#34;false&#34; meaning AUTH is disabled. When `null`, the `auth_enabled` field will be omitted from the resulting object.
  - `authorized_network` (`string`): The full name of the Google Compute Engine network to which the
instance is connected. If left unspecified, the default network
will be used. When `null`, the `authorized_network` field will be omitted from the resulting object.
  - `connect_mode` (`string`): The connection mode of the Redis instance. Default value: &#34;DIRECT_PEERING&#34; Possible values: [&#34;DIRECT_PEERING&#34;, &#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `connect_mode` field will be omitted from the resulting object.
  - `customer_managed_key` (`string`): Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
instance. If this is provided, CMEK is enabled. When `null`, the `customer_managed_key` field will be omitted from the resulting object.
  - `display_name` (`string`): An arbitrary and optional user-provided name for the instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location_id` (`string`): The zone where the instance will be provisioned. If not provided,
the service will choose a zone for the instance. For STANDARD_HA tier,
instances will be created across two zones for protection against
zonal failures. If [alternativeLocationId] is also provided, it must
be different from [locationId]. When `null`, the `location_id` field will be omitted from the resulting object.
  - `memory_size_gb` (`number`): Redis memory size in GiB.
  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `read_replicas_mode` (`string`): Optional. Read replica mode. Can only be specified when trying to create the instance.
If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
- READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
instance cannot scale up or down the number of replicas.
- READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
can scale up and down the number of replicas. Possible values: [&#34;READ_REPLICAS_DISABLED&#34;, &#34;READ_REPLICAS_ENABLED&#34;] When `null`, the `read_replicas_mode` field will be omitted from the resulting object.
  - `redis_configs` (`obj`): Redis configuration parameters, according to http://redis.io/topics/config.
Please check Memorystore documentation for the list of supported parameters:
https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs When `null`, the `redis_configs` field will be omitted from the resulting object.
  - `redis_version` (`string`): The version of Redis software. If not provided, latest supported
version will be used. Please check the API documentation linked
at the top for the latest valid values. When `null`, the `redis_version` field will be omitted from the resulting object.
  - `region` (`string`): The name of the Redis region of the instance. When `null`, the `region` field will be omitted from the resulting object.
  - `replica_count` (`number`): Optional. The number of replica nodes. The valid range for the Standard Tier with
read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
for a Standard Tier instance, the only valid value is 1 and the default is 1.
The valid value for basic tier is 0 and the default is also 0. When `null`, the `replica_count` field will be omitted from the resulting object.
  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this
instance. If not provided, the service will choose an unused /29
block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
unique and non-overlapping with existing subnets in an authorized
network. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.
  - `secondary_ip_range` (`string`): Optional. Additional IP range for node placement. Required when enabling read replicas on
an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
&#34;auto&#34;. For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
range associated with the private service access connection, or &#34;auto&#34;. When `null`, the `secondary_ip_range` field will be omitted from the resulting object.
  - `tier` (`string`): The service tier of the instance. Must be one of these values:

- BASIC: standalone instance
- STANDARD_HA: highly available primary/replica instances Default value: &#34;BASIC&#34; Possible values: [&#34;BASIC&#34;, &#34;STANDARD_HA&#34;] When `null`, the `tier` field will be omitted from the resulting object.
  - `transit_encryption_mode` (`string`): The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.

- SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication Default value: &#34;DISABLED&#34; Possible values: [&#34;SERVER_AUTHENTICATION&#34;, &#34;DISABLED&#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.
  - `maintenance_policy` (`list[obj]`): Maintenance policy for an instance. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.new](#fn-maintenance_policynew) constructor.
  - `persistence_config` (`list[obj]`): Persistence configuration for an instance. When `null`, the `persistence_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.persistence_config.new](#fn-persistence_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `redis_instance` resource into the root Terraform configuration.


### fn withAlternativeLocationId

```ts
withAlternativeLocationId()
```

`google.string.withAlternativeLocationId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the alternative_location_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `alternative_location_id` field.


### fn withAuthEnabled

```ts
withAuthEnabled()
```

`google.bool.withAuthEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the auth_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `auth_enabled` field.


### fn withAuthorizedNetwork

```ts
withAuthorizedNetwork()
```

`google.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorized_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorized_network` field.


### fn withConnectMode

```ts
withConnectMode()
```

`google.string.withConnectMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connect_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connect_mode` field.


### fn withCustomerManagedKey

```ts
withCustomerManagedKey()
```

`google.string.withCustomerManagedKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the customer_managed_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `customer_managed_key` field.


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


### fn withLocationId

```ts
withLocationId()
```

`google.string.withLocationId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location_id` field.


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


### fn withMemorySizeGb

```ts
withMemorySizeGb()
```

`google.number.withMemorySizeGb` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the memory_size_gb field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `memory_size_gb` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPersistenceConfig

```ts
withPersistenceConfig()
```

`google.list[obj].withPersistenceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the persistence_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPersistenceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `persistence_config` field.


### fn withPersistenceConfigMixin

```ts
withPersistenceConfigMixin()
```

`google.list[obj].withPersistenceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the persistence_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPersistenceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `persistence_config` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReadReplicasMode

```ts
withReadReplicasMode()
```

`google.string.withReadReplicasMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the read_replicas_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `read_replicas_mode` field.


### fn withRedisConfigs

```ts
withRedisConfigs()
```

`google.obj.withRedisConfigs` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the redis_configs field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `redis_configs` field.


### fn withRedisVersion

```ts
withRedisVersion()
```

`google.string.withRedisVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the redis_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `redis_version` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withReplicaCount

```ts
withReplicaCount()
```

`google.number.withReplicaCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the replica_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `replica_count` field.


### fn withReservedIpRange

```ts
withReservedIpRange()
```

`google.string.withReservedIpRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the reserved_ip_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `reserved_ip_range` field.


### fn withSecondaryIpRange

```ts
withSecondaryIpRange()
```

`google.string.withSecondaryIpRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the secondary_ip_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `secondary_ip_range` field.


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


### fn withTransitEncryptionMode

```ts
withTransitEncryptionMode()
```

`google.string.withTransitEncryptionMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the transit_encryption_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `transit_encryption_mode` field.


## obj maintenance_policy



### fn maintenance_policy.new

```ts
new()
```


`google.redis_instance.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`
Terraform sub block.



**Args**:
  - `description` (`string`): Optional. Description of what this policy is for.
Create/Update methods return INVALID_ARGUMENT if the
length is greater than 512. When `null`, the `description` field will be omitted from the resulting object.
  - `weekly_maintenance_window` (`list[obj]`): Optional. Maintenance window that is applied to resources covered by this policy.
Minimum 1. For the current version, the maximum number
of weekly_window is expected to be one. When `null`, the `weekly_maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.weekly_maintenance_window.new](#fn-maintenance_policyweekly_maintenance_windownew) constructor.

**Returns**:
  - An attribute object that represents the `maintenance_policy` sub block.


## obj maintenance_policy.weekly_maintenance_window



### fn maintenance_policy.weekly_maintenance_window.new

```ts
new()
```


`google.redis_instance.maintenance_policy.weekly_maintenance_window.new` constructs a new object with attributes and blocks configured for the `weekly_maintenance_window`
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
  - `start_time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `start_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_instance.maintenance_policy.weekly_maintenance_window.start_time.new](#fn-maintenance_policymaintenance_policystart_timenew) constructor.

**Returns**:
  - An attribute object that represents the `weekly_maintenance_window` sub block.


## obj maintenance_policy.weekly_maintenance_window.start_time



### fn maintenance_policy.weekly_maintenance_window.start_time.new

```ts
new()
```


`google.redis_instance.maintenance_policy.weekly_maintenance_window.start_time.new` constructs a new object with attributes and blocks configured for the `start_time`
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


## obj persistence_config



### fn persistence_config.new

```ts
new()
```


`google.redis_instance.persistence_config.new` constructs a new object with attributes and blocks configured for the `persistence_config`
Terraform sub block.



**Args**:
  - `persistence_mode` (`string`): Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.

- DISABLED: 	Persistence is disabled for the instance, and any existing snapshots are deleted.
- RDB: RDB based Persistence is enabled. Possible values: [&#34;DISABLED&#34;, &#34;RDB&#34;] When `null`, the `persistence_mode` field will be omitted from the resulting object.
  - `rdb_snapshot_period` (`string`): Optional. Available snapshot periods for scheduling.

- ONE_HOUR:	Snapshot every 1 hour.
- SIX_HOURS:	Snapshot every 6 hours.
- TWELVE_HOURS:	Snapshot every 12 hours.
- TWENTY_FOUR_HOURS:	Snapshot every 24 hours. Possible values: [&#34;ONE_HOUR&#34;, &#34;SIX_HOURS&#34;, &#34;TWELVE_HOURS&#34;, &#34;TWENTY_FOUR_HOURS&#34;] When `null`, the `rdb_snapshot_period` field will be omitted from the resulting object.
  - `rdb_snapshot_start_time` (`string`): Optional. Date and time that the first snapshot was/will be attempted,
and to which future snapshots will be aligned. If not provided,
the current time will be used.
A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution
and up to nine fractional digits.
Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `rdb_snapshot_start_time` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `persistence_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.redis_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
