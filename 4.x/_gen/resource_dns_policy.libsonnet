local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  alternative_name_server_config:: {
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
  networks:: {
    new(
      network_url
    ):: std.prune(a={
      network_url: network_url,
    }),
  },
  new(
    resourceLabel,
    name,
    alternative_name_server_config=null,
    description=null,
    enable_inbound_forwarding=null,
    enable_logging=null,
    networks=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      alternative_name_server_config=alternative_name_server_config,
      description=description,
      enable_inbound_forwarding=enable_inbound_forwarding,
      enable_logging=enable_logging,
      name=name,
      networks=networks,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    alternative_name_server_config=null,
    description=null,
    enable_inbound_forwarding=null,
    enable_logging=null,
    networks=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    alternative_name_server_config: alternative_name_server_config,
    description: description,
    enable_inbound_forwarding: enable_inbound_forwarding,
    enable_logging: enable_logging,
    name: name,
    networks: networks,
    project: project,
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
  withAlternativeNameServerConfig(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          alternative_name_server_config: value,
        },
      },
    },
  },
  withAlternativeNameServerConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          alternative_name_server_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEnableInboundForwarding(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          enable_inbound_forwarding: value,
        },
      },
    },
  },
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworks(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  withNetworksMixin(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dns_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
