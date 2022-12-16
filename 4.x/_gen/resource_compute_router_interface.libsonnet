local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    router,
    interconnect_attachment=null,
    ip_range=null,
    private_ip_address=null,
    project=null,
    redundant_interface=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    vpn_tunnel=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router_interface',
    label=resourceLabel,
    attrs=self.newAttrs(
      interconnect_attachment=interconnect_attachment,
      ip_range=ip_range,
      name=name,
      private_ip_address=private_ip_address,
      project=project,
      redundant_interface=redundant_interface,
      region=region,
      router=router,
      subnetwork=subnetwork,
      timeouts=timeouts,
      vpn_tunnel=vpn_tunnel
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    router,
    interconnect_attachment=null,
    ip_range=null,
    private_ip_address=null,
    project=null,
    redundant_interface=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    vpn_tunnel=null
  ):: std.prune(a={
    interconnect_attachment: interconnect_attachment,
    ip_range: ip_range,
    name: name,
    private_ip_address: private_ip_address,
    project: project,
    redundant_interface: redundant_interface,
    region: region,
    router: router,
    subnetwork: subnetwork,
    timeouts: timeouts,
    vpn_tunnel: vpn_tunnel,
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
  withInterconnectAttachment(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          interconnect_attachment: value,
        },
      },
    },
  },
  withIpRange(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          ip_range: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPrivateIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          private_ip_address: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRedundantInterface(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          redundant_interface: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRouter(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVpnTunnel(resourceLabel, value):: {
    resource+: {
      google_compute_router_interface+: {
        [resourceLabel]+: {
          vpn_tunnel: value,
        },
      },
    },
  },
}
