local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='active_directory_domain_trust', url='', help='`active_directory_domain_trust` represents the `google_active_directory_domain_trust` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.active_directory_domain_trust.new` injects a new `google_active_directory_domain_trust` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.active_directory_domain_trust.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.active_directory_domain_trust` using the reference:\n\n    $._ref.google_active_directory_domain_trust.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_active_directory_domain_trust.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `domain` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,\nhttps://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `selective_authentication` (`bool`): Whether the trusted side has forest/domain wide access or selective access to an approved set of resources. When `null`, the `selective_authentication` field will be omitted from the resulting object.\n  - `target_dns_ip_addresses` (`list`): The target DNS server IP addresses which can resolve the remote domain involved in the trust.\n  - `target_domain_name` (`string`): The fully qualified target domain name which will be in trust with the current domain.\n  - `trust_direction` (`string`): The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [\u0026#34;INBOUND\u0026#34;, \u0026#34;OUTBOUND\u0026#34;, \u0026#34;BIDIRECTIONAL\u0026#34;]\n  - `trust_handshake_secret` (`string`): The trust secret used for the handshake with the target domain. This will not be stored.\n  - `trust_type` (`string`): The type of trust represented by the trust resource. Possible values: [\u0026#34;FOREST\u0026#34;, \u0026#34;EXTERNAL\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain_trust.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    domain,
    target_dns_ip_addresses,
    target_domain_name,
    trust_direction,
    trust_handshake_secret,
    trust_type,
    project=null,
    selective_authentication=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_active_directory_domain_trust',
    label=resourceLabel,
    attrs=self.newAttrs(
      domain=domain,
      project=project,
      selective_authentication=selective_authentication,
      target_dns_ip_addresses=target_dns_ip_addresses,
      target_domain_name=target_domain_name,
      timeouts=timeouts,
      trust_direction=trust_direction,
      trust_handshake_secret=trust_handshake_secret,
      trust_type=trust_type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.active_directory_domain_trust.newAttrs` constructs a new object with attributes and blocks configured for the `active_directory_domain_trust`\nTerraform resource.\n\nUnlike [google.active_directory_domain_trust.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `domain` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,\nhttps://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `selective_authentication` (`bool`): Whether the trusted side has forest/domain wide access or selective access to an approved set of resources. When `null`, the `selective_authentication` field will be omitted from the resulting object.\n  - `target_dns_ip_addresses` (`list`): The target DNS server IP addresses which can resolve the remote domain involved in the trust.\n  - `target_domain_name` (`string`): The fully qualified target domain name which will be in trust with the current domain.\n  - `trust_direction` (`string`): The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [&#34;INBOUND&#34;, &#34;OUTBOUND&#34;, &#34;BIDIRECTIONAL&#34;]\n  - `trust_handshake_secret` (`string`): The trust secret used for the handshake with the target domain. This will not be stored.\n  - `trust_type` (`string`): The type of trust represented by the trust resource. Possible values: [&#34;FOREST&#34;, &#34;EXTERNAL&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain_trust.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `active_directory_domain_trust` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    domain,
    target_dns_ip_addresses,
    target_domain_name,
    trust_direction,
    trust_handshake_secret,
    trust_type,
    project=null,
    selective_authentication=null,
    timeouts=null
  ):: std.prune(a={
    domain: domain,
    project: project,
    selective_authentication: selective_authentication,
    target_dns_ip_addresses: target_dns_ip_addresses,
    target_domain_name: target_domain_name,
    timeouts: timeouts,
    trust_direction: trust_direction,
    trust_handshake_secret: trust_handshake_secret,
    trust_type: trust_type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.active_directory_domain_trust.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDomain':: d.fn(help='`google.string.withDomain` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain` field.\n', args=[]),
  withDomain(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          domain: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSelectiveAuthentication':: d.fn(help='`google.bool.withSelectiveAuthentication` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the selective_authentication field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `selective_authentication` field.\n', args=[]),
  withSelectiveAuthentication(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          selective_authentication: value,
        },
      },
    },
  },
  '#withTargetDnsIpAddresses':: d.fn(help='`google.list.withTargetDnsIpAddresses` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_dns_ip_addresses field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_dns_ip_addresses` field.\n', args=[]),
  withTargetDnsIpAddresses(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          target_dns_ip_addresses: value,
        },
      },
    },
  },
  '#withTargetDomainName':: d.fn(help='`google.string.withTargetDomainName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target_domain_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_domain_name` field.\n', args=[]),
  withTargetDomainName(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          target_domain_name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTrustDirection':: d.fn(help='`google.string.withTrustDirection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the trust_direction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `trust_direction` field.\n', args=[]),
  withTrustDirection(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          trust_direction: value,
        },
      },
    },
  },
  '#withTrustHandshakeSecret':: d.fn(help='`google.string.withTrustHandshakeSecret` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the trust_handshake_secret field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `trust_handshake_secret` field.\n', args=[]),
  withTrustHandshakeSecret(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          trust_handshake_secret: value,
        },
      },
    },
  },
  '#withTrustType':: d.fn(help='`google.string.withTrustType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the trust_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `trust_type` field.\n', args=[]),
  withTrustType(resourceLabel, value): {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          trust_type: value,
        },
      },
    },
  },
}
