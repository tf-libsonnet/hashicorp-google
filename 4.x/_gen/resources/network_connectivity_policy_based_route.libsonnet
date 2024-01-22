local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_connectivity_policy_based_route', url='', help='`network_connectivity_policy_based_route` represents the `google_network_connectivity_policy_based_route` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  filter:: {
    '#new':: d.fn(help='\n`google.network_connectivity_policy_based_route.filter.new` constructs a new object with attributes and blocks configured for the `filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dest_range` (`string`): The destination IP range of outgoing packets that this policy-based route applies to. Default is &#34;0.0.0.0/0&#34; if protocol version is IPv4. When `null`, the `dest_range` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol that this policy-based route applies to. Valid values are &#39;TCP&#39;, &#39;UDP&#39;, and &#39;ALL&#39;. Default is &#39;ALL&#39;. When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `protocol_version` (`string`): Internet protocol versions this policy-based route applies to. Possible values: [&#34;IPV4&#34;]\n  - `src_range` (`string`): The source IP range of outgoing packets that this policy-based route applies to. Default is &#34;0.0.0.0/0&#34; if protocol version is IPv4. When `null`, the `src_range` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `filter` sub block.\n', args=[]),
    new(
      protocol_version,
      dest_range=null,
      ip_protocol=null,
      src_range=null
    ):: std.prune(a={
      dest_range: dest_range,
      ip_protocol: ip_protocol,
      protocol_version: protocol_version,
      src_range: src_range,
    }),
  },
  interconnect_attachment:: {
    '#new':: d.fn(help='\n`google.network_connectivity_policy_based_route.interconnect_attachment.new` constructs a new object with attributes and blocks configured for the `interconnect_attachment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `region` (`string`): Cloud region to install this policy-based route on for Interconnect attachments. Use &#39;all&#39; to install it on all Interconnect attachments.\n\n**Returns**:\n  - An attribute object that represents the `interconnect_attachment` sub block.\n', args=[]),
    new(
      region
    ):: std.prune(a={
      region: region,
    }),
  },
  '#new':: d.fn(help="\n`google.network_connectivity_policy_based_route.new` injects a new `google_network_connectivity_policy_based_route` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_connectivity_policy_based_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_connectivity_policy_based_route` using the reference:\n\n    $._ref.google_network_connectivity_policy_based_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_connectivity_policy_based_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the policy based route.\n  - `network` (`string`): Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.\n  - `next_hop_ilb_ip` (`string`): The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. When `null`, the `next_hop_ilb_ip` field will be omitted from the resulting object.\n  - `next_hop_other_routes` (`string`): Other routes that will be referenced to determine the next hop of the packet. Possible values: [\u0026#34;DEFAULT_ROUTING\u0026#34;] When `null`, the `next_hop_other_routes` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `filter` (`list[obj]`): The filter to match L4 traffic. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.filter.new](#fn-filternew) constructor.\n  - `interconnect_attachment` (`list[obj]`): The interconnect attachments that this policy-based route applies to. When `null`, the `interconnect_attachment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.interconnect_attachment.new](#fn-interconnect_attachmentnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_machine` (`list[obj]`): VM instances to which this policy-based route applies to. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.virtual_machine.new](#fn-virtual_machinenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network,
    description=null,
    filter=null,
    interconnect_attachment=null,
    labels=null,
    next_hop_ilb_ip=null,
    next_hop_other_routes=null,
    priority=null,
    project=null,
    timeouts=null,
    virtual_machine=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_connectivity_policy_based_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      filter=filter,
      interconnect_attachment=interconnect_attachment,
      labels=labels,
      name=name,
      network=network,
      next_hop_ilb_ip=next_hop_ilb_ip,
      next_hop_other_routes=next_hop_other_routes,
      priority=priority,
      project=project,
      timeouts=timeouts,
      virtual_machine=virtual_machine
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_connectivity_policy_based_route.newAttrs` constructs a new object with attributes and blocks configured for the `network_connectivity_policy_based_route`\nTerraform resource.\n\nUnlike [google.network_connectivity_policy_based_route.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the policy based route.\n  - `network` (`string`): Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.\n  - `next_hop_ilb_ip` (`string`): The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. When `null`, the `next_hop_ilb_ip` field will be omitted from the resulting object.\n  - `next_hop_other_routes` (`string`): Other routes that will be referenced to determine the next hop of the packet. Possible values: [&#34;DEFAULT_ROUTING&#34;] When `null`, the `next_hop_other_routes` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `filter` (`list[obj]`): The filter to match L4 traffic. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.filter.new](#fn-filternew) constructor.\n  - `interconnect_attachment` (`list[obj]`): The interconnect attachments that this policy-based route applies to. When `null`, the `interconnect_attachment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.interconnect_attachment.new](#fn-interconnect_attachmentnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_machine` (`list[obj]`): VM instances to which this policy-based route applies to. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_policy_based_route.virtual_machine.new](#fn-virtual_machinenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_connectivity_policy_based_route` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network,
    description=null,
    filter=null,
    interconnect_attachment=null,
    labels=null,
    next_hop_ilb_ip=null,
    next_hop_other_routes=null,
    priority=null,
    project=null,
    timeouts=null,
    virtual_machine=null
  ):: std.prune(a={
    description: description,
    filter: filter,
    interconnect_attachment: interconnect_attachment,
    labels: labels,
    name: name,
    network: network,
    next_hop_ilb_ip: next_hop_ilb_ip,
    next_hop_other_routes: next_hop_other_routes,
    priority: priority,
    project: project,
    timeouts: timeouts,
    virtual_machine: virtual_machine,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_connectivity_policy_based_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  virtual_machine:: {
    '#new':: d.fn(help='\n`google.network_connectivity_policy_based_route.virtual_machine.new` constructs a new object with attributes and blocks configured for the `virtual_machine`\nTerraform sub block.\n\n\n\n**Args**:\n  - `tags` (`list`): A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.\n\n**Returns**:\n  - An attribute object that represents the `virtual_machine` sub block.\n', args=[]),
    new(
      tags
    ):: std.prune(a={
      tags: tags,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.list[obj].withFilter` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the filter field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFilterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withFilterMixin':: d.fn(help='`google.list[obj].withFilterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the filter field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFilter](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `filter` field.\n', args=[]),
  withFilterMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInterconnectAttachment':: d.fn(help='`google.list[obj].withInterconnectAttachment` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the interconnect_attachment field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInterconnectAttachmentMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `interconnect_attachment` field.\n', args=[]),
  withInterconnectAttachment(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          interconnect_attachment: value,
        },
      },
    },
  },
  '#withInterconnectAttachmentMixin':: d.fn(help='`google.list[obj].withInterconnectAttachmentMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the interconnect_attachment field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInterconnectAttachment](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `interconnect_attachment` field.\n', args=[]),
  withInterconnectAttachmentMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          interconnect_attachment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNextHopIlbIp':: d.fn(help='`google.string.withNextHopIlbIp` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_ilb_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_ilb_ip` field.\n', args=[]),
  withNextHopIlbIp(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          next_hop_ilb_ip: value,
        },
      },
    },
  },
  '#withNextHopOtherRoutes':: d.fn(help='`google.string.withNextHopOtherRoutes` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_other_routes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_other_routes` field.\n', args=[]),
  withNextHopOtherRoutes(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          next_hop_other_routes: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVirtualMachine':: d.fn(help='`google.list[obj].withVirtualMachine` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_machine field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVirtualMachineMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.\n', args=[]),
  withVirtualMachine(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          virtual_machine: value,
        },
      },
    },
  },
  '#withVirtualMachineMixin':: d.fn(help='`google.list[obj].withVirtualMachineMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_machine field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualMachine](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.\n', args=[]),
  withVirtualMachineMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_policy_based_route+: {
        [resourceLabel]+: {
          virtual_machine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
