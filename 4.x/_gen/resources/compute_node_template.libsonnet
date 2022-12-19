local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_node_template', url='', help='`compute_node_template` represents the `google_compute_node_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_node_template.new` injects a new `google_compute_node_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_node_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_node_template` using the reference:\n\n    $._ref.google_compute_node_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_node_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cpu_overcommit_type` (`string`): CPU overcommit. Default value: \u0026#34;NONE\u0026#34; Possible values: [\u0026#34;ENABLED\u0026#34;, \u0026#34;NONE\u0026#34;] When `null`, the `cpu_overcommit_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.\n  - `node_affinity_labels` (`obj`): Labels to use for node affinity, which will be used in\ninstance scheduling. When `null`, the `node_affinity_labels` field will be omitted from the resulting object.\n  - `node_type` (`string`): Node type to use for nodes group that are created from this template.\nOnly one of nodeTypeFlexibility and nodeType can be specified. When `null`, the `node_type` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where nodes using the node template will be created.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `node_type_flexibility` (`list[obj]`): Flexible properties for the desired node type. Node groups that\nuse this node template will create nodes of a type that matches\nthese properties. Only one of nodeTypeFlexibility and nodeType can\nbe specified. When `null`, the `node_type_flexibility` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.node_type_flexibility.new](#fn-compute_node_templatenode_type_flexibilitynew) constructor.\n  - `server_binding` (`list[obj]`): The server binding policy for nodes using this template. Determines\nwhere the nodes should restart following a maintenance event. When `null`, the `server_binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.server_binding.new](#fn-compute_node_templateserver_bindingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.timeouts.new](#fn-compute_node_templatetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cpu_overcommit_type=null,
    description=null,
    name=null,
    node_affinity_labels=null,
    node_type=null,
    node_type_flexibility=null,
    project=null,
    region=null,
    server_binding=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_node_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      cpu_overcommit_type=cpu_overcommit_type,
      description=description,
      name=name,
      node_affinity_labels=node_affinity_labels,
      node_type=node_type,
      node_type_flexibility=node_type_flexibility,
      project=project,
      region=region,
      server_binding=server_binding,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_node_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_node_template`\nTerraform resource.\n\nUnlike [google.compute_node_template.new](#fn-compute_node_templatenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cpu_overcommit_type` (`string`): CPU overcommit. Default value: &#34;NONE&#34; Possible values: [&#34;ENABLED&#34;, &#34;NONE&#34;] When `null`, the `cpu_overcommit_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional textual description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. When `null`, the `name` field will be omitted from the resulting object.\n  - `node_affinity_labels` (`obj`): Labels to use for node affinity, which will be used in\ninstance scheduling. When `null`, the `node_affinity_labels` field will be omitted from the resulting object.\n  - `node_type` (`string`): Node type to use for nodes group that are created from this template.\nOnly one of nodeTypeFlexibility and nodeType can be specified. When `null`, the `node_type` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where nodes using the node template will be created.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `node_type_flexibility` (`list[obj]`): Flexible properties for the desired node type. Node groups that\nuse this node template will create nodes of a type that matches\nthese properties. Only one of nodeTypeFlexibility and nodeType can\nbe specified. When `null`, the `node_type_flexibility` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.node_type_flexibility.new](#fn-compute_node_templatenode_type_flexibilitynew) constructor.\n  - `server_binding` (`list[obj]`): The server binding policy for nodes using this template. Determines\nwhere the nodes should restart following a maintenance event. When `null`, the `server_binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.server_binding.new](#fn-compute_node_templateserver_bindingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_node_template.timeouts.new](#fn-compute_node_templatetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_node_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cpu_overcommit_type=null,
    description=null,
    name=null,
    node_affinity_labels=null,
    node_type=null,
    node_type_flexibility=null,
    project=null,
    region=null,
    server_binding=null,
    timeouts=null
  ):: std.prune(a={
    cpu_overcommit_type: cpu_overcommit_type,
    description: description,
    name: name,
    node_affinity_labels: node_affinity_labels,
    node_type: node_type,
    node_type_flexibility: node_type_flexibility,
    project: project,
    region: region,
    server_binding: server_binding,
    timeouts: timeouts,
  }),
  node_type_flexibility:: {
    '#new':: d.fn(help='\n`google.compute_node_template.node_type_flexibility.new` constructs a new object with attributes and blocks configured for the `node_type_flexibility`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpus` (`string`): Number of virtual CPUs to use. When `null`, the `cpus` field will be omitted from the resulting object.\n  - `memory` (`string`): Physical memory available to the node, defined in MB. When `null`, the `memory` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_type_flexibility` sub block.\n', args=[]),
    new(
      cpus=null,
      memory=null
    ):: std.prune(a={
      cpus: cpus,
      memory: memory,
    }),
  },
  server_binding:: {
    '#new':: d.fn(help='\n`google.compute_node_template.server_binding.new` constructs a new object with attributes and blocks configured for the `server_binding`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): Type of server binding policy. If &#39;RESTART_NODE_ON_ANY_SERVER&#39;,\nnodes using this template will restart on any physical server\nfollowing a maintenance event.\n\nIf &#39;RESTART_NODE_ON_MINIMAL_SERVER&#39;, nodes using this template\nwill restart on the same physical server following a maintenance\nevent, instead of being live migrated to or restarted on a new\nphysical server. This option may be useful if you are using\nsoftware licenses tied to the underlying server characteristics\nsuch as physical sockets or cores, to avoid the need for\nadditional licenses when maintenance occurs. However, VMs on such\nnodes will experience outages while maintenance is applied. Possible values: [&#34;RESTART_NODE_ON_ANY_SERVER&#34;, &#34;RESTART_NODE_ON_MINIMAL_SERVERS&#34;]\n\n**Returns**:\n  - An attribute object that represents the `server_binding` sub block.\n', args=[]),
    new(
      type
    ):: std.prune(a={
      type: type,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_node_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCpuOvercommitType':: d.fn(help='`google.string.withCpuOvercommitType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cpu_overcommit_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cpu_overcommit_type` field.\n', args=[]),
  withCpuOvercommitType(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          cpu_overcommit_type: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeAffinityLabels':: d.fn(help='`google.obj.withNodeAffinityLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the node_affinity_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `node_affinity_labels` field.\n', args=[]),
  withNodeAffinityLabels(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_affinity_labels: value,
        },
      },
    },
  },
  '#withNodeType':: d.fn(help='`google.string.withNodeType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the node_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `node_type` field.\n', args=[]),
  withNodeType(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_type: value,
        },
      },
    },
  },
  '#withNodeTypeFlexibility':: d.fn(help='`google.list[obj].withNodeTypeFlexibility` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_type_flexibility field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeTypeFlexibilityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_type_flexibility` field.\n', args=[]),
  withNodeTypeFlexibility(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_type_flexibility: value,
        },
      },
    },
  },
  '#withNodeTypeFlexibilityMixin':: d.fn(help='`google.list[obj].withNodeTypeFlexibilityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_type_flexibility field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeTypeFlexibility](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_type_flexibility` field.\n', args=[]),
  withNodeTypeFlexibilityMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_type_flexibility+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withServerBinding':: d.fn(help='`google.list[obj].withServerBinding` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the server_binding field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withServerBindingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `server_binding` field.\n', args=[]),
  withServerBinding(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          server_binding: value,
        },
      },
    },
  },
  '#withServerBindingMixin':: d.fn(help='`google.list[obj].withServerBindingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the server_binding field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withServerBinding](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `server_binding` field.\n', args=[]),
  withServerBindingMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          server_binding+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
