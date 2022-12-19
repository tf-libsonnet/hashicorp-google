local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_router', url='', help='`compute_router` represents the `google_compute_router` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bgp:: {
    advertised_ip_ranges:: {
      '#new':: d.fn(help='\n`google.compute_router.bgp.advertised_ip_ranges.new` constructs a new object with attributes and blocks configured for the `advertised_ip_ranges`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): User-specified description for the IP range. When `null`, the `description` field will be omitted from the resulting object.\n  - `range` (`string`): The IP range to advertise. The value must be a\nCIDR-formatted string.\n\n**Returns**:\n  - An attribute object that represents the `advertised_ip_ranges` sub block.\n', args=[]),
      new(
        range,
        description=null
      ):: std.prune(a={
        description: description,
        range: range,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_router.bgp.new` constructs a new object with attributes and blocks configured for the `bgp`\nTerraform sub block.\n\n\n\n**Args**:\n  - `advertise_mode` (`string`): User-specified flag to indicate which mode to use for advertisement. Default value: &#34;DEFAULT&#34; Possible values: [&#34;DEFAULT&#34;, &#34;CUSTOM&#34;] When `null`, the `advertise_mode` field will be omitted from the resulting object.\n  - `advertised_groups` (`list`): User-specified list of prefix groups to advertise in custom mode.\nThis field can only be populated if advertiseMode is CUSTOM and\nis advertised to all peers of the router. These groups will be\nadvertised in addition to any specified prefixes. Leave this field\nblank to advertise no custom groups.\n\nThis enum field has the one valid value: ALL_SUBNETS When `null`, the `advertised_groups` field will be omitted from the resulting object.\n  - `asn` (`number`): Local BGP Autonomous System Number (ASN). Must be an RFC6996\nprivate ASN, either 16-bit or 32-bit. The value will be fixed for\nthis router resource. All VPN tunnels that link to this router\nwill have the same local ASN.\n  - `keepalive_interval` (`number`): The interval in seconds between BGP keepalive messages that are sent to the peer.\nHold time is three times the interval at which keepalive messages are sent, and the hold time is the\nmaximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer.\nBGP will use the smaller of either the local hold time value or the peer&#39;s hold time value as the hold time for\nthe BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20. When `null`, the `keepalive_interval` field will be omitted from the resulting object.\n  - `advertised_ip_ranges` (`list[obj]`): User-specified list of individual IP ranges to advertise in\ncustom mode. This field can only be populated if advertiseMode\nis CUSTOM and is advertised to all peers of the router. These IP\nranges will be advertised in addition to any specified groups.\nLeave this field blank to advertise no custom IP ranges. When `null`, the `advertised_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.bgp.advertised_ip_ranges.new](#fn-bgpadvertised_ip_rangesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bgp` sub block.\n', args=[]),
    new(
      asn,
      advertise_mode=null,
      advertised_groups=null,
      advertised_ip_ranges=null,
      keepalive_interval=null
    ):: std.prune(a={
      advertise_mode: advertise_mode,
      advertised_groups: advertised_groups,
      advertised_ip_ranges: advertised_ip_ranges,
      asn: asn,
      keepalive_interval: keepalive_interval,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_router.new` injects a new `google_compute_router` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_router.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_router` using the reference:\n\n    $._ref.google_compute_router.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_router.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `encrypted_interconnect_router` (`bool`): Field to indicate if a router is dedicated to use with encrypted\nInterconnect Attachment (IPsec-encrypted Cloud Interconnect feature).\n\nNot currently available publicly. When `null`, the `encrypted_interconnect_router` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): A reference to the network to which this router belongs.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the router resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `bgp` (`list[obj]`): BGP information specific to this router. When `null`, the `bgp` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.bgp.new](#fn-bgpnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network,
    bgp=null,
    description=null,
    encrypted_interconnect_router=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router',
    label=resourceLabel,
    attrs=self.newAttrs(
      bgp=bgp,
      description=description,
      encrypted_interconnect_router=encrypted_interconnect_router,
      name=name,
      network=network,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_router.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router`\nTerraform resource.\n\nUnlike [google.compute_router.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `encrypted_interconnect_router` (`bool`): Field to indicate if a router is dedicated to use with encrypted\nInterconnect Attachment (IPsec-encrypted Cloud Interconnect feature).\n\nNot currently available publicly. When `null`, the `encrypted_interconnect_router` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): A reference to the network to which this router belongs.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the router resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `bgp` (`list[obj]`): BGP information specific to this router. When `null`, the `bgp` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.bgp.new](#fn-bgpnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network,
    bgp=null,
    description=null,
    encrypted_interconnect_router=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    bgp: bgp,
    description: description,
    encrypted_interconnect_router: encrypted_interconnect_router,
    name: name,
    network: network,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_router.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBgp':: d.fn(help='`google.list[obj].withBgp` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bgp field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBgpMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bgp` field.\n', args=[]),
  withBgp(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          bgp: value,
        },
      },
    },
  },
  '#withBgpMixin':: d.fn(help='`google.list[obj].withBgpMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bgp field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBgp](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bgp` field.\n', args=[]),
  withBgpMixin(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          bgp+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEncryptedInterconnectRouter':: d.fn(help='`google.bool.withEncryptedInterconnectRouter` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the encrypted_interconnect_router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `encrypted_interconnect_router` field.\n', args=[]),
  withEncryptedInterconnectRouter(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          encrypted_interconnect_router: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
