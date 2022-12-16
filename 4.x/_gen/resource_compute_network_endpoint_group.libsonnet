local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    network,
    default_port=null,
    description=null,
    network_endpoint_type=null,
    project=null,
    subnetwork=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_endpoint_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_port=default_port,
      description=description,
      name=name,
      network=network,
      network_endpoint_type=network_endpoint_type,
      project=project,
      subnetwork=subnetwork,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    network,
    default_port=null,
    description=null,
    network_endpoint_type=null,
    project=null,
    subnetwork=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    default_port: default_port,
    description: description,
    name: name,
    network: network,
    network_endpoint_type: network_endpoint_type,
    project: project,
    subnetwork: subnetwork,
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
  withDefaultPort(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          default_port: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkEndpointType(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          network_endpoint_type: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_network_endpoint_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
