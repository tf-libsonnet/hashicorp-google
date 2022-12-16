local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    global_network_endpoint_group,
    port,
    fqdn=null,
    ip_address=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_global_network_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      fqdn=fqdn,
      global_network_endpoint_group=global_network_endpoint_group,
      ip_address=ip_address,
      port=port,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    global_network_endpoint_group,
    port,
    fqdn=null,
    ip_address=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    fqdn: fqdn,
    global_network_endpoint_group: global_network_endpoint_group,
    ip_address: ip_address,
    port: port,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withFqdn(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          fqdn: value,
        },
      },
    },
  },
  withGlobalNetworkEndpointGroup(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          global_network_endpoint_group: value,
        },
      },
    },
  },
  withIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_global_network_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
