local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_group', url='', help='`monitoring_group` represents the `google_monitoring_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.monitoring_group.new` injects a new `google_monitoring_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_group` using the reference:\n\n    $._ref.google_monitoring_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): A user-assigned name for this group, used only for display\npurposes.\n  - `filter` (`string`): The filter used to determine which monitored resources\nbelong to this group.\n  - `is_cluster` (`bool`): If true, the members of this group are considered to be a\ncluster. The system can perform additional analysis on\ngroups that are clusters. When `null`, the `is_cluster` field will be omitted from the resulting object.\n  - `parent_name` (`string`): The name of the group\u0026#39;s parent, if it has one. The format is\n\u0026#34;projects/{project_id_or_number}/groups/{group_id}\u0026#34;. For\ngroups with no parent, parentName is the empty string, \u0026#34;\u0026#34;. When `null`, the `parent_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_group.timeouts.new](#fn-monitoringgrouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    filter,
    is_cluster=null,
    parent_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      filter=filter,
      is_cluster=is_cluster,
      parent_name=parent_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_group.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_group`\nTerraform resource.\n\nUnlike [google.monitoring_group.new](#fn-monitoringgroupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): A user-assigned name for this group, used only for display\npurposes.\n  - `filter` (`string`): The filter used to determine which monitored resources\nbelong to this group.\n  - `is_cluster` (`bool`): If true, the members of this group are considered to be a\ncluster. The system can perform additional analysis on\ngroups that are clusters. When `null`, the `is_cluster` field will be omitted from the resulting object.\n  - `parent_name` (`string`): The name of the group&#39;s parent, if it has one. The format is\n&#34;projects/{project_id_or_number}/groups/{group_id}&#34;. For\ngroups with no parent, parentName is the empty string, &#34;&#34;. When `null`, the `parent_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_group.timeouts.new](#fn-monitoringgrouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    filter,
    is_cluster=null,
    parent_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    filter: filter,
    is_cluster: is_cluster,
    parent_name: parent_name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withIsCluster':: d.fn(help='`google.bool.withIsCluster` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_cluster` field.\n', args=[]),
  withIsCluster(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          is_cluster: value,
        },
      },
    },
  },
  '#withParentName':: d.fn(help='`google.string.withParentName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent_name` field.\n', args=[]),
  withParentName(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          parent_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
