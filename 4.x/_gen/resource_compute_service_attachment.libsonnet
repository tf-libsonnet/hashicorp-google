local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  consumer_accept_lists:: {
    new(
      connection_limit,
      project_id_or_num
    ):: std.prune(a={
      connection_limit: connection_limit,
      project_id_or_num: project_id_or_num,
    }),
  },
  new(
    resourceLabel,
    connection_preference,
    enable_proxy_protocol,
    name,
    nat_subnets,
    target_service,
    consumer_accept_lists=null,
    consumer_reject_lists=null,
    description=null,
    domain_names=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_service_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      connection_preference=connection_preference,
      consumer_accept_lists=consumer_accept_lists,
      consumer_reject_lists=consumer_reject_lists,
      description=description,
      domain_names=domain_names,
      enable_proxy_protocol=enable_proxy_protocol,
      name=name,
      nat_subnets=nat_subnets,
      project=project,
      region=region,
      target_service=target_service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    connection_preference,
    enable_proxy_protocol,
    name,
    nat_subnets,
    target_service,
    consumer_accept_lists=null,
    consumer_reject_lists=null,
    description=null,
    domain_names=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    connection_preference: connection_preference,
    consumer_accept_lists: consumer_accept_lists,
    consumer_reject_lists: consumer_reject_lists,
    description: description,
    domain_names: domain_names,
    enable_proxy_protocol: enable_proxy_protocol,
    name: name,
    nat_subnets: nat_subnets,
    project: project,
    region: region,
    target_service: target_service,
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
  withConnectionPreference(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          connection_preference: value,
        },
      },
    },
  },
  withConsumerAcceptLists(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          consumer_accept_lists: value,
        },
      },
    },
  },
  withConsumerAcceptListsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          consumer_accept_lists+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConsumerRejectLists(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          consumer_reject_lists: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDomainNames(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          domain_names: value,
        },
      },
    },
  },
  withEnableProxyProtocol(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          enable_proxy_protocol: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNatSubnets(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          nat_subnets: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTargetService(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          target_service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
