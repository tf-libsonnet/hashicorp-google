local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    ip_address,
    network_endpoint_group,
    instance=null,
    port=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance=instance,
      ip_address=ip_address,
      network_endpoint_group=network_endpoint_group,
      port=port,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    ip_address,
    network_endpoint_group,
    instance=null,
    port=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    instance: instance,
    ip_address: ip_address,
    network_endpoint_group: network_endpoint_group,
    port: port,
    project: project,
    timeouts: timeouts,
    zone: zone,
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
  withInstance(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  withNetworkEndpointGroup(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          network_endpoint_group: value,
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
