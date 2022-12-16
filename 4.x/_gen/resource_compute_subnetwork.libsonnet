local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  log_config:: {
    new(
      aggregation_interval=null,
      filter_expr=null,
      flow_sampling=null,
      metadata=null,
      metadata_fields=null
    ):: std.prune(a={
      aggregation_interval: aggregation_interval,
      filter_expr: filter_expr,
      flow_sampling: flow_sampling,
      metadata: metadata,
      metadata_fields: metadata_fields,
    }),
  },
  new(
    resourceLabel,
    ip_cidr_range,
    name,
    network,
    description=null,
    ipv6_access_type=null,
    log_config=null,
    private_ip_google_access=null,
    private_ipv6_google_access=null,
    project=null,
    purpose=null,
    region=null,
    role=null,
    secondary_ip_range=null,
    stack_type=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_subnetwork',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      ip_cidr_range=ip_cidr_range,
      ipv6_access_type=ipv6_access_type,
      log_config=log_config,
      name=name,
      network=network,
      private_ip_google_access=private_ip_google_access,
      private_ipv6_google_access=private_ipv6_google_access,
      project=project,
      purpose=purpose,
      region=region,
      role=role,
      secondary_ip_range=secondary_ip_range,
      stack_type=stack_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    ip_cidr_range,
    name,
    network,
    description=null,
    ipv6_access_type=null,
    log_config=null,
    private_ip_google_access=null,
    private_ipv6_google_access=null,
    project=null,
    purpose=null,
    region=null,
    role=null,
    secondary_ip_range=null,
    stack_type=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    ip_cidr_range: ip_cidr_range,
    ipv6_access_type: ipv6_access_type,
    log_config: log_config,
    name: name,
    network: network,
    private_ip_google_access: private_ip_google_access,
    private_ipv6_google_access: private_ipv6_google_access,
    project: project,
    purpose: purpose,
    region: region,
    role: role,
    secondary_ip_range: secondary_ip_range,
    stack_type: stack_type,
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
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIpCidrRange(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          ip_cidr_range: value,
        },
      },
    },
  },
  withIpv6AccessType(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          ipv6_access_type: value,
        },
      },
    },
  },
  withLogConfig(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  withLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPrivateIpGoogleAccess(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          private_ip_google_access: value,
        },
      },
    },
  },
  withPrivateIpv6GoogleAccess(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          private_ipv6_google_access: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withSecondaryIpRange(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          secondary_ip_range: value,
        },
      },
    },
  },
  withStackType(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          stack_type: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
