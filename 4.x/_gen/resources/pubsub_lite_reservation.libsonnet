local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='pubsub_lite_reservation', url='', help='`pubsub_lite_reservation` represents the `google_pubsub_lite_reservation` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.pubsub_lite_reservation.new` injects a new `google_pubsub_lite_reservation` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.pubsub_lite_reservation.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.pubsub_lite_reservation` using the reference:\n\n    $._ref.google_pubsub_lite_reservation.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_pubsub_lite_reservation.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): Name of the reservation.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the pubsub lite reservation. When `null`, the `region` field will be omitted from the resulting object.\n  - `throughput_capacity` (`number`): The reserved throughput capacity. Every unit of throughput capacity is\nequivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed\nmessages.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_reservation.timeouts.new](#fn-pubsublitereservationtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    throughput_capacity,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_lite_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      region=region,
      throughput_capacity=throughput_capacity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.pubsub_lite_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_lite_reservation`\nTerraform resource.\n\nUnlike [google.pubsub_lite_reservation.new](#fn-pubsublitereservationnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): Name of the reservation.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the pubsub lite reservation. When `null`, the `region` field will be omitted from the resulting object.\n  - `throughput_capacity` (`number`): The reserved throughput capacity. Every unit of throughput capacity is\nequivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed\nmessages.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_reservation.timeouts.new](#fn-pubsublitereservationtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_lite_reservation` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    throughput_capacity,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    project: project,
    region: region,
    throughput_capacity: throughput_capacity,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.pubsub_lite_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withName':: d.fn(help='`google.pubsub_lite_reservation.withName` constructs a mixin object that can be merged into the `pubsub_lite_reservation`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.pubsub_lite_reservation.withProject` constructs a mixin object that can be merged into the `pubsub_lite_reservation`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.pubsub_lite_reservation.withRegion` constructs a mixin object that can be merged into the `pubsub_lite_reservation`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withThroughputCapacity':: d.fn(help='`google.pubsub_lite_reservation.withThroughputCapacity` constructs a mixin object that can be merged into the `pubsub_lite_reservation`\nTerraform resource block to set or update the throughput_capacity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `throughput_capacity` field.\n', args=[]),
  withThroughputCapacity(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          throughput_capacity: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.pubsub_lite_reservation.withTimeouts` constructs a mixin object that can be merged into the `pubsub_lite_reservation`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.pubsub_lite_reservation.withTimeoutsMixin` constructs a mixin object that can be merged into the `pubsub_lite_reservation`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.pubsub_lite_reservation.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
