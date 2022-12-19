local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_connectivity_spoke', url='', help='`network_connectivity_spoke` represents the `google_network_connectivity_spoke` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  linked_interconnect_attachments:: {
    '#new':: d.fn(help='\n`google.network_connectivity_spoke.linked_interconnect_attachments.new` constructs a new object with attributes and blocks configured for the `linked_interconnect_attachments`\nTerraform sub block.\n\n\n\n**Args**:\n  - `site_to_site_data_transfer` (`bool`): A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.\n  - `uris` (`list`): The URIs of linked interconnect attachment resources\n\n**Returns**:\n  - An attribute object that represents the `linked_interconnect_attachments` sub block.\n', args=[]),
    new(
      site_to_site_data_transfer,
      uris
    ):: std.prune(a={
      site_to_site_data_transfer: site_to_site_data_transfer,
      uris: uris,
    }),
  },
  linked_router_appliance_instances:: {
    instances:: {
      '#new':: d.fn(help='\n`google.network_connectivity_spoke.linked_router_appliance_instances.instances.new` constructs a new object with attributes and blocks configured for the `instances`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_address` (`string`): The IP address on the VM to use for peering. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `virtual_machine` (`string`): The URI of the virtual machine resource When `null`, the `virtual_machine` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `instances` sub block.\n', args=[]),
      new(
        ip_address=null,
        virtual_machine=null
      ):: std.prune(a={
        ip_address: ip_address,
        virtual_machine: virtual_machine,
      }),
    },
    '#new':: d.fn(help='\n`google.network_connectivity_spoke.linked_router_appliance_instances.new` constructs a new object with attributes and blocks configured for the `linked_router_appliance_instances`\nTerraform sub block.\n\n\n\n**Args**:\n  - `site_to_site_data_transfer` (`bool`): A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.\n  - `instances` (`list[obj]`): The list of router appliance instances When `null`, the `instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_router_appliance_instances.instances.new](#fn-linked_router_appliance_instancesinstancesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `linked_router_appliance_instances` sub block.\n', args=[]),
    new(
      site_to_site_data_transfer,
      instances=null
    ):: std.prune(a={
      instances: instances,
      site_to_site_data_transfer: site_to_site_data_transfer,
    }),
  },
  linked_vpn_tunnels:: {
    '#new':: d.fn(help='\n`google.network_connectivity_spoke.linked_vpn_tunnels.new` constructs a new object with attributes and blocks configured for the `linked_vpn_tunnels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `site_to_site_data_transfer` (`bool`): A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.\n  - `uris` (`list`): The URIs of linked VPN tunnel resources.\n\n**Returns**:\n  - An attribute object that represents the `linked_vpn_tunnels` sub block.\n', args=[]),
    new(
      site_to_site_data_transfer,
      uris
    ):: std.prune(a={
      site_to_site_data_transfer: site_to_site_data_transfer,
      uris: uris,
    }),
  },
  '#new':: d.fn(help="\n`google.network_connectivity_spoke.new` injects a new `google_network_connectivity_spoke` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_connectivity_spoke.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_connectivity_spoke` using the reference:\n\n    $._ref.google_network_connectivity_spoke.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_connectivity_spoke.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of the spoke. When `null`, the `description` field will be omitted from the resulting object.\n  - `hub` (`string`): Immutable. The URI of the hub that this spoke is attached to.\n  - `labels` (`obj`): Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements). When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Immutable. The name of the spoke. Spoke names must be unique.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `linked_interconnect_attachments` (`list[obj]`): A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes. When `null`, the `linked_interconnect_attachments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_interconnect_attachments.new](#fn-network_connectivity_spokelinked_interconnect_attachmentsnew) constructor.\n  - `linked_router_appliance_instances` (`list[obj]`): The URIs of linked Router appliance resources When `null`, the `linked_router_appliance_instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_router_appliance_instances.new](#fn-network_connectivity_spokelinked_router_appliance_instancesnew) constructor.\n  - `linked_vpn_tunnels` (`list[obj]`): The URIs of linked VPN tunnel resources When `null`, the `linked_vpn_tunnels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_vpn_tunnels.new](#fn-network_connectivity_spokelinked_vpn_tunnelsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.timeouts.new](#fn-network_connectivity_spoketimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hub,
    location,
    name,
    description=null,
    labels=null,
    linked_interconnect_attachments=null,
    linked_router_appliance_instances=null,
    linked_vpn_tunnels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_connectivity_spoke',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      hub=hub,
      labels=labels,
      linked_interconnect_attachments=linked_interconnect_attachments,
      linked_router_appliance_instances=linked_router_appliance_instances,
      linked_vpn_tunnels=linked_vpn_tunnels,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_connectivity_spoke.newAttrs` constructs a new object with attributes and blocks configured for the `network_connectivity_spoke`\nTerraform resource.\n\nUnlike [google.network_connectivity_spoke.new](#fn-network_connectivity_spokenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of the spoke. When `null`, the `description` field will be omitted from the resulting object.\n  - `hub` (`string`): Immutable. The URI of the hub that this spoke is attached to.\n  - `labels` (`obj`): Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements). When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Immutable. The name of the spoke. Spoke names must be unique.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `linked_interconnect_attachments` (`list[obj]`): A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes. When `null`, the `linked_interconnect_attachments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_interconnect_attachments.new](#fn-network_connectivity_spokelinked_interconnect_attachmentsnew) constructor.\n  - `linked_router_appliance_instances` (`list[obj]`): The URIs of linked Router appliance resources When `null`, the `linked_router_appliance_instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_router_appliance_instances.new](#fn-network_connectivity_spokelinked_router_appliance_instancesnew) constructor.\n  - `linked_vpn_tunnels` (`list[obj]`): The URIs of linked VPN tunnel resources When `null`, the `linked_vpn_tunnels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.linked_vpn_tunnels.new](#fn-network_connectivity_spokelinked_vpn_tunnelsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_spoke.timeouts.new](#fn-network_connectivity_spoketimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_connectivity_spoke` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hub,
    location,
    name,
    description=null,
    labels=null,
    linked_interconnect_attachments=null,
    linked_router_appliance_instances=null,
    linked_vpn_tunnels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    hub: hub,
    labels: labels,
    linked_interconnect_attachments: linked_interconnect_attachments,
    linked_router_appliance_instances: linked_router_appliance_instances,
    linked_vpn_tunnels: linked_vpn_tunnels,
    location: location,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_connectivity_spoke.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withHub':: d.fn(help='`google.string.withHub` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hub field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hub` field.\n', args=[]),
  withHub(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          hub: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLinkedInterconnectAttachments':: d.fn(help='`google.list[obj].withLinkedInterconnectAttachments` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the linked_interconnect_attachments field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLinkedInterconnectAttachmentsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `linked_interconnect_attachments` field.\n', args=[]),
  withLinkedInterconnectAttachments(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_interconnect_attachments: value,
        },
      },
    },
  },
  '#withLinkedInterconnectAttachmentsMixin':: d.fn(help='`google.list[obj].withLinkedInterconnectAttachmentsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the linked_interconnect_attachments field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedInterconnectAttachments](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `linked_interconnect_attachments` field.\n', args=[]),
  withLinkedInterconnectAttachmentsMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_interconnect_attachments+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLinkedRouterApplianceInstances':: d.fn(help='`google.list[obj].withLinkedRouterApplianceInstances` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the linked_router_appliance_instances field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLinkedRouterApplianceInstancesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `linked_router_appliance_instances` field.\n', args=[]),
  withLinkedRouterApplianceInstances(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_router_appliance_instances: value,
        },
      },
    },
  },
  '#withLinkedRouterApplianceInstancesMixin':: d.fn(help='`google.list[obj].withLinkedRouterApplianceInstancesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the linked_router_appliance_instances field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedRouterApplianceInstances](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `linked_router_appliance_instances` field.\n', args=[]),
  withLinkedRouterApplianceInstancesMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_router_appliance_instances+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLinkedVpnTunnels':: d.fn(help='`google.list[obj].withLinkedVpnTunnels` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the linked_vpn_tunnels field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLinkedVpnTunnelsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `linked_vpn_tunnels` field.\n', args=[]),
  withLinkedVpnTunnels(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_vpn_tunnels: value,
        },
      },
    },
  },
  '#withLinkedVpnTunnelsMixin':: d.fn(help='`google.list[obj].withLinkedVpnTunnelsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the linked_vpn_tunnels field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLinkedVpnTunnels](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `linked_vpn_tunnels` field.\n', args=[]),
  withLinkedVpnTunnelsMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_vpn_tunnels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
