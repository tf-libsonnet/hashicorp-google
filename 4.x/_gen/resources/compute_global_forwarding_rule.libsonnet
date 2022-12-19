local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_global_forwarding_rule', url='', help='`compute_global_forwarding_rule` represents the `google_compute_global_forwarding_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metadata_filters:: {
    filter_labels:: {
      '#new':: d.fn(help='\n`google.compute_global_forwarding_rule.metadata_filters.filter_labels.new` constructs a new object with attributes and blocks configured for the `filter_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of metadata label.\n\nThe name can have a maximum length of 1024 characters and must be at least 1 character long.\n  - `value` (`string`): The value of the label must match the specified value.\n\nvalue can have a maximum length of 1024 characters.\n\n**Returns**:\n  - An attribute object that represents the `filter_labels` sub block.\n', args=[]),
      new(
        name,
        value
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_global_forwarding_rule.metadata_filters.new` constructs a new object with attributes and blocks configured for the `metadata_filters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `filter_match_criteria` (`string`): Specifies how individual `filterLabel` matches within the list of `filterLabel`s contribute towards the overall `metadataFilter` match.\n\nSupported values are:\n\n*   MATCH_ANY: At least one of the `filterLabels` must have a matching label in the provided metadata.\n*   MATCH_ALL: All `filterLabels` must have matching labels in the provided metadata. Possible values: NOT_SET, MATCH_ALL, MATCH_ANY\n  - `filter_labels` (`list[obj]`): The list of label value pairs that must match labels in the provided metadata based on `filterMatchCriteria`\n\nThis list must not be empty and can have at the most 64 entries. When `null`, the `filter_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.filter_labels.new](#fn-compute_global_forwarding_rulefilter_labelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metadata_filters` sub block.\n', args=[]),
    new(
      filter_match_criteria,
      filter_labels=null
    ):: std.prune(a={
      filter_labels: filter_labels,
      filter_match_criteria: filter_match_criteria,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_global_forwarding_rule.new` injects a new `google_compute_global_forwarding_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_global_forwarding_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_global_forwarding_rule` using the reference:\n\n    $._ref.google_compute_global_forwarding_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_global_forwarding_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don\u0026#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule\u0026#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this forwarding rule. Valid options are `IPV4` or `IPV6`. This can only be specified for an external global forwarding rule. Possible values: UNSPECIFIED_VERSION, IPV4, IPV6 When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this rule. When `null`, the `labels` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.\n\n*   `EXTERNAL` is used for:\n    *   Classic Cloud VPN gateways\n    *   Protocol forwarding to VMs from an external IP address\n    *   The following load balancers: HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP\n*   `INTERNAL` is used for:\n    *   Protocol forwarding to VMs from an internal IP address\n    *   Internal TCP/UDP load balancers\n*   `INTERNAL_MANAGED` is used for:\n    *   Internal HTTP(S) load balancers\n*   `INTERNAL_SELF_MANAGED` is used for:\n    *   Traffic Director\n*   `EXTERNAL_MANAGED` is used for:\n    *   Global external HTTP(S) load balancers \n\nFor more information about forwarding rules, refer to [Forwarding rule concepts](/load-balancing/docs/forwarding-rule-concepts). Possible values: INVALID, INTERNAL, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED, EXTERNAL, EXTERNAL_MANAGED When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `network` (`string`): This field is not used for external load balancing. For `INTERNAL` and `INTERNAL_SELF_MANAGED` load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:\n\n*   TargetHttpProxy: 80, 8080\n*   TargetHttpsProxy: 443\n*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetVpnGateway: 500, 4500\n\n@pattern: d\u0026#43;(?:-d\u0026#43;)? When `null`, the `port_range` field will be omitted from the resulting object.\n  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.\n  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`.\n  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set of [xDS](https://github.com/envoyproxy/data-plane-api/blob/master/XDS_PROTOCOL.md) compliant clients. In their xDS requests to Loadbalancer, xDS clients present [node metadata](https://github.com/envoyproxy/data-plane-api/search?q=%22message\u0026#43;Node%22\u0026#43;in%3A%2Fenvoy%2Fapi%2Fv2%2Fcore%2Fbase.proto\u0026amp;). If a match takes place, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. `TargetHttpProxy`, `UrlMap`) referenced by the `ForwardingRule` will not be visible to those proxies.\n\nFor each `metadataFilter` in this list, if its `filterMatchCriteria` is set to MATCH_ANY, at least one of the `filterLabel`s must match the corresponding label provided in the metadata. If its `filterMatchCriteria` is set to MATCH_ALL, then all of its `filterLabel`s must match with corresponding labels provided in the metadata.\n\n`metadataFilters` specified here will be applifed before those specified in the `UrlMap` that this `ForwardingRule` references.\n\n`metadataFilters` only applies to Loadbalancers that have their loadBalancingScheme set to `INTERNAL_SELF_MANAGED`. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.new](#fn-metadata_filtersnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    target,
    description=null,
    ip_address=null,
    ip_protocol=null,
    ip_version=null,
    labels=null,
    load_balancing_scheme=null,
    metadata_filters=null,
    network=null,
    port_range=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_global_forwarding_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      ip_address=ip_address,
      ip_protocol=ip_protocol,
      ip_version=ip_version,
      labels=labels,
      load_balancing_scheme=load_balancing_scheme,
      metadata_filters=metadata_filters,
      name=name,
      network=network,
      port_range=port_range,
      project=project,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_global_forwarding_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_forwarding_rule`\nTerraform resource.\n\nUnlike [google.compute_global_forwarding_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don&#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule&#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this forwarding rule. Valid options are `IPV4` or `IPV6`. This can only be specified for an external global forwarding rule. Possible values: UNSPECIFIED_VERSION, IPV4, IPV6 When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this rule. When `null`, the `labels` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.\n\n*   `EXTERNAL` is used for:\n    *   Classic Cloud VPN gateways\n    *   Protocol forwarding to VMs from an external IP address\n    *   The following load balancers: HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP\n*   `INTERNAL` is used for:\n    *   Protocol forwarding to VMs from an internal IP address\n    *   Internal TCP/UDP load balancers\n*   `INTERNAL_MANAGED` is used for:\n    *   Internal HTTP(S) load balancers\n*   `INTERNAL_SELF_MANAGED` is used for:\n    *   Traffic Director\n*   `EXTERNAL_MANAGED` is used for:\n    *   Global external HTTP(S) load balancers \n\nFor more information about forwarding rules, refer to [Forwarding rule concepts](/load-balancing/docs/forwarding-rule-concepts). Possible values: INVALID, INTERNAL, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED, EXTERNAL, EXTERNAL_MANAGED When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `network` (`string`): This field is not used for external load balancing. For `INTERNAL` and `INTERNAL_SELF_MANAGED` load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:\n\n*   TargetHttpProxy: 80, 8080\n*   TargetHttpsProxy: 443\n*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetVpnGateway: 500, 4500\n\n@pattern: d&#43;(?:-d&#43;)? When `null`, the `port_range` field will be omitted from the resulting object.\n  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.\n  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`.\n  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set of [xDS](https://github.com/envoyproxy/data-plane-api/blob/master/XDS_PROTOCOL.md) compliant clients. In their xDS requests to Loadbalancer, xDS clients present [node metadata](https://github.com/envoyproxy/data-plane-api/search?q=%22message&#43;Node%22&#43;in%3A%2Fenvoy%2Fapi%2Fv2%2Fcore%2Fbase.proto&amp;). If a match takes place, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. `TargetHttpProxy`, `UrlMap`) referenced by the `ForwardingRule` will not be visible to those proxies.\n\nFor each `metadataFilter` in this list, if its `filterMatchCriteria` is set to MATCH_ANY, at least one of the `filterLabel`s must match the corresponding label provided in the metadata. If its `filterMatchCriteria` is set to MATCH_ALL, then all of its `filterLabel`s must match with corresponding labels provided in the metadata.\n\n`metadataFilters` specified here will be applifed before those specified in the `UrlMap` that this `ForwardingRule` references.\n\n`metadataFilters` only applies to Loadbalancers that have their loadBalancingScheme set to `INTERNAL_SELF_MANAGED`. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.new](#fn-metadata_filtersnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_forwarding_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    target,
    description=null,
    ip_address=null,
    ip_protocol=null,
    ip_version=null,
    labels=null,
    load_balancing_scheme=null,
    metadata_filters=null,
    network=null,
    port_range=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    ip_address: ip_address,
    ip_protocol: ip_protocol,
    ip_version: ip_version,
    labels: labels,
    load_balancing_scheme: load_balancing_scheme,
    metadata_filters: metadata_filters,
    name: name,
    network: network,
    port_range: port_range,
    project: project,
    target: target,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_global_forwarding_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIpAddress':: d.fn(help='`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_address` field.\n', args=[]),
  withIpAddress(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  '#withIpProtocol':: d.fn(help='`google.string.withIpProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_protocol` field.\n', args=[]),
  withIpProtocol(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          ip_protocol: value,
        },
      },
    },
  },
  '#withIpVersion':: d.fn(help='`google.string.withIpVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_version` field.\n', args=[]),
  withIpVersion(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          ip_version: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLoadBalancingScheme':: d.fn(help='`google.string.withLoadBalancingScheme` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the load_balancing_scheme field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `load_balancing_scheme` field.\n', args=[]),
  withLoadBalancingScheme(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          load_balancing_scheme: value,
        },
      },
    },
  },
  '#withMetadataFilters':: d.fn(help='`google.list[obj].withMetadataFilters` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata_filters field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMetadataFiltersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata_filters` field.\n', args=[]),
  withMetadataFilters(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          metadata_filters: value,
        },
      },
    },
  },
  '#withMetadataFiltersMixin':: d.fn(help='`google.list[obj].withMetadataFiltersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata_filters field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMetadataFilters](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata_filters` field.\n', args=[]),
  withMetadataFiltersMixin(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          metadata_filters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPortRange':: d.fn(help='`google.string.withPortRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the port_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `port_range` field.\n', args=[]),
  withPortRange(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          port_range: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTarget':: d.fn(help='`google.string.withTarget` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target` field.\n', args=[]),
  withTarget(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
