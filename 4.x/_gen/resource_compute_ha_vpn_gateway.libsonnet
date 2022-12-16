local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    network,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    vpn_interfaces=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_ha_vpn_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      network=network,
      project=project,
      region=region,
      timeouts=timeouts,
      vpn_interfaces=vpn_interfaces
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    network,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    vpn_interfaces=null
  ):: std.prune(a={
    description: description,
    name: name,
    network: network,
    project: project,
    region: region,
    timeouts: timeouts,
    vpn_interfaces: vpn_interfaces,
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
  vpn_interfaces:: {
    new(
      interconnect_attachment=null
    ):: std.prune(a={
      interconnect_attachment: interconnect_attachment,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVpnInterfaces(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          vpn_interfaces: value,
        },
      },
    },
  },
  withVpnInterfacesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_ha_vpn_gateway+: {
        [resourceLabel]+: {
          vpn_interfaces+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
