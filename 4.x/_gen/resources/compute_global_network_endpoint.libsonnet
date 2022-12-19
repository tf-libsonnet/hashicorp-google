local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_global_network_endpoint', url='', help='`compute_global_network_endpoint` represents the `google_compute_global_network_endpoint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_global_network_endpoint.new` injects a new `google_compute_global_network_endpoint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_global_network_endpoint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_global_network_endpoint` using the reference:\n\n    $._ref.google_compute_global_network_endpoint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_global_network_endpoint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `fqdn` (`string`): Fully qualified domain name of network endpoint.\nThis can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. When `null`, the `fqdn` field will be omitted from the resulting object.\n  - `global_network_endpoint_group` (`string`): The global network endpoint group this endpoint is part of.\n  - `ip_address` (`string`): IPv4 address external endpoint. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `port` (`number`): Port number of the external endpoint.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_network_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    global_network_endpoint_group,
    port,
    fqdn=null,
    ip_address=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_global_network_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      fqdn=fqdn,
      global_network_endpoint_group=global_network_endpoint_group,
      ip_address=ip_address,
      port=port,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_global_network_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_network_endpoint`\nTerraform resource.\n\nUnlike [google.compute_global_network_endpoint.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `fqdn` (`string`): Fully qualified domain name of network endpoint.\nThis can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. When `null`, the `fqdn` field will be omitted from the resulting object.\n  - `global_network_endpoint_group` (`string`): The global network endpoint group this endpoint is part of.\n  - `ip_address` (`string`): IPv4 address external endpoint. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `port` (`number`): Port number of the external endpoint.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_network_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_network_endpoint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    global_network_endpoint_group,
    port,
    fqdn=null,
    ip_address=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    fqdn: fqdn,
    global_network_endpoint_group: global_network_endpoint_group,
    ip_address: ip_address,
    port: port,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_global_network_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withFqdn':: d.fn(help='`google.string.withFqdn` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the fqdn field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `fqdn` field.\n', args=[]),
  withFqdn(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          fqdn: value,
        },
      },
    },
  },
  '#withGlobalNetworkEndpointGroup':: d.fn(help='`google.string.withGlobalNetworkEndpointGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the global_network_endpoint_group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `global_network_endpoint_group` field.\n', args=[]),
  withGlobalNetworkEndpointGroup(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          global_network_endpoint_group: value,
        },
      },
    },
  },
  '#withIpAddress':: d.fn(help='`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_address` field.\n', args=[]),
  withIpAddress(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
