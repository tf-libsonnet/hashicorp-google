local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigtable_app_profile', url='', help='`bigtable_app_profile` represents the `google_bigtable_app_profile` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.bigtable_app_profile.new` injects a new `google_bigtable_app_profile` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigtable_app_profile.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigtable_app_profile` using the reference:\n\n    $._ref.google_bigtable_app_profile.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigtable_app_profile.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `app_profile_id` (`string`): The unique name of the app profile in the form \u0026#39;[_a-zA-Z0-9][-_.a-zA-Z0-9]*\u0026#39;.\n  - `description` (`string`): Long form description of the use case for this app profile. When `null`, the `description` field will be omitted from the resulting object.\n  - `ignore_warnings` (`bool`): If true, ignore safety checks when deleting/updating the app profile. When `null`, the `ignore_warnings` field will be omitted from the resulting object.\n  - `instance` (`string`): The name of the instance to create the app profile within. When `null`, the `instance` field will be omitted from the resulting object.\n  - `multi_cluster_routing_cluster_ids` (`list`): The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible. When `null`, the `multi_cluster_routing_cluster_ids` field will be omitted from the resulting object.\n  - `multi_cluster_routing_use_any` (`bool`): If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available\nin the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes\nconsistency to improve availability. When `null`, the `multi_cluster_routing_use_any` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `single_cluster_routing` (`list[obj]`): Use a single-cluster routing policy. When `null`, the `single_cluster_routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.single_cluster_routing.new](#fn-single_cluster_routingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    app_profile_id,
    description=null,
    ignore_warnings=null,
    instance=null,
    multi_cluster_routing_cluster_ids=null,
    multi_cluster_routing_use_any=null,
    project=null,
    single_cluster_routing=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_app_profile',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_profile_id=app_profile_id,
      description=description,
      ignore_warnings=ignore_warnings,
      instance=instance,
      multi_cluster_routing_cluster_ids=multi_cluster_routing_cluster_ids,
      multi_cluster_routing_use_any=multi_cluster_routing_use_any,
      project=project,
      single_cluster_routing=single_cluster_routing,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigtable_app_profile.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_app_profile`\nTerraform resource.\n\nUnlike [google.bigtable_app_profile.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_profile_id` (`string`): The unique name of the app profile in the form &#39;[_a-zA-Z0-9][-_.a-zA-Z0-9]*&#39;.\n  - `description` (`string`): Long form description of the use case for this app profile. When `null`, the `description` field will be omitted from the resulting object.\n  - `ignore_warnings` (`bool`): If true, ignore safety checks when deleting/updating the app profile. When `null`, the `ignore_warnings` field will be omitted from the resulting object.\n  - `instance` (`string`): The name of the instance to create the app profile within. When `null`, the `instance` field will be omitted from the resulting object.\n  - `multi_cluster_routing_cluster_ids` (`list`): The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible. When `null`, the `multi_cluster_routing_cluster_ids` field will be omitted from the resulting object.\n  - `multi_cluster_routing_use_any` (`bool`): If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available\nin the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes\nconsistency to improve availability. When `null`, the `multi_cluster_routing_use_any` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `single_cluster_routing` (`list[obj]`): Use a single-cluster routing policy. When `null`, the `single_cluster_routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.single_cluster_routing.new](#fn-single_cluster_routingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_app_profile` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    app_profile_id,
    description=null,
    ignore_warnings=null,
    instance=null,
    multi_cluster_routing_cluster_ids=null,
    multi_cluster_routing_use_any=null,
    project=null,
    single_cluster_routing=null,
    timeouts=null
  ):: std.prune(a={
    app_profile_id: app_profile_id,
    description: description,
    ignore_warnings: ignore_warnings,
    instance: instance,
    multi_cluster_routing_cluster_ids: multi_cluster_routing_cluster_ids,
    multi_cluster_routing_use_any: multi_cluster_routing_use_any,
    project: project,
    single_cluster_routing: single_cluster_routing,
    timeouts: timeouts,
  }),
  single_cluster_routing:: {
    '#new':: d.fn(help='\n`google.bigtable_app_profile.single_cluster_routing.new` constructs a new object with attributes and blocks configured for the `single_cluster_routing`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_transactional_writes` (`bool`): If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.\nIt is unsafe to send these requests to the same table/row/column in multiple clusters. When `null`, the `allow_transactional_writes` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The cluster to which read/write requests should be routed.\n\n**Returns**:\n  - An attribute object that represents the `single_cluster_routing` sub block.\n', args=[]),
    new(
      cluster_id,
      allow_transactional_writes=null
    ):: std.prune(a={
      allow_transactional_writes: allow_transactional_writes,
      cluster_id: cluster_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigtable_app_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAppProfileId':: d.fn(help='`google.string.withAppProfileId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the app_profile_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `app_profile_id` field.\n', args=[]),
  withAppProfileId(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          app_profile_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIgnoreWarnings':: d.fn(help='`google.bool.withIgnoreWarnings` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the ignore_warnings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `ignore_warnings` field.\n', args=[]),
  withIgnoreWarnings(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          ignore_warnings: value,
        },
      },
    },
  },
  '#withInstance':: d.fn(help='`google.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withMultiClusterRoutingClusterIds':: d.fn(help='`google.list.withMultiClusterRoutingClusterIds` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the multi_cluster_routing_cluster_ids field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `multi_cluster_routing_cluster_ids` field.\n', args=[]),
  withMultiClusterRoutingClusterIds(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          multi_cluster_routing_cluster_ids: value,
        },
      },
    },
  },
  '#withMultiClusterRoutingUseAny':: d.fn(help='`google.bool.withMultiClusterRoutingUseAny` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the multi_cluster_routing_use_any field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `multi_cluster_routing_use_any` field.\n', args=[]),
  withMultiClusterRoutingUseAny(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          multi_cluster_routing_use_any: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSingleClusterRouting':: d.fn(help='`google.list[obj].withSingleClusterRouting` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the single_cluster_routing field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSingleClusterRoutingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `single_cluster_routing` field.\n', args=[]),
  withSingleClusterRouting(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          single_cluster_routing: value,
        },
      },
    },
  },
  '#withSingleClusterRoutingMixin':: d.fn(help='`google.list[obj].withSingleClusterRoutingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the single_cluster_routing field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSingleClusterRouting](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `single_cluster_routing` field.\n', args=[]),
  withSingleClusterRoutingMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          single_cluster_routing+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
