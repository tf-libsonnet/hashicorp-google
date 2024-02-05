local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_router_nat', url='', help='`compute_router_nat` represents the `google_compute_router_nat` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  log_config:: {
    '#new':: d.fn(help='\n`google.compute_router_nat.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable` (`bool`): Indicates whether or not to export logs.\n  - `filter` (`string`): Specifies the desired filtering of logs on this NAT. Possible values: [&#34;ERRORS_ONLY&#34;, &#34;TRANSLATIONS_ONLY&#34;, &#34;ALL&#34;]\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      enable,
      filter
    ):: std.prune(a={
      enable: enable,
      filter: filter,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_router_nat.new` injects a new `google_compute_router_nat` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_router_nat.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_router_nat` using the reference:\n\n    $._ref.google_compute_router_nat.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_router_nat.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `drain_nat_ips` (`list`): A list of URLs of the IP resources to be drained. These IPs must be\nvalid static external IPs that have been assigned to the NAT. When `null`, the `drain_nat_ips` field will be omitted from the resulting object.\n  - `enable_dynamic_port_allocation` (`bool`): Enable Dynamic Port Allocation.\nIf minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.\nIf minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.\nIf maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.\nIf maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.\n\nMutually exclusive with enableEndpointIndependentMapping. When `null`, the `enable_dynamic_port_allocation` field will be omitted from the resulting object.\n  - `enable_endpoint_independent_mapping` (`bool`): Enable endpoint independent mapping.\nFor more information see the [official documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs). When `null`, the `enable_endpoint_independent_mapping` field will be omitted from the resulting object.\n  - `icmp_idle_timeout_sec` (`number`): Timeout (in seconds) for ICMP connections. Defaults to 30s if not set. When `null`, the `icmp_idle_timeout_sec` field will be omitted from the resulting object.\n  - `max_ports_per_vm` (`number`): Maximum number of ports allocated to a VM from this NAT.\nThis field can only be set when enableDynamicPortAllocation is enabled. When `null`, the `max_ports_per_vm` field will be omitted from the resulting object.\n  - `min_ports_per_vm` (`number`): Minimum number of ports allocated to a VM from this NAT. When `null`, the `min_ports_per_vm` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the NAT service. The name must be 1-63 characters long and\ncomply with RFC1035.\n  - `nat_ip_allocate_option` (`string`): How external IPs should be allocated for this NAT. Valid values are\n\u0026#39;AUTO_ONLY\u0026#39; for only allowing NAT IPs allocated by Google Cloud\nPlatform, or \u0026#39;MANUAL_ONLY\u0026#39; for only user-allocated NAT IP addresses. Possible values: [\u0026#34;MANUAL_ONLY\u0026#34;, \u0026#34;AUTO_ONLY\u0026#34;] When `null`, the `nat_ip_allocate_option` field will be omitted from the resulting object.\n  - `nat_ips` (`list`): Self-links of NAT IPs. Only valid if natIpAllocateOption\nis set to MANUAL_ONLY. When `null`, the `nat_ips` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the router and NAT reside. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): The name of the Cloud Router in which this NAT will be configured.\n  - `source_subnetwork_ip_ranges_to_nat` (`string`): How NAT should be configured per Subnetwork.\nIf \u0026#39;ALL_SUBNETWORKS_ALL_IP_RANGES\u0026#39;, all of the\nIP ranges in every Subnetwork are allowed to Nat.\nIf \u0026#39;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES\u0026#39;, all of the primary IP\nranges in every Subnetwork are allowed to Nat.\n\u0026#39;LIST_OF_SUBNETWORKS\u0026#39;: A list of Subnetworks are allowed to Nat\n(specified in the field subnetwork below). Note that if this field\ncontains ALL_SUBNETWORKS_ALL_IP_RANGES or\nALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any\nother RouterNat section in any Router for this network in this region. Possible values: [\u0026#34;ALL_SUBNETWORKS_ALL_IP_RANGES\u0026#34;, \u0026#34;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES\u0026#34;, \u0026#34;LIST_OF_SUBNETWORKS\u0026#34;]\n  - `tcp_established_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP established connections.\nDefaults to 1200s if not set. When `null`, the `tcp_established_idle_timeout_sec` field will be omitted from the resulting object.\n  - `tcp_time_wait_timeout_sec` (`number`): Timeout (in seconds) for TCP connections that are in TIME_WAIT state.\nDefaults to 120s if not set. When `null`, the `tcp_time_wait_timeout_sec` field will be omitted from the resulting object.\n  - `tcp_transitory_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP transitory connections.\nDefaults to 30s if not set. When `null`, the `tcp_transitory_idle_timeout_sec` field will be omitted from the resulting object.\n  - `udp_idle_timeout_sec` (`number`): Timeout (in seconds) for UDP connections. Defaults to 30s if not set. When `null`, the `udp_idle_timeout_sec` field will be omitted from the resulting object.\n  - `log_config` (`list[obj]`): Configuration for logging on NAT When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.log_config.new](#fn-log_confignew) constructor.\n  - `rules` (`list[obj]`): A list of rules associated with this NAT. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.rules.new](#fn-rulesnew) constructor.\n  - `subnetwork` (`list[obj]`): One or more subnetwork NAT configurations. Only used if\n\u0026#39;source_subnetwork_ip_ranges_to_nat\u0026#39; is set to \u0026#39;LIST_OF_SUBNETWORKS\u0026#39; When `null`, the `subnetwork` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.subnetwork.new](#fn-subnetworknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    router,
    source_subnetwork_ip_ranges_to_nat,
    drain_nat_ips=null,
    enable_dynamic_port_allocation=null,
    enable_endpoint_independent_mapping=null,
    icmp_idle_timeout_sec=null,
    log_config=null,
    max_ports_per_vm=null,
    min_ports_per_vm=null,
    nat_ip_allocate_option=null,
    nat_ips=null,
    project=null,
    region=null,
    rules=null,
    subnetwork=null,
    tcp_established_idle_timeout_sec=null,
    tcp_time_wait_timeout_sec=null,
    tcp_transitory_idle_timeout_sec=null,
    timeouts=null,
    udp_idle_timeout_sec=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router_nat',
    label=resourceLabel,
    attrs=self.newAttrs(
      drain_nat_ips=drain_nat_ips,
      enable_dynamic_port_allocation=enable_dynamic_port_allocation,
      enable_endpoint_independent_mapping=enable_endpoint_independent_mapping,
      icmp_idle_timeout_sec=icmp_idle_timeout_sec,
      log_config=log_config,
      max_ports_per_vm=max_ports_per_vm,
      min_ports_per_vm=min_ports_per_vm,
      name=name,
      nat_ip_allocate_option=nat_ip_allocate_option,
      nat_ips=nat_ips,
      project=project,
      region=region,
      router=router,
      rules=rules,
      source_subnetwork_ip_ranges_to_nat=source_subnetwork_ip_ranges_to_nat,
      subnetwork=subnetwork,
      tcp_established_idle_timeout_sec=tcp_established_idle_timeout_sec,
      tcp_time_wait_timeout_sec=tcp_time_wait_timeout_sec,
      tcp_transitory_idle_timeout_sec=tcp_transitory_idle_timeout_sec,
      timeouts=timeouts,
      udp_idle_timeout_sec=udp_idle_timeout_sec
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_router_nat.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_nat`\nTerraform resource.\n\nUnlike [google.compute_router_nat.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `drain_nat_ips` (`list`): A list of URLs of the IP resources to be drained. These IPs must be\nvalid static external IPs that have been assigned to the NAT. When `null`, the `drain_nat_ips` field will be omitted from the resulting object.\n  - `enable_dynamic_port_allocation` (`bool`): Enable Dynamic Port Allocation.\nIf minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.\nIf minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.\nIf maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.\nIf maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.\n\nMutually exclusive with enableEndpointIndependentMapping. When `null`, the `enable_dynamic_port_allocation` field will be omitted from the resulting object.\n  - `enable_endpoint_independent_mapping` (`bool`): Enable endpoint independent mapping.\nFor more information see the [official documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs). When `null`, the `enable_endpoint_independent_mapping` field will be omitted from the resulting object.\n  - `icmp_idle_timeout_sec` (`number`): Timeout (in seconds) for ICMP connections. Defaults to 30s if not set. When `null`, the `icmp_idle_timeout_sec` field will be omitted from the resulting object.\n  - `max_ports_per_vm` (`number`): Maximum number of ports allocated to a VM from this NAT.\nThis field can only be set when enableDynamicPortAllocation is enabled. When `null`, the `max_ports_per_vm` field will be omitted from the resulting object.\n  - `min_ports_per_vm` (`number`): Minimum number of ports allocated to a VM from this NAT. When `null`, the `min_ports_per_vm` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the NAT service. The name must be 1-63 characters long and\ncomply with RFC1035.\n  - `nat_ip_allocate_option` (`string`): How external IPs should be allocated for this NAT. Valid values are\n&#39;AUTO_ONLY&#39; for only allowing NAT IPs allocated by Google Cloud\nPlatform, or &#39;MANUAL_ONLY&#39; for only user-allocated NAT IP addresses. Possible values: [&#34;MANUAL_ONLY&#34;, &#34;AUTO_ONLY&#34;] When `null`, the `nat_ip_allocate_option` field will be omitted from the resulting object.\n  - `nat_ips` (`list`): Self-links of NAT IPs. Only valid if natIpAllocateOption\nis set to MANUAL_ONLY. When `null`, the `nat_ips` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the router and NAT reside. When `null`, the `region` field will be omitted from the resulting object.\n  - `router` (`string`): The name of the Cloud Router in which this NAT will be configured.\n  - `source_subnetwork_ip_ranges_to_nat` (`string`): How NAT should be configured per Subnetwork.\nIf &#39;ALL_SUBNETWORKS_ALL_IP_RANGES&#39;, all of the\nIP ranges in every Subnetwork are allowed to Nat.\nIf &#39;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES&#39;, all of the primary IP\nranges in every Subnetwork are allowed to Nat.\n&#39;LIST_OF_SUBNETWORKS&#39;: A list of Subnetworks are allowed to Nat\n(specified in the field subnetwork below). Note that if this field\ncontains ALL_SUBNETWORKS_ALL_IP_RANGES or\nALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any\nother RouterNat section in any Router for this network in this region. Possible values: [&#34;ALL_SUBNETWORKS_ALL_IP_RANGES&#34;, &#34;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES&#34;, &#34;LIST_OF_SUBNETWORKS&#34;]\n  - `tcp_established_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP established connections.\nDefaults to 1200s if not set. When `null`, the `tcp_established_idle_timeout_sec` field will be omitted from the resulting object.\n  - `tcp_time_wait_timeout_sec` (`number`): Timeout (in seconds) for TCP connections that are in TIME_WAIT state.\nDefaults to 120s if not set. When `null`, the `tcp_time_wait_timeout_sec` field will be omitted from the resulting object.\n  - `tcp_transitory_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP transitory connections.\nDefaults to 30s if not set. When `null`, the `tcp_transitory_idle_timeout_sec` field will be omitted from the resulting object.\n  - `udp_idle_timeout_sec` (`number`): Timeout (in seconds) for UDP connections. Defaults to 30s if not set. When `null`, the `udp_idle_timeout_sec` field will be omitted from the resulting object.\n  - `log_config` (`list[obj]`): Configuration for logging on NAT When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.log_config.new](#fn-log_confignew) constructor.\n  - `rules` (`list[obj]`): A list of rules associated with this NAT. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.rules.new](#fn-rulesnew) constructor.\n  - `subnetwork` (`list[obj]`): One or more subnetwork NAT configurations. Only used if\n&#39;source_subnetwork_ip_ranges_to_nat&#39; is set to &#39;LIST_OF_SUBNETWORKS&#39; When `null`, the `subnetwork` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.subnetwork.new](#fn-subnetworknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router_nat` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    router,
    source_subnetwork_ip_ranges_to_nat,
    drain_nat_ips=null,
    enable_dynamic_port_allocation=null,
    enable_endpoint_independent_mapping=null,
    icmp_idle_timeout_sec=null,
    log_config=null,
    max_ports_per_vm=null,
    min_ports_per_vm=null,
    nat_ip_allocate_option=null,
    nat_ips=null,
    project=null,
    region=null,
    rules=null,
    subnetwork=null,
    tcp_established_idle_timeout_sec=null,
    tcp_time_wait_timeout_sec=null,
    tcp_transitory_idle_timeout_sec=null,
    timeouts=null,
    udp_idle_timeout_sec=null
  ):: std.prune(a={
    drain_nat_ips: drain_nat_ips,
    enable_dynamic_port_allocation: enable_dynamic_port_allocation,
    enable_endpoint_independent_mapping: enable_endpoint_independent_mapping,
    icmp_idle_timeout_sec: icmp_idle_timeout_sec,
    log_config: log_config,
    max_ports_per_vm: max_ports_per_vm,
    min_ports_per_vm: min_ports_per_vm,
    name: name,
    nat_ip_allocate_option: nat_ip_allocate_option,
    nat_ips: nat_ips,
    project: project,
    region: region,
    router: router,
    rules: rules,
    source_subnetwork_ip_ranges_to_nat: source_subnetwork_ip_ranges_to_nat,
    subnetwork: subnetwork,
    tcp_established_idle_timeout_sec: tcp_established_idle_timeout_sec,
    tcp_time_wait_timeout_sec: tcp_time_wait_timeout_sec,
    tcp_transitory_idle_timeout_sec: tcp_transitory_idle_timeout_sec,
    timeouts: timeouts,
    udp_idle_timeout_sec: udp_idle_timeout_sec,
  }),
  rules:: {
    action:: {
      '#new':: d.fn(help='\n`google.compute_router_nat.rules.action.new` constructs a new object with attributes and blocks configured for the `action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `source_nat_active_ips` (`list`): A list of URLs of the IP resources used for this NAT rule.\nThese IP addresses must be valid static external IP addresses assigned to the project.\nThis field is used for public NAT. When `null`, the `source_nat_active_ips` field will be omitted from the resulting object.\n  - `source_nat_drain_ips` (`list`): A list of URLs of the IP resources to be drained.\nThese IPs must be valid static external IPs that have been assigned to the NAT.\nThese IPs should be used for updating/patching a NAT rule only.\nThis field is used for public NAT. When `null`, the `source_nat_drain_ips` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `action` sub block.\n', args=[]),
      new(
        source_nat_active_ips=null,
        source_nat_drain_ips=null
      ):: std.prune(a={
        source_nat_active_ips: source_nat_active_ips,
        source_nat_drain_ips: source_nat_drain_ips,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_router_nat.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): An optional description of this rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `match` (`string`): CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.\nIf it evaluates to true, the corresponding action is enforced.\n\nThe following examples are valid match expressions for public NAT:\n\n&#34;inIpRange(destination.ip, &#39;1.1.0.0/16&#39;) || inIpRange(destination.ip, &#39;2.2.0.0/16&#39;)&#34;\n\n&#34;destination.ip == &#39;1.1.0.1&#39; || destination.ip == &#39;8.8.8.8&#39;&#34;\n\nThe following example is a valid match expression for private NAT:\n\n&#34;nexthop.hub == &#39;https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1&#39;&#34;\n  - `rule_number` (`number`): An integer uniquely identifying a rule in the list.\nThe rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.\n  - `action` (`list[obj]`): The action to be enforced for traffic that matches this rule. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.rules.action.new](#fn-rulesactionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
    new(
      match,
      rule_number,
      action=null,
      description=null
    ):: std.prune(a={
      action: action,
      description: description,
      match: match,
      rule_number: rule_number,
    }),
  },
  subnetwork:: {
    '#new':: d.fn(help='\n`google.compute_router_nat.subnetwork.new` constructs a new object with attributes and blocks configured for the `subnetwork`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Self-link of subnetwork to NAT\n  - `secondary_ip_range_names` (`list`): List of the secondary ranges of the subnetwork that are allowed\nto use NAT. This can be populated only if\n&#39;LIST_OF_SECONDARY_IP_RANGES&#39; is one of the values in\nsourceIpRangesToNat When `null`, the `secondary_ip_range_names` field will be omitted from the resulting object.\n  - `source_ip_ranges_to_nat` (`list`): List of options for which source IPs in the subnetwork\nshould have NAT enabled. Supported values include:\n&#39;ALL_IP_RANGES&#39;, &#39;LIST_OF_SECONDARY_IP_RANGES&#39;,\n&#39;PRIMARY_IP_RANGE&#39;.\n\n**Returns**:\n  - An attribute object that represents the `subnetwork` sub block.\n', args=[]),
    new(
      name,
      source_ip_ranges_to_nat,
      secondary_ip_range_names=null
    ):: std.prune(a={
      name: name,
      secondary_ip_range_names: secondary_ip_range_names,
      source_ip_ranges_to_nat: source_ip_ranges_to_nat,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_router_nat.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDrainNatIps':: d.fn(help='`google.list.withDrainNatIps` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the drain_nat_ips field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `drain_nat_ips` field.\n', args=[]),
  withDrainNatIps(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          drain_nat_ips: value,
        },
      },
    },
  },
  '#withEnableDynamicPortAllocation':: d.fn(help='`google.bool.withEnableDynamicPortAllocation` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_dynamic_port_allocation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_dynamic_port_allocation` field.\n', args=[]),
  withEnableDynamicPortAllocation(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          enable_dynamic_port_allocation: value,
        },
      },
    },
  },
  '#withEnableEndpointIndependentMapping':: d.fn(help='`google.bool.withEnableEndpointIndependentMapping` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_endpoint_independent_mapping field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_endpoint_independent_mapping` field.\n', args=[]),
  withEnableEndpointIndependentMapping(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          enable_endpoint_independent_mapping: value,
        },
      },
    },
  },
  '#withIcmpIdleTimeoutSec':: d.fn(help='`google.number.withIcmpIdleTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the icmp_idle_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `icmp_idle_timeout_sec` field.\n', args=[]),
  withIcmpIdleTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          icmp_idle_timeout_sec: value,
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMaxPortsPerVm':: d.fn(help='`google.number.withMaxPortsPerVm` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_ports_per_vm field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_ports_per_vm` field.\n', args=[]),
  withMaxPortsPerVm(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          max_ports_per_vm: value,
        },
      },
    },
  },
  '#withMinPortsPerVm':: d.fn(help='`google.number.withMinPortsPerVm` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the min_ports_per_vm field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `min_ports_per_vm` field.\n', args=[]),
  withMinPortsPerVm(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          min_ports_per_vm: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNatIpAllocateOption':: d.fn(help='`google.string.withNatIpAllocateOption` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the nat_ip_allocate_option field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `nat_ip_allocate_option` field.\n', args=[]),
  withNatIpAllocateOption(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          nat_ip_allocate_option: value,
        },
      },
    },
  },
  '#withNatIps':: d.fn(help='`google.list.withNatIps` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the nat_ips field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `nat_ips` field.\n', args=[]),
  withNatIps(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          nat_ips: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRouter':: d.fn(help='`google.string.withRouter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `router` field.\n', args=[]),
  withRouter(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  '#withRules':: d.fn(help='`google.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRules(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  '#withRulesMixin':: d.fn(help='`google.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rules` field.\n', args=[]),
  withRulesMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSourceSubnetworkIpRangesToNat':: d.fn(help='`google.string.withSourceSubnetworkIpRangesToNat` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_subnetwork_ip_ranges_to_nat field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_subnetwork_ip_ranges_to_nat` field.\n', args=[]),
  withSourceSubnetworkIpRangesToNat(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          source_subnetwork_ip_ranges_to_nat: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.list[obj].withSubnetwork` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subnetwork field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSubnetworkMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withSubnetworkMixin':: d.fn(help='`google.list[obj].withSubnetworkMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subnetwork field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSubnetwork](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetworkMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          subnetwork+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTcpEstablishedIdleTimeoutSec':: d.fn(help='`google.number.withTcpEstablishedIdleTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the tcp_established_idle_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `tcp_established_idle_timeout_sec` field.\n', args=[]),
  withTcpEstablishedIdleTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          tcp_established_idle_timeout_sec: value,
        },
      },
    },
  },
  '#withTcpTimeWaitTimeoutSec':: d.fn(help='`google.number.withTcpTimeWaitTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the tcp_time_wait_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `tcp_time_wait_timeout_sec` field.\n', args=[]),
  withTcpTimeWaitTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          tcp_time_wait_timeout_sec: value,
        },
      },
    },
  },
  '#withTcpTransitoryIdleTimeoutSec':: d.fn(help='`google.number.withTcpTransitoryIdleTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the tcp_transitory_idle_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `tcp_transitory_idle_timeout_sec` field.\n', args=[]),
  withTcpTransitoryIdleTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          tcp_transitory_idle_timeout_sec: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUdpIdleTimeoutSec':: d.fn(help='`google.number.withUdpIdleTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the udp_idle_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `udp_idle_timeout_sec` field.\n', args=[]),
  withUdpIdleTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          udp_idle_timeout_sec: value,
        },
      },
    },
  },
}
