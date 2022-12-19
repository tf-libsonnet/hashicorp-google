local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_router_interface', url='', help='`compute_router_interface` represents the `google_compute_router_interface` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_router_interface.new` injects a new `google_compute_router_interface` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_router_interface.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_router_interface` using the reference:\n\n    $._ref.google_compute_router_interface.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_router_interface.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `interconnect_attachment` (`string`): The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of interconnect_attachment, subnetwork or vpn_tunnel can be specified. When `null`, the `interconnect_attachment` field will be omitted from the resulting object.\n  - `ip_range` (`string`): The IP address and range of the interface. The IP range must be in the RFC3927 link-local IP space. Changing this forces a new interface to be created. When `null`, the `ip_range` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the interface, required by GCE. Changing this forces a new interface to be created.\n  - `private_ip_address` (`string`): The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created. When `null`, the `private_ip_address` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which this interface\u0026#39;s router belongs. If it is not provided, the provider project is used. Changing this forces a new interface to be created. When `null`, the `project` field will be omitted from the resulting object.\n  - `redundant_interface` (`string`): The name of the interface that is redundant to this interface. Changing this forces a new interface to be created. When `null`, the `redundant_interface` field will be omitted from the resulting object.\n  - `region` (`string`): The region this interface\u0026#39;s router sits in. If not specified, the project region will be used. Changing this forces a new interface to be created. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): The name of the router this interface will be attached to. Changing this forces a new interface to be created.\n  - `subnetwork` (`string`): The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. Changing this forces a new interface to be created. Only one of subnetwork, interconnect_attachment or vpn_tunnel can be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `vpn_tunnel` (`string`): The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel, interconnect_attachment or subnetwork can be specified. When `null`, the `vpn_tunnel` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_interface.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    router,
    interconnect_attachment=null,
    ip_range=null,
    private_ip_address=null,
    project=null,
    redundant_interface=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    vpn_tunnel=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router_interface',
    label=resourceLabel,
    attrs=self.newAttrs(
      interconnect_attachment=interconnect_attachment,
      ip_range=ip_range,
      name=name,
      private_ip_address=private_ip_address,
      project=project,
      redundant_interface=redundant_interface,
      region=region,
      router=router,
      subnetwork=subnetwork,
      timeouts=timeouts,
      vpn_tunnel=vpn_tunnel
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_router_interface.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_interface`\nTerraform resource.\n\nUnlike [google.compute_router_interface.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `interconnect_attachment` (`string`): The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of interconnect_attachment, subnetwork or vpn_tunnel can be specified. When `null`, the `interconnect_attachment` field will be omitted from the resulting object.\n  - `ip_range` (`string`): The IP address and range of the interface. The IP range must be in the RFC3927 link-local IP space. Changing this forces a new interface to be created. When `null`, the `ip_range` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the interface, required by GCE. Changing this forces a new interface to be created.\n  - `private_ip_address` (`string`): The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created. When `null`, the `private_ip_address` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which this interface&#39;s router belongs. If it is not provided, the provider project is used. Changing this forces a new interface to be created. When `null`, the `project` field will be omitted from the resulting object.\n  - `redundant_interface` (`string`): The name of the interface that is redundant to this interface. Changing this forces a new interface to be created. When `null`, the `redundant_interface` field will be omitted from the resulting object.\n  - `region` (`string`): The region this interface&#39;s router sits in. If not specified, the project region will be used. Changing this forces a new interface to be created. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): The name of the router this interface will be attached to. Changing this forces a new interface to be created.\n  - `subnetwork` (`string`): The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. Changing this forces a new interface to be created. Only one of subnetwork, interconnect_attachment or vpn_tunnel can be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `vpn_tunnel` (`string`): The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel, interconnect_attachment or subnetwork can be specified. When `null`, the `vpn_tunnel` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_interface.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router_interface` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    router,
    interconnect_attachment=null,
    ip_range=null,
    private_ip_address=null,
    project=null,
    redundant_interface=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    vpn_tunnel=null
  ):: std.prune(a={
    interconnect_attachment: interconnect_attachment,
    ip_range: ip_range,
    name: name,
    private_ip_address: private_ip_address,
    project: project,
    redundant_interface: redundant_interface,
    region: region,
    router: router,
    subnetwork: subnetwork,
    timeouts: timeouts,
    vpn_tunnel: vpn_tunnel,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_router_interface.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withInterconnectAttachment':: d.fn(help='`google.string.withInterconnectAttachment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the interconnect_attachment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `interconnect_attachment` field.\n', args=[]),
  withInterconnectAttachment(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          interconnect_attachment: value,
        },
      },
    },
  },
  '#withIpRange':: d.fn(help='`google.string.withIpRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_range` field.\n', args=[]),
  withIpRange(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          ip_range: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPrivateIpAddress':: d.fn(help='`google.string.withPrivateIpAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the private_ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `private_ip_address` field.\n', args=[]),
  withPrivateIpAddress(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          private_ip_address: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRedundantInterface':: d.fn(help='`google.string.withRedundantInterface` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the redundant_interface field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `redundant_interface` field.\n', args=[]),
  withRedundantInterface(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          redundant_interface: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRouter':: d.fn(help='`google.string.withRouter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `router` field.\n', args=[]),
  withRouter(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVpnTunnel':: d.fn(help='`google.string.withVpnTunnel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vpn_tunnel field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vpn_tunnel` field.\n', args=[]),
  withVpnTunnel(resourceLabel, value): {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          vpn_tunnel: value,
        },
      },
    },
  },
}
