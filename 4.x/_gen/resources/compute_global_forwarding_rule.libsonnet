local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_global_forwarding_rule', url='', help='`compute_global_forwarding_rule` represents the `google_compute_global_forwarding_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metadata_filters:: {
    filter_labels:: {
      '#new':: d.fn(help='\n`google.compute_global_forwarding_rule.metadata_filters.filter_labels.new` constructs a new object with attributes and blocks configured for the `filter_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the metadata label. The length must be between\n1 and 1024 characters, inclusive.\n  - `value` (`string`): The value that the label must match. The value has a maximum\nlength of 1024 characters.\n\n**Returns**:\n  - An attribute object that represents the `filter_labels` sub block.\n', args=[]),
      new(
        name,
        value
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_global_forwarding_rule.metadata_filters.new` constructs a new object with attributes and blocks configured for the `metadata_filters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `filter_match_criteria` (`string`): Specifies how individual filterLabel matches within the list of\nfilterLabels contribute towards the overall metadataFilter match.\n\nMATCH_ANY - At least one of the filterLabels must have a matching\nlabel in the provided metadata.\nMATCH_ALL - All filterLabels must have matching labels in the\nprovided metadata. Possible values: [&#34;MATCH_ANY&#34;, &#34;MATCH_ALL&#34;]\n  - `filter_labels` (`list[obj]`): The list of label value pairs that must match labels in the\nprovided metadata based on filterMatchCriteria\n\nThis list must not be empty and can have at the most 64 entries. When `null`, the `filter_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.filter_labels.new](#fn-metadata_filtersfilter_labelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metadata_filters` sub block.\n', args=[]),
    new(
      filter_match_criteria,
      filter_labels=null
    ):: std.prune(a={
      filter_labels: filter_labels,
      filter_match_criteria: filter_match_criteria,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_global_forwarding_rule.new` injects a new `google_compute_global_forwarding_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_global_forwarding_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_global_forwarding_rule` using the reference:\n\n    $._ref.google_compute_global_forwarding_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_global_forwarding_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IP address for which this forwarding rule accepts traffic. When a client\nsends traffic to this IP address, the forwarding rule directs the traffic\nto the referenced \u0026#39;target\u0026#39;.\n\nWhile creating a forwarding rule, specifying an \u0026#39;IPAddress\u0026#39; is\nrequired under the following circumstances:\n\n* When the \u0026#39;target\u0026#39; is set to \u0026#39;targetGrpcProxy\u0026#39; and\n\u0026#39;validateForProxyless\u0026#39; is set to \u0026#39;true\u0026#39;, the\n\u0026#39;IPAddress\u0026#39; should be set to \u0026#39;0.0.0.0\u0026#39;.\n* When the \u0026#39;target\u0026#39; is a Private Service Connect Google APIs\nbundle, you must specify an \u0026#39;IPAddress\u0026#39;.\n\n\nOtherwise, you can optionally specify an IP address that references an\nexisting static (reserved) IP address resource. When omitted, Google Cloud\nassigns an ephemeral IP address.\n\nUse one of the following formats to specify an IP address while creating a\nforwarding rule:\n\n* IP address number, as in \u0026#39;100.1.2.3\u0026#39;\n* IPv6 address range, as in \u0026#39;2600:1234::/96\u0026#39;\n* Full resource URL, as in\n\u0026#39;https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name\u0026#39;\n* Partial URL or by name, as in:\n  * \u0026#39;projects/project_id/regions/region/addresses/address-name\u0026#39;\n  * \u0026#39;regions/region/addresses/address-name\u0026#39;\n  * \u0026#39;global/addresses/address-name\u0026#39;\n  * \u0026#39;address-name\u0026#39;\n\n\nThe forwarding rule\u0026#39;s \u0026#39;target\u0026#39;,\nand in most cases, also the \u0026#39;loadBalancingScheme\u0026#39;, determine the\ntype of IP address that you can use. For detailed information, see\n[IP address\nspecifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).\n\nWhen reading an \u0026#39;IPAddress\u0026#39;, the API always returns the IP\naddress number. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies.\n\nFor protocol forwarding, valid\noptions are \u0026#39;TCP\u0026#39;, \u0026#39;UDP\u0026#39;, \u0026#39;ESP\u0026#39;,\n\u0026#39;AH\u0026#39;, \u0026#39;SCTP\u0026#39;, \u0026#39;ICMP\u0026#39; and\n\u0026#39;L3_DEFAULT\u0026#39;.\n\nThe valid IP protocols are different for different load balancing products\nas described in [Load balancing\nfeatures](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends). Possible values: [\u0026#34;TCP\u0026#34;, \u0026#34;UDP\u0026#34;, \u0026#34;ESP\u0026#34;, \u0026#34;AH\u0026#34;, \u0026#34;SCTP\u0026#34;, \u0026#34;ICMP\u0026#34;] When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this global forwarding rule. Possible values: [\u0026#34;IPV4\u0026#34;, \u0026#34;IPV6\u0026#34;] When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this forwarding rule.  A list of key-\u0026gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.\n\nFor more information about forwarding rules, refer to\n[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: \u0026#34;EXTERNAL\u0026#34; Possible values: [\u0026#34;EXTERNAL\u0026#34;, \u0026#34;EXTERNAL_MANAGED\u0026#34;, \u0026#34;INTERNAL_MANAGED\u0026#34;, \u0026#34;INTERNAL_SELF_MANAGED\u0026#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-63 characters long, and comply with\n[RFC1035](https://www.ietf.org/rfc/rfc1035.txt).\n\nSpecifically, the name must be 1-63 characters long and match the regular\nexpression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the first\ncharacter must be a lowercase letter, and all following characters must\nbe a dash, lowercase letter, or digit, except the last character, which\ncannot be a dash.\n\nFor Private Service Connect forwarding rules that forward traffic to Google\nAPIs, the forwarding rule name must be a 1-20 characters string with\nlowercase letters and numbers and must start with a letter.\n  - `network` (`string`): This field is not used for external load balancing.\n\nFor Internal TCP/UDP Load Balancing, this field identifies the network that\nthe load balanced IP should belong to for this Forwarding Rule.\nIf the subnetwork is specified, the network of the subnetwork will be used.\nIf neither subnetwork nor this field is specified, the default network will\nbe used.\n\nFor Private Service Connect forwarding rules that forward traffic to Google\nAPIs, a network must be provided. When `null`, the `network` field will be omitted from the resulting object.\n  - `no_automate_dns_zone` (`bool`): This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. When `null`, the `no_automate_dns_zone` field will be omitted from the resulting object.\n  - `port_range` (`string`): This field can only be used:\n\n* If \u0026#39;IPProtocol\u0026#39; is one of TCP, UDP, or SCTP.\n* By backend service-based network load balancers, target pool-based\nnetwork load balancers, internal proxy load balancers, external proxy load\nbalancers, Traffic Director, external protocol forwarding, and Classic VPN.\nSome products have restrictions on what ports can be used. See\n[port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)\nfor details.\n\n\n* TargetHttpProxy: 80, 8080\n* TargetHttpsProxy: 443\n* TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995,\n                  1883, 5222\n* TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995,\n                  1883, 5222\n* TargetVpnGateway: 500, 4500 When `null`, the `port_range` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `source_ip_ranges` (`list`): If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). When `null`, the `source_ip_ranges` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): This field identifies the subnetwork that the load balanced IP should\nbelong to for this Forwarding Rule, used in internal load balancing and\nnetwork load balancing with IPv6.\n\nIf the network specified is in auto subnet mode, this field is optional.\nHowever, a subnetwork must be specified if the network is in custom subnet\nmode or when creating external forwarding rule with IPv6. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `target` (`string`): The URL of the target resource to receive the matched traffic.  For\nregional forwarding rules, this target must be in the same region as the\nforwarding rule. For global forwarding rules, this target must be a global\nload balancing resource.\n\nThe forwarded traffic must be of a type appropriate to the target object.\n*  For load balancers, see the \u0026#34;Target\u0026#34; column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).\n*  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:\n  *  \u0026#39;vpc-sc\u0026#39; - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).\n  *  \u0026#39;all-apis\u0026#39; - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).\n\n\nFor Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.\n  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing\nconfiguration to a limited set xDS compliant clients. In their xDS\nrequests to Loadbalancer, xDS clients present node metadata. If a\nmatch takes place, the relevant routing configuration is made available\nto those proxies.\n\nFor each metadataFilter in this list, if its filterMatchCriteria is set\nto MATCH_ANY, at least one of the filterLabels must match the\ncorresponding label provided in the metadata. If its filterMatchCriteria\nis set to MATCH_ALL, then all of its filterLabels must match with\ncorresponding labels in the provided metadata.\n\nmetadataFilters specified here can be overridden by those specified in\nthe UrlMap that this ForwardingRule references.\n\nmetadataFilters only applies to Loadbalancers that have their\nloadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.new](#fn-metadata_filtersnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
    no_automate_dns_zone=null,
    port_range=null,
    project=null,
    source_ip_ranges=null,
    subnetwork=null,
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
      no_automate_dns_zone=no_automate_dns_zone,
      port_range=port_range,
      project=project,
      source_ip_ranges=source_ip_ranges,
      subnetwork=subnetwork,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_global_forwarding_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_forwarding_rule`\nTerraform resource.\n\nUnlike [google.compute_global_forwarding_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IP address for which this forwarding rule accepts traffic. When a client\nsends traffic to this IP address, the forwarding rule directs the traffic\nto the referenced &#39;target&#39;.\n\nWhile creating a forwarding rule, specifying an &#39;IPAddress&#39; is\nrequired under the following circumstances:\n\n* When the &#39;target&#39; is set to &#39;targetGrpcProxy&#39; and\n&#39;validateForProxyless&#39; is set to &#39;true&#39;, the\n&#39;IPAddress&#39; should be set to &#39;0.0.0.0&#39;.\n* When the &#39;target&#39; is a Private Service Connect Google APIs\nbundle, you must specify an &#39;IPAddress&#39;.\n\n\nOtherwise, you can optionally specify an IP address that references an\nexisting static (reserved) IP address resource. When omitted, Google Cloud\nassigns an ephemeral IP address.\n\nUse one of the following formats to specify an IP address while creating a\nforwarding rule:\n\n* IP address number, as in &#39;100.1.2.3&#39;\n* IPv6 address range, as in &#39;2600:1234::/96&#39;\n* Full resource URL, as in\n&#39;https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name&#39;\n* Partial URL or by name, as in:\n  * &#39;projects/project_id/regions/region/addresses/address-name&#39;\n  * &#39;regions/region/addresses/address-name&#39;\n  * &#39;global/addresses/address-name&#39;\n  * &#39;address-name&#39;\n\n\nThe forwarding rule&#39;s &#39;target&#39;,\nand in most cases, also the &#39;loadBalancingScheme&#39;, determine the\ntype of IP address that you can use. For detailed information, see\n[IP address\nspecifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).\n\nWhen reading an &#39;IPAddress&#39;, the API always returns the IP\naddress number. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies.\n\nFor protocol forwarding, valid\noptions are &#39;TCP&#39;, &#39;UDP&#39;, &#39;ESP&#39;,\n&#39;AH&#39;, &#39;SCTP&#39;, &#39;ICMP&#39; and\n&#39;L3_DEFAULT&#39;.\n\nThe valid IP protocols are different for different load balancing products\nas described in [Load balancing\nfeatures](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends). Possible values: [&#34;TCP&#34;, &#34;UDP&#34;, &#34;ESP&#34;, &#34;AH&#34;, &#34;SCTP&#34;, &#34;ICMP&#34;] When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this global forwarding rule. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this forwarding rule.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.\n\nFor more information about forwarding rules, refer to\n[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: &#34;EXTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;EXTERNAL_MANAGED&#34;, &#34;INTERNAL_MANAGED&#34;, &#34;INTERNAL_SELF_MANAGED&#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created.\nThe name must be 1-63 characters long, and comply with\n[RFC1035](https://www.ietf.org/rfc/rfc1035.txt).\n\nSpecifically, the name must be 1-63 characters long and match the regular\nexpression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first\ncharacter must be a lowercase letter, and all following characters must\nbe a dash, lowercase letter, or digit, except the last character, which\ncannot be a dash.\n\nFor Private Service Connect forwarding rules that forward traffic to Google\nAPIs, the forwarding rule name must be a 1-20 characters string with\nlowercase letters and numbers and must start with a letter.\n  - `network` (`string`): This field is not used for external load balancing.\n\nFor Internal TCP/UDP Load Balancing, this field identifies the network that\nthe load balanced IP should belong to for this Forwarding Rule.\nIf the subnetwork is specified, the network of the subnetwork will be used.\nIf neither subnetwork nor this field is specified, the default network will\nbe used.\n\nFor Private Service Connect forwarding rules that forward traffic to Google\nAPIs, a network must be provided. When `null`, the `network` field will be omitted from the resulting object.\n  - `no_automate_dns_zone` (`bool`): This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. When `null`, the `no_automate_dns_zone` field will be omitted from the resulting object.\n  - `port_range` (`string`): This field can only be used:\n\n* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.\n* By backend service-based network load balancers, target pool-based\nnetwork load balancers, internal proxy load balancers, external proxy load\nbalancers, Traffic Director, external protocol forwarding, and Classic VPN.\nSome products have restrictions on what ports can be used. See\n[port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)\nfor details.\n\n\n* TargetHttpProxy: 80, 8080\n* TargetHttpsProxy: 443\n* TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995,\n                  1883, 5222\n* TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995,\n                  1883, 5222\n* TargetVpnGateway: 500, 4500 When `null`, the `port_range` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `source_ip_ranges` (`list`): If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). When `null`, the `source_ip_ranges` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): This field identifies the subnetwork that the load balanced IP should\nbelong to for this Forwarding Rule, used in internal load balancing and\nnetwork load balancing with IPv6.\n\nIf the network specified is in auto subnet mode, this field is optional.\nHowever, a subnetwork must be specified if the network is in custom subnet\nmode or when creating external forwarding rule with IPv6. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `target` (`string`): The URL of the target resource to receive the matched traffic.  For\nregional forwarding rules, this target must be in the same region as the\nforwarding rule. For global forwarding rules, this target must be a global\nload balancing resource.\n\nThe forwarded traffic must be of a type appropriate to the target object.\n*  For load balancers, see the &#34;Target&#34; column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).\n*  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:\n  *  &#39;vpc-sc&#39; - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).\n  *  &#39;all-apis&#39; - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).\n\n\nFor Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.\n  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing\nconfiguration to a limited set xDS compliant clients. In their xDS\nrequests to Loadbalancer, xDS clients present node metadata. If a\nmatch takes place, the relevant routing configuration is made available\nto those proxies.\n\nFor each metadataFilter in this list, if its filterMatchCriteria is set\nto MATCH_ANY, at least one of the filterLabels must match the\ncorresponding label provided in the metadata. If its filterMatchCriteria\nis set to MATCH_ALL, then all of its filterLabels must match with\ncorresponding labels in the provided metadata.\n\nmetadataFilters specified here can be overridden by those specified in\nthe UrlMap that this ForwardingRule references.\n\nmetadataFilters only applies to Loadbalancers that have their\nloadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.new](#fn-metadata_filtersnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_forwarding_rule` resource into the root Terraform configuration.\n', args=[]),
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
    no_automate_dns_zone=null,
    port_range=null,
    project=null,
    source_ip_ranges=null,
    subnetwork=null,
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
    no_automate_dns_zone: no_automate_dns_zone,
    port_range: port_range,
    project: project,
    source_ip_ranges: source_ip_ranges,
    subnetwork: subnetwork,
    target: target,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_global_forwarding_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withNoAutomateDnsZone':: d.fn(help='`google.bool.withNoAutomateDnsZone` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the no_automate_dns_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `no_automate_dns_zone` field.\n', args=[]),
  withNoAutomateDnsZone(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          no_automate_dns_zone: value,
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
  '#withSourceIpRanges':: d.fn(help='`google.list.withSourceIpRanges` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the source_ip_ranges field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `source_ip_ranges` field.\n', args=[]),
  withSourceIpRanges(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          source_ip_ranges: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          subnetwork: value,
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
