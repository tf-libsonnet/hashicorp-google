local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network_firewall_policy_rule', url='', help='`compute_network_firewall_policy_rule` represents the `google_compute_network_firewall_policy_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  match:: {
    layer4_configs:: {
      '#new':: d.fn(help='\n`google.compute_network_firewall_policy_rule.match.layer4_configs.new` constructs a new object with attributes and blocks configured for the `layer4_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (`tcp`, `udp`, `icmp`, `esp`, `ah`, `ipip`, `sctp`), or the IP protocol number.\n  - `ports` (`list`): An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ``. When `null`, the `ports` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `layer4_configs` sub block.\n', args=[]),
      new(
        ip_protocol,
        ports=null
      ):: std.prune(a={
        ip_protocol: ip_protocol,
        ports: ports,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_network_firewall_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dest_ip_ranges` (`list`): CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.\n  - `src_ip_ranges` (`list`): CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.\n  - `layer4_configs` (`list[obj]`): Pairs of IP protocols and ports that the rule should match. When `null`, the `layer4_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.layer4_configs.new](#fn-compute_network_firewall_policy_rulelayer4_configsnew) constructor.\n  - `src_secure_tags` (`list[obj]`): List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the &lt;code&gt;srcSecureTag&lt;/code&gt; are INEFFECTIVE, and there is no &lt;code&gt;srcIpRange&lt;/code&gt;, this rule will be ignored. Maximum number of source tag values allowed is 256. When `null`, the `src_secure_tags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.src_secure_tags.new](#fn-compute_network_firewall_policy_rulesrc_secure_tagsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `match` sub block.\n', args=[]),
    new(
      dest_ip_ranges=null,
      layer4_configs=null,
      src_ip_ranges=null,
      src_secure_tags=null
    ):: std.prune(a={
      dest_ip_ranges: dest_ip_ranges,
      layer4_configs: layer4_configs,
      src_ip_ranges: src_ip_ranges,
      src_secure_tags: src_secure_tags,
    }),
    src_secure_tags:: {
      '#new':: d.fn(help='\n`google.compute_network_firewall_policy_rule.match.src_secure_tags.new` constructs a new object with attributes and blocks configured for the `src_secure_tags`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the secure tag, created with TagManager&#39;s TagValue API. @pattern tagValues/[0-9]&#43;\n\n**Returns**:\n  - An attribute object that represents the `src_secure_tags` sub block.\n', args=[]),
      new(
        name
      ):: std.prune(a={
        name: name,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.compute_network_firewall_policy_rule.new` injects a new `google_compute_network_firewall_policy_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network_firewall_policy_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network_firewall_policy_rule` using the reference:\n\n    $._ref.google_compute_network_firewall_policy_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network_firewall_policy_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either \u0026#34;allow\u0026#34; or \u0026#34;deny()\u0026#34; where valid values for status are 403, 404, and 502.\n  - `description` (`string`): An optional description for this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `direction` (`string`): The direction in which this rule applies. Possible values: INGRESS, EGRESS\n  - `disabled` (`bool`): Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on \u0026#34;goto_next\u0026#34; rules. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `firewall_policy` (`string`): The firewall policy of the resource.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `rule_name` (`string`): An optional name for the rule. This field is not a unique identifier and can be updated. When `null`, the `rule_name` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding \u0026#39;action\u0026#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.new](#fn-matchnew) constructor.\n  - `target_secure_tags` (`list[obj]`): A list of secure tags that controls which instances the firewall rule applies to. If \u0026lt;code\u0026gt;targetSecureTag\u0026lt;/code\u0026gt; are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. \u0026lt;code\u0026gt;targetSecureTag\u0026lt;/code\u0026gt; may not be set at the same time as \u0026lt;code\u0026gt;targetServiceAccounts\u0026lt;/code\u0026gt;. If neither \u0026lt;code\u0026gt;targetServiceAccounts\u0026lt;/code\u0026gt; nor \u0026lt;code\u0026gt;targetSecureTag\u0026lt;/code\u0026gt; are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256. When `null`, the `target_secure_tags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.target_secure_tags.new](#fn-target_secure_tagsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
    project=null,
    rule_name=null,
    target_secure_tags=null,
    target_service_accounts=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_firewall_policy_rule',
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
      project=project,
      rule_name=rule_name,
      target_secure_tags=target_secure_tags,
      target_service_accounts=target_service_accounts,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network_firewall_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_firewall_policy_rule`\nTerraform resource.\n\nUnlike [google.compute_network_firewall_policy_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either &#34;allow&#34; or &#34;deny()&#34; where valid values for status are 403, 404, and 502.\n  - `description` (`string`): An optional description for this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `direction` (`string`): The direction in which this rule applies. Possible values: INGRESS, EGRESS\n  - `disabled` (`bool`): Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on &#34;goto_next&#34; rules. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `firewall_policy` (`string`): The firewall policy of the resource.\n  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `rule_name` (`string`): An optional name for the rule. This field is not a unique identifier and can be updated. When `null`, the `rule_name` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.new](#fn-matchnew) constructor.\n  - `target_secure_tags` (`list[obj]`): A list of secure tags that controls which instances the firewall rule applies to. If &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. &lt;code&gt;targetSecureTag&lt;/code&gt; may not be set at the same time as &lt;code&gt;targetServiceAccounts&lt;/code&gt;. If neither &lt;code&gt;targetServiceAccounts&lt;/code&gt; nor &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256. When `null`, the `target_secure_tags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.target_secure_tags.new](#fn-target_secure_tagsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_firewall_policy_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    direction,
    firewall_policy,
    priority,
    description=null,
    disabled=null,
    enable_logging=null,
    match=null,
    project=null,
    rule_name=null,
    target_secure_tags=null,
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
    project: project,
    rule_name: rule_name,
    target_secure_tags: target_secure_tags,
    target_service_accounts: target_service_accounts,
    timeouts: timeouts,
  }),
  target_secure_tags:: {
    '#new':: d.fn(help='\n`google.compute_network_firewall_policy_rule.target_secure_tags.new` constructs a new object with attributes and blocks configured for the `target_secure_tags`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the secure tag, created with TagManager&#39;s TagValue API. @pattern tagValues/[0-9]&#43;\n\n**Returns**:\n  - An attribute object that represents the `target_secure_tags` sub block.\n', args=[]),
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network_firewall_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDirection':: d.fn(help='`google.string.withDirection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the direction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `direction` field.\n', args=[]),
  withDirection(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withEnableLogging':: d.fn(help='`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_logging` field.\n', args=[]),
  withEnableLogging(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  '#withFirewallPolicy':: d.fn(help='`google.string.withFirewallPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the firewall_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `firewall_policy` field.\n', args=[]),
  withFirewallPolicy(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          firewall_policy: value,
        },
      },
    },
  },
  '#withMatch':: d.fn(help='`google.list[obj].withMatch` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the match field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMatchMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `match` field.\n', args=[]),
  withMatch(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          match: value,
        },
      },
    },
  },
  '#withMatchMixin':: d.fn(help='`google.list[obj].withMatchMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the match field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMatch](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `match` field.\n', args=[]),
  withMatchMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRuleName':: d.fn(help='`google.string.withRuleName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the rule_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `rule_name` field.\n', args=[]),
  withRuleName(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          rule_name: value,
        },
      },
    },
  },
  '#withTargetSecureTags':: d.fn(help='`google.list[obj].withTargetSecureTags` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the target_secure_tags field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTargetSecureTagsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `target_secure_tags` field.\n', args=[]),
  withTargetSecureTags(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_secure_tags: value,
        },
      },
    },
  },
  '#withTargetSecureTagsMixin':: d.fn(help='`google.list[obj].withTargetSecureTagsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the target_secure_tags field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTargetSecureTags](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `target_secure_tags` field.\n', args=[]),
  withTargetSecureTagsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_secure_tags+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTargetServiceAccounts':: d.fn(help='`google.list.withTargetServiceAccounts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_service_accounts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_service_accounts` field.\n', args=[]),
  withTargetServiceAccounts(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_firewall_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
