local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_firewall_policy_rule', url='', help='`compute_firewall_policy_rule` represents the `google_compute_firewall_policy_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  match:: {
    layer4_configs:: {
      '#new':: d.fn(help='\n`google.compute_firewall_policy_rule.match.layer4_configs.new` constructs a new object with attributes and blocks configured for the `layer4_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (`tcp`, `udp`, `icmp`, `esp`, `ah`, `ipip`, `sctp`), or the IP protocol number.\n  - `ports` (`list`): An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ``. When `null`, the `ports` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `layer4_configs` sub block.\n', args=[]),
      new(
        ip_protocol,
        ports=null
      ):: std.prune(a={
        ip_protocol: ip_protocol,
        ports: ports,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_firewall_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dest_address_groups` (`list`): Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10. Destination address groups is only supported in Egress rules. When `null`, the `dest_address_groups` field will be omitted from the resulting object.\n  - `dest_fqdns` (`list`): Domain names that will be used to match against the resolved domain name of destination of traffic. Can only be specified if DIRECTION is egress. When `null`, the `dest_fqdns` field will be omitted from the resulting object.\n  - `dest_ip_ranges` (`list`): CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 256. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.\n  - `dest_region_codes` (`list`): The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is egress. When `null`, the `dest_region_codes` field will be omitted from the resulting object.\n  - `dest_threat_intelligences` (`list`): Name of the Google Cloud Threat Intelligence list. When `null`, the `dest_threat_intelligences` field will be omitted from the resulting object.\n  - `src_address_groups` (`list`): Address groups which should be matched against the traffic source. Maximum number of source address groups is 10. Source address groups is only supported in Ingress rules. When `null`, the `src_address_groups` field will be omitted from the resulting object.\n  - `src_fqdns` (`list`): Domain names that will be used to match against the resolved domain name of source of traffic. Can only be specified if DIRECTION is ingress. When `null`, the `src_fqdns` field will be omitted from the resulting object.\n  - `src_ip_ranges` (`list`): CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 256. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.\n  - `src_region_codes` (`list`): The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is ingress. When `null`, the `src_region_codes` field will be omitted from the resulting object.\n  - `src_threat_intelligences` (`list`): Name of the Google Cloud Threat Intelligence list. When `null`, the `src_threat_intelligences` field will be omitted from the resulting object.\n  - `layer4_configs` (`list[obj]`): Pairs of IP protocols and ports that the rule should match. When `null`, the `layer4_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_rule.match.layer4_configs.new](#fn-matchlayer4_configsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match` sub block.\n', args=[]),
    new(
      dest_address_groups=null,
      dest_fqdns=null,
      dest_ip_ranges=null,
      dest_region_codes=null,
      dest_threat_intelligences=null,
      layer4_configs=null,
      src_address_groups=null,
      src_fqdns=null,
      src_ip_ranges=null,
      src_region_codes=null,
      src_threat_intelligences=null
    ):: std.prune(a={
      dest_address_groups: dest_address_groups,
      dest_fqdns: dest_fqdns,
      dest_ip_ranges: dest_ip_ranges,
      dest_region_codes: dest_region_codes,
      dest_threat_intelligences: dest_threat_intelligences,
      layer4_configs: layer4_configs,
      src_address_groups: src_address_groups,
      src_fqdns: src_fqdns,
      src_ip_ranges: src_ip_ranges,
      src_region_codes: src_region_codes,
      src_threat_intelligences: src_threat_intelligences,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_firewall_policy_rule.new` injects a new `google_compute_firewall_policy_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_firewall_policy_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_firewall_policy_rule` using the reference:\n\n    $._ref.google_compute_firewall_policy_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_firewall_policy_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The Action to perform when the client connection triggers the rule. Valid actions are \u0026#34;allow\u0026#34;, \u0026#34;deny\u0026#34; and \u0026#34;goto_next\u0026#34;.\n  - `description` (`string`): An optional description for this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `direction` (`string`): The direction in which this rule applies. Possible values: INGRESS, EGRESS\n  - `disabled` (`bool`): Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on \u0026#34;goto_next\u0026#34; rules. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `firewall_policy` (`string`): The firewall policy of the resource.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.\n  - `target_resources` (`list`): A list of network resource URLs to which this rule applies. This field allows you to control which network\u0026#39;s VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule. When `null`, the `target_resources` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding \u0026#39;action\u0026#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_rule.match.new](#fn-matchnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    direction,
    firewall_policy,
    priority,
    description=null,
    disabled=null,
    enable_logging=null,
    match=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_firewall_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      direction=direction,
      disabled=disabled,
      enable_logging=enable_logging,
      firewall_policy=firewall_policy,
      match=match,
      priority=priority,
      target_resources=target_resources,
      target_service_accounts=target_service_accounts,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_firewall_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_firewall_policy_rule`\nTerraform resource.\n\nUnlike [google.compute_firewall_policy_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The Action to perform when the client connection triggers the rule. Valid actions are &#34;allow&#34;, &#34;deny&#34; and &#34;goto_next&#34;.\n  - `description` (`string`): An optional description for this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `direction` (`string`): The direction in which this rule applies. Possible values: INGRESS, EGRESS\n  - `disabled` (`bool`): Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on &#34;goto_next&#34; rules. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `firewall_policy` (`string`): The firewall policy of the resource.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.\n  - `target_resources` (`list`): A list of network resource URLs to which this rule applies. This field allows you to control which network&#39;s VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule. When `null`, the `target_resources` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_rule.match.new](#fn-matchnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_firewall_policy_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    direction,
    firewall_policy,
    priority,
    description=null,
    disabled=null,
    enable_logging=null,
    match=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    direction: direction,
    disabled: disabled,
    enable_logging: enable_logging,
    firewall_policy: firewall_policy,
    match: match,
    priority: priority,
    target_resources: target_resources,
    target_service_accounts: target_service_accounts,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_firewall_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAction':: d.fn(help='`google.string.withAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDirection':: d.fn(help='`google.string.withDirection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the direction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `direction` field.\n', args=[]),
  withDirection(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withEnableLogging':: d.fn(help='`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_logging` field.\n', args=[]),
  withEnableLogging(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  '#withFirewallPolicy':: d.fn(help='`google.string.withFirewallPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the firewall_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `firewall_policy` field.\n', args=[]),
  withFirewallPolicy(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          firewall_policy: value,
        },
      },
    },
  },
  '#withMatch':: d.fn(help='`google.list[obj].withMatch` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the match field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMatchMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `match` field.\n', args=[]),
  withMatch(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          match: value,
        },
      },
    },
  },
  '#withMatchMixin':: d.fn(help='`google.list[obj].withMatchMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the match field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMatch](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `match` field.\n', args=[]),
  withMatchMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withTargetResources':: d.fn(help='`google.list.withTargetResources` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_resources field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_resources` field.\n', args=[]),
  withTargetResources(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_resources: value,
        },
      },
    },
  },
  '#withTargetServiceAccounts':: d.fn(help='`google.list.withTargetServiceAccounts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_service_accounts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_service_accounts` field.\n', args=[]),
  withTargetServiceAccounts(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
