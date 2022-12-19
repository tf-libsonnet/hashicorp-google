local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_service_split_traffic', url='', help='`app_engine_service_split_traffic` represents the `google_app_engine_service_split_traffic` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.app_engine_service_split_traffic.new` injects a new `google_app_engine_service_split_traffic` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_service_split_traffic.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_service_split_traffic` using the reference:\n\n    $._ref.google_app_engine_service_split_traffic.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_service_split_traffic.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `migrate_traffic` (`bool`): If set to true traffic will be migrated to this version. When `null`, the `migrate_traffic` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service these settings apply to.\n  - `split` (`list[obj]`): Mapping that defines fractional HTTP traffic diversion to different versions within the service. When `null`, the `split` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.split.new](#fn-app_engine_service_split_trafficsplitnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.timeouts.new](#fn-app_engine_service_split_traffictimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service,
    migrate_traffic=null,
    project=null,
    split=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_service_split_traffic',
    label=resourceLabel,
    attrs=self.newAttrs(
      migrate_traffic=migrate_traffic,
      project=project,
      service=service,
      split=split,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_service_split_traffic.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_service_split_traffic`\nTerraform resource.\n\nUnlike [google.app_engine_service_split_traffic.new](#fn-app_engine_service_split_trafficnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `migrate_traffic` (`bool`): If set to true traffic will be migrated to this version. When `null`, the `migrate_traffic` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service these settings apply to.\n  - `split` (`list[obj]`): Mapping that defines fractional HTTP traffic diversion to different versions within the service. When `null`, the `split` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.split.new](#fn-app_engine_service_split_trafficsplitnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.timeouts.new](#fn-app_engine_service_split_traffictimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_service_split_traffic` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service,
    migrate_traffic=null,
    project=null,
    split=null,
    timeouts=null
  ):: std.prune(a={
    migrate_traffic: migrate_traffic,
    project: project,
    service: service,
    split: split,
    timeouts: timeouts,
  }),
  split:: {
    '#new':: d.fn(help='\n`google.app_engine_service_split_traffic.split.new` constructs a new object with attributes and blocks configured for the `split`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allocations` (`obj`): Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.\n  - `shard_by` (`string`): Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed. Possible values: [&#34;UNSPECIFIED&#34;, &#34;COOKIE&#34;, &#34;IP&#34;, &#34;RANDOM&#34;] When `null`, the `shard_by` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `split` sub block.\n', args=[]),
    new(
      allocations,
      shard_by=null
    ):: std.prune(a={
      allocations: allocations,
      shard_by: shard_by,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_service_split_traffic.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withMigrateTraffic':: d.fn(help='`google.bool.withMigrateTraffic` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the migrate_traffic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `migrate_traffic` field.\n', args=[]),
  withMigrateTraffic(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          migrate_traffic: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withSplit':: d.fn(help='`google.list[obj].withSplit` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the split field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSplitMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `split` field.\n', args=[]),
  withSplit(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          split: value,
        },
      },
    },
  },
  '#withSplitMixin':: d.fn(help='`google.list[obj].withSplitMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the split field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSplit](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `split` field.\n', args=[]),
  withSplitMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          split+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
