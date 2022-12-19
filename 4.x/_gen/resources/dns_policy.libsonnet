local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_policy', url='', help='`dns_policy` represents the `google_dns_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  alternative_name_server_config:: {
    '#new':: d.fn(help='\n`google.dns_policy.alternative_name_server_config.new` constructs a new object with attributes and blocks configured for the `alternative_name_server_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_name_servers` (`list[obj]`): Sets an alternative name server for the associated networks. When specified,\nall DNS queries are forwarded to a name server that you choose. Names such as .internal\nare not available when an alternative name server is specified. When `null`, the `target_name_servers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.alternative_name_server_config.target_name_servers.new](#fn-alternativenameserverconfigtargetnameserversnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `alternative_name_server_config` sub block.\n', args=[]),
    new(
      target_name_servers=null
    ):: std.prune(a={
      target_name_servers: target_name_servers,
    }),
    target_name_servers:: {
      '#new':: d.fn(help='\n`google.dns_policy.alternative_name_server_config.target_name_servers.new` constructs a new object with attributes and blocks configured for the `target_name_servers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `forwarding_path` (`string`): Forwarding path for this TargetNameServer. If unset or &#39;default&#39; Cloud DNS will make forwarding\ndecision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go\nto the Internet. When set to &#39;private&#39;, Cloud DNS will always send queries through VPC for this target Possible values: [&#34;default&#34;, &#34;private&#34;] When `null`, the `forwarding_path` field will be omitted from the resulting object.\n  - `ipv4_address` (`string`): IPv4 address to forward to.\n\n**Returns**:\n  - An attribute object that represents the `target_name_servers` sub block.\n', args=[]),
      new(
        ipv4_address,
        forwarding_path=null
      ):: std.prune(a={
        forwarding_path: forwarding_path,
        ipv4_address: ipv4_address,
      }),
    },
  },
  networks:: {
    '#new':: d.fn(help='\n`google.dns_policy.networks.new` constructs a new object with attributes and blocks configured for the `networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network_url` (`string`): The id or fully qualified URL of the VPC network to forward queries to.\nThis should be formatted like &#39;projects/{project}/global/networks/{network}&#39; or\n&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;\n\n**Returns**:\n  - An attribute object that represents the `networks` sub block.\n', args=[]),
    new(
      network_url
    ):: std.prune(a={
      network_url: network_url,
    }),
  },
  '#new':: d.fn(help="\n`google.dns_policy.new` injects a new `google_dns_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dns_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dns_policy` using the reference:\n\n    $._ref.google_dns_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dns_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A textual description field. Defaults to \u0026#39;Managed by Terraform\u0026#39;. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_inbound_forwarding` (`bool`): Allows networks bound to this policy to receive DNS queries sent\nby VMs or applications over VPN connections. When enabled, a\nvirtual IP address will be allocated from each of the sub-networks\nthat are bound to this policy. When `null`, the `enable_inbound_forwarding` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Controls whether logging is enabled for the networks bound to this policy.\nDefaults to no logging if not set. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `name` (`string`): User assigned name for this policy.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `alternative_name_server_config` (`list[obj]`): Sets an alternative name server for the associated networks.\nWhen specified, all DNS queries are forwarded to a name server that you choose.\nNames such as .internal are not available when an alternative name server is specified. When `null`, the `alternative_name_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.alternative_name_server_config.new](#fn-dnspolicyalternativenameserverconfignew) constructor.\n  - `networks` (`list[obj]`): List of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.networks.new](#fn-dnspolicynetworksnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.timeouts.new](#fn-dnspolicytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    alternative_name_server_config=null,
    description=null,
    enable_inbound_forwarding=null,
    enable_logging=null,
    networks=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      alternative_name_server_config=alternative_name_server_config,
      description=description,
      enable_inbound_forwarding=enable_inbound_forwarding,
      enable_logging=enable_logging,
      name=name,
      networks=networks,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dns_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dns_policy`\nTerraform resource.\n\nUnlike [google.dns_policy.new](#fn-dnspolicynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A textual description field. Defaults to &#39;Managed by Terraform&#39;. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_inbound_forwarding` (`bool`): Allows networks bound to this policy to receive DNS queries sent\nby VMs or applications over VPN connections. When enabled, a\nvirtual IP address will be allocated from each of the sub-networks\nthat are bound to this policy. When `null`, the `enable_inbound_forwarding` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Controls whether logging is enabled for the networks bound to this policy.\nDefaults to no logging if not set. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `name` (`string`): User assigned name for this policy.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `alternative_name_server_config` (`list[obj]`): Sets an alternative name server for the associated networks.\nWhen specified, all DNS queries are forwarded to a name server that you choose.\nNames such as .internal are not available when an alternative name server is specified. When `null`, the `alternative_name_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.alternative_name_server_config.new](#fn-dnspolicyalternativenameserverconfignew) constructor.\n  - `networks` (`list[obj]`): List of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.networks.new](#fn-dnspolicynetworksnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.timeouts.new](#fn-dnspolicytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    alternative_name_server_config=null,
    description=null,
    enable_inbound_forwarding=null,
    enable_logging=null,
    networks=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    alternative_name_server_config: alternative_name_server_config,
    description: description,
    enable_inbound_forwarding: enable_inbound_forwarding,
    enable_logging: enable_logging,
    name: name,
    networks: networks,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dns_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAlternativeNameServerConfig':: d.fn(help='`google.dns_policy.withAlternativeNameServerConfig` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the alternative_name_server_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `alternative_name_server_config` field.\n', args=[]),
  withAlternativeNameServerConfig(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          alternative_name_server_config: value,
        },
      },
    },
  },
  '#withAlternativeNameServerConfigMixin':: d.fn(help='`google.dns_policy.withAlternativeNameServerConfigMixin` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the alternative_name_server_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dns_policy.withAlternativeNameServerConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `alternative_name_server_config` field.\n', args=[]),
  withAlternativeNameServerConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          alternative_name_server_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.dns_policy.withDescription` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnableInboundForwarding':: d.fn(help='`google.dns_policy.withEnableInboundForwarding` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the enable_inbound_forwarding field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enable_inbound_forwarding` field.\n', args=[]),
  withEnableInboundForwarding(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          enable_inbound_forwarding: value,
        },
      },
    },
  },
  '#withEnableLogging':: d.fn(help='`google.dns_policy.withEnableLogging` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the enable_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enable_logging` field.\n', args=[]),
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.dns_policy.withName` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworks':: d.fn(help='`google.dns_policy.withNetworks` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the networks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `networks` field.\n', args=[]),
  withNetworks(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  '#withNetworksMixin':: d.fn(help='`google.dns_policy.withNetworksMixin` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the networks field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dns_policy.withNetworks](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `networks` field.\n', args=[]),
  withNetworksMixin(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.dns_policy.withProject` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.dns_policy.withTimeouts` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.dns_policy.withTimeoutsMixin` constructs a mixin object that can be merged into the `dns_policy`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.dns_policy.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
