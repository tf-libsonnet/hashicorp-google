local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network_endpoint', url='', help='`compute_network_endpoint` represents the `google_compute_network_endpoint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_network_endpoint.new` injects a new `google_compute_network_endpoint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network_endpoint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network_endpoint` using the reference:\n\n    $._ref.google_compute_network_endpoint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network_endpoint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `instance` (`string`): The name for a specific VM instance that the IP address belongs to.\nThis is required for network endpoints of type GCE_VM_IP_PORT.\nThe instance must be in the same zone of network endpoint group. When `null`, the `instance` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IPv4 address of network endpoint. The IP address must belong\nto a VM in GCE (either the primary IP or as part of an aliased IP\nrange).\n  - `network_endpoint_group` (`string`): The network endpoint group this endpoint is part of.\n  - `port` (`number`): Port number of network endpoint. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint.timeouts.new](#fn-computenetworkendpointtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    ip_address,
    network_endpoint_group,
    instance=null,
    port=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance=instance,
      ip_address=ip_address,
      network_endpoint_group=network_endpoint_group,
      port=port,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_endpoint`\nTerraform resource.\n\nUnlike [google.compute_network_endpoint.new](#fn-computenetworkendpointnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `instance` (`string`): The name for a specific VM instance that the IP address belongs to.\nThis is required for network endpoints of type GCE_VM_IP_PORT.\nThe instance must be in the same zone of network endpoint group. When `null`, the `instance` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IPv4 address of network endpoint. The IP address must belong\nto a VM in GCE (either the primary IP or as part of an aliased IP\nrange).\n  - `network_endpoint_group` (`string`): The network endpoint group this endpoint is part of.\n  - `port` (`number`): Port number of network endpoint. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint.timeouts.new](#fn-computenetworkendpointtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_endpoint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    ip_address,
    network_endpoint_group,
    instance=null,
    port=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    instance: instance,
    ip_address: ip_address,
    network_endpoint_group: network_endpoint_group,
    port: port,
    project: project,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withInstance':: d.fn(help='`google.compute_network_endpoint.withInstance` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withIpAddress':: d.fn(help='`google.compute_network_endpoint.withIpAddress` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `ip_address` field.\n', args=[]),
  withIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  '#withNetworkEndpointGroup':: d.fn(help='`google.compute_network_endpoint.withNetworkEndpointGroup` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the network_endpoint_group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `network_endpoint_group` field.\n', args=[]),
  withNetworkEndpointGroup(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          network_endpoint_group: value,
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.compute_network_endpoint.withPort` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_network_endpoint.withProject` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_network_endpoint.withTimeouts` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_network_endpoint.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_network_endpoint.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.compute_network_endpoint.withZone` constructs a mixin object that can be merged into the `compute_network_endpoint`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
