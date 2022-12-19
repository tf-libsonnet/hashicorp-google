local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_global_network_endpoint_group', url='', help='`compute_global_network_endpoint_group` represents the `google_compute_global_network_endpoint_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_global_network_endpoint_group.new` injects a new `google_compute_global_network_endpoint_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_global_network_endpoint_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_global_network_endpoint_group` using the reference:\n\n    $._ref.google_compute_global_network_endpoint_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_global_network_endpoint_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `default_port` (`number`): The default port used if the port number is not specified in the\nnetwork endpoint. When `null`, the `default_port` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group. Possible values: [\u0026#34;INTERNET_IP_PORT\u0026#34;, \u0026#34;INTERNET_FQDN_PORT\u0026#34;]\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_network_endpoint_group.timeouts.new](#fn-computeglobalnetworkendpointgrouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network_endpoint_type,
    default_port=null,
    description=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_global_network_endpoint_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_port=default_port,
      description=description,
      name=name,
      network_endpoint_type=network_endpoint_type,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_global_network_endpoint_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_network_endpoint_group`\nTerraform resource.\n\nUnlike [google.compute_global_network_endpoint_group.new](#fn-computeglobalnetworkendpointgroupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `default_port` (`number`): The default port used if the port number is not specified in the\nnetwork endpoint. When `null`, the `default_port` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group. Possible values: [&#34;INTERNET_IP_PORT&#34;, &#34;INTERNET_FQDN_PORT&#34;]\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_network_endpoint_group.timeouts.new](#fn-computeglobalnetworkendpointgrouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_network_endpoint_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network_endpoint_type,
    default_port=null,
    description=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    default_port: default_port,
    description: description,
    name: name,
    network_endpoint_type: network_endpoint_type,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_global_network_endpoint_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDefaultPort':: d.fn(help='`google.compute_global_network_endpoint_group.withDefaultPort` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the default_port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `default_port` field.\n', args=[]),
  withDefaultPort(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          default_port: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.compute_global_network_endpoint_group.withDescription` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.compute_global_network_endpoint_group.withName` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkEndpointType':: d.fn(help='`google.compute_global_network_endpoint_group.withNetworkEndpointType` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the network_endpoint_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `network_endpoint_type` field.\n', args=[]),
  withNetworkEndpointType(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          network_endpoint_type: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_global_network_endpoint_group.withProject` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_global_network_endpoint_group.withTimeouts` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_global_network_endpoint_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_global_network_endpoint_group`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_global_network_endpoint_group.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
