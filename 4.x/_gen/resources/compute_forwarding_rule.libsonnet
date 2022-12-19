local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_forwarding_rule', url='', help='`compute_forwarding_rule` represents the `google_compute_forwarding_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_forwarding_rule.new` injects a new `google_compute_forwarding_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_forwarding_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_forwarding_rule` using the reference:\n\n    $._ref.google_compute_forwarding_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_forwarding_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `all_ports` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. This field cannot be used with `port` or `portRange` fields. When the load balancing scheme is `INTERNAL` and protocol is TCP/UDP, specify this field to allow packets addressed to any ports will be forwarded to the backends configured with this forwarding rule. When `null`, the `all_ports` field will be omitted from the resulting object.\n  - `allow_global_access` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. If the field is set to `TRUE`, clients can access ILB from all regions. Otherwise only allows access from clients in the same region as the internal load balancer. When `null`, the `allow_global_access` field will be omitted from the resulting object.\n  - `backend_service` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the BackendService resource to receive the matched traffic. When `null`, the `backend_service` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don\u0026#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule\u0026#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `is_mirroring_collector` (`bool`): Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a `PacketMirroring` rule applies to them. This can only be set to true for load balancers that have their `loadBalancingScheme` set to `INTERNAL`. When `null`, the `is_mirroring_collector` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this rule. When `null`, the `labels` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.\n\n*   `EXTERNAL` is used for:\n    *   Classic Cloud VPN gateways\n    *   Protocol forwarding to VMs from an external IP address\n    *   The following load balancers: HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP\n*   `INTERNAL` is used for:\n    *   Protocol forwarding to VMs from an internal IP address\n    *   Internal TCP/UDP load balancers\n*   `INTERNAL_MANAGED` is used for:\n    *   Internal HTTP(S) load balancers\n*   `INTERNAL_SELF_MANAGED` is used for:\n    *   Traffic Director\n*   `EXTERNAL_MANAGED` is used for:\n    *   Global external HTTP(S) load balancers \n\nFor more information about forwarding rules, refer to [Forwarding rule concepts](/load-balancing/docs/forwarding-rule-concepts). Possible values: INVALID, INTERNAL, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED, EXTERNAL, EXTERNAL_MANAGED When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `network` (`string`): This field is not used for external load balancing. For `INTERNAL` and `INTERNAL_SELF_MANAGED` load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tier` (`string`): This signifies the networking tier used for configuring this load balancer and can only take the following values: `PREMIUM`, `STANDARD`. For regional ForwardingRule, the valid values are `PREMIUM` and `STANDARD`. For GlobalForwardingRule, the valid value is `PREMIUM`. If this field is not specified, it is assumed to be `PREMIUM`. If `IPAddress` is specified, this value must be equal to the networkTier of the Address. When `null`, the `network_tier` field will be omitted from the resulting object.\n  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:\n\n*   TargetHttpProxy: 80, 8080\n*   TargetHttpsProxy: 443\n*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetVpnGateway: 500, 4500\n\n@pattern: d\u0026#43;(?:-d\u0026#43;)? When `null`, the `port_range` field will be omitted from the resulting object.\n  - `ports` (`list`): This field is used along with the `backend_service` field for internal load balancing. When the load balancing scheme is `INTERNAL`, a list of ports can be configured, for example, [\u0026#39;80\u0026#39;], [\u0026#39;8000\u0026#39;,\u0026#39;9000\u0026#39;]. Only packets addressed to these ports are forwarded to the backends configured with the forwarding rule. If the forwarding rule\u0026#39;s loadBalancingScheme is INTERNAL, you can specify ports in one of the following ways: * A list of up to five ports, which can be non-contiguous * Keyword `ALL`, which causes the forwarding rule to forward traffic on any port of the forwarding rule\u0026#39;s protocol. @pattern: d\u0026#43;(?:-d\u0026#43;)? For more information, refer to [Port specifications](/load-balancing/docs/forwarding-rule-concepts#port_specifications). When `null`, the `ports` field will be omitted from the resulting object.\n  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The location of this resource. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_label` (`string`): An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing. When `null`, the `service_label` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule. If the network specified is in auto subnet mode, this field is optional. However, if the network is in custom subnet mode, a subnetwork must be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`. When `null`, the `target` field will be omitted from the resulting object.\n  - `service_directory_registrations` (`list[obj]`): Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource. When `null`, the `service_directory_registrations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.service_directory_registrations.new](#fn-service_directory_registrationsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    all_ports=null,
    allow_global_access=null,
    backend_service=null,
    description=null,
    ip_address=null,
    ip_protocol=null,
    is_mirroring_collector=null,
    labels=null,
    load_balancing_scheme=null,
    network=null,
    network_tier=null,
    port_range=null,
    ports=null,
    project=null,
    region=null,
    service_directory_registrations=null,
    service_label=null,
    subnetwork=null,
    target=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_forwarding_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      all_ports=all_ports,
      allow_global_access=allow_global_access,
      backend_service=backend_service,
      description=description,
      ip_address=ip_address,
      ip_protocol=ip_protocol,
      is_mirroring_collector=is_mirroring_collector,
      labels=labels,
      load_balancing_scheme=load_balancing_scheme,
      name=name,
      network=network,
      network_tier=network_tier,
      port_range=port_range,
      ports=ports,
      project=project,
      region=region,
      service_directory_registrations=service_directory_registrations,
      service_label=service_label,
      subnetwork=subnetwork,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_forwarding_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_forwarding_rule`\nTerraform resource.\n\nUnlike [google.compute_forwarding_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `all_ports` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. This field cannot be used with `port` or `portRange` fields. When the load balancing scheme is `INTERNAL` and protocol is TCP/UDP, specify this field to allow packets addressed to any ports will be forwarded to the backends configured with this forwarding rule. When `null`, the `all_ports` field will be omitted from the resulting object.\n  - `allow_global_access` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. If the field is set to `TRUE`, clients can access ILB from all regions. Otherwise only allows access from clients in the same region as the internal load balancer. When `null`, the `allow_global_access` field will be omitted from the resulting object.\n  - `backend_service` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the BackendService resource to receive the matched traffic. When `null`, the `backend_service` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don&#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule&#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.\n  - `is_mirroring_collector` (`bool`): Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a `PacketMirroring` rule applies to them. This can only be set to true for load balancers that have their `loadBalancingScheme` set to `INTERNAL`. When `null`, the `is_mirroring_collector` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this rule. When `null`, the `labels` field will be omitted from the resulting object.\n  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.\n\n*   `EXTERNAL` is used for:\n    *   Classic Cloud VPN gateways\n    *   Protocol forwarding to VMs from an external IP address\n    *   The following load balancers: HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP\n*   `INTERNAL` is used for:\n    *   Protocol forwarding to VMs from an internal IP address\n    *   Internal TCP/UDP load balancers\n*   `INTERNAL_MANAGED` is used for:\n    *   Internal HTTP(S) load balancers\n*   `INTERNAL_SELF_MANAGED` is used for:\n    *   Traffic Director\n*   `EXTERNAL_MANAGED` is used for:\n    *   Global external HTTP(S) load balancers \n\nFor more information about forwarding rules, refer to [Forwarding rule concepts](/load-balancing/docs/forwarding-rule-concepts). Possible values: INVALID, INTERNAL, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED, EXTERNAL, EXTERNAL_MANAGED When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `network` (`string`): This field is not used for external load balancing. For `INTERNAL` and `INTERNAL_SELF_MANAGED` load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tier` (`string`): This signifies the networking tier used for configuring this load balancer and can only take the following values: `PREMIUM`, `STANDARD`. For regional ForwardingRule, the valid values are `PREMIUM` and `STANDARD`. For GlobalForwardingRule, the valid value is `PREMIUM`. If this field is not specified, it is assumed to be `PREMIUM`. If `IPAddress` is specified, this value must be equal to the networkTier of the Address. When `null`, the `network_tier` field will be omitted from the resulting object.\n  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:\n\n*   TargetHttpProxy: 80, 8080\n*   TargetHttpsProxy: 443\n*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222\n*   TargetVpnGateway: 500, 4500\n\n@pattern: d&#43;(?:-d&#43;)? When `null`, the `port_range` field will be omitted from the resulting object.\n  - `ports` (`list`): This field is used along with the `backend_service` field for internal load balancing. When the load balancing scheme is `INTERNAL`, a list of ports can be configured, for example, [&#39;80&#39;], [&#39;8000&#39;,&#39;9000&#39;]. Only packets addressed to these ports are forwarded to the backends configured with the forwarding rule. If the forwarding rule&#39;s loadBalancingScheme is INTERNAL, you can specify ports in one of the following ways: * A list of up to five ports, which can be non-contiguous * Keyword `ALL`, which causes the forwarding rule to forward traffic on any port of the forwarding rule&#39;s protocol. @pattern: d&#43;(?:-d&#43;)? For more information, refer to [Port specifications](/load-balancing/docs/forwarding-rule-concepts#port_specifications). When `null`, the `ports` field will be omitted from the resulting object.\n  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The location of this resource. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_label` (`string`): An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing. When `null`, the `service_label` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule. If the network specified is in auto subnet mode, this field is optional. However, if the network is in custom subnet mode, a subnetwork must be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`. When `null`, the `target` field will be omitted from the resulting object.\n  - `service_directory_registrations` (`list[obj]`): Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource. When `null`, the `service_directory_registrations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.service_directory_registrations.new](#fn-service_directory_registrationsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_forwarding_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    all_ports=null,
    allow_global_access=null,
    backend_service=null,
    description=null,
    ip_address=null,
    ip_protocol=null,
    is_mirroring_collector=null,
    labels=null,
    load_balancing_scheme=null,
    network=null,
    network_tier=null,
    port_range=null,
    ports=null,
    project=null,
    region=null,
    service_directory_registrations=null,
    service_label=null,
    subnetwork=null,
    target=null,
    timeouts=null
  ):: std.prune(a={
    all_ports: all_ports,
    allow_global_access: allow_global_access,
    backend_service: backend_service,
    description: description,
    ip_address: ip_address,
    ip_protocol: ip_protocol,
    is_mirroring_collector: is_mirroring_collector,
    labels: labels,
    load_balancing_scheme: load_balancing_scheme,
    name: name,
    network: network,
    network_tier: network_tier,
    port_range: port_range,
    ports: ports,
    project: project,
    region: region,
    service_directory_registrations: service_directory_registrations,
    service_label: service_label,
    subnetwork: subnetwork,
    target: target,
    timeouts: timeouts,
  }),
  service_directory_registrations:: {
    '#new':: d.fn(help='\n`google.compute_forwarding_rule.service_directory_registrations.new` constructs a new object with attributes and blocks configured for the `service_directory_registrations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`string`): Service Directory namespace to register the forwarding rule under. When `null`, the `namespace` field will be omitted from the resulting object.\n  - `service` (`string`): Service Directory service to register the forwarding rule under. When `null`, the `service` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `service_directory_registrations` sub block.\n', args=[]),
    new(
      namespace=null,
      service=null
    ):: std.prune(a={
      namespace: namespace,
      service: service,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_forwarding_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAllPorts':: d.fn(help='`google.bool.withAllPorts` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the all_ports field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `all_ports` field.\n', args=[]),
  withAllPorts(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          all_ports: value,
        },
      },
    },
  },
  '#withAllowGlobalAccess':: d.fn(help='`google.bool.withAllowGlobalAccess` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the allow_global_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `allow_global_access` field.\n', args=[]),
  withAllowGlobalAccess(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          allow_global_access: value,
        },
      },
    },
  },
  '#withBackendService':: d.fn(help='`google.string.withBackendService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the backend_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `backend_service` field.\n', args=[]),
  withBackendService(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          backend_service: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIpAddress':: d.fn(help='`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_address` field.\n', args=[]),
  withIpAddress(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  '#withIpProtocol':: d.fn(help='`google.string.withIpProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_protocol` field.\n', args=[]),
  withIpProtocol(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          ip_protocol: value,
        },
      },
    },
  },
  '#withIsMirroringCollector':: d.fn(help='`google.bool.withIsMirroringCollector` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_mirroring_collector field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_mirroring_collector` field.\n', args=[]),
  withIsMirroringCollector(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          is_mirroring_collector: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLoadBalancingScheme':: d.fn(help='`google.string.withLoadBalancingScheme` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the load_balancing_scheme field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `load_balancing_scheme` field.\n', args=[]),
  withLoadBalancingScheme(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          load_balancing_scheme: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkTier':: d.fn(help='`google.string.withNetworkTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network_tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network_tier` field.\n', args=[]),
  withNetworkTier(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          network_tier: value,
        },
      },
    },
  },
  '#withPortRange':: d.fn(help='`google.string.withPortRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the port_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `port_range` field.\n', args=[]),
  withPortRange(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          port_range: value,
        },
      },
    },
  },
  '#withPorts':: d.fn(help='`google.list.withPorts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ports field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ports` field.\n', args=[]),
  withPorts(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          ports: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withServiceDirectoryRegistrations':: d.fn(help='`google.list[obj].withServiceDirectoryRegistrations` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_directory_registrations field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withServiceDirectoryRegistrationsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_directory_registrations` field.\n', args=[]),
  withServiceDirectoryRegistrations(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          service_directory_registrations: value,
        },
      },
    },
  },
  '#withServiceDirectoryRegistrationsMixin':: d.fn(help='`google.list[obj].withServiceDirectoryRegistrationsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_directory_registrations field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withServiceDirectoryRegistrations](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_directory_registrations` field.\n', args=[]),
  withServiceDirectoryRegistrationsMixin(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          service_directory_registrations+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceLabel':: d.fn(help='`google.string.withServiceLabel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_label field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_label` field.\n', args=[]),
  withServiceLabel(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          service_label: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTarget':: d.fn(help='`google.string.withTarget` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target` field.\n', args=[]),
  withTarget(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
