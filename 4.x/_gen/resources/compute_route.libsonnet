local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_route', url='', help='`compute_route` represents the `google_compute_route` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_route.new` injects a new `google_compute_route` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_route` using the reference:\n\n    $._ref.google_compute_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property\nwhen you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `dest_range` (`string`): The destination range of outgoing packets that this route applies to.\nOnly IPv4 is supported.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `network` (`string`): The network that this route applies to.\n  - `next_hop_gateway` (`string`): URL to a gateway that should handle matching packets.\nCurrently, you can only specify the internet gateway, using a full or\npartial valid URL:\n* \u0026#39;https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway\u0026#39;\n* \u0026#39;projects/project/global/gateways/default-internet-gateway\u0026#39;\n* \u0026#39;global/gateways/default-internet-gateway\u0026#39;\n* The string \u0026#39;default-internet-gateway\u0026#39;. When `null`, the `next_hop_gateway` field will be omitted from the resulting object.\n  - `next_hop_ilb` (`string`): The IP address or URL to a forwarding rule of type\nloadBalancingScheme=INTERNAL that should handle matching\npackets.\n\nWith the GA provider you can only specify the forwarding\nrule as a partial or full URL. For example, the following\nare all valid values:\n* 10.128.0.56\n* https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule\n* regions/region/forwardingRules/forwardingRule\n\nWhen the beta provider, you can also specify the IP address\nof a forwarding rule from the same VPC or any peered VPC.\n\nNote that this can only be used when the destinationRange is\na public (non-RFC 1918) IP CIDR range. When `null`, the `next_hop_ilb` field will be omitted from the resulting object.\n  - `next_hop_instance` (`string`): URL to an instance that should handle matching packets.\nYou can specify this as a full or partial URL. For example:\n* \u0026#39;https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance\u0026#39;\n* \u0026#39;projects/project/zones/zone/instances/instance\u0026#39;\n* \u0026#39;zones/zone/instances/instance\u0026#39;\n* Just the instance name, with the zone in \u0026#39;next_hop_instance_zone\u0026#39;. When `null`, the `next_hop_instance` field will be omitted from the resulting object.\n  - `next_hop_instance_zone` (`string`): The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL. When `null`, the `next_hop_instance_zone` field will be omitted from the resulting object.\n  - `next_hop_ip` (`string`): Network IP address of an instance that should handle matching packets. When `null`, the `next_hop_ip` field will be omitted from the resulting object.\n  - `next_hop_vpn_tunnel` (`string`): URL to a VpnTunnel that should handle matching packets. When `null`, the `next_hop_vpn_tunnel` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this route. Priority is used to break ties in cases\nwhere there is more than one matching route of equal prefix length.\n\nIn the case of two routes with equal prefix length, the one with the\nlowest-numbered priority value wins.\n\nDefault value is 1000. Valid range is 0 through 65535. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tags` (`list`): A list of instance tags to which this route applies. When `null`, the `tags` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dest_range,
    name,
    network,
    description=null,
    next_hop_gateway=null,
    next_hop_ilb=null,
    next_hop_instance=null,
    next_hop_instance_zone=null,
    next_hop_ip=null,
    next_hop_vpn_tunnel=null,
    priority=null,
    project=null,
    tags=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      dest_range=dest_range,
      name=name,
      network=network,
      next_hop_gateway=next_hop_gateway,
      next_hop_ilb=next_hop_ilb,
      next_hop_instance=next_hop_instance,
      next_hop_instance_zone=next_hop_instance_zone,
      next_hop_ip=next_hop_ip,
      next_hop_vpn_tunnel=next_hop_vpn_tunnel,
      priority=priority,
      project=project,
      tags=tags,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_route.newAttrs` constructs a new object with attributes and blocks configured for the `compute_route`\nTerraform resource.\n\nUnlike [google.compute_route.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property\nwhen you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `dest_range` (`string`): The destination range of outgoing packets that this route applies to.\nOnly IPv4 is supported.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `network` (`string`): The network that this route applies to.\n  - `next_hop_gateway` (`string`): URL to a gateway that should handle matching packets.\nCurrently, you can only specify the internet gateway, using a full or\npartial valid URL:\n* &#39;https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway&#39;\n* &#39;projects/project/global/gateways/default-internet-gateway&#39;\n* &#39;global/gateways/default-internet-gateway&#39;\n* The string &#39;default-internet-gateway&#39;. When `null`, the `next_hop_gateway` field will be omitted from the resulting object.\n  - `next_hop_ilb` (`string`): The IP address or URL to a forwarding rule of type\nloadBalancingScheme=INTERNAL that should handle matching\npackets.\n\nWith the GA provider you can only specify the forwarding\nrule as a partial or full URL. For example, the following\nare all valid values:\n* 10.128.0.56\n* https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule\n* regions/region/forwardingRules/forwardingRule\n\nWhen the beta provider, you can also specify the IP address\nof a forwarding rule from the same VPC or any peered VPC.\n\nNote that this can only be used when the destinationRange is\na public (non-RFC 1918) IP CIDR range. When `null`, the `next_hop_ilb` field will be omitted from the resulting object.\n  - `next_hop_instance` (`string`): URL to an instance that should handle matching packets.\nYou can specify this as a full or partial URL. For example:\n* &#39;https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance&#39;\n* &#39;projects/project/zones/zone/instances/instance&#39;\n* &#39;zones/zone/instances/instance&#39;\n* Just the instance name, with the zone in &#39;next_hop_instance_zone&#39;. When `null`, the `next_hop_instance` field will be omitted from the resulting object.\n  - `next_hop_instance_zone` (`string`): The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL. When `null`, the `next_hop_instance_zone` field will be omitted from the resulting object.\n  - `next_hop_ip` (`string`): Network IP address of an instance that should handle matching packets. When `null`, the `next_hop_ip` field will be omitted from the resulting object.\n  - `next_hop_vpn_tunnel` (`string`): URL to a VpnTunnel that should handle matching packets. When `null`, the `next_hop_vpn_tunnel` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this route. Priority is used to break ties in cases\nwhere there is more than one matching route of equal prefix length.\n\nIn the case of two routes with equal prefix length, the one with the\nlowest-numbered priority value wins.\n\nDefault value is 1000. Valid range is 0 through 65535. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tags` (`list`): A list of instance tags to which this route applies. When `null`, the `tags` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_route` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dest_range,
    name,
    network,
    description=null,
    next_hop_gateway=null,
    next_hop_ilb=null,
    next_hop_instance=null,
    next_hop_instance_zone=null,
    next_hop_ip=null,
    next_hop_vpn_tunnel=null,
    priority=null,
    project=null,
    tags=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    dest_range: dest_range,
    name: name,
    network: network,
    next_hop_gateway: next_hop_gateway,
    next_hop_ilb: next_hop_ilb,
    next_hop_instance: next_hop_instance,
    next_hop_instance_zone: next_hop_instance_zone,
    next_hop_ip: next_hop_ip,
    next_hop_vpn_tunnel: next_hop_vpn_tunnel,
    priority: priority,
    project: project,
    tags: tags,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDestRange':: d.fn(help='`google.string.withDestRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dest_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dest_range` field.\n', args=[]),
  withDestRange(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          dest_range: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNextHopGateway':: d.fn(help='`google.string.withNextHopGateway` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_gateway field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_gateway` field.\n', args=[]),
  withNextHopGateway(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_gateway: value,
        },
      },
    },
  },
  '#withNextHopIlb':: d.fn(help='`google.string.withNextHopIlb` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_ilb field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_ilb` field.\n', args=[]),
  withNextHopIlb(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_ilb: value,
        },
      },
    },
  },
  '#withNextHopInstance':: d.fn(help='`google.string.withNextHopInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_instance` field.\n', args=[]),
  withNextHopInstance(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_instance: value,
        },
      },
    },
  },
  '#withNextHopInstanceZone':: d.fn(help='`google.string.withNextHopInstanceZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_instance_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_instance_zone` field.\n', args=[]),
  withNextHopInstanceZone(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_instance_zone: value,
        },
      },
    },
  },
  '#withNextHopIp':: d.fn(help='`google.string.withNextHopIp` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_ip` field.\n', args=[]),
  withNextHopIp(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_ip: value,
        },
      },
    },
  },
  '#withNextHopVpnTunnel':: d.fn(help='`google.string.withNextHopVpnTunnel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the next_hop_vpn_tunnel field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `next_hop_vpn_tunnel` field.\n', args=[]),
  withNextHopVpnTunnel(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_vpn_tunnel: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
