local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  interface:: {
    new(
      ip_address=null
    ):: std.prune(a={
      ip_address: ip_address,
    }),
  },
  new(
    resourceLabel,
    name,
    description=null,
    interface=null,
    project=null,
    redundancy_type=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_external_vpn_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      interface=interface,
      name=name,
      project=project,
      redundancy_type=redundancy_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    interface=null,
    project=null,
    redundancy_type=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    interface: interface,
    name: name,
    project: project,
    redundancy_type: redundancy_type,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withInterface(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          interface: value,
        },
      },
    },
  },
  withInterfaceMixin(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          interface+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRedundancyType(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          redundancy_type: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_external_vpn_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
