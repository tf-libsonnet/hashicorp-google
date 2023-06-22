local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network_endpoints', url='', help='`compute_network_endpoints` represents the `google_compute_network_endpoints` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  network_endpoints:: {
    '#new':: d.fn(help='\n`google.compute_network_endpoints.network_endpoints.new` constructs a new object with attributes and blocks configured for the `network_endpoints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance` (`string`): The name for a specific VM instance that the IP address belongs to.\nThis is required for network endpoints of type GCE_VM_IP_PORT.\nThe instance must be in the same zone as the network endpoint group. When `null`, the `instance` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IPv4 address of network endpoint. The IP address must belong\nto a VM in GCE (either the primary IP or as part of an aliased IP\nrange).\n  - `port` (`number`): Port number of network endpoint.\n**Note** &#39;port&#39; is required unless the Network Endpoint Group is created\nwith the type of &#39;GCE_VM_IP&#39; When `null`, the `port` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_endpoints` sub block.\n', args=[]),
    new(
      ip_address,
      instance=null,
      port=null
    ):: std.prune(a={
      instance: instance,
      ip_address: ip_address,
      port: port,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_network_endpoints.new` injects a new `google_compute_network_endpoints` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network_endpoints.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network_endpoints` using the reference:\n\n    $._ref.google_compute_network_endpoints.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network_endpoints.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `network_endpoint_group` (`string`): The network endpoint group these endpoints are part of.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `network_endpoints` (`list[obj]`): The network endpoints to be added to the enclosing network endpoint group\n(NEG). Each endpoint specifies an IP address and port, along with\nadditional information depending on the NEG type. When `null`, the `network_endpoints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.network_endpoints.new](#fn-network_endpointsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    network_endpoint_group,
    network_endpoints=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_endpoints',
    label=resourceLabel,
    attrs=self.newAttrs(
      network_endpoint_group=network_endpoint_group,
      network_endpoints=network_endpoints,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network_endpoints.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_endpoints`\nTerraform resource.\n\nUnlike [google.compute_network_endpoints.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `network_endpoint_group` (`string`): The network endpoint group these endpoints are part of.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the containing network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.\n  - `network_endpoints` (`list[obj]`): The network endpoints to be added to the enclosing network endpoint group\n(NEG). Each endpoint specifies an IP address and port, along with\nadditional information depending on the NEG type. When `null`, the `network_endpoints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.network_endpoints.new](#fn-network_endpointsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoints.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_endpoints` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    network_endpoint_group,
    network_endpoints=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    network_endpoint_group: network_endpoint_group,
    network_endpoints: network_endpoints,
    project: project,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network_endpoints.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withNetworkEndpointGroup':: d.fn(help='`google.string.withNetworkEndpointGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network_endpoint_group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network_endpoint_group` field.\n', args=[]),
  withNetworkEndpointGroup(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          network_endpoint_group: value,
        },
      },
    },
  },
  '#withNetworkEndpoints':: d.fn(help='`google.list[obj].withNetworkEndpoints` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_endpoints field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkEndpointsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_endpoints` field.\n', args=[]),
  withNetworkEndpoints(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          network_endpoints: value,
        },
      },
    },
  },
  '#withNetworkEndpointsMixin':: d.fn(help='`google.list[obj].withNetworkEndpointsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_endpoints field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkEndpoints](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_endpoints` field.\n', args=[]),
  withNetworkEndpointsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          network_endpoints+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_network_endpoints+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
