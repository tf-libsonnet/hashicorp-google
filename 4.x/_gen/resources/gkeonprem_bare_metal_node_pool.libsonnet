local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gkeonprem_bare_metal_node_pool', url='', help='`gkeonprem_bare_metal_node_pool` represents the `google_gkeonprem_bare_metal_node_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.gkeonprem_bare_metal_node_pool.new` injects a new `google_gkeonprem_bare_metal_node_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gkeonprem_bare_metal_node_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gkeonprem_bare_metal_node_pool` using the reference:\n\n    $._ref.google_gkeonprem_bare_metal_node_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gkeonprem_bare_metal_node_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Annotations on the Bare Metal Node Pool.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `bare_metal_cluster` (`string`): The cluster this node pool belongs to.\n  - `display_name` (`string`): The display name for the Bare Metal Node Pool. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The bare metal node pool name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `node_pool_config` (`list[obj]`): Node pool configuration. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_node_pool.node_pool_config.new](#fn-node_pool_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bare_metal_cluster,
    location,
    name,
    annotations=null,
    display_name=null,
    node_pool_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gkeonprem_bare_metal_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      bare_metal_cluster=bare_metal_cluster,
      display_name=display_name,
      location=location,
      name=name,
      node_pool_config=node_pool_config,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gkeonprem_bare_metal_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_bare_metal_node_pool`\nTerraform resource.\n\nUnlike [google.gkeonprem_bare_metal_node_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Annotations on the Bare Metal Node Pool.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `bare_metal_cluster` (`string`): The cluster this node pool belongs to.\n  - `display_name` (`string`): The display name for the Bare Metal Node Pool. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The bare metal node pool name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `node_pool_config` (`list[obj]`): Node pool configuration. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_node_pool.node_pool_config.new](#fn-node_pool_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_bare_metal_node_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bare_metal_cluster,
    location,
    name,
    annotations=null,
    display_name=null,
    node_pool_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    bare_metal_cluster: bare_metal_cluster,
    display_name: display_name,
    location: location,
    name: name,
    node_pool_config: node_pool_config,
    project: project,
    timeouts: timeouts,
  }),
  node_pool_config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_node_pool.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `operating_system` (`string`): Specifies the nodes operating system (default: LINUX). When `null`, the `operating_system` field will be omitted from the resulting object.\n  - `node_configs` (`list[obj]`): The list of machine addresses in the Bare Metal Node Pool. When `null`, the `node_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_node_pool.node_pool_config.node_configs.new](#fn-node_pool_confignode_configsnew) constructor.\n  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_node_pool.node_pool_config.taints.new](#fn-node_pool_configtaintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_config` sub block.\n', args=[]),
    new(
      labels=null,
      node_configs=null,
      operating_system=null,
      taints=null
    ):: std.prune(a={
      labels: labels,
      node_configs: node_configs,
      operating_system: operating_system,
      taints: taints,
    }),
    node_configs:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_node_pool.node_pool_config.node_configs.new` constructs a new object with attributes and blocks configured for the `node_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `node_ip` (`string`): The default IPv4 address for SSH access and Kubernetes node.\nExample: 192.168.0.1 When `null`, the `node_ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_configs` sub block.\n', args=[]),
      new(
        labels=null,
        node_ip=null
      ):: std.prune(a={
        labels: labels,
        node_ip: node_ip,
      }),
    },
    taints:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_node_pool.node_pool_config.taints.new` constructs a new object with attributes and blocks configured for the `taints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `effect` (`string`): Specifies the nodes operating system (default: LINUX). Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.\n  - `key` (`string`): Key associated with the effect. When `null`, the `key` field will be omitted from the resulting object.\n  - `value` (`string`): Value associated with the effect. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `taints` sub block.\n', args=[]),
      new(
        effect=null,
        key=null,
        value=null
      ):: std.prune(a={
        effect: effect,
        key: key,
        value: value,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withBareMetalCluster':: d.fn(help='`google.string.withBareMetalCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bare_metal_cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bare_metal_cluster` field.\n', args=[]),
  withBareMetalCluster(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          bare_metal_cluster: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodePoolConfig':: d.fn(help='`google.list[obj].withNodePoolConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodePoolConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool_config` field.\n', args=[]),
  withNodePoolConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          node_pool_config: value,
        },
      },
    },
  },
  '#withNodePoolConfigMixin':: d.fn(help='`google.list[obj].withNodePoolConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodePoolConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool_config` field.\n', args=[]),
  withNodePoolConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          node_pool_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
