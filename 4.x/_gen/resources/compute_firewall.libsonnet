local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_firewall', url='', help='`compute_firewall` represents the `google_compute_firewall` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  allow:: {
    '#new':: d.fn(help='\n`google.compute_firewall.allow.new` constructs a new object with attributes and blocks configured for the `allow`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ports` (`list`): An optional list of ports to which this rule applies. This field\nis only applicable for UDP or TCP protocol. Each entry must be\neither an integer or a range. If not specified, this rule\napplies to connections through any port.\n\nExample inputs include: [&#34;22&#34;], [&#34;80&#34;,&#34;443&#34;], and\n[&#34;12345-12349&#34;]. When `null`, the `ports` field will be omitted from the resulting object.\n  - `protocol` (`string`): The IP protocol to which this rule applies. The protocol type is\nrequired when creating a firewall rule. This value can either be\none of the following well known protocol strings (tcp, udp,\nicmp, esp, ah, sctp, ipip, all), or the IP protocol number.\n\n**Returns**:\n  - An attribute object that represents the `allow` sub block.\n', args=[]),
    new(
      protocol,
      ports=null
    ):: std.prune(a={
      ports: ports,
      protocol: protocol,
    }),
  },
  deny:: {
    '#new':: d.fn(help='\n`google.compute_firewall.deny.new` constructs a new object with attributes and blocks configured for the `deny`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ports` (`list`): An optional list of ports to which this rule applies. This field\nis only applicable for UDP or TCP protocol. Each entry must be\neither an integer or a range. If not specified, this rule\napplies to connections through any port.\n\nExample inputs include: [&#34;22&#34;], [&#34;80&#34;,&#34;443&#34;], and\n[&#34;12345-12349&#34;]. When `null`, the `ports` field will be omitted from the resulting object.\n  - `protocol` (`string`): The IP protocol to which this rule applies. The protocol type is\nrequired when creating a firewall rule. This value can either be\none of the following well known protocol strings (tcp, udp,\nicmp, esp, ah, sctp, ipip, all), or the IP protocol number.\n\n**Returns**:\n  - An attribute object that represents the `deny` sub block.\n', args=[]),
    new(
      protocol,
      ports=null
    ):: std.prune(a={
      ports: ports,
      protocol: protocol,
    }),
  },
  log_config:: {
    '#new':: d.fn(help='\n`google.compute_firewall.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): This field denotes whether to include or exclude metadata for firewall logs. Possible values: [&#34;EXCLUDE_ALL_METADATA&#34;, &#34;INCLUDE_ALL_METADATA&#34;]\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      metadata
    ):: std.prune(a={
      metadata: metadata,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_firewall.new` injects a new `google_compute_firewall` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_firewall.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_firewall` using the reference:\n\n    $._ref.google_compute_firewall.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_firewall.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `destination_ranges` (`list`): If destination ranges are specified, the firewall will apply only to\ntraffic that has destination IP address in these ranges. These ranges\nmust be expressed in CIDR format. Only IPv4 is supported. When `null`, the `destination_ranges` field will be omitted from the resulting object.\n  - `direction` (`string`): Direction of traffic to which this firewall applies; default is\nINGRESS. Note: For INGRESS traffic, it is NOT supported to specify\ndestinationRanges; For EGRESS traffic, it is NOT supported to specify\n\u0026#39;source_ranges\u0026#39; OR \u0026#39;source_tags\u0026#39;. For INGRESS traffic, one of \u0026#39;source_ranges\u0026#39;,\n\u0026#39;source_tags\u0026#39; or \u0026#39;source_service_accounts\u0026#39; is required. Possible values: [\u0026#34;INGRESS\u0026#34;, \u0026#34;EGRESS\u0026#34;] When `null`, the `direction` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Denotes whether the firewall rule is disabled, i.e not applied to the\nnetwork it is associated with. When set to true, the firewall rule is\nnot enforced and the network behaves as if it did not exist. If this\nis unspecified, the firewall rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported to Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The name or self_link of the network to attach this firewall to.\n  - `priority` (`number`): Priority for this rule. This is an integer between 0 and 65535, both\ninclusive. When not specified, the value assumed is 1000. Relative\npriorities determine precedence of conflicting rules. Lower value of\npriority implies higher precedence (eg, a rule with priority 0 has\nhigher precedence than a rule with priority 1). DENY rules take\nprecedence over ALLOW rules having equal priority. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `source_ranges` (`list`): If source ranges are specified, the firewall will apply only to\ntraffic that has source IP address in these ranges. These ranges must\nbe expressed in CIDR format. One or both of sourceRanges and\nsourceTags may be set. If both properties are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP that belongs to a tag listed in the sourceTags property. The\nconnection does not need to match both properties for the firewall to\napply. Only IPv4 is supported. For INGRESS traffic, one of \u0026#39;source_ranges\u0026#39;,\n\u0026#39;source_tags\u0026#39; or \u0026#39;source_service_accounts\u0026#39; is required. When `null`, the `source_ranges` field will be omitted from the resulting object.\n  - `source_service_accounts` (`list`): If source service accounts are specified, the firewall will apply only\nto traffic originating from an instance with a service account in this\nlist. Source service accounts cannot be used to control traffic to an\ninstance\u0026#39;s external IP address because service accounts are associated\nwith an instance, not an IP address. sourceRanges can be set at the\nsame time as sourceServiceAccounts. If both are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP belongs to an instance with service account listed in\nsourceServiceAccount. The connection does not need to match both\nproperties for the firewall to apply. sourceServiceAccounts cannot be\nused at the same time as sourceTags or targetTags. For INGRESS traffic,\none of \u0026#39;source_ranges\u0026#39;, \u0026#39;source_tags\u0026#39; or \u0026#39;source_service_accounts\u0026#39; is required. When `null`, the `source_service_accounts` field will be omitted from the resulting object.\n  - `source_tags` (`list`): If source tags are specified, the firewall will apply only to traffic\nwith source IP that belongs to a tag listed in source tags. Source\ntags cannot be used to control traffic to an instance\u0026#39;s external IP\naddress. Because tags are associated with an instance, not an IP\naddress. One or both of sourceRanges and sourceTags may be set. If\nboth properties are set, the firewall will apply to traffic that has\nsource IP address within sourceRanges OR the source IP that belongs to\na tag listed in the sourceTags property. The connection does not need\nto match both properties for the firewall to apply. For INGRESS traffic,\none of \u0026#39;source_ranges\u0026#39;, \u0026#39;source_tags\u0026#39; or \u0026#39;source_service_accounts\u0026#39; is required. When `null`, the `source_tags` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\ntargetServiceAccounts cannot be used at the same time as targetTags or\nsourceTags. If neither targetServiceAccounts nor targetTags are\nspecified, the firewall rule applies to all instances on the specified\nnetwork. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `target_tags` (`list`): A list of instance tags indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\nIf no targetTags are specified, the firewall rule applies to all\ninstances on the specified network. When `null`, the `target_tags` field will be omitted from the resulting object.\n  - `allow` (`list[obj]`): The list of ALLOW rules specified by this firewall. Each rule\nspecifies a protocol and port-range tuple that describes a permitted\nconnection. When `null`, the `allow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.allow.new](#fn-allownew) constructor.\n  - `deny` (`list[obj]`): The list of DENY rules specified by this firewall. Each rule specifies\na protocol and port-range tuple that describes a denied connection. When `null`, the `deny` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.deny.new](#fn-denynew) constructor.\n  - `log_config` (`list[obj]`): This field denotes the logging options for a particular firewall rule.\nIf defined, logging is enabled, and logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.log_config.new](#fn-log_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    network,
    allow=null,
    deny=null,
    description=null,
    destination_ranges=null,
    direction=null,
    disabled=null,
    enable_logging=null,
    log_config=null,
    priority=null,
    project=null,
    source_ranges=null,
    source_service_accounts=null,
    source_tags=null,
    target_service_accounts=null,
    target_tags=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_firewall',
    label=resourceLabel,
    attrs=self.newAttrs(
      allow=allow,
      deny=deny,
      description=description,
      destination_ranges=destination_ranges,
      direction=direction,
      disabled=disabled,
      enable_logging=enable_logging,
      log_config=log_config,
      name=name,
      network=network,
      priority=priority,
      project=project,
      source_ranges=source_ranges,
      source_service_accounts=source_service_accounts,
      source_tags=source_tags,
      target_service_accounts=target_service_accounts,
      target_tags=target_tags,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_firewall.newAttrs` constructs a new object with attributes and blocks configured for the `compute_firewall`\nTerraform resource.\n\nUnlike [google.compute_firewall.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `destination_ranges` (`list`): If destination ranges are specified, the firewall will apply only to\ntraffic that has destination IP address in these ranges. These ranges\nmust be expressed in CIDR format. Only IPv4 is supported. When `null`, the `destination_ranges` field will be omitted from the resulting object.\n  - `direction` (`string`): Direction of traffic to which this firewall applies; default is\nINGRESS. Note: For INGRESS traffic, it is NOT supported to specify\ndestinationRanges; For EGRESS traffic, it is NOT supported to specify\n&#39;source_ranges&#39; OR &#39;source_tags&#39;. For INGRESS traffic, one of &#39;source_ranges&#39;,\n&#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;] When `null`, the `direction` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Denotes whether the firewall rule is disabled, i.e not applied to the\nnetwork it is associated with. When set to true, the firewall rule is\nnot enforced and the network behaves as if it did not exist. If this\nis unspecified, the firewall rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `enable_logging` (`bool`): This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported to Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The name or self_link of the network to attach this firewall to.\n  - `priority` (`number`): Priority for this rule. This is an integer between 0 and 65535, both\ninclusive. When not specified, the value assumed is 1000. Relative\npriorities determine precedence of conflicting rules. Lower value of\npriority implies higher precedence (eg, a rule with priority 0 has\nhigher precedence than a rule with priority 1). DENY rules take\nprecedence over ALLOW rules having equal priority. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `source_ranges` (`list`): If source ranges are specified, the firewall will apply only to\ntraffic that has source IP address in these ranges. These ranges must\nbe expressed in CIDR format. One or both of sourceRanges and\nsourceTags may be set. If both properties are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP that belongs to a tag listed in the sourceTags property. The\nconnection does not need to match both properties for the firewall to\napply. Only IPv4 is supported. For INGRESS traffic, one of &#39;source_ranges&#39;,\n&#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_ranges` field will be omitted from the resulting object.\n  - `source_service_accounts` (`list`): If source service accounts are specified, the firewall will apply only\nto traffic originating from an instance with a service account in this\nlist. Source service accounts cannot be used to control traffic to an\ninstance&#39;s external IP address because service accounts are associated\nwith an instance, not an IP address. sourceRanges can be set at the\nsame time as sourceServiceAccounts. If both are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP belongs to an instance with service account listed in\nsourceServiceAccount. The connection does not need to match both\nproperties for the firewall to apply. sourceServiceAccounts cannot be\nused at the same time as sourceTags or targetTags. For INGRESS traffic,\none of &#39;source_ranges&#39;, &#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_service_accounts` field will be omitted from the resulting object.\n  - `source_tags` (`list`): If source tags are specified, the firewall will apply only to traffic\nwith source IP that belongs to a tag listed in source tags. Source\ntags cannot be used to control traffic to an instance&#39;s external IP\naddress. Because tags are associated with an instance, not an IP\naddress. One or both of sourceRanges and sourceTags may be set. If\nboth properties are set, the firewall will apply to traffic that has\nsource IP address within sourceRanges OR the source IP that belongs to\na tag listed in the sourceTags property. The connection does not need\nto match both properties for the firewall to apply. For INGRESS traffic,\none of &#39;source_ranges&#39;, &#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_tags` field will be omitted from the resulting object.\n  - `target_service_accounts` (`list`): A list of service accounts indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\ntargetServiceAccounts cannot be used at the same time as targetTags or\nsourceTags. If neither targetServiceAccounts nor targetTags are\nspecified, the firewall rule applies to all instances on the specified\nnetwork. When `null`, the `target_service_accounts` field will be omitted from the resulting object.\n  - `target_tags` (`list`): A list of instance tags indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\nIf no targetTags are specified, the firewall rule applies to all\ninstances on the specified network. When `null`, the `target_tags` field will be omitted from the resulting object.\n  - `allow` (`list[obj]`): The list of ALLOW rules specified by this firewall. Each rule\nspecifies a protocol and port-range tuple that describes a permitted\nconnection. When `null`, the `allow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.allow.new](#fn-allownew) constructor.\n  - `deny` (`list[obj]`): The list of DENY rules specified by this firewall. Each rule specifies\na protocol and port-range tuple that describes a denied connection. When `null`, the `deny` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.deny.new](#fn-denynew) constructor.\n  - `log_config` (`list[obj]`): This field denotes the logging options for a particular firewall rule.\nIf defined, logging is enabled, and logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.log_config.new](#fn-log_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_firewall` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    network,
    allow=null,
    deny=null,
    description=null,
    destination_ranges=null,
    direction=null,
    disabled=null,
    enable_logging=null,
    log_config=null,
    priority=null,
    project=null,
    source_ranges=null,
    source_service_accounts=null,
    source_tags=null,
    target_service_accounts=null,
    target_tags=null,
    timeouts=null
  ):: std.prune(a={
    allow: allow,
    deny: deny,
    description: description,
    destination_ranges: destination_ranges,
    direction: direction,
    disabled: disabled,
    enable_logging: enable_logging,
    log_config: log_config,
    name: name,
    network: network,
    priority: priority,
    project: project,
    source_ranges: source_ranges,
    source_service_accounts: source_service_accounts,
    source_tags: source_tags,
    target_service_accounts: target_service_accounts,
    target_tags: target_tags,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_firewall.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAllow':: d.fn(help='`google.list[obj].withAllow` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the allow field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAllowMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `allow` field.\n', args=[]),
  withAllow(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          allow: value,
        },
      },
    },
  },
  '#withAllowMixin':: d.fn(help='`google.list[obj].withAllowMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the allow field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAllow](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `allow` field.\n', args=[]),
  withAllowMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          allow+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeny':: d.fn(help='`google.list[obj].withDeny` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deny field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDenyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deny` field.\n', args=[]),
  withDeny(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          deny: value,
        },
      },
    },
  },
  '#withDenyMixin':: d.fn(help='`google.list[obj].withDenyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deny field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDeny](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deny` field.\n', args=[]),
  withDenyMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          deny+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDestinationRanges':: d.fn(help='`google.list.withDestinationRanges` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the destination_ranges field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `destination_ranges` field.\n', args=[]),
  withDestinationRanges(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          destination_ranges: value,
        },
      },
    },
  },
  '#withDirection':: d.fn(help='`google.string.withDirection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the direction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `direction` field.\n', args=[]),
  withDirection(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withEnableLogging':: d.fn(help='`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_logging` field.\n', args=[]),
  withEnableLogging(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSourceRanges':: d.fn(help='`google.list.withSourceRanges` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the source_ranges field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `source_ranges` field.\n', args=[]),
  withSourceRanges(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          source_ranges: value,
        },
      },
    },
  },
  '#withSourceServiceAccounts':: d.fn(help='`google.list.withSourceServiceAccounts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the source_service_accounts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `source_service_accounts` field.\n', args=[]),
  withSourceServiceAccounts(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          source_service_accounts: value,
        },
      },
    },
  },
  '#withSourceTags':: d.fn(help='`google.list.withSourceTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the source_tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `source_tags` field.\n', args=[]),
  withSourceTags(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          source_tags: value,
        },
      },
    },
  },
  '#withTargetServiceAccounts':: d.fn(help='`google.list.withTargetServiceAccounts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_service_accounts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_service_accounts` field.\n', args=[]),
  withTargetServiceAccounts(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  '#withTargetTags':: d.fn(help='`google.list.withTargetTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_tags` field.\n', args=[]),
  withTargetTags(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          target_tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
