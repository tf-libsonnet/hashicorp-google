local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network_peering', url='', help='`compute_network_peering` represents the `google_compute_network_peering` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_network_peering.new` injects a new `google_compute_network_peering` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network_peering.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network_peering` using the reference:\n\n    $._ref.google_compute_network_peering.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network_peering.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network. Defaults to false. When `null`, the `export_custom_routes` field will be omitted from the resulting object.\n  - `export_subnet_routes_with_public_ip` (`bool`):  When `null`, the `export_subnet_routes_with_public_ip` field will be omitted from the resulting object.\n  - `import_custom_routes` (`bool`): Whether to export the custom routes from the peer network. Defaults to false. When `null`, the `import_custom_routes` field will be omitted from the resulting object.\n  - `import_subnet_routes_with_public_ip` (`bool`):  When `null`, the `import_subnet_routes_with_public_ip` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the peering.\n  - `network` (`string`): The primary network of the peering.\n  - `peer_network` (`string`): The peer network in the peering. The peer network may belong to a different project.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_peering.timeouts.new](#fn-computenetworkpeeringtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network,
    peer_network,
    export_custom_routes=null,
    export_subnet_routes_with_public_ip=null,
    import_custom_routes=null,
    import_subnet_routes_with_public_ip=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_peering',
    label=resourceLabel,
    attrs=self.newAttrs(
      export_custom_routes=export_custom_routes,
      export_subnet_routes_with_public_ip=export_subnet_routes_with_public_ip,
      import_custom_routes=import_custom_routes,
      import_subnet_routes_with_public_ip=import_subnet_routes_with_public_ip,
      name=name,
      network=network,
      peer_network=peer_network,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_peering`\nTerraform resource.\n\nUnlike [google.compute_network_peering.new](#fn-computenetworkpeeringnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network. Defaults to false. When `null`, the `export_custom_routes` field will be omitted from the resulting object.\n  - `export_subnet_routes_with_public_ip` (`bool`):  When `null`, the `export_subnet_routes_with_public_ip` field will be omitted from the resulting object.\n  - `import_custom_routes` (`bool`): Whether to export the custom routes from the peer network. Defaults to false. When `null`, the `import_custom_routes` field will be omitted from the resulting object.\n  - `import_subnet_routes_with_public_ip` (`bool`):  When `null`, the `import_subnet_routes_with_public_ip` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the peering.\n  - `network` (`string`): The primary network of the peering.\n  - `peer_network` (`string`): The peer network in the peering. The peer network may belong to a different project.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_peering.timeouts.new](#fn-computenetworkpeeringtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_peering` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network,
    peer_network,
    export_custom_routes=null,
    export_subnet_routes_with_public_ip=null,
    import_custom_routes=null,
    import_subnet_routes_with_public_ip=null,
    timeouts=null
  ):: std.prune(a={
    export_custom_routes: export_custom_routes,
    export_subnet_routes_with_public_ip: export_subnet_routes_with_public_ip,
    import_custom_routes: import_custom_routes,
    import_subnet_routes_with_public_ip: import_subnet_routes_with_public_ip,
    name: name,
    network: network,
    peer_network: peer_network,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withExportCustomRoutes':: d.fn(help='`google.compute_network_peering.withExportCustomRoutes` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the export_custom_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `export_custom_routes` field.\n', args=[]),
  withExportCustomRoutes(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          export_custom_routes: value,
        },
      },
    },
  },
  '#withExportSubnetRoutesWithPublicIp':: d.fn(help='`google.compute_network_peering.withExportSubnetRoutesWithPublicIp` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the export_subnet_routes_with_public_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `export_subnet_routes_with_public_ip` field.\n', args=[]),
  withExportSubnetRoutesWithPublicIp(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          export_subnet_routes_with_public_ip: value,
        },
      },
    },
  },
  '#withImportCustomRoutes':: d.fn(help='`google.compute_network_peering.withImportCustomRoutes` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the import_custom_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `import_custom_routes` field.\n', args=[]),
  withImportCustomRoutes(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          import_custom_routes: value,
        },
      },
    },
  },
  '#withImportSubnetRoutesWithPublicIp':: d.fn(help='`google.compute_network_peering.withImportSubnetRoutesWithPublicIp` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the import_subnet_routes_with_public_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `import_subnet_routes_with_public_ip` field.\n', args=[]),
  withImportSubnetRoutesWithPublicIp(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          import_subnet_routes_with_public_ip: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.compute_network_peering.withName` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.compute_network_peering.withNetwork` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPeerNetwork':: d.fn(help='`google.compute_network_peering.withPeerNetwork` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the peer_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `peer_network` field.\n', args=[]),
  withPeerNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          peer_network: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_network_peering.withTimeouts` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_network_peering.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_network_peering`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_network_peering.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
