local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network_peering_routes_config', url='', help='`compute_network_peering_routes_config` represents the `google_compute_network_peering_routes_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_network_peering_routes_config.new` injects a new `google_compute_network_peering_routes_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network_peering_routes_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network_peering_routes_config` using the reference:\n\n    $._ref.google_compute_network_peering_routes_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network_peering_routes_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network.\n  - `import_custom_routes` (`bool`): Whether to import the custom routes to the peer network.\n  - `network` (`string`): The name of the primary network for the peering.\n  - `peering` (`string`): Name of the peering.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_peering_routes_config.timeouts.new](#fn-compute_network_peering_routes_configtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    export_custom_routes,
    import_custom_routes,
    network,
    peering,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_peering_routes_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      export_custom_routes=export_custom_routes,
      import_custom_routes=import_custom_routes,
      network=network,
      peering=peering,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network_peering_routes_config.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_peering_routes_config`\nTerraform resource.\n\nUnlike [google.compute_network_peering_routes_config.new](#fn-compute_network_peering_routes_confignew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network.\n  - `import_custom_routes` (`bool`): Whether to import the custom routes to the peer network.\n  - `network` (`string`): The name of the primary network for the peering.\n  - `peering` (`string`): Name of the peering.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_peering_routes_config.timeouts.new](#fn-compute_network_peering_routes_configtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_peering_routes_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    export_custom_routes,
    import_custom_routes,
    network,
    peering,
    project=null,
    timeouts=null
  ):: std.prune(a={
    export_custom_routes: export_custom_routes,
    import_custom_routes: import_custom_routes,
    network: network,
    peering: peering,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network_peering_routes_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withExportCustomRoutes':: d.fn(help='`google.bool.withExportCustomRoutes` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the export_custom_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `export_custom_routes` field.\n', args=[]),
  withExportCustomRoutes(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          export_custom_routes: value,
        },
      },
    },
  },
  '#withImportCustomRoutes':: d.fn(help='`google.bool.withImportCustomRoutes` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the import_custom_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `import_custom_routes` field.\n', args=[]),
  withImportCustomRoutes(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          import_custom_routes: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPeering':: d.fn(help='`google.string.withPeering` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peering field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peering` field.\n', args=[]),
  withPeering(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          peering: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
