local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vmwareengine_private_cloud', url='', help='`vmwareengine_private_cloud` represents the `google_vmwareengine_private_cloud` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  management_cluster:: {
    '#new':: d.fn(help='\n`google.vmwareengine_private_cloud.management_cluster.new` constructs a new object with attributes and blocks configured for the `management_cluster`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_id` (`string`): The user-provided identifier of the new Cluster. The identifier must meet the following requirements:\n  * Only contains 1-63 alphanumeric characters and hyphens\n  * Begins with an alphabetical character\n  * Ends with a non-hyphen character\n  * Not formatted as a UUID\n  * Complies with RFC 1034 (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)\n  - `node_type_configs` (`list[obj]`): The map of cluster node types in this cluster,\nwhere the key is canonical identifier of the node type (corresponds to the NodeType). When `null`, the `node_type_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.management_cluster.node_type_configs.new](#fn-management_clusternode_type_configsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `management_cluster` sub block.\n', args=[]),
    new(
      cluster_id,
      node_type_configs=null
    ):: std.prune(a={
      cluster_id: cluster_id,
      node_type_configs: node_type_configs,
    }),
    node_type_configs:: {
      '#new':: d.fn(help='\n`google.vmwareengine_private_cloud.management_cluster.node_type_configs.new` constructs a new object with attributes and blocks configured for the `node_type_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `custom_core_count` (`number`): Customized number of cores available to each node of the type.\nThis number must always be one of &#39;nodeType.availableCustomCoreCounts&#39;.\nIf zero is provided max value from &#39;nodeType.availableCustomCoreCounts&#39; will be used.\nThis cannot be changed once the PrivateCloud is created. When `null`, the `custom_core_count` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes of this type in the cluster.\n  - `node_type_id` (`string`): Set the `node_type_id` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_type_configs` sub block.\n', args=[]),
      new(
        node_count,
        node_type_id,
        custom_core_count=null
      ):: std.prune(a={
        custom_core_count: custom_core_count,
        node_count: node_count,
        node_type_id: node_type_id,
      }),
    },
  },
  network_config:: {
    '#new':: d.fn(help='\n`google.vmwareengine_private_cloud.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `management_cidr` (`string`): Management CIDR used by VMware management appliances.\n  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network attached to the private cloud.\nSpecify the name in the following form: projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}\nwhere {project} can either be a project number or a project ID. When `null`, the `vmware_engine_network` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      management_cidr,
      vmware_engine_network=null
    ):: std.prune(a={
      management_cidr: management_cidr,
      vmware_engine_network: vmware_engine_network,
    }),
  },
  '#new':: d.fn(help="\n`google.vmwareengine_private_cloud.new` injects a new `google_vmwareengine_private_cloud` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vmwareengine_private_cloud.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vmwareengine_private_cloud` using the reference:\n\n    $._ref.google_vmwareengine_private_cloud.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vmwareengine_private_cloud.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-provided description for this private cloud. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the PrivateCloud should reside.\n  - `name` (`string`): The ID of the PrivateCloud.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): Initial type of the private cloud. Possible values: [\u0026#34;STANDARD\u0026#34;, \u0026#34;TIME_LIMITED\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `management_cluster` (`list[obj]`): The management cluster for this private cloud. This used for creating and managing the default cluster. When `null`, the `management_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.management_cluster.new](#fn-management_clusternew) constructor.\n  - `network_config` (`list[obj]`): Network configuration in the consumer project with which the peering has to be done. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.network_config.new](#fn-network_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    description=null,
    management_cluster=null,
    network_config=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_vmwareengine_private_cloud',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      location=location,
      management_cluster=management_cluster,
      name=name,
      network_config=network_config,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vmwareengine_private_cloud.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_private_cloud`\nTerraform resource.\n\nUnlike [google.vmwareengine_private_cloud.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-provided description for this private cloud. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the PrivateCloud should reside.\n  - `name` (`string`): The ID of the PrivateCloud.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): Initial type of the private cloud. Possible values: [&#34;STANDARD&#34;, &#34;TIME_LIMITED&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `management_cluster` (`list[obj]`): The management cluster for this private cloud. This used for creating and managing the default cluster. When `null`, the `management_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.management_cluster.new](#fn-management_clusternew) constructor.\n  - `network_config` (`list[obj]`): Network configuration in the consumer project with which the peering has to be done. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.network_config.new](#fn-network_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_private_cloud.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_private_cloud` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    description=null,
    management_cluster=null,
    network_config=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    description: description,
    location: location,
    management_cluster: management_cluster,
    name: name,
    network_config: network_config,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vmwareengine_private_cloud.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withManagementCluster':: d.fn(help='`google.list[obj].withManagementCluster` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management_cluster field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagementClusterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management_cluster` field.\n', args=[]),
  withManagementCluster(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          management_cluster: value,
        },
      },
    },
  },
  '#withManagementClusterMixin':: d.fn(help='`google.list[obj].withManagementClusterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management_cluster field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManagementCluster](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management_cluster` field.\n', args=[]),
  withManagementClusterMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          management_cluster+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_vmwareengine_private_cloud+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
