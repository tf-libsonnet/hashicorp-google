local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_ha_vpn_gateway', url='', help='`compute_ha_vpn_gateway` represents the `google_compute_ha_vpn_gateway` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_ha_vpn_gateway.new` injects a new `google_compute_ha_vpn_gateway` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_ha_vpn_gateway.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_ha_vpn_gateway` using the reference:\n\n    $._ref.google_compute_ha_vpn_gateway.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_ha_vpn_gateway.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The network this VPN gateway is accepting traffic for.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region this gateway should sit in. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.timeouts.new](#fn-compute_ha_vpn_gatewaytimeoutsnew) constructor.\n  - `vpn_interfaces` (`list[obj]`): A list of interfaces on this VPN gateway. When `null`, the `vpn_interfaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.vpn_interfaces.new](#fn-compute_ha_vpn_gatewayvpn_interfacesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    vpn_interfaces=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_ha_vpn_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      network=network,
      project=project,
      region=region,
      timeouts=timeouts,
      vpn_interfaces=vpn_interfaces
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_ha_vpn_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `compute_ha_vpn_gateway`\nTerraform resource.\n\nUnlike [google.compute_ha_vpn_gateway.new](#fn-compute_ha_vpn_gatewaynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The network this VPN gateway is accepting traffic for.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region this gateway should sit in. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.timeouts.new](#fn-compute_ha_vpn_gatewaytimeoutsnew) constructor.\n  - `vpn_interfaces` (`list[obj]`): A list of interfaces on this VPN gateway. When `null`, the `vpn_interfaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ha_vpn_gateway.vpn_interfaces.new](#fn-compute_ha_vpn_gatewayvpn_interfacesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_ha_vpn_gateway` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    vpn_interfaces=null
  ):: std.prune(a={
    description: description,
    name: name,
    network: network,
    project: project,
    region: region,
    timeouts: timeouts,
    vpn_interfaces: vpn_interfaces,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_ha_vpn_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  vpn_interfaces:: {
    '#new':: d.fn(help='\n`google.compute_ha_vpn_gateway.vpn_interfaces.new` constructs a new object with attributes and blocks configured for the `vpn_interfaces`\nTerraform sub block.\n\n\n\n**Args**:\n  - `interconnect_attachment` (`string`): URL of the interconnect attachment resource. When the value\nof this field is present, the VPN Gateway will be used for\nIPsec-encrypted Cloud Interconnect; all Egress or Ingress\ntraffic for this VPN Gateway interface will go through the\nspecified interconnect attachment resource.\n\nNot currently available publicly. When `null`, the `interconnect_attachment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpn_interfaces` sub block.\n', args=[]),
    new(
      interconnect_attachment=null
    ):: std.prune(a={
      interconnect_attachment: interconnect_attachment,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVpnInterfaces':: d.fn(help='`google.list[obj].withVpnInterfaces` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpn_interfaces field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVpnInterfacesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpn_interfaces` field.\n', args=[]),
  withVpnInterfaces(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          vpn_interfaces: value,
        },
      },
    },
  },
  '#withVpnInterfacesMixin':: d.fn(help='`google.list[obj].withVpnInterfacesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpn_interfaces field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVpnInterfaces](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpn_interfaces` field.\n', args=[]),
  withVpnInterfacesMixin(resourceLabel, value): {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          vpn_interfaces+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
