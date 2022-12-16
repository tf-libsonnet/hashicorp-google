local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bgp:: {
    advertised_ip_ranges:: {
      new(
        range,
        description=null
      ):: std.prune(a={
        description: description,
        range: range,
      }),
    },
    new(
      asn,
      advertise_mode=null,
      advertised_groups=null,
      advertised_ip_ranges=null,
      keepalive_interval=null
    ):: std.prune(a={
      advertise_mode: advertise_mode,
      advertised_groups: advertised_groups,
      advertised_ip_ranges: advertised_ip_ranges,
      asn: asn,
      keepalive_interval: keepalive_interval,
    }),
  },
  new(
    resourceLabel,
    name,
    network,
    bgp=null,
    description=null,
    encrypted_interconnect_router=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router',
    label=resourceLabel,
    attrs=self.newAttrs(
      bgp=bgp,
      description=description,
      encrypted_interconnect_router=encrypted_interconnect_router,
      name=name,
      network=network,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    network,
    bgp=null,
    description=null,
    encrypted_interconnect_router=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    bgp: bgp,
    description: description,
    encrypted_interconnect_router: encrypted_interconnect_router,
    name: name,
    network: network,
    project: project,
    region: region,
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
  withBgp(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          bgp: value,
        },
      },
    },
  },
  withBgpMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          bgp+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEncryptedInterconnectRouter(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          encrypted_interconnect_router: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
