local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  metadata_filters:: {
    filter_labels:: {
      new(
        name,
        value
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
    new(
      filter_match_criteria,
      filter_labels=null
    ):: std.prune(a={
      filter_labels: filter_labels,
      filter_match_criteria: filter_match_criteria,
    }),
  },
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  withIpProtocol(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          ip_protocol: value,
        },
      },
    },
  },
  withIpVersion(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          ip_version: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLoadBalancingScheme(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          load_balancing_scheme: value,
        },
      },
    },
  },
  withMetadataFilters(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          metadata_filters: value,
        },
      },
    },
  },
  withMetadataFiltersMixin(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          metadata_filters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPortRange(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          port_range: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTarget(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_global_forwarding_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
