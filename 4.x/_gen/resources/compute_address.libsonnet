local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_address', url='', help='`compute_address` represents the `google_compute_address` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_address.new` injects a new `google_compute_address` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_address.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_address` using the reference:\n\n    $._ref.google_compute_address.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_address.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `address` (`string`): The static external IP address represented by this resource.\nThe IP address must be inside the specified subnetwork,\nif any. Set by the API if undefined. When `null`, the `address` field will be omitted from the resulting object.\n  - `address_type` (`string`): The type of address to reserve.\nNote: if you set this argument\u0026#39;s value as \u0026#39;INTERNAL\u0026#39; you need to leave the \u0026#39;network_tier\u0026#39; argument unset in that resource block. Default value: \u0026#34;EXTERNAL\u0026#34; Possible values: [\u0026#34;INTERNAL\u0026#34;, \u0026#34;EXTERNAL\u0026#34;] When `null`, the `address_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is \u0026#39;IPV4\u0026#39;. Possible values: [\u0026#34;IPV4\u0026#34;, \u0026#34;IPV6\u0026#34;] When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `ipv6_endpoint_type` (`string`): The endpoint type of this address, which should be VM or NETLB. This is\nused for deciding which type of endpoint this address can be used after\nthe external IPv6 address reservation. Possible values: [\u0026#34;VM\u0026#34;, \u0026#34;NETLB\u0026#34;] When `null`, the `ipv6_endpoint_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this address.  A list of key-\u0026gt;value pairs.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): The URL of the network in which to reserve the address. This field\ncan only be used with INTERNAL type with the VPC_PEERING and\nIPSEC_INTERCONNECT purposes. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tier` (`string`): The networking tier used for configuring this address. If this field is not\nspecified, it is assumed to be PREMIUM.\nThis argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it\u0026#39;s always Premium](https://cloud.google.com/network-tiers/docs/overview). Possible values: [\u0026#34;PREMIUM\u0026#34;, \u0026#34;STANDARD\u0026#34;] When `null`, the `network_tier` field will be omitted from the resulting object.\n  - `prefix_length` (`number`): The prefix length if the resource represents an IP range. When `null`, the `prefix_length` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of this resource, which can be one of the following values.\n\n* GCE_ENDPOINT for addresses that are used by VM instances, alias IP\nranges, load balancers, and similar resources.\n\n* SHARED_LOADBALANCER_VIP for an address that can be used by multiple\ninternal load balancers.\n\n* VPC_PEERING for addresses that are reserved for VPC peer networks.\n\n* IPSEC_INTERCONNECT for addresses created from a private IP range that\nare reserved for a VLAN attachment in an HA VPN over Cloud Interconnect\nconfiguration. These addresses are regional resources.\n\n* PRIVATE_SERVICE_CONNECT for a private network address that is used to\nconfigure Private Service Connect. Only global internal addresses can use\nthis purpose.\n\n\nThis should only be set when using an Internal address. When `null`, the `purpose` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created address should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The URL of the subnetwork in which to reserve the address. If an IP\naddress is specified, it must be within the subnetwork\u0026#39;s IP range.\nThis field can only be used with INTERNAL type with\nGCE_ENDPOINT/DNS_RESOLVER purposes. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_address.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    address=null,
    address_type=null,
    description=null,
    ip_version=null,
    ipv6_endpoint_type=null,
    labels=null,
    network=null,
    network_tier=null,
    prefix_length=null,
    project=null,
    purpose=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_address',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      address_type=address_type,
      description=description,
      ip_version=ip_version,
      ipv6_endpoint_type=ipv6_endpoint_type,
      labels=labels,
      name=name,
      network=network,
      network_tier=network_tier,
      prefix_length=prefix_length,
      project=project,
      purpose=purpose,
      region=region,
      subnetwork=subnetwork,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_address.newAttrs` constructs a new object with attributes and blocks configured for the `compute_address`\nTerraform resource.\n\nUnlike [google.compute_address.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `address` (`string`): The static external IP address represented by this resource.\nThe IP address must be inside the specified subnetwork,\nif any. Set by the API if undefined. When `null`, the `address` field will be omitted from the resulting object.\n  - `address_type` (`string`): The type of address to reserve.\nNote: if you set this argument&#39;s value as &#39;INTERNAL&#39; you need to leave the &#39;network_tier&#39; argument unset in that resource block. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;INTERNAL&#34;, &#34;EXTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is &#39;IPV4&#39;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `ipv6_endpoint_type` (`string`): The endpoint type of this address, which should be VM or NETLB. This is\nused for deciding which type of endpoint this address can be used after\nthe external IPv6 address reservation. Possible values: [&#34;VM&#34;, &#34;NETLB&#34;] When `null`, the `ipv6_endpoint_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this address.  A list of key-&gt;value pairs.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): The URL of the network in which to reserve the address. This field\ncan only be used with INTERNAL type with the VPC_PEERING and\nIPSEC_INTERCONNECT purposes. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tier` (`string`): The networking tier used for configuring this address. If this field is not\nspecified, it is assumed to be PREMIUM.\nThis argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it&#39;s always Premium](https://cloud.google.com/network-tiers/docs/overview). Possible values: [&#34;PREMIUM&#34;, &#34;STANDARD&#34;] When `null`, the `network_tier` field will be omitted from the resulting object.\n  - `prefix_length` (`number`): The prefix length if the resource represents an IP range. When `null`, the `prefix_length` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of this resource, which can be one of the following values.\n\n* GCE_ENDPOINT for addresses that are used by VM instances, alias IP\nranges, load balancers, and similar resources.\n\n* SHARED_LOADBALANCER_VIP for an address that can be used by multiple\ninternal load balancers.\n\n* VPC_PEERING for addresses that are reserved for VPC peer networks.\n\n* IPSEC_INTERCONNECT for addresses created from a private IP range that\nare reserved for a VLAN attachment in an HA VPN over Cloud Interconnect\nconfiguration. These addresses are regional resources.\n\n* PRIVATE_SERVICE_CONNECT for a private network address that is used to\nconfigure Private Service Connect. Only global internal addresses can use\nthis purpose.\n\n\nThis should only be set when using an Internal address. When `null`, the `purpose` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created address should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The URL of the subnetwork in which to reserve the address. If an IP\naddress is specified, it must be within the subnetwork&#39;s IP range.\nThis field can only be used with INTERNAL type with\nGCE_ENDPOINT/DNS_RESOLVER purposes. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_address.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_address` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    address=null,
    address_type=null,
    description=null,
    ip_version=null,
    ipv6_endpoint_type=null,
    labels=null,
    network=null,
    network_tier=null,
    prefix_length=null,
    project=null,
    purpose=null,
    region=null,
    subnetwork=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    address_type: address_type,
    description: description,
    ip_version: ip_version,
    ipv6_endpoint_type: ipv6_endpoint_type,
    labels: labels,
    name: name,
    network: network,
    network_tier: network_tier,
    prefix_length: prefix_length,
    project: project,
    purpose: purpose,
    region: region,
    subnetwork: subnetwork,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_address.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAddress':: d.fn(help='`google.string.withAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `address` field.\n', args=[]),
  withAddress(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  '#withAddressType':: d.fn(help='`google.string.withAddressType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the address_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `address_type` field.\n', args=[]),
  withAddressType(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          address_type: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIpVersion':: d.fn(help='`google.string.withIpVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_version` field.\n', args=[]),
  withIpVersion(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          ip_version: value,
        },
      },
    },
  },
  '#withIpv6EndpointType':: d.fn(help='`google.string.withIpv6EndpointType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ipv6_endpoint_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ipv6_endpoint_type` field.\n', args=[]),
  withIpv6EndpointType(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          ipv6_endpoint_type: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkTier':: d.fn(help='`google.string.withNetworkTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network_tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network_tier` field.\n', args=[]),
  withNetworkTier(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          network_tier: value,
        },
      },
    },
  },
  '#withPrefixLength':: d.fn(help='`google.number.withPrefixLength` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the prefix_length field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `prefix_length` field.\n', args=[]),
  withPrefixLength(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          prefix_length: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPurpose':: d.fn(help='`google.string.withPurpose` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the purpose field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `purpose` field.\n', args=[]),
  withPurpose(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
