---
permalink: /redis_cluster/
---

# redis_cluster

`redis_cluster` represents the `google_redis_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthorizationMode()`](#fn-withauthorizationmode)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPscConfigs()`](#fn-withpscconfigs)
* [`fn withPscConfigsMixin()`](#fn-withpscconfigsmixin)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReplicaCount()`](#fn-withreplicacount)
* [`fn withShardCount()`](#fn-withshardcount)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTransitEncryptionMode()`](#fn-withtransitencryptionmode)
* [`obj psc_configs`](#obj-psc_configs)
  * [`fn new()`](#fn-psc_configsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.redis_cluster.new` injects a new `google_redis_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.redis_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.redis_cluster` using the reference:

    $._ref.google_redis_cluster.some_id.get('id')

This is the same as directly entering `"${ google_redis_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `authorization_mode` (`string`): Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster. Default value: &#34;AUTH_MODE_DISABLED&#34; Possible values: [&#34;AUTH_MODE_UNSPECIFIED&#34;, &#34;AUTH_MODE_IAM_AUTH&#34;, &#34;AUTH_MODE_DISABLED&#34;] When `null`, the `authorization_mode` field will be omitted from the resulting object.
  - `name` (`string`): Unique name of the resource in this scope including project and location using the form:
projects/{projectId}/locations/{locationId}/clusters/{clusterId} When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The name of the region of the Redis cluster. When `null`, the `region` field will be omitted from the resulting object.
  - `replica_count` (`number`): Optional. The number of replica nodes per shard. When `null`, the `replica_count` field will be omitted from the resulting object.
  - `shard_count` (`number`): Required. Number of shards for the Redis cluster.
  - `transit_encryption_mode` (`string`): Optional. The in-transit encryption for the Redis cluster.
If not provided, encryption is disabled for the cluster. Default value: &#34;TRANSIT_ENCRYPTION_MODE_DISABLED&#34; Possible values: [&#34;TRANSIT_ENCRYPTION_MODE_UNSPECIFIED&#34;, &#34;TRANSIT_ENCRYPTION_MODE_DISABLED&#34;, &#34;TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION&#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.
  - `psc_configs` (`list[obj]`): Required. Each PscConfig configures the consumer network where two
network addresses will be designated to the cluster for client access.
Currently, only one PscConfig is supported. When `null`, the `psc_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.psc_configs.new](#fn-psc_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.redis_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `redis_cluster`
Terraform resource.

Unlike [google.redis_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `authorization_mode` (`string`): Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster. Default value: &#34;AUTH_MODE_DISABLED&#34; Possible values: [&#34;AUTH_MODE_UNSPECIFIED&#34;, &#34;AUTH_MODE_IAM_AUTH&#34;, &#34;AUTH_MODE_DISABLED&#34;] When `null`, the `authorization_mode` field will be omitted from the resulting object.
  - `name` (`string`): Unique name of the resource in this scope including project and location using the form:
projects/{projectId}/locations/{locationId}/clusters/{clusterId} When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The name of the region of the Redis cluster. When `null`, the `region` field will be omitted from the resulting object.
  - `replica_count` (`number`): Optional. The number of replica nodes per shard. When `null`, the `replica_count` field will be omitted from the resulting object.
  - `shard_count` (`number`): Required. Number of shards for the Redis cluster.
  - `transit_encryption_mode` (`string`): Optional. The in-transit encryption for the Redis cluster.
If not provided, encryption is disabled for the cluster. Default value: &#34;TRANSIT_ENCRYPTION_MODE_DISABLED&#34; Possible values: [&#34;TRANSIT_ENCRYPTION_MODE_UNSPECIFIED&#34;, &#34;TRANSIT_ENCRYPTION_MODE_DISABLED&#34;, &#34;TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION&#34;] When `null`, the `transit_encryption_mode` field will be omitted from the resulting object.
  - `psc_configs` (`list[obj]`): Required. Each PscConfig configures the consumer network where two
network addresses will be designated to the cluster for client access.
Currently, only one PscConfig is supported. When `null`, the `psc_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.psc_configs.new](#fn-psc_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.redis_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `redis_cluster` resource into the root Terraform configuration.


### fn withAuthorizationMode

```ts
withAuthorizationMode()
```

`google.string.withAuthorizationMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorization_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorization_mode` field.


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


### fn withPscConfigs

```ts
withPscConfigs()
```

`google.list[obj].withPscConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the psc_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPscConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `psc_configs` field.


### fn withPscConfigsMixin

```ts
withPscConfigsMixin()
```

`google.list[obj].withPscConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the psc_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPscConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `psc_configs` field.


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


### fn withShardCount

```ts
withShardCount()
```

`google.number.withShardCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the shard_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `shard_count` field.


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


## obj psc_configs



### fn psc_configs.new

```ts
new()
```


`google.redis_cluster.psc_configs.new` constructs a new object with attributes and blocks configured for the `psc_configs`
Terraform sub block.



**Args**:
  - `network` (`string`): Required. The consumer network where the network address of
the discovery endpoint will be reserved, in the form of
projects/{network_project_id_or_number}/global/networks/{network_id}.

**Returns**:
  - An attribute object that represents the `psc_configs` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.redis_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
