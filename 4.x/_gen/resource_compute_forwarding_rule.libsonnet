local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
    new(
      namespace=null,
      service=null
    ):: std.prune(a={
      namespace: namespace,
      service: service,
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
  withAllPorts(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          all_ports: value,
        },
      },
    },
  },
  withAllowGlobalAccess(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          allow_global_access: value,
        },
      },
    },
  },
  withBackendService(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          backend_service: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  withIpProtocol(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          ip_protocol: value,
        },
      },
    },
  },
  withIsMirroringCollector(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          is_mirroring_collector: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLoadBalancingScheme(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          load_balancing_scheme: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkTier(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          network_tier: value,
        },
      },
    },
  },
  withPortRange(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          port_range: value,
        },
      },
    },
  },
  withPorts(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          ports: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withServiceDirectoryRegistrations(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          service_directory_registrations: value,
        },
      },
    },
  },
  withServiceDirectoryRegistrationsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          service_directory_registrations+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceLabel(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          service_label: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTarget(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
