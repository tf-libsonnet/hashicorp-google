local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='tpu_node', url='', help='`tpu_node` represents the `google_tpu_node` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.tpu_node.new` injects a new `google_tpu_node` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.tpu_node.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.tpu_node` using the reference:\n\n    $._ref.google_tpu_node.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_tpu_node.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `accelerator_type` (`string`): The type of hardware accelerators associated with this node.\n  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP\naddress. This CIDR block must be a /29 block; the Compute Engine\nnetworks API forbids a smaller block, and using a larger block would\nbe wasteful (a node can only consume one IP address).\n\nErrors will occur if the CIDR block has already been used for a\ncurrently existing TPU node, the CIDR block conflicts with any\nsubnetworks in the user\u0026#39;s provided network, or the provided network\nis peered with another network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.\n  - `description` (`string`): The user-supplied description of the TPU. Maximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The immutable name of the TPU.\n  - `network` (`string`): The name of a network to peer the TPU node to. It must be a\npreexisting Compute Engine network inside of the project on which\nthis API has been activated. If none is provided, \u0026#34;default\u0026#34; will be\nused. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `tensorflow_version` (`string`): The version of Tensorflow running in the Node.\n  - `use_service_networking` (`bool`): Whether the VPC peering for the node is set up through Service Networking API.\nThe VPC Peering should be set up before provisioning the node. If this field is set,\ncidr_block field should not be specified. If the network that you want to peer the\nTPU Node to is a Shared VPC network, the node must be created with this this field enabled. When `null`, the `use_service_networking` field will be omitted from the resulting object.\n  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `scheduling_config` (`list[obj]`): Sets the scheduling options for this TPU instance. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.scheduling_config.new](#fn-scheduling_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    accelerator_type,
    name,
    tensorflow_version,
    cidr_block=null,
    description=null,
    labels=null,
    network=null,
    project=null,
    scheduling_config=null,
    timeouts=null,
    use_service_networking=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_tpu_node',
    label=resourceLabel,
    attrs=self.newAttrs(
      accelerator_type=accelerator_type,
      cidr_block=cidr_block,
      description=description,
      labels=labels,
      name=name,
      network=network,
      project=project,
      scheduling_config=scheduling_config,
      tensorflow_version=tensorflow_version,
      timeouts=timeouts,
      use_service_networking=use_service_networking,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.tpu_node.newAttrs` constructs a new object with attributes and blocks configured for the `tpu_node`\nTerraform resource.\n\nUnlike [google.tpu_node.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `accelerator_type` (`string`): The type of hardware accelerators associated with this node.\n  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP\naddress. This CIDR block must be a /29 block; the Compute Engine\nnetworks API forbids a smaller block, and using a larger block would\nbe wasteful (a node can only consume one IP address).\n\nErrors will occur if the CIDR block has already been used for a\ncurrently existing TPU node, the CIDR block conflicts with any\nsubnetworks in the user&#39;s provided network, or the provided network\nis peered with another network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.\n  - `description` (`string`): The user-supplied description of the TPU. Maximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The immutable name of the TPU.\n  - `network` (`string`): The name of a network to peer the TPU node to. It must be a\npreexisting Compute Engine network inside of the project on which\nthis API has been activated. If none is provided, &#34;default&#34; will be\nused. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `tensorflow_version` (`string`): The version of Tensorflow running in the Node.\n  - `use_service_networking` (`bool`): Whether the VPC peering for the node is set up through Service Networking API.\nThe VPC Peering should be set up before provisioning the node. If this field is set,\ncidr_block field should not be specified. If the network that you want to peer the\nTPU Node to is a Shared VPC network, the node must be created with this this field enabled. When `null`, the `use_service_networking` field will be omitted from the resulting object.\n  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `scheduling_config` (`list[obj]`): Sets the scheduling options for this TPU instance. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.scheduling_config.new](#fn-scheduling_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tpu_node.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `tpu_node` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    accelerator_type,
    name,
    tensorflow_version,
    cidr_block=null,
    description=null,
    labels=null,
    network=null,
    project=null,
    scheduling_config=null,
    timeouts=null,
    use_service_networking=null,
    zone=null
  ):: std.prune(a={
    accelerator_type: accelerator_type,
    cidr_block: cidr_block,
    description: description,
    labels: labels,
    name: name,
    network: network,
    project: project,
    scheduling_config: scheduling_config,
    tensorflow_version: tensorflow_version,
    timeouts: timeouts,
    use_service_networking: use_service_networking,
    zone: zone,
  }),
  scheduling_config:: {
    '#new':: d.fn(help='\n`google.tpu_node.scheduling_config.new` constructs a new object with attributes and blocks configured for the `scheduling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `preemptible` (`bool`): Defines whether the TPU instance is preemptible.\n\n**Returns**:\n  - An attribute object that represents the `scheduling_config` sub block.\n', args=[]),
    new(
      preemptible
    ):: std.prune(a={
      preemptible: preemptible,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.tpu_node.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAcceleratorType':: d.fn(help='`google.string.withAcceleratorType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the accelerator_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `accelerator_type` field.\n', args=[]),
  withAcceleratorType(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          accelerator_type: value,
        },
      },
    },
  },
  '#withCidrBlock':: d.fn(help='`google.string.withCidrBlock` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cidr_block field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cidr_block` field.\n', args=[]),
  withCidrBlock(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          cidr_block: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSchedulingConfig':: d.fn(help='`google.list[obj].withSchedulingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSchedulingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.\n', args=[]),
  withSchedulingConfig(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          scheduling_config: value,
        },
      },
    },
  },
  '#withSchedulingConfigMixin':: d.fn(help='`google.list[obj].withSchedulingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSchedulingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.\n', args=[]),
  withSchedulingConfigMixin(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          scheduling_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTensorflowVersion':: d.fn(help='`google.string.withTensorflowVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tensorflow_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tensorflow_version` field.\n', args=[]),
  withTensorflowVersion(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          tensorflow_version: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUseServiceNetworking':: d.fn(help='`google.bool.withUseServiceNetworking` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the use_service_networking field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `use_service_networking` field.\n', args=[]),
  withUseServiceNetworking(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          use_service_networking: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
