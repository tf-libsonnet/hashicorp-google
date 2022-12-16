local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    auto_create_subnetworks=null,
    delete_default_routes_on_create=null,
    description=null,
    enable_ula_internal_ipv6=null,
    internal_ipv6_range=null,
    mtu=null,
    project=null,
    routing_mode=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_create_subnetworks=auto_create_subnetworks,
      delete_default_routes_on_create=delete_default_routes_on_create,
      description=description,
      enable_ula_internal_ipv6=enable_ula_internal_ipv6,
      internal_ipv6_range=internal_ipv6_range,
      mtu=mtu,
      name=name,
      project=project,
      routing_mode=routing_mode,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    auto_create_subnetworks=null,
    delete_default_routes_on_create=null,
    description=null,
    enable_ula_internal_ipv6=null,
    internal_ipv6_range=null,
    mtu=null,
    project=null,
    routing_mode=null,
    timeouts=null
  ):: std.prune(a={
    auto_create_subnetworks: auto_create_subnetworks,
    delete_default_routes_on_create: delete_default_routes_on_create,
    description: description,
    enable_ula_internal_ipv6: enable_ula_internal_ipv6,
    internal_ipv6_range: internal_ipv6_range,
    mtu: mtu,
    name: name,
    project: project,
    routing_mode: routing_mode,
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
  withAutoCreateSubnetworks(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          auto_create_subnetworks: value,
        },
      },
    },
  },
  withDeleteDefaultRoutesOnCreate(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          delete_default_routes_on_create: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEnableUlaInternalIpv6(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          enable_ula_internal_ipv6: value,
        },
      },
    },
  },
  withInternalIpv6Range(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          internal_ipv6_range: value,
        },
      },
    },
  },
  withMtu(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          mtu: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRoutingMode(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          routing_mode: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
