local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network_endpoint_group', url='', help='`compute_network_endpoint_group` represents the `google_compute_network_endpoint_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_network_endpoint_group.new` injects a new `google_compute_network_endpoint_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network_endpoint_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network_endpoint_group` using the reference:\n\n    $._ref.google_compute_network_endpoint_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network_endpoint_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `default_port` (`number`): The default port used if the port number is not specified in the\nnetwork endpoint. When `null`, the `default_port` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The network to which all network endpoints in the NEG belong.\nUses \u0026#34;default\u0026#34; project network if unspecified.\n  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group.\nNON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network\nendpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).\nNote that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services\nthat 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,\nINTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or\nCONNECTION balancing modes.\n\nPossible values include: GCE_VM_IP, GCE_VM_IP_PORT, and NON_GCP_PRIVATE_IP_PORT. Default value: \u0026#34;GCE_VM_IP_PORT\u0026#34; Possible values: [\u0026#34;GCE_VM_IP\u0026#34;, \u0026#34;GCE_VM_IP_PORT\u0026#34;, \u0026#34;NON_GCP_PRIVATE_IP_PORT\u0026#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Optional subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint_group.timeouts.new](#fn-compute_network_endpoint_grouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network,
    default_port=null,
    description=null,
    network_endpoint_type=null,
    project=null,
    subnetwork=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_endpoint_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_port=default_port,
      description=description,
      name=name,
      network=network,
      network_endpoint_type=network_endpoint_type,
      project=project,
      subnetwork=subnetwork,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network_endpoint_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_endpoint_group`\nTerraform resource.\n\nUnlike [google.compute_network_endpoint_group.new](#fn-compute_network_endpoint_groupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `default_port` (`number`): The default port used if the port number is not specified in the\nnetwork endpoint. When `null`, the `default_port` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The network to which all network endpoints in the NEG belong.\nUses &#34;default&#34; project network if unspecified.\n  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group.\nNON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network\nendpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).\nNote that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services\nthat 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,\nINTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or\nCONNECTION balancing modes.\n\nPossible values include: GCE_VM_IP, GCE_VM_IP_PORT, and NON_GCP_PRIVATE_IP_PORT. Default value: &#34;GCE_VM_IP_PORT&#34; Possible values: [&#34;GCE_VM_IP&#34;, &#34;GCE_VM_IP_PORT&#34;, &#34;NON_GCP_PRIVATE_IP_PORT&#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Optional subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint_group.timeouts.new](#fn-compute_network_endpoint_grouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_endpoint_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network,
    default_port=null,
    description=null,
    network_endpoint_type=null,
    project=null,
    subnetwork=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    default_port: default_port,
    description: description,
    name: name,
    network: network,
    network_endpoint_type: network_endpoint_type,
    project: project,
    subnetwork: subnetwork,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network_endpoint_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDefaultPort':: d.fn(help='`google.number.withDefaultPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the default_port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `default_port` field.\n', args=[]),
  withDefaultPort(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          default_port: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkEndpointType':: d.fn(help='`google.string.withNetworkEndpointType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network_endpoint_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network_endpoint_type` field.\n', args=[]),
  withNetworkEndpointType(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          network_endpoint_type: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
