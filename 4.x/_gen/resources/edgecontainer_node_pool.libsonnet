local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='edgecontainer_node_pool', url='', help='`edgecontainer_node_pool` represents the `google_edgecontainer_node_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  local_disk_encryption:: {
    '#new':: d.fn(help='\n`google.edgecontainer_node_pool.local_disk_encryption.new` constructs a new object with attributes and blocks configured for the `local_disk_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key` (`string`): The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.\nIf not specified, a Google-managed key will be used instead. When `null`, the `kms_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `local_disk_encryption` sub block.\n', args=[]),
    new(
      kms_key=null
    ):: std.prune(a={
      kms_key: kms_key,
    }),
  },
  '#new':: d.fn(help="\n`google.edgecontainer_node_pool.new` injects a new `google_edgecontainer_node_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.edgecontainer_node_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.edgecontainer_node_pool` using the reference:\n\n    $._ref.google_edgecontainer_node_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_edgecontainer_node_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster` (`string`): The name of the target Distributed Cloud Edge Cluster.\n  - `labels` (`obj`): Labels associated with this resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `machine_filter` (`string`): Only machines matching this filter will be allowed to join the node pool.\nThe filtering language accepts strings like \u0026#34;name=\u0026lt;name\u0026gt;\u0026#34;, and is\ndocumented in more detail in [AIP-160](https://google.aip.dev/160). When `null`, the `machine_filter` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the node pool.\n  - `node_count` (`number`): The number of nodes in the pool.\n  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: \u0026#39;us-central1-edge-customer-a\u0026#39;.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `local_disk_encryption` (`list[obj]`): Local disk encryption options. This field is only used when enabling CMEK support. When `null`, the `local_disk_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.local_disk_encryption.new](#fn-local_disk_encryptionnew) constructor.\n  - `node_config` (`list[obj]`): Configuration for each node in the NodePool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.node_config.new](#fn-node_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    location,
    name,
    node_count,
    node_location,
    labels=null,
    local_disk_encryption=null,
    machine_filter=null,
    node_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_edgecontainer_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster=cluster,
      labels=labels,
      local_disk_encryption=local_disk_encryption,
      location=location,
      machine_filter=machine_filter,
      name=name,
      node_config=node_config,
      node_count=node_count,
      node_location=node_location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.edgecontainer_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `edgecontainer_node_pool`\nTerraform resource.\n\nUnlike [google.edgecontainer_node_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster` (`string`): The name of the target Distributed Cloud Edge Cluster.\n  - `labels` (`obj`): Labels associated with this resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `machine_filter` (`string`): Only machines matching this filter will be allowed to join the node pool.\nThe filtering language accepts strings like &#34;name=&lt;name&gt;&#34;, and is\ndocumented in more detail in [AIP-160](https://google.aip.dev/160). When `null`, the `machine_filter` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the node pool.\n  - `node_count` (`number`): The number of nodes in the pool.\n  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: &#39;us-central1-edge-customer-a&#39;.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `local_disk_encryption` (`list[obj]`): Local disk encryption options. This field is only used when enabling CMEK support. When `null`, the `local_disk_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.local_disk_encryption.new](#fn-local_disk_encryptionnew) constructor.\n  - `node_config` (`list[obj]`): Configuration for each node in the NodePool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.node_config.new](#fn-node_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgecontainer_node_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    location,
    name,
    node_count,
    node_location,
    labels=null,
    local_disk_encryption=null,
    machine_filter=null,
    node_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    cluster: cluster,
    labels: labels,
    local_disk_encryption: local_disk_encryption,
    location: location,
    machine_filter: machine_filter,
    name: name,
    node_config: node_config,
    node_count: node_count,
    node_location: node_location,
    project: project,
    timeouts: timeouts,
  }),
  node_config:: {
    '#new':: d.fn(help='\n`google.edgecontainer_node_pool.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): &#34;The Kubernetes node labels&#34; When `null`, the `labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      labels=null
    ):: std.prune(a={
      labels: labels,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.edgecontainer_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocalDiskEncryption':: d.fn(help='`google.list[obj].withLocalDiskEncryption` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the local_disk_encryption field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLocalDiskEncryptionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `local_disk_encryption` field.\n', args=[]),
  withLocalDiskEncryption(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          local_disk_encryption: value,
        },
      },
    },
  },
  '#withLocalDiskEncryptionMixin':: d.fn(help='`google.list[obj].withLocalDiskEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the local_disk_encryption field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLocalDiskEncryption](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `local_disk_encryption` field.\n', args=[]),
  withLocalDiskEncryptionMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          local_disk_encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMachineFilter':: d.fn(help='`google.string.withMachineFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_filter` field.\n', args=[]),
  withMachineFilter(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          machine_filter: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeCount':: d.fn(help='`google.number.withNodeCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the node_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `node_count` field.\n', args=[]),
  withNodeCount(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          node_count: value,
        },
      },
    },
  },
  '#withNodeLocation':: d.fn(help='`google.string.withNodeLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the node_location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `node_location` field.\n', args=[]),
  withNodeLocation(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          node_location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
