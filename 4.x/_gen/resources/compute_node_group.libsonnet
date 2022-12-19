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
  '#new':: d.fn(help="\n`google.compute_node_group.new` injects a new `google_compute_node_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_node_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_node_group` using the reference:\n\n    $._ref.google_compute_node_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_node_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `initial_size` (`number`): The initial number of nodes in the node group. One of \u0026#39;initial_size\u0026#39; or \u0026#39;size\u0026#39; must be specified. When `null`, the `initial_size` field will be omitted from the resulting object.\n  - `maintenance_policy` (`string`): Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. When `null`, the `maintenance_policy` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.\n  - `node_template` (`string`): The URL of the node template to which this node group belongs.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `size` (`number`): The total number of nodes in the node group. One of \u0026#39;initial_size\u0026#39; or \u0026#39;size\u0026#39; must be specified. When `null`, the `size` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where this node group is located When `null`, the `zone` field will be omitted from the resulting object.\n  - `autoscaling_policy` (`list[obj]`): If you use sole-tenant nodes for your workloads, you can use the node\ngroup autoscaler to automatically manage the sizes of your node groups. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.autoscaling_policy.new](#fn-computenodegroupautoscalingpolicynew) constructor.\n  - `maintenance_window` (`list[obj]`): contains properties for the timeframe of maintenance When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.maintenance_window.new](#fn-computenodegroupmaintenancewindownew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.timeouts.new](#fn-computenodegrouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
    size=null,
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
      size=size,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_node_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_node_group`\nTerraform resource.\n\nUnlike [google.compute_node_group.new](#fn-computenodegroupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `initial_size` (`number`): The initial number of nodes in the node group. One of &#39;initial_size&#39; or &#39;size&#39; must be specified. When `null`, the `initial_size` field will be omitted from the resulting object.\n  - `maintenance_policy` (`string`): Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. When `null`, the `maintenance_policy` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.\n  - `node_template` (`string`): The URL of the node template to which this node group belongs.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `size` (`number`): The total number of nodes in the node group. One of &#39;initial_size&#39; or &#39;size&#39; must be specified. When `null`, the `size` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where this node group is located When `null`, the `zone` field will be omitted from the resulting object.\n  - `autoscaling_policy` (`list[obj]`): If you use sole-tenant nodes for your workloads, you can use the node\ngroup autoscaler to automatically manage the sizes of your node groups. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.autoscaling_policy.new](#fn-computenodegroupautoscalingpolicynew) constructor.\n  - `maintenance_window` (`list[obj]`): contains properties for the timeframe of maintenance When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.maintenance_window.new](#fn-computenodegroupmaintenancewindownew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_group.timeouts.new](#fn-computenodegrouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_node_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    node_template,
    autoscaling_policy=null,
    description=null,
    initial_size=null,
    maintenance_policy=null,
    maintenance_window=null,
    name=null,
    project=null,
    size=null,
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
    size: size,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_node_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoscalingPolicy':: d.fn(help='`google.compute_node_group.withAutoscalingPolicy` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the autoscaling_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `autoscaling_policy` field.\n', args=[]),
  withAutoscalingPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          autoscaling_policy: value,
        },
      },
    },
  },
  '#withAutoscalingPolicyMixin':: d.fn(help='`google.compute_node_group.withAutoscalingPolicyMixin` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the autoscaling_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.compute_node_group.withAutoscalingPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `autoscaling_policy` field.\n', args=[]),
  withAutoscalingPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          autoscaling_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.compute_node_group.withDescription` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withInitialSize':: d.fn(help='`google.compute_node_group.withInitialSize` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the initial_size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `initial_size` field.\n', args=[]),
  withInitialSize(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          initial_size: value,
        },
      },
    },
  },
  '#withMaintenancePolicy':: d.fn(help='`google.compute_node_group.withMaintenancePolicy` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the maintenance_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicy(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  '#withMaintenanceWindow':: d.fn(help='`google.compute_node_group.withMaintenanceWindow` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the maintenance_window field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindow(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_window: value,
        },
      },
    },
  },
  '#withMaintenanceWindowMixin':: d.fn(help='`google.compute_node_group.withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the maintenance_window field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.compute_node_group.withMaintenanceWindow](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `maintenance_window` field.\n', args=[]),
  withMaintenanceWindowMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_window+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.compute_node_group.withName` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeTemplate':: d.fn(help='`google.compute_node_group.withNodeTemplate` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the node_template field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `node_template` field.\n', args=[]),
  withNodeTemplate(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          node_template: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_node_group.withProject` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSize':: d.fn(help='`google.compute_node_group.withSize` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `size` field.\n', args=[]),
  withSize(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_node_group.withTimeouts` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_node_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_node_group.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.compute_node_group.withZone` constructs a mixin object that can be merged into the `compute_node_group`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
