local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  match:: {
    layer4_configs:: {
      new(
        ip_protocol,
        ports=null
      ):: std.prune(a={
        ip_protocol: ip_protocol,
        ports: ports,
      }),
    },
    new(
      dest_ip_ranges=null,
      layer4_configs=null,
      src_ip_ranges=null
    ):: std.prune(a={
      dest_ip_ranges: dest_ip_ranges,
      layer4_configs: layer4_configs,
      src_ip_ranges: src_ip_ranges,
    }),
  },
  new(
    resourceLabel,
    action,
    direction,
    firewall_policy,
    priority,
    description=null,
    disabled=null,
    enable_logging=null,
    match=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_firewall_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      direction=direction,
      disabled=disabled,
      enable_logging=enable_logging,
      firewall_policy=firewall_policy,
      match=match,
      priority=priority,
      target_resources=target_resources,
      target_service_accounts=target_service_accounts,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    action,
    direction,
    firewall_policy,
    priority,
    description=null,
    disabled=null,
    enable_logging=null,
    match=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    direction: direction,
    disabled: disabled,
    enable_logging: enable_logging,
    firewall_policy: firewall_policy,
    match: match,
    priority: priority,
    target_resources: target_resources,
    target_service_accounts: target_service_accounts,
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
  withAction(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDirection(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  withFirewallPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          firewall_policy: value,
        },
      },
    },
  },
  withMatch(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          match: value,
        },
      },
    },
  },
  withMatchMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withTargetResources(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_resources: value,
        },
      },
    },
  },
  withTargetServiceAccounts(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
