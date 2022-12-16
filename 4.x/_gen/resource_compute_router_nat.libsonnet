local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  log_config:: {
    new(
      enable,
      filter
    ):: std.prune(a={
      enable: enable,
      filter: filter,
    }),
  },
  new(
    resourceLabel,
    name,
    nat_ip_allocate_option,
    router,
    source_subnetwork_ip_ranges_to_nat,
    drain_nat_ips=null,
    enable_dynamic_port_allocation=null,
    enable_endpoint_independent_mapping=null,
    icmp_idle_timeout_sec=null,
    log_config=null,
    max_ports_per_vm=null,
    min_ports_per_vm=null,
    nat_ips=null,
    project=null,
    region=null,
    rules=null,
    subnetwork=null,
    tcp_established_idle_timeout_sec=null,
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
      tcp_transitory_idle_timeout_sec=tcp_transitory_idle_timeout_sec,
      timeouts=timeouts,
      udp_idle_timeout_sec=udp_idle_timeout_sec
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    nat_ip_allocate_option,
    router,
    source_subnetwork_ip_ranges_to_nat,
    drain_nat_ips=null,
    enable_dynamic_port_allocation=null,
    enable_endpoint_independent_mapping=null,
    icmp_idle_timeout_sec=null,
    log_config=null,
    max_ports_per_vm=null,
    min_ports_per_vm=null,
    nat_ips=null,
    project=null,
    region=null,
    rules=null,
    subnetwork=null,
    tcp_established_idle_timeout_sec=null,
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
    tcp_transitory_idle_timeout_sec: tcp_transitory_idle_timeout_sec,
    timeouts: timeouts,
    udp_idle_timeout_sec: udp_idle_timeout_sec,
  }),
  rules:: {
    action:: {
      new(
        source_nat_active_ips=null,
        source_nat_drain_ips=null
      ):: std.prune(a={
        source_nat_active_ips: source_nat_active_ips,
        source_nat_drain_ips: source_nat_drain_ips,
      }),
    },
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
  withDrainNatIps(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          drain_nat_ips: value,
        },
      },
    },
  },
  withEnableDynamicPortAllocation(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          enable_dynamic_port_allocation: value,
        },
      },
    },
  },
  withEnableEndpointIndependentMapping(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          enable_endpoint_independent_mapping: value,
        },
      },
    },
  },
  withIcmpIdleTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          icmp_idle_timeout_sec: value,
        },
      },
    },
  },
  withLogConfig(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  withLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMaxPortsPerVm(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          max_ports_per_vm: value,
        },
      },
    },
  },
  withMinPortsPerVm(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          min_ports_per_vm: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNatIpAllocateOption(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          nat_ip_allocate_option: value,
        },
      },
    },
  },
  withNatIps(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          nat_ips: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRouter(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  withRules(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  withRulesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSourceSubnetworkIpRangesToNat(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          source_subnetwork_ip_ranges_to_nat: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withSubnetworkMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          subnetwork+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTcpEstablishedIdleTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          tcp_established_idle_timeout_sec: value,
        },
      },
    },
  },
  withTcpTransitoryIdleTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          tcp_transitory_idle_timeout_sec: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUdpIdleTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_router_nat+: {
        [resourceLabel]+: {
          udp_idle_timeout_sec: value,
        },
      },
    },
  },
}
