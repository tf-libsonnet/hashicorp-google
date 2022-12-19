---
permalink: /pubsub_lite_topic/
---

# pubsub_lite_topic

`pubsub_lite_topic` represents the `google_pubsub_lite_topic` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withPartitionConfig()`](#fn-withpartitionconfig)
* [`fn withPartitionConfigMixin()`](#fn-withpartitionconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReservationConfig()`](#fn-withreservationconfig)
* [`fn withReservationConfigMixin()`](#fn-withreservationconfigmixin)
* [`fn withRetentionConfig()`](#fn-withretentionconfig)
* [`fn withRetentionConfigMixin()`](#fn-withretentionconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj partition_config`](#obj-partition_config)
  * [`fn new()`](#fn-partition_confignew)
  * [`obj partition_config.capacity`](#obj-partition_configcapacity)
    * [`fn new()`](#fn-partition_configcapacitynew)
* [`obj reservation_config`](#obj-reservation_config)
  * [`fn new()`](#fn-reservation_confignew)
* [`obj retention_config`](#obj-retention_config)
  * [`fn new()`](#fn-retention_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.pubsub_lite_topic.new` injects a new `google_pubsub_lite_topic` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.pubsub_lite_topic.new('some_id')

You can get the reference to the `id` field of the created `google.pubsub_lite_topic` using the reference:

    $._ref.google_pubsub_lite_topic.some_id.get('id')

This is the same as directly entering `"${ google_pubsub_lite_topic.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): Name of the topic.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.
  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.
  - `partition_config` (`list[obj]`): The settings for this topic&#39;s partitions. When `null`, the `partition_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.partition_config.new](#fn-pubsublitetopicpartitionconfignew) constructor.
  - `reservation_config` (`list[obj]`): The settings for this topic&#39;s Reservation usage. When `null`, the `reservation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.reservation_config.new](#fn-pubsublitetopicreservationconfignew) constructor.
  - `retention_config` (`list[obj]`): The settings for a topic&#39;s message retention. When `null`, the `retention_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.retention_config.new](#fn-pubsublitetopicretentionconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.timeouts.new](#fn-pubsublitetopictimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.pubsub_lite_topic.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_lite_topic`
Terraform resource.

Unlike [google.pubsub_lite_topic.new](#fn-pubsublitetopicnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): Name of the topic.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.
  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.
  - `partition_config` (`list[obj]`): The settings for this topic&#39;s partitions. When `null`, the `partition_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.partition_config.new](#fn-pubsublitetopicpartitionconfignew) constructor.
  - `reservation_config` (`list[obj]`): The settings for this topic&#39;s Reservation usage. When `null`, the `reservation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.reservation_config.new](#fn-pubsublitetopicreservationconfignew) constructor.
  - `retention_config` (`list[obj]`): The settings for a topic&#39;s message retention. When `null`, the `retention_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.retention_config.new](#fn-pubsublitetopicretentionconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.timeouts.new](#fn-pubsublitetopictimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_lite_topic` resource into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.pubsub_lite_topic.withName` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withPartitionConfig

```ts
withPartitionConfig()
```

`google.pubsub_lite_topic.withPartitionConfig` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the partition_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `partition_config` field.


### fn withPartitionConfigMixin

```ts
withPartitionConfigMixin()
```

`google.pubsub_lite_topic.withPartitionConfigMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the partition_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.pubsub_lite_topic.withPartitionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `partition_config` field.


### fn withProject

```ts
withProject()
```

`google.pubsub_lite_topic.withProject` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.pubsub_lite_topic.withRegion` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withReservationConfig

```ts
withReservationConfig()
```

`google.pubsub_lite_topic.withReservationConfig` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the reservation_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `reservation_config` field.


### fn withReservationConfigMixin

```ts
withReservationConfigMixin()
```

`google.pubsub_lite_topic.withReservationConfigMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the reservation_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.pubsub_lite_topic.withReservationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `reservation_config` field.


### fn withRetentionConfig

```ts
withRetentionConfig()
```

`google.pubsub_lite_topic.withRetentionConfig` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the retention_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `retention_config` field.


### fn withRetentionConfigMixin

```ts
withRetentionConfigMixin()
```

`google.pubsub_lite_topic.withRetentionConfigMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the retention_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.pubsub_lite_topic.withRetentionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `retention_config` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.pubsub_lite_topic.withTimeouts` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.pubsub_lite_topic.withTimeoutsMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.pubsub_lite_topic.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withZone

```ts
withZone()
```

`google.pubsub_lite_topic.withZone` constructs a mixin object that can be merged into the `pubsub_lite_topic`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.


## obj partition_config



### fn partition_config.new

```ts
new()
```


`google.pubsub_lite_topic.partition_config.new` constructs a new object with attributes and blocks configured for the `partition_config`
Terraform sub block.



**Args**:
  - `count` (`number`): The number of partitions in the topic. Must be at least 1.
  - `capacity` (`list[obj]`): The capacity configuration. When `null`, the `capacity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.partition_config.capacity.new](#fn-partitionconfigcapacitynew) constructor.

**Returns**:
  - An attribute object that represents the `partition_config` sub block.


## obj partition_config.capacity



### fn partition_config.capacity.new

```ts
new()
```


`google.pubsub_lite_topic.partition_config.capacity.new` constructs a new object with attributes and blocks configured for the `capacity`
Terraform sub block.



**Args**:
  - `publish_mib_per_sec` (`number`): Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  - `subscribe_mib_per_sec` (`number`): Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.

**Returns**:
  - An attribute object that represents the `capacity` sub block.


## obj reservation_config



### fn reservation_config.new

```ts
new()
```


`google.pubsub_lite_topic.reservation_config.new` constructs a new object with attributes and blocks configured for the `reservation_config`
Terraform sub block.



**Args**:
  - `throughput_reservation` (`string`): The Reservation to use for this topic&#39;s throughput capacity. When `null`, the `throughput_reservation` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reservation_config` sub block.


## obj retention_config



### fn retention_config.new

```ts
new()
```


`google.pubsub_lite_topic.retention_config.new` constructs a new object with attributes and blocks configured for the `retention_config`
Terraform sub block.



**Args**:
  - `per_partition_bytes` (`string`): The provisioned storage, in bytes, per partition. If the number of bytes stored
in any of the topic&#39;s partitions grows beyond this value, older messages will be
dropped to make room for newer ones, regardless of the value of period.
  - `period` (`string`): How long a published message is retained. If unset, messages will be retained as
long as the bytes retained for each partition is below perPartitionBytes. A
duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;.
Example: &#34;3.5s&#34;. When `null`, the `period` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retention_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.pubsub_lite_topic.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
