local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  allow:: {
    new(
      protocol,
      ports=null
    ):: std.prune(a={
      ports: ports,
      protocol: protocol,
    }),
  },
  deny:: {
    new(
      protocol,
      ports=null
    ):: std.prune(a={
      ports: ports,
      protocol: protocol,
    }),
  },
  log_config:: {
    new(
      metadata
    ):: std.prune(a={
      metadata: metadata,
    }),
  },
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
  withAllow(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          allow: value,
        },
      },
    },
  },
  withAllowMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          allow+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDeny(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          deny: value,
        },
      },
    },
  },
  withDenyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          deny+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDestinationRanges(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          destination_ranges: value,
        },
      },
    },
  },
  withDirection(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  withLogConfig(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  withLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSourceRanges(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          source_ranges: value,
        },
      },
    },
  },
  withSourceServiceAccounts(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          source_service_accounts: value,
        },
      },
    },
  },
  withSourceTags(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          source_tags: value,
        },
      },
    },
  },
  withTargetServiceAccounts(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  withTargetTags(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          target_tags: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
