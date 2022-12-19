local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_interconnect_attachment', url='', help='`compute_interconnect_attachment` represents the `google_compute_interconnect_attachment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_interconnect_attachment.new` injects a new `google_compute_interconnect_attachment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_interconnect_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_interconnect_attachment` using the reference:\n\n    $._ref.google_compute_interconnect_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_interconnect_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `admin_enabled` (`bool`): Whether the VLAN attachment is enabled or disabled.  When using\nPARTNER type this will Pre-Activate the interconnect attachment When `null`, the `admin_enabled` field will be omitted from the resulting object.\n  - `bandwidth` (`string`): Provisioned bandwidth capacity for the interconnect attachment.\nFor attachments of type DEDICATED, the user can set the bandwidth.\nFor attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.\nOutput only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,\nDefaults to BPS_10G Possible values: [\u0026#34;BPS_50M\u0026#34;, \u0026#34;BPS_100M\u0026#34;, \u0026#34;BPS_200M\u0026#34;, \u0026#34;BPS_300M\u0026#34;, \u0026#34;BPS_400M\u0026#34;, \u0026#34;BPS_500M\u0026#34;, \u0026#34;BPS_1G\u0026#34;, \u0026#34;BPS_2G\u0026#34;, \u0026#34;BPS_5G\u0026#34;, \u0026#34;BPS_10G\u0026#34;, \u0026#34;BPS_20G\u0026#34;, \u0026#34;BPS_50G\u0026#34;] When `null`, the `bandwidth` field will be omitted from the resulting object.\n  - `candidate_subnets` (`list`): Up to 16 candidate prefixes that can be used to restrict the allocation\nof cloudRouterIpAddress and customerRouterIpAddress for this attachment.\nAll prefixes must be within link-local address space (169.254.0.0/16)\nand must be /29 or shorter (/28, /27, etc). Google will attempt to select\nan unused /29 from the supplied candidate prefix(es). The request will\nfail if all possible /29s are in use on Google\u0026#39;s edge. If not supplied,\nGoogle will randomly select an unused /29 from all of link-local space. When `null`, the `candidate_subnets` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `edge_availability_domain` (`string`): Desired availability domain for the attachment. Only available for type\nPARTNER, at creation time. For improved reliability, customers should\nconfigure a pair of attachments with one per availability domain. The\nselected availability domain will be provided to the Partner via the\npairing key so that the provisioned circuit will lie in the specified\ndomain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY. When `null`, the `edge_availability_domain` field will be omitted from the resulting object.\n  - `encryption` (`string`): Indicates the user-supplied encryption option of this interconnect\nattachment:\n\nNONE is the default value, which means that the attachment carries\nunencrypted traffic. VMs can send traffic to, or receive traffic\nfrom, this type of attachment.\n\nIPSEC indicates that the attachment carries only traffic encrypted by\nan IPsec device such as an HA VPN gateway. VMs cannot directly send\ntraffic to, or receive traffic from, such an attachment. To use\nIPsec-encrypted Cloud Interconnect create the attachment using this\noption.\n\nNot currently available publicly. Default value: \u0026#34;NONE\u0026#34; Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;IPSEC\u0026#34;] When `null`, the `encryption` field will be omitted from the resulting object.\n  - `interconnect` (`string`): URL of the underlying Interconnect object that this attachment\u0026#39;s\ntraffic will traverse through. Required if type is DEDICATED, must not\nbe set if type is PARTNER. When `null`, the `interconnect` field will be omitted from the resulting object.\n  - `ipsec_internal_addresses` (`list`): URL of addresses that have been reserved for the interconnect\nattachment, Used only for interconnect attachment that has the\nencryption option as IPSEC.\n\nThe addresses must be RFC 1918 IP address ranges. When creating HA\nVPN gateway over the interconnect attachment, if the attachment is\nconfigured to use an RFC 1918 IP address, then the VPN gateway\u0026#39;s IP\naddress will be allocated from the IP address range specified\nhere.\n\nFor example, if the HA VPN gateway\u0026#39;s interface 0 is paired to this\ninterconnect attachment, then an RFC 1918 IP address for the VPN\ngateway interface 0 will be allocated from the IP address specified\nfor this interconnect attachment.\n\nIf this field is not specified for interconnect attachment that has\nencryption option as IPSEC, later on when creating HA VPN gateway on\nthis interconnect attachment, the HA VPN gateway\u0026#39;s IP address will be\nallocated from regional external IP address pool. When `null`, the `ipsec_internal_addresses` field will be omitted from the resulting object.\n  - `mtu` (`string`): Maximum Transmission Unit (MTU), in bytes, of packets passing through\nthis interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440. When `null`, the `mtu` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The\nname must be 1-63 characters long, and comply with RFC1035. Specifically, the\nname must be 1-63 characters long and match the regular expression\n\u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the first character must be a\nlowercase letter, and all following characters must be a dash, lowercase\nletter, or digit, except the last character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the regional interconnect attachment resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): URL of the cloud router to be used for dynamic routing. This router must be in\nthe same region as this InterconnectAttachment. The InterconnectAttachment will\nautomatically connect the Interconnect to the network \u0026amp; region within which the\nCloud Router is configured.\n  - `type` (`string`): The type of InterconnectAttachment you wish to create. Defaults to\nDEDICATED. Possible values: [\u0026#34;DEDICATED\u0026#34;, \u0026#34;PARTNER\u0026#34;, \u0026#34;PARTNER_PROVIDER\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `vlan_tag8021q` (`number`): The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When\nusing PARTNER type this will be managed upstream. When `null`, the `vlan_tag8021q` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_interconnect_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    router,
    admin_enabled=null,
    bandwidth=null,
    candidate_subnets=null,
    description=null,
    edge_availability_domain=null,
    encryption=null,
    interconnect=null,
    ipsec_internal_addresses=null,
    mtu=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    vlan_tag8021q=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_interconnect_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin_enabled=admin_enabled,
      bandwidth=bandwidth,
      candidate_subnets=candidate_subnets,
      description=description,
      edge_availability_domain=edge_availability_domain,
      encryption=encryption,
      interconnect=interconnect,
      ipsec_internal_addresses=ipsec_internal_addresses,
      mtu=mtu,
      name=name,
      project=project,
      region=region,
      router=router,
      timeouts=timeouts,
      type=type,
      vlan_tag8021q=vlan_tag8021q
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_interconnect_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `compute_interconnect_attachment`\nTerraform resource.\n\nUnlike [google.compute_interconnect_attachment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `admin_enabled` (`bool`): Whether the VLAN attachment is enabled or disabled.  When using\nPARTNER type this will Pre-Activate the interconnect attachment When `null`, the `admin_enabled` field will be omitted from the resulting object.\n  - `bandwidth` (`string`): Provisioned bandwidth capacity for the interconnect attachment.\nFor attachments of type DEDICATED, the user can set the bandwidth.\nFor attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.\nOutput only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,\nDefaults to BPS_10G Possible values: [&#34;BPS_50M&#34;, &#34;BPS_100M&#34;, &#34;BPS_200M&#34;, &#34;BPS_300M&#34;, &#34;BPS_400M&#34;, &#34;BPS_500M&#34;, &#34;BPS_1G&#34;, &#34;BPS_2G&#34;, &#34;BPS_5G&#34;, &#34;BPS_10G&#34;, &#34;BPS_20G&#34;, &#34;BPS_50G&#34;] When `null`, the `bandwidth` field will be omitted from the resulting object.\n  - `candidate_subnets` (`list`): Up to 16 candidate prefixes that can be used to restrict the allocation\nof cloudRouterIpAddress and customerRouterIpAddress for this attachment.\nAll prefixes must be within link-local address space (169.254.0.0/16)\nand must be /29 or shorter (/28, /27, etc). Google will attempt to select\nan unused /29 from the supplied candidate prefix(es). The request will\nfail if all possible /29s are in use on Google&#39;s edge. If not supplied,\nGoogle will randomly select an unused /29 from all of link-local space. When `null`, the `candidate_subnets` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `edge_availability_domain` (`string`): Desired availability domain for the attachment. Only available for type\nPARTNER, at creation time. For improved reliability, customers should\nconfigure a pair of attachments with one per availability domain. The\nselected availability domain will be provided to the Partner via the\npairing key so that the provisioned circuit will lie in the specified\ndomain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY. When `null`, the `edge_availability_domain` field will be omitted from the resulting object.\n  - `encryption` (`string`): Indicates the user-supplied encryption option of this interconnect\nattachment:\n\nNONE is the default value, which means that the attachment carries\nunencrypted traffic. VMs can send traffic to, or receive traffic\nfrom, this type of attachment.\n\nIPSEC indicates that the attachment carries only traffic encrypted by\nan IPsec device such as an HA VPN gateway. VMs cannot directly send\ntraffic to, or receive traffic from, such an attachment. To use\nIPsec-encrypted Cloud Interconnect create the attachment using this\noption.\n\nNot currently available publicly. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;IPSEC&#34;] When `null`, the `encryption` field will be omitted from the resulting object.\n  - `interconnect` (`string`): URL of the underlying Interconnect object that this attachment&#39;s\ntraffic will traverse through. Required if type is DEDICATED, must not\nbe set if type is PARTNER. When `null`, the `interconnect` field will be omitted from the resulting object.\n  - `ipsec_internal_addresses` (`list`): URL of addresses that have been reserved for the interconnect\nattachment, Used only for interconnect attachment that has the\nencryption option as IPSEC.\n\nThe addresses must be RFC 1918 IP address ranges. When creating HA\nVPN gateway over the interconnect attachment, if the attachment is\nconfigured to use an RFC 1918 IP address, then the VPN gateway&#39;s IP\naddress will be allocated from the IP address range specified\nhere.\n\nFor example, if the HA VPN gateway&#39;s interface 0 is paired to this\ninterconnect attachment, then an RFC 1918 IP address for the VPN\ngateway interface 0 will be allocated from the IP address specified\nfor this interconnect attachment.\n\nIf this field is not specified for interconnect attachment that has\nencryption option as IPSEC, later on when creating HA VPN gateway on\nthis interconnect attachment, the HA VPN gateway&#39;s IP address will be\nallocated from regional external IP address pool. When `null`, the `ipsec_internal_addresses` field will be omitted from the resulting object.\n  - `mtu` (`string`): Maximum Transmission Unit (MTU), in bytes, of packets passing through\nthis interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440. When `null`, the `mtu` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The\nname must be 1-63 characters long, and comply with RFC1035. Specifically, the\nname must be 1-63 characters long and match the regular expression\n&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character must be a\nlowercase letter, and all following characters must be a dash, lowercase\nletter, or digit, except the last character, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the regional interconnect attachment resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): URL of the cloud router to be used for dynamic routing. This router must be in\nthe same region as this InterconnectAttachment. The InterconnectAttachment will\nautomatically connect the Interconnect to the network &amp; region within which the\nCloud Router is configured.\n  - `type` (`string`): The type of InterconnectAttachment you wish to create. Defaults to\nDEDICATED. Possible values: [&#34;DEDICATED&#34;, &#34;PARTNER&#34;, &#34;PARTNER_PROVIDER&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `vlan_tag8021q` (`number`): The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When\nusing PARTNER type this will be managed upstream. When `null`, the `vlan_tag8021q` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_interconnect_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_interconnect_attachment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    router,
    admin_enabled=null,
    bandwidth=null,
    candidate_subnets=null,
    description=null,
    edge_availability_domain=null,
    encryption=null,
    interconnect=null,
    ipsec_internal_addresses=null,
    mtu=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    vlan_tag8021q=null
  ):: std.prune(a={
    admin_enabled: admin_enabled,
    bandwidth: bandwidth,
    candidate_subnets: candidate_subnets,
    description: description,
    edge_availability_domain: edge_availability_domain,
    encryption: encryption,
    interconnect: interconnect,
    ipsec_internal_addresses: ipsec_internal_addresses,
    mtu: mtu,
    name: name,
    project: project,
    region: region,
    router: router,
    timeouts: timeouts,
    type: type,
    vlan_tag8021q: vlan_tag8021q,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_interconnect_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAdminEnabled':: d.fn(help='`google.bool.withAdminEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the admin_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `admin_enabled` field.\n', args=[]),
  withAdminEnabled(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          admin_enabled: value,
        },
      },
    },
  },
  '#withBandwidth':: d.fn(help='`google.string.withBandwidth` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bandwidth field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bandwidth` field.\n', args=[]),
  withBandwidth(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          bandwidth: value,
        },
      },
    },
  },
  '#withCandidateSubnets':: d.fn(help='`google.list.withCandidateSubnets` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the candidate_subnets field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `candidate_subnets` field.\n', args=[]),
  withCandidateSubnets(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          candidate_subnets: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEdgeAvailabilityDomain':: d.fn(help='`google.string.withEdgeAvailabilityDomain` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the edge_availability_domain field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `edge_availability_domain` field.\n', args=[]),
  withEdgeAvailabilityDomain(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          edge_availability_domain: value,
        },
      },
    },
  },
  '#withEncryption':: d.fn(help='`google.string.withEncryption` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the encryption field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `encryption` field.\n', args=[]),
  withEncryption(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          encryption: value,
        },
      },
    },
  },
  '#withInterconnect':: d.fn(help='`google.string.withInterconnect` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the interconnect field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `interconnect` field.\n', args=[]),
  withInterconnect(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          interconnect: value,
        },
      },
    },
  },
  '#withIpsecInternalAddresses':: d.fn(help='`google.list.withIpsecInternalAddresses` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ipsec_internal_addresses field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ipsec_internal_addresses` field.\n', args=[]),
  withIpsecInternalAddresses(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          ipsec_internal_addresses: value,
        },
      },
    },
  },
  '#withMtu':: d.fn(help='`google.string.withMtu` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the mtu field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `mtu` field.\n', args=[]),
  withMtu(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          mtu: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRouter':: d.fn(help='`google.string.withRouter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `router` field.\n', args=[]),
  withRouter(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withVlanTag8021Q':: d.fn(help='`google.number.withVlanTag8021Q` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the vlan_tag8021q field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `vlan_tag8021q` field.\n', args=[]),
  withVlanTag8021Q(resourceLabel, value): {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          vlan_tag8021q: value,
        },
      },
    },
  },
}
