local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vmwareengine_network_peering', url='', help='`vmwareengine_network_peering` represents the `google_vmwareengine_network_peering` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.vmwareengine_network_peering.new` injects a new `google_vmwareengine_network_peering` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vmwareengine_network_peering.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vmwareengine_network_peering` using the reference:\n\n    $._ref.google_vmwareengine_network_peering.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vmwareengine_network_peering.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-provided description for this network peering. When `null`, the `description` field will be omitted from the resulting object.\n  - `export_custom_routes` (`bool`): True if custom routes are exported to the peered network; false otherwise. When `null`, the `export_custom_routes` field will be omitted from the resulting object.\n  - `export_custom_routes_with_public_ip` (`bool`): True if all subnet routes with a public IP address range are exported; false otherwise. When `null`, the `export_custom_routes_with_public_ip` field will be omitted from the resulting object.\n  - `import_custom_routes` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes` field will be omitted from the resulting object.\n  - `import_custom_routes_with_public_ip` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes_with_public_ip` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the Network Peering.\n  - `peer_network` (`string`): The relative resource name of the network to peer with a standard VMware Engine network.\nThe provided network can be a consumer VPC network or another standard VMware Engine network.\n  - `peer_network_type` (`string`): The type of the network to peer with the VMware Engine network. Possible values: [\u0026#34;STANDARD\u0026#34;, \u0026#34;VMWARE_ENGINE_NETWORK\u0026#34;, \u0026#34;PRIVATE_SERVICES_ACCESS\u0026#34;, \u0026#34;NETAPP_CLOUD_VOLUMES\u0026#34;, \u0026#34;THIRD_PARTY_SERVICE\u0026#34;, \u0026#34;DELL_POWERSCALE\u0026#34;]\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:\nprojects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}\ncan either be a project number or a project ID.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_peering.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    peer_network,
    peer_network_type,
    vmware_engine_network,
    description=null,
    export_custom_routes=null,
    export_custom_routes_with_public_ip=null,
    import_custom_routes=null,
    import_custom_routes_with_public_ip=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vmwareengine_network_peering',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      export_custom_routes=export_custom_routes,
      export_custom_routes_with_public_ip=export_custom_routes_with_public_ip,
      import_custom_routes=import_custom_routes,
      import_custom_routes_with_public_ip=import_custom_routes_with_public_ip,
      name=name,
      peer_network=peer_network,
      peer_network_type=peer_network_type,
      project=project,
      timeouts=timeouts,
      vmware_engine_network=vmware_engine_network
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vmwareengine_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_network_peering`\nTerraform resource.\n\nUnlike [google.vmwareengine_network_peering.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-provided description for this network peering. When `null`, the `description` field will be omitted from the resulting object.\n  - `export_custom_routes` (`bool`): True if custom routes are exported to the peered network; false otherwise. When `null`, the `export_custom_routes` field will be omitted from the resulting object.\n  - `export_custom_routes_with_public_ip` (`bool`): True if all subnet routes with a public IP address range are exported; false otherwise. When `null`, the `export_custom_routes_with_public_ip` field will be omitted from the resulting object.\n  - `import_custom_routes` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes` field will be omitted from the resulting object.\n  - `import_custom_routes_with_public_ip` (`bool`): True if custom routes are imported from the peered network; false otherwise. When `null`, the `import_custom_routes_with_public_ip` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the Network Peering.\n  - `peer_network` (`string`): The relative resource name of the network to peer with a standard VMware Engine network.\nThe provided network can be a consumer VPC network or another standard VMware Engine network.\n  - `peer_network_type` (`string`): The type of the network to peer with the VMware Engine network. Possible values: [&#34;STANDARD&#34;, &#34;VMWARE_ENGINE_NETWORK&#34;, &#34;PRIVATE_SERVICES_ACCESS&#34;, &#34;NETAPP_CLOUD_VOLUMES&#34;, &#34;THIRD_PARTY_SERVICE&#34;, &#34;DELL_POWERSCALE&#34;]\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:\nprojects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}\ncan either be a project number or a project ID.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_peering.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_network_peering` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    peer_network,
    peer_network_type,
    vmware_engine_network,
    description=null,
    export_custom_routes=null,
    export_custom_routes_with_public_ip=null,
    import_custom_routes=null,
    import_custom_routes_with_public_ip=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    export_custom_routes: export_custom_routes,
    export_custom_routes_with_public_ip: export_custom_routes_with_public_ip,
    import_custom_routes: import_custom_routes,
    import_custom_routes_with_public_ip: import_custom_routes_with_public_ip,
    name: name,
    peer_network: peer_network,
    peer_network_type: peer_network_type,
    project: project,
    timeouts: timeouts,
    vmware_engine_network: vmware_engine_network,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vmwareengine_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withExportCustomRoutes':: d.fn(help='`google.bool.withExportCustomRoutes` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the export_custom_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `export_custom_routes` field.\n', args=[]),
  withExportCustomRoutes(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          export_custom_routes: value,
        },
      },
    },
  },
  '#withExportCustomRoutesWithPublicIp':: d.fn(help='`google.bool.withExportCustomRoutesWithPublicIp` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the export_custom_routes_with_public_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `export_custom_routes_with_public_ip` field.\n', args=[]),
  withExportCustomRoutesWithPublicIp(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          export_custom_routes_with_public_ip: value,
        },
      },
    },
  },
  '#withImportCustomRoutes':: d.fn(help='`google.bool.withImportCustomRoutes` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the import_custom_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `import_custom_routes` field.\n', args=[]),
  withImportCustomRoutes(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          import_custom_routes: value,
        },
      },
    },
  },
  '#withImportCustomRoutesWithPublicIp':: d.fn(help='`google.bool.withImportCustomRoutesWithPublicIp` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the import_custom_routes_with_public_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `import_custom_routes_with_public_ip` field.\n', args=[]),
  withImportCustomRoutesWithPublicIp(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          import_custom_routes_with_public_ip: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPeerNetwork':: d.fn(help='`google.string.withPeerNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_network` field.\n', args=[]),
  withPeerNetwork(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          peer_network: value,
        },
      },
    },
  },
  '#withPeerNetworkType':: d.fn(help='`google.string.withPeerNetworkType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_network_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_network_type` field.\n', args=[]),
  withPeerNetworkType(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          peer_network_type: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVmwareEngineNetwork':: d.fn(help='`google.string.withVmwareEngineNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vmware_engine_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vmware_engine_network` field.\n', args=[]),
  withVmwareEngineNetwork(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_peering+: {
        [resourceLabel]+: {
          vmware_engine_network: value,
        },
      },
    },
  },
}
