local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dns_suffix,
    name,
    network,
    project=null,
    service=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_networking_peered_dns_domain',
    label=resourceLabel,
    attrs=self.newAttrs(
      dns_suffix=dns_suffix,
      name=name,
      network=network,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dns_suffix,
    name,
    network,
    project=null,
    service=null,
    timeouts=null
  ):: std.prune(a={
    dns_suffix: dns_suffix,
    name: name,
    network: network,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  withDnsSuffix(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          dns_suffix: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
