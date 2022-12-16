local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  cloud_logging_config:: {
    new(
      enable_logging
    ):: std.prune(a={
      enable_logging: enable_logging,
    }),
  },
  dnssec_config:: {
    default_key_specs:: {
      new(
        algorithm=null,
        key_length=null,
        key_type=null,
        kind=null
      ):: std.prune(a={
        algorithm: algorithm,
        key_length: key_length,
        key_type: key_type,
        kind: kind,
      }),
    },
    new(
      default_key_specs=null,
      kind=null,
      non_existence=null,
      state=null
    ):: std.prune(a={
      default_key_specs: default_key_specs,
      kind: kind,
      non_existence: non_existence,
      state: state,
    }),
  },
  forwarding_config:: {
    new(
      target_name_servers=null
    ):: std.prune(a={
      target_name_servers: target_name_servers,
    }),
    target_name_servers:: {
      new(
        ipv4_address,
        forwarding_path=null
      ):: std.prune(a={
        forwarding_path: forwarding_path,
        ipv4_address: ipv4_address,
      }),
    },
  },
  new(
    resourceLabel,
    dns_name,
    name,
    cloud_logging_config=null,
    description=null,
    dnssec_config=null,
    force_destroy=null,
    forwarding_config=null,
    labels=null,
    peering_config=null,
    private_visibility_config=null,
    project=null,
    timeouts=null,
    visibility=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_managed_zone',
    label=resourceLabel,
    attrs=self.newAttrs(
      cloud_logging_config=cloud_logging_config,
      description=description,
      dns_name=dns_name,
      dnssec_config=dnssec_config,
      force_destroy=force_destroy,
      forwarding_config=forwarding_config,
      labels=labels,
      name=name,
      peering_config=peering_config,
      private_visibility_config=private_visibility_config,
      project=project,
      timeouts=timeouts,
      visibility=visibility
    ),
    _meta=_meta
  ),
  newAttrs(
    dns_name,
    name,
    cloud_logging_config=null,
    description=null,
    dnssec_config=null,
    force_destroy=null,
    forwarding_config=null,
    labels=null,
    peering_config=null,
    private_visibility_config=null,
    project=null,
    timeouts=null,
    visibility=null
  ):: std.prune(a={
    cloud_logging_config: cloud_logging_config,
    description: description,
    dns_name: dns_name,
    dnssec_config: dnssec_config,
    force_destroy: force_destroy,
    forwarding_config: forwarding_config,
    labels: labels,
    name: name,
    peering_config: peering_config,
    private_visibility_config: private_visibility_config,
    project: project,
    timeouts: timeouts,
    visibility: visibility,
  }),
  peering_config:: {
    new(
      target_network=null
    ):: std.prune(a={
      target_network: target_network,
    }),
    target_network:: {
      new(
        network_url
      ):: std.prune(a={
        network_url: network_url,
      }),
    },
  },
  private_visibility_config:: {
    gke_clusters:: {
      new(
        gke_cluster_name
      ):: std.prune(a={
        gke_cluster_name: gke_cluster_name,
      }),
    },
    networks:: {
      new(
        network_url
      ):: std.prune(a={
        network_url: network_url,
      }),
    },
    new(
      gke_clusters=null,
      networks=null
    ):: std.prune(a={
      gke_clusters: gke_clusters,
      networks: networks,
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
  withCloudLoggingConfig(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          cloud_logging_config: value,
        },
      },
    },
  },
  withCloudLoggingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          cloud_logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDnsName(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          dns_name: value,
        },
      },
    },
  },
  withDnssecConfig(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          dnssec_config: value,
        },
      },
    },
  },
  withDnssecConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          dnssec_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withForceDestroy(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  withForwardingConfig(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          forwarding_config: value,
        },
      },
    },
  },
  withForwardingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          forwarding_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPeeringConfig(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          peering_config: value,
        },
      },
    },
  },
  withPeeringConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          peering_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPrivateVisibilityConfig(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          private_visibility_config: value,
        },
      },
    },
  },
  withPrivateVisibilityConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          private_visibility_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVisibility(resourceLabel, value):: {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          visibility: value,
        },
      },
    },
  },
}
