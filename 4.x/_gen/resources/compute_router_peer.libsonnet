local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_router_peer', url='', help='`compute_router_peer` represents the `google_compute_router_peer` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  advertised_ip_ranges:: {
    '#new':: d.fn(help='\n`google.compute_router_peer.advertised_ip_ranges.new` constructs a new object with attributes and blocks configured for the `advertised_ip_ranges`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): User-specified description for the IP range. When `null`, the `description` field will be omitted from the resulting object.\n  - `range` (`string`): The IP range to advertise. The value must be a\nCIDR-formatted string.\n\n**Returns**:\n  - An attribute object that represents the `advertised_ip_ranges` sub block.\n', args=[]),
    new(
      range,
      description=null
    ):: std.prune(a={
      description: description,
      range: range,
    }),
  },
  bfd:: {
    '#new':: d.fn(help='\n`google.compute_router_peer.bfd.new` constructs a new object with attributes and blocks configured for the `bfd`\nTerraform sub block.\n\n\n\n**Args**:\n  - `min_receive_interval` (`number`): The minimum interval, in milliseconds, between BFD control packets\nreceived from the peer router. The actual value is negotiated\nbetween the two routers and is equal to the greater of this value\nand the transmit interval of the other router. If set, this value\nmust be between 1000 and 30000. When `null`, the `min_receive_interval` field will be omitted from the resulting object.\n  - `min_transmit_interval` (`number`): The minimum interval, in milliseconds, between BFD control packets\ntransmitted to the peer router. The actual value is negotiated\nbetween the two routers and is equal to the greater of this value\nand the corresponding receive interval of the other router. If set,\nthis value must be between 1000 and 30000. When `null`, the `min_transmit_interval` field will be omitted from the resulting object.\n  - `multiplier` (`number`): The number of consecutive BFD packets that must be missed before\nBFD declares that a peer is unavailable. If set, the value must\nbe a value between 5 and 16. When `null`, the `multiplier` field will be omitted from the resulting object.\n  - `session_initialization_mode` (`string`): The BFD session initialization mode for this BGP peer.\nIf set to &#39;ACTIVE&#39;, the Cloud Router will initiate the BFD session\nfor this BGP peer. If set to &#39;PASSIVE&#39;, the Cloud Router will wait\nfor the peer router to initiate the BFD session for this BGP peer.\nIf set to &#39;DISABLED&#39;, BFD is disabled for this BGP peer. Possible values: [&#34;ACTIVE&#34;, &#34;DISABLED&#34;, &#34;PASSIVE&#34;]\n\n**Returns**:\n  - An attribute object that represents the `bfd` sub block.\n', args=[]),
    new(
      session_initialization_mode,
      min_receive_interval=null,
      min_transmit_interval=null,
      multiplier=null
    ):: std.prune(a={
      min_receive_interval: min_receive_interval,
      min_transmit_interval: min_transmit_interval,
      multiplier: multiplier,
      session_initialization_mode: session_initialization_mode,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_router_peer.new` injects a new `google_compute_router_peer` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_router_peer.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_router_peer` using the reference:\n\n    $._ref.google_compute_router_peer.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_router_peer.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `advertise_mode` (`string`): User-specified flag to indicate which mode to use for advertisement.\nValid values of this enum field are: \u0026#39;DEFAULT\u0026#39;, \u0026#39;CUSTOM\u0026#39; Default value: \u0026#34;DEFAULT\u0026#34; Possible values: [\u0026#34;DEFAULT\u0026#34;, \u0026#34;CUSTOM\u0026#34;] When `null`, the `advertise_mode` field will be omitted from the resulting object.\n  - `advertised_groups` (`list`): User-specified list of prefix groups to advertise in custom\nmode, which can take one of the following options:\n\n* \u0026#39;ALL_SUBNETS\u0026#39;: Advertises all available subnets, including peer VPC subnets.\n* \u0026#39;ALL_VPC_SUBNETS\u0026#39;: Advertises the router\u0026#39;s own VPC subnets.\n* \u0026#39;ALL_PEER_VPC_SUBNETS\u0026#39;: Advertises peer subnets of the router\u0026#39;s VPC network.\n\n\nNote that this field can only be populated if advertiseMode is \u0026#39;CUSTOM\u0026#39;\nand overrides the list defined for the router (in the \u0026#34;bgp\u0026#34; message).\nThese groups are advertised in addition to any specified prefixes.\nLeave this field blank to advertise no custom groups. When `null`, the `advertised_groups` field will be omitted from the resulting object.\n  - `advertised_route_priority` (`number`): The priority of routes advertised to this BGP peer.\nWhere there is more than one matching route of maximum\nlength, the routes with the lowest priority value win. When `null`, the `advertised_route_priority` field will be omitted from the resulting object.\n  - `enable` (`bool`): The status of the BGP peer connection. If set to false, any active session\nwith the peer is terminated and all associated routing information is removed.\nIf set to true, the peer connection can be established with routing information.\nThe default is true. When `null`, the `enable` field will be omitted from the resulting object.\n  - `interface` (`string`): Name of the interface the BGP peer is associated with.\n  - `ip_address` (`string`): IP address of the interface inside Google Cloud Platform.\nOnly IPv4 is supported. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `name` (`string`): Name of this BGP peer. The name must be 1-63 characters long,\nand comply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `peer_asn` (`number`): Peer BGP Autonomous System Number (ASN).\nEach BGP interface may use a different value.\n  - `peer_ip_address` (`string`): IP address of the BGP interface outside Google Cloud Platform.\nOnly IPv4 is supported.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the router and BgpPeer reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): The name of the Cloud Router in which this BgpPeer will be configured.\n  - `advertised_ip_ranges` (`list[obj]`): User-specified list of individual IP ranges to advertise in\ncustom mode. This field can only be populated if advertiseMode\nis \u0026#39;CUSTOM\u0026#39; and is advertised to all peers of the router. These IP\nranges will be advertised in addition to any specified groups.\nLeave this field blank to advertise no custom IP ranges. When `null`, the `advertised_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.advertised_ip_ranges.new](#fn-advertised_ip_rangesnew) constructor.\n  - `bfd` (`list[obj]`): BFD configuration for the BGP peering. When `null`, the `bfd` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.bfd.new](#fn-bfdnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    interface,
    name,
    peer_asn,
    peer_ip_address,
    router,
    advertise_mode=null,
    advertised_groups=null,
    advertised_ip_ranges=null,
    advertised_route_priority=null,
    bfd=null,
    enable=null,
    ip_address=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router_peer',
    label=resourceLabel,
    attrs=self.newAttrs(
      advertise_mode=advertise_mode,
      advertised_groups=advertised_groups,
      advertised_ip_ranges=advertised_ip_ranges,
      advertised_route_priority=advertised_route_priority,
      bfd=bfd,
      enable=enable,
      interface=interface,
      ip_address=ip_address,
      name=name,
      peer_asn=peer_asn,
      peer_ip_address=peer_ip_address,
      project=project,
      region=region,
      router=router,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_router_peer.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_peer`\nTerraform resource.\n\nUnlike [google.compute_router_peer.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `advertise_mode` (`string`): User-specified flag to indicate which mode to use for advertisement.\nValid values of this enum field are: &#39;DEFAULT&#39;, &#39;CUSTOM&#39; Default value: &#34;DEFAULT&#34; Possible values: [&#34;DEFAULT&#34;, &#34;CUSTOM&#34;] When `null`, the `advertise_mode` field will be omitted from the resulting object.\n  - `advertised_groups` (`list`): User-specified list of prefix groups to advertise in custom\nmode, which can take one of the following options:\n\n* &#39;ALL_SUBNETS&#39;: Advertises all available subnets, including peer VPC subnets.\n* &#39;ALL_VPC_SUBNETS&#39;: Advertises the router&#39;s own VPC subnets.\n* &#39;ALL_PEER_VPC_SUBNETS&#39;: Advertises peer subnets of the router&#39;s VPC network.\n\n\nNote that this field can only be populated if advertiseMode is &#39;CUSTOM&#39;\nand overrides the list defined for the router (in the &#34;bgp&#34; message).\nThese groups are advertised in addition to any specified prefixes.\nLeave this field blank to advertise no custom groups. When `null`, the `advertised_groups` field will be omitted from the resulting object.\n  - `advertised_route_priority` (`number`): The priority of routes advertised to this BGP peer.\nWhere there is more than one matching route of maximum\nlength, the routes with the lowest priority value win. When `null`, the `advertised_route_priority` field will be omitted from the resulting object.\n  - `enable` (`bool`): The status of the BGP peer connection. If set to false, any active session\nwith the peer is terminated and all associated routing information is removed.\nIf set to true, the peer connection can be established with routing information.\nThe default is true. When `null`, the `enable` field will be omitted from the resulting object.\n  - `interface` (`string`): Name of the interface the BGP peer is associated with.\n  - `ip_address` (`string`): IP address of the interface inside Google Cloud Platform.\nOnly IPv4 is supported. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `name` (`string`): Name of this BGP peer. The name must be 1-63 characters long,\nand comply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `peer_asn` (`number`): Peer BGP Autonomous System Number (ASN).\nEach BGP interface may use a different value.\n  - `peer_ip_address` (`string`): IP address of the BGP interface outside Google Cloud Platform.\nOnly IPv4 is supported.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the router and BgpPeer reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): The name of the Cloud Router in which this BgpPeer will be configured.\n  - `advertised_ip_ranges` (`list[obj]`): User-specified list of individual IP ranges to advertise in\ncustom mode. This field can only be populated if advertiseMode\nis &#39;CUSTOM&#39; and is advertised to all peers of the router. These IP\nranges will be advertised in addition to any specified groups.\nLeave this field blank to advertise no custom IP ranges. When `null`, the `advertised_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.advertised_ip_ranges.new](#fn-advertised_ip_rangesnew) constructor.\n  - `bfd` (`list[obj]`): BFD configuration for the BGP peering. When `null`, the `bfd` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.bfd.new](#fn-bfdnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_peer.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router_peer` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    interface,
    name,
    peer_asn,
    peer_ip_address,
    router,
    advertise_mode=null,
    advertised_groups=null,
    advertised_ip_ranges=null,
    advertised_route_priority=null,
    bfd=null,
    enable=null,
    ip_address=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    advertise_mode: advertise_mode,
    advertised_groups: advertised_groups,
    advertised_ip_ranges: advertised_ip_ranges,
    advertised_route_priority: advertised_route_priority,
    bfd: bfd,
    enable: enable,
    interface: interface,
    ip_address: ip_address,
    name: name,
    peer_asn: peer_asn,
    peer_ip_address: peer_ip_address,
    project: project,
    region: region,
    router: router,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_router_peer.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAdvertiseMode':: d.fn(help='`google.string.withAdvertiseMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the advertise_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `advertise_mode` field.\n', args=[]),
  withAdvertiseMode(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertise_mode: value,
        },
      },
    },
  },
  '#withAdvertisedGroups':: d.fn(help='`google.list.withAdvertisedGroups` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the advertised_groups field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `advertised_groups` field.\n', args=[]),
  withAdvertisedGroups(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_groups: value,
        },
      },
    },
  },
  '#withAdvertisedIpRanges':: d.fn(help='`google.list[obj].withAdvertisedIpRanges` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advertised_ip_ranges field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAdvertisedIpRangesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advertised_ip_ranges` field.\n', args=[]),
  withAdvertisedIpRanges(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_ip_ranges: value,
        },
      },
    },
  },
  '#withAdvertisedIpRangesMixin':: d.fn(help='`google.list[obj].withAdvertisedIpRangesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advertised_ip_ranges field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdvertisedIpRanges](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advertised_ip_ranges` field.\n', args=[]),
  withAdvertisedIpRangesMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_ip_ranges+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAdvertisedRoutePriority':: d.fn(help='`google.number.withAdvertisedRoutePriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the advertised_route_priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `advertised_route_priority` field.\n', args=[]),
  withAdvertisedRoutePriority(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_route_priority: value,
        },
      },
    },
  },
  '#withBfd':: d.fn(help='`google.list[obj].withBfd` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bfd field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBfdMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bfd` field.\n', args=[]),
  withBfd(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          bfd: value,
        },
      },
    },
  },
  '#withBfdMixin':: d.fn(help='`google.list[obj].withBfdMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bfd field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBfd](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bfd` field.\n', args=[]),
  withBfdMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          bfd+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnable':: d.fn(help='`google.bool.withEnable` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable` field.\n', args=[]),
  withEnable(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          enable: value,
        },
      },
    },
  },
  '#withInterface':: d.fn(help='`google.string.withInterface` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the interface field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `interface` field.\n', args=[]),
  withInterface(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          interface: value,
        },
      },
    },
  },
  '#withIpAddress':: d.fn(help='`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_address` field.\n', args=[]),
  withIpAddress(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPeerAsn':: d.fn(help='`google.number.withPeerAsn` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the peer_asn field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `peer_asn` field.\n', args=[]),
  withPeerAsn(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          peer_asn: value,
        },
      },
    },
  },
  '#withPeerIpAddress':: d.fn(help='`google.string.withPeerIpAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_ip_address` field.\n', args=[]),
  withPeerIpAddress(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          peer_ip_address: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRouter':: d.fn(help='`google.string.withRouter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `router` field.\n', args=[]),
  withRouter(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
