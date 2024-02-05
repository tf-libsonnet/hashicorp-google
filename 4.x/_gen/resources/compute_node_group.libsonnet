local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_node_group', url='', help='`compute_node_group` represents the `google_compute_node_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoscaling_policy:: {
    '#new':: d.fn(help='\n`google.compute_node_group.autoscaling_policy.new` constructs a new object with attributes and blocks configured for the `autoscaling_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_nodes` (`number`): Maximum size of the node group. Set to a value less than or equal\nto 100 and greater than or equal to min-nodes. When `null`, the `max_nodes` field will be omitted from the resulting object.\n  - `min_nodes` (`number`): Minimum size of the node group. Must be less\nthan or equal to max-nodes. The default value is 0. When `null`, the `min_nodes` field will be omitted from the resulting object.\n  - `mode` (`string`): The autoscaling mode. Set to one of the following:\n  - OFF: Disables the autoscaler.\n  - ON: Enables scaling in and scaling out.\n  - ONLY_SCALE_OUT: Enables only scaling out.\n  You must use this mode if your node groups are configured to\n  restart their hosted VMs on minimal servers. Possible values: [&#34;OFF&#34;, &#34;ON&#34;, &#34;ONLY_SCALE_OUT&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_policy` sub block.\n', args=[]),
    new(
      max_nodes=null,
      min_nodes=null,
      mode=null
    ):: std.prune(a={
      max_nodes: max_nodes,
      min_nodes: min_nodes,
      mode: mode,
    }),
  },
  maintenance_window:: {
    '#new':: d.fn(help='\n`google.compute_node_group.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `start_time` (`string`): instances.start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_window` sub block.\n', args=[]),
    new(
      start_time
    ):: std.prune(a={
      start_time: start_time,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_node_group.new` injects a new `google_compute_node_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_node_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_node_group` using the reference:\n\n    $._ref.google_compute_node_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_node_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `initial_size` (`number`): The initial number of nodes in the node group. One of \u0026#39;initial_size\u0026#39; or \u0026#39;autoscaling_policy\u0026#39; must be configured on resource creation. When `null`, the `initial_size` field will be omitted from the resulting object.\n  - `maintenance_policy` (`string`): Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. When `null`, the `maintenance_policy` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.\n  - `node_template` (`string`): The URL of the node template to which this node group belongs.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where this node group is located When `null`, the `zone` field will be omitted from the resulting object.\n  - `autoscaling_policy` (`list[obj]`): If you use sole-tenant nodes for your workloads, you can use the node\ngroup autoscaler to automatically manage the sizes of your node groups.\n\nOne of \u0026#39;initial_size\u0026#39; or \u0026#39;autoscaling_policy\u0026#39; must be configured on resource creation. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.\n  - `maintenance_window` (`list[obj]`): contains properties for the timeframe of maintenance When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.maintenance_window.new](#fn-maintenance_windownew) constructor.\n  - `share_settings` (`list[obj]`): Share settings for the node group. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.share_settings.new](#fn-share_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    node_template,
    autoscaling_policy=null,
    description=null,
    initial_size=null,
    maintenance_policy=null,
    maintenance_window=null,
    name=null,
    project=null,
    share_settings=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_node_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling_policy=autoscaling_policy,
      description=description,
      initial_size=initial_size,
      maintenance_policy=maintenance_policy,
      maintenance_window=maintenance_window,
      name=name,
      node_template=node_template,
      project=project,
      share_settings=share_settings,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_node_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_node_group`\nTerraform resource.\n\nUnlike [google.compute_node_group.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `initial_size` (`number`): The initial number of nodes in the node group. One of &#39;initial_size&#39; or &#39;autoscaling_policy&#39; must be configured on resource creation. When `null`, the `initial_size` field will be omitted from the resulting object.\n  - `maintenance_policy` (`string`): Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. When `null`, the `maintenance_policy` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.\n  - `node_template` (`string`): The URL of the node template to which this node group belongs.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where this node group is located When `null`, the `zone` field will be omitted from the resulting object.\n  - `autoscaling_policy` (`list[obj]`): If you use sole-tenant nodes for your workloads, you can use the node\ngroup autoscaler to automatically manage the sizes of your node groups.\n\nOne of &#39;initial_size&#39; or &#39;autoscaling_policy&#39; must be configured on resource creation. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.\n  - `maintenance_window` (`list[obj]`): contains properties for the timeframe of maintenance When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.maintenance_window.new](#fn-maintenance_windownew) constructor.\n  - `share_settings` (`list[obj]`): Share settings for the node group. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.share_settings.new](#fn-share_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_node_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    node_template,
    autoscaling_policy=null,
    description=null,
    initial_size=null,
    maintenance_policy=null,
    maintenance_window=null,
    name=null,
    project=null,
    share_settings=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    autoscaling_policy: autoscaling_policy,
    description: description,
    initial_size: initial_size,
    maintenance_policy: maintenance_policy,
    maintenance_window: maintenance_window,
    name: name,
    node_template: node_template,
    project: project,
    share_settings: share_settings,
    timeouts: timeouts,
    zone: zone,
  }),
  share_settings:: {
    '#new':: d.fn(help='\n`google.compute_node_group.share_settings.new` constructs a new object with attributes and blocks configured for the `share_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `share_type` (`string`): Node group sharing type. Possible values: [&#34;ORGANIZATION&#34;, &#34;SPECIFIC_PROJECTS&#34;, &#34;LOCAL&#34;]\n  - `project_map` (`list[obj]`): A map of project id and project config. This is only valid when shareType&#39;s value is SPECIFIC_PROJECTS. When `null`, the `project_map` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.share_settings.project_map.new](#fn-share_settingsproject_mapnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `share_settings` sub block.\n', args=[]),
    new(
      share_type,
      project_map=null
    ):: std.prune(a={
      project_map: project_map,
      share_type: share_type,
    }),
    project_map:: {
      '#new':: d.fn(help='\n`google.compute_node_group.share_settings.project_map.new` constructs a new object with attributes and blocks configured for the `project_map`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project_id` (`string`): The project id/number should be the same as the key of this project config in the project map.\n\n**Returns**:\n  - An attribute object that represents the `project_map` sub block.\n', args=[]),
      new(
        project_id
      ):: std.prune(a={
        project_id: project_id,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_node_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoscalingPolicy':: d.fn(help='`google.list[obj].withAutoscalingPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoscalingPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.\n', args=[]),
  withAutoscalingPolicy(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          autoscaling_policy: value,
        },
      },
    },
  },
  '#withAutoscalingPolicyMixin':: d.fn(help='`google.list[obj].withAutoscalingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscalingPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.\n', args=[]),
  withAutoscalingPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          autoscaling_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withInitialSize':: d.fn(help='`google.number.withInitialSize` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the initial_size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `initial_size` field.\n', args=[]),
  withInitialSize(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          initial_size: value,
        },
      },
    },
  },
  '#withMaintenancePolicy':: d.fn(help='`google.string.withMaintenancePolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the maintenance_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicy(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  '#withMaintenanceWindow':: d.fn(help='`google.list[obj].withMaintenanceWindow` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenanceWindowMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindow(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_window: value,
        },
      },
    },
  },
  '#withMaintenanceWindowMixin':: d.fn(help='`google.list[obj].withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceWindow](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindowMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_window+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeTemplate':: d.fn(help='`google.string.withNodeTemplate` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the node_template field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `node_template` field.\n', args=[]),
  withNodeTemplate(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          node_template: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withShareSettings':: d.fn(help='`google.list[obj].withShareSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the share_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withShareSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `share_settings` field.\n', args=[]),
  withShareSettings(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          share_settings: value,
        },
      },
    },
  },
  '#withShareSettingsMixin':: d.fn(help='`google.list[obj].withShareSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the share_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withShareSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `share_settings` field.\n', args=[]),
  withShareSettingsMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          share_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
