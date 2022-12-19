local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='pubsub_lite_topic', url='', help='`pubsub_lite_topic` represents the `google_pubsub_lite_topic` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.pubsub_lite_topic.new` injects a new `google_pubsub_lite_topic` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.pubsub_lite_topic.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.pubsub_lite_topic` using the reference:\n\n    $._ref.google_pubsub_lite_topic.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_pubsub_lite_topic.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): Name of the topic.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.\n  - `partition_config` (`list[obj]`): The settings for this topic\u0026#39;s partitions. When `null`, the `partition_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.partition_config.new](#fn-pubsublitetopicpartitionconfignew) constructor.\n  - `reservation_config` (`list[obj]`): The settings for this topic\u0026#39;s Reservation usage. When `null`, the `reservation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.reservation_config.new](#fn-pubsublitetopicreservationconfignew) constructor.\n  - `retention_config` (`list[obj]`): The settings for a topic\u0026#39;s message retention. When `null`, the `retention_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.retention_config.new](#fn-pubsublitetopicretentionconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.timeouts.new](#fn-pubsublitetopictimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    partition_config=null,
    project=null,
    region=null,
    reservation_config=null,
    retention_config=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_lite_topic',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      partition_config=partition_config,
      project=project,
      region=region,
      reservation_config=reservation_config,
      retention_config=retention_config,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.pubsub_lite_topic.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_lite_topic`\nTerraform resource.\n\nUnlike [google.pubsub_lite_topic.new](#fn-pubsublitetopicnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): Name of the topic.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.\n  - `partition_config` (`list[obj]`): The settings for this topic&#39;s partitions. When `null`, the `partition_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.partition_config.new](#fn-pubsublitetopicpartitionconfignew) constructor.\n  - `reservation_config` (`list[obj]`): The settings for this topic&#39;s Reservation usage. When `null`, the `reservation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.reservation_config.new](#fn-pubsublitetopicreservationconfignew) constructor.\n  - `retention_config` (`list[obj]`): The settings for a topic&#39;s message retention. When `null`, the `retention_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.retention_config.new](#fn-pubsublitetopicretentionconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.timeouts.new](#fn-pubsublitetopictimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_lite_topic` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    partition_config=null,
    project=null,
    region=null,
    reservation_config=null,
    retention_config=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    name: name,
    partition_config: partition_config,
    project: project,
    region: region,
    reservation_config: reservation_config,
    retention_config: retention_config,
    timeouts: timeouts,
    zone: zone,
  }),
  partition_config:: {
    capacity:: {
      '#new':: d.fn(help='\n`google.pubsub_lite_topic.partition_config.capacity.new` constructs a new object with attributes and blocks configured for the `capacity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `publish_mib_per_sec` (`number`): Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.\n  - `subscribe_mib_per_sec` (`number`): Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.\n\n**Returns**:\n  - An attribute object that represents the `capacity` sub block.\n', args=[]),
      new(
        publish_mib_per_sec,
        subscribe_mib_per_sec
      ):: std.prune(a={
        publish_mib_per_sec: publish_mib_per_sec,
        subscribe_mib_per_sec: subscribe_mib_per_sec,
      }),
    },
    '#new':: d.fn(help='\n`google.pubsub_lite_topic.partition_config.new` constructs a new object with attributes and blocks configured for the `partition_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The number of partitions in the topic. Must be at least 1.\n  - `capacity` (`list[obj]`): The capacity configuration. When `null`, the `capacity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_topic.partition_config.capacity.new](#fn-partitionconfigcapacitynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `partition_config` sub block.\n', args=[]),
    new(
      count,
      capacity=null
    ):: std.prune(a={
      capacity: capacity,
      count: count,
    }),
  },
  reservation_config:: {
    '#new':: d.fn(help='\n`google.pubsub_lite_topic.reservation_config.new` constructs a new object with attributes and blocks configured for the `reservation_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `throughput_reservation` (`string`): The Reservation to use for this topic&#39;s throughput capacity. When `null`, the `throughput_reservation` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reservation_config` sub block.\n', args=[]),
    new(
      throughput_reservation=null
    ):: std.prune(a={
      throughput_reservation: throughput_reservation,
    }),
  },
  retention_config:: {
    '#new':: d.fn(help='\n`google.pubsub_lite_topic.retention_config.new` constructs a new object with attributes and blocks configured for the `retention_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `per_partition_bytes` (`string`): The provisioned storage, in bytes, per partition. If the number of bytes stored\nin any of the topic&#39;s partitions grows beyond this value, older messages will be\ndropped to make room for newer ones, regardless of the value of period.\n  - `period` (`string`): How long a published message is retained. If unset, messages will be retained as\nlong as the bytes retained for each partition is below perPartitionBytes. A\nduration in seconds with up to nine fractional digits, terminated by &#39;s&#39;.\nExample: &#34;3.5s&#34;. When `null`, the `period` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retention_config` sub block.\n', args=[]),
    new(
      per_partition_bytes,
      period=null
    ):: std.prune(a={
      per_partition_bytes: per_partition_bytes,
      period: period,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.pubsub_lite_topic.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withName':: d.fn(help='`google.pubsub_lite_topic.withName` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPartitionConfig':: d.fn(help='`google.pubsub_lite_topic.withPartitionConfig` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the partition_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `partition_config` field.\n', args=[]),
  withPartitionConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          partition_config: value,
        },
      },
    },
  },
  '#withPartitionConfigMixin':: d.fn(help='`google.pubsub_lite_topic.withPartitionConfigMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the partition_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.pubsub_lite_topic.withPartitionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `partition_config` field.\n', args=[]),
  withPartitionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          partition_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.pubsub_lite_topic.withProject` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.pubsub_lite_topic.withRegion` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReservationConfig':: d.fn(help='`google.pubsub_lite_topic.withReservationConfig` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the reservation_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `reservation_config` field.\n', args=[]),
  withReservationConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          reservation_config: value,
        },
      },
    },
  },
  '#withReservationConfigMixin':: d.fn(help='`google.pubsub_lite_topic.withReservationConfigMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the reservation_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.pubsub_lite_topic.withReservationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `reservation_config` field.\n', args=[]),
  withReservationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          reservation_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRetentionConfig':: d.fn(help='`google.pubsub_lite_topic.withRetentionConfig` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the retention_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `retention_config` field.\n', args=[]),
  withRetentionConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          retention_config: value,
        },
      },
    },
  },
  '#withRetentionConfigMixin':: d.fn(help='`google.pubsub_lite_topic.withRetentionConfigMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the retention_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.pubsub_lite_topic.withRetentionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `retention_config` field.\n', args=[]),
  withRetentionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          retention_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.pubsub_lite_topic.withTimeouts` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.pubsub_lite_topic.withTimeoutsMixin` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.pubsub_lite_topic.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.pubsub_lite_topic.withZone` constructs a mixin object that can be merged into the `pubsub_lite_topic`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
