local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gkeonprem_vmware_node_pool', url='', help='`gkeonprem_vmware_node_pool` represents the `google_gkeonprem_vmware_node_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_node_pool.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): VMware disk size to be used during creation. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `cpus` (`number`): The number of CPUs for each node in the node pool. When `null`, the `cpus` field will be omitted from the resulting object.\n  - `enable_load_balancer` (`bool`): Allow node pool traffic to be load balanced. Only works for clusters with\nMetalLB load balancers. When `null`, the `enable_load_balancer` field will be omitted from the resulting object.\n  - `image` (`string`): The OS image name in vCenter, only valid when using Windows. When `null`, the `image` field will be omitted from the resulting object.\n  - `image_type` (`string`): The OS image to be used for each node in a node pool.\nCurrently &#39;cos&#39;, &#39;ubuntu&#39;, &#39;ubuntu_containerd&#39; and &#39;windows&#39; are supported.\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to each node.\nThese will added in addition to any default label(s) that\nKubernetes may apply to the node.\nIn case of conflict in label keys, the applied set may differ depending on\nthe Kubernetes version -- it&#39;s best to assume the behavior is undefined\nand conflicts should be avoided. When `null`, the `labels` field will be omitted from the resulting object.\n  - `memory_mb` (`number`): The megabytes of memory for each node in the node pool. When `null`, the `memory_mb` field will be omitted from the resulting object.\n  - `replicas` (`number`): The number of nodes in the node pool. When `null`, the `replicas` field will be omitted from the resulting object.\n  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.config.taints.new](#fn-configtaintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
    new(
      image_type,
      boot_disk_size_gb=null,
      cpus=null,
      enable_load_balancer=null,
      image=null,
      labels=null,
      memory_mb=null,
      replicas=null,
      taints=null
    ):: std.prune(a={
      boot_disk_size_gb: boot_disk_size_gb,
      cpus: cpus,
      enable_load_balancer: enable_load_balancer,
      image: image,
      image_type: image_type,
      labels: labels,
      memory_mb: memory_mb,
      replicas: replicas,
      taints: taints,
    }),
    taints:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_node_pool.config.taints.new` constructs a new object with attributes and blocks configured for the `taints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `effect` (`string`): Available taint effects. Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;NO_SCHEDULE&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.\n  - `key` (`string`): Key associated with the effect.\n  - `value` (`string`): Value associated with the effect.\n\n**Returns**:\n  - An attribute object that represents the `taints` sub block.\n', args=[]),
      new(
        key,
        value,
        effect=null
      ):: std.prune(a={
        effect: effect,
        key: key,
        value: value,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.gkeonprem_vmware_node_pool.new` injects a new `google_gkeonprem_vmware_node_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gkeonprem_vmware_node_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gkeonprem_vmware_node_pool` using the reference:\n\n    $._ref.google_gkeonprem_vmware_node_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gkeonprem_vmware_node_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Annotations on the node Pool.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name for the node pool. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The vmware node pool name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `vmware_cluster` (`string`): The cluster this node pool belongs to.\n  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.config.new](#fn-confignew) constructor.\n  - `node_pool_autoscaling` (`list[obj]`): Node Pool autoscaling config for the node pool. When `null`, the `node_pool_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.node_pool_autoscaling.new](#fn-node_pool_autoscalingnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    vmware_cluster,
    annotations=null,
    config=null,
    display_name=null,
    node_pool_autoscaling=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gkeonprem_vmware_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      config=config,
      display_name=display_name,
      location=location,
      name=name,
      node_pool_autoscaling=node_pool_autoscaling,
      project=project,
      timeouts=timeouts,
      vmware_cluster=vmware_cluster
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gkeonprem_vmware_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_vmware_node_pool`\nTerraform resource.\n\nUnlike [google.gkeonprem_vmware_node_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Annotations on the node Pool.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name for the node pool. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The vmware node pool name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `vmware_cluster` (`string`): The cluster this node pool belongs to.\n  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.config.new](#fn-confignew) constructor.\n  - `node_pool_autoscaling` (`list[obj]`): Node Pool autoscaling config for the node pool. When `null`, the `node_pool_autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.node_pool_autoscaling.new](#fn-node_pool_autoscalingnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_vmware_node_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    vmware_cluster,
    annotations=null,
    config=null,
    display_name=null,
    node_pool_autoscaling=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    config: config,
    display_name: display_name,
    location: location,
    name: name,
    node_pool_autoscaling: node_pool_autoscaling,
    project: project,
    timeouts: timeouts,
    vmware_cluster: vmware_cluster,
  }),
  node_pool_autoscaling:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_node_pool.node_pool_autoscaling.new` constructs a new object with attributes and blocks configured for the `node_pool_autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_replicas` (`number`): Maximum number of replicas in the NodePool.\n  - `min_replicas` (`number`): Minimum number of replicas in the NodePool.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_autoscaling` sub block.\n', args=[]),
    new(
      max_replicas,
      min_replicas
    ):: std.prune(a={
      max_replicas: max_replicas,
      min_replicas: min_replicas,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withConfig':: d.fn(help='`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodePoolAutoscaling':: d.fn(help='`google.list[obj].withNodePoolAutoscaling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool_autoscaling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodePoolAutoscalingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool_autoscaling` field.\n', args=[]),
  withNodePoolAutoscaling(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          node_pool_autoscaling: value,
        },
      },
    },
  },
  '#withNodePoolAutoscalingMixin':: d.fn(help='`google.list[obj].withNodePoolAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_pool_autoscaling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodePoolAutoscaling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_pool_autoscaling` field.\n', args=[]),
  withNodePoolAutoscalingMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          node_pool_autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVmwareCluster':: d.fn(help='`google.string.withVmwareCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vmware_cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vmware_cluster` field.\n', args=[]),
  withVmwareCluster(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_node_pool+: {
        [resourceLabel]+: {
          vmware_cluster: value,
        },
      },
    },
  },
}
