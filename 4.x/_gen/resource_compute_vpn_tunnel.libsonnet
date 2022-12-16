local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    shared_secret,
    description=null,
    ike_version=null,
    local_traffic_selector=null,
    peer_external_gateway=null,
    peer_external_gateway_interface=null,
    peer_gcp_gateway=null,
    peer_ip=null,
    project=null,
    region=null,
    remote_traffic_selector=null,
    router=null,
    target_vpn_gateway=null,
    timeouts=null,
    vpn_gateway=null,
    vpn_gateway_interface=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_vpn_tunnel',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      ike_version=ike_version,
      local_traffic_selector=local_traffic_selector,
      name=name,
      peer_external_gateway=peer_external_gateway,
      peer_external_gateway_interface=peer_external_gateway_interface,
      peer_gcp_gateway=peer_gcp_gateway,
      peer_ip=peer_ip,
      project=project,
      region=region,
      remote_traffic_selector=remote_traffic_selector,
      router=router,
      shared_secret=shared_secret,
      target_vpn_gateway=target_vpn_gateway,
      timeouts=timeouts,
      vpn_gateway=vpn_gateway,
      vpn_gateway_interface=vpn_gateway_interface
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    shared_secret,
    description=null,
    ike_version=null,
    local_traffic_selector=null,
    peer_external_gateway=null,
    peer_external_gateway_interface=null,
    peer_gcp_gateway=null,
    peer_ip=null,
    project=null,
    region=null,
    remote_traffic_selector=null,
    router=null,
    target_vpn_gateway=null,
    timeouts=null,
    vpn_gateway=null,
    vpn_gateway_interface=null
  ):: std.prune(a={
    description: description,
    ike_version: ike_version,
    local_traffic_selector: local_traffic_selector,
    name: name,
    peer_external_gateway: peer_external_gateway,
    peer_external_gateway_interface: peer_external_gateway_interface,
    peer_gcp_gateway: peer_gcp_gateway,
    peer_ip: peer_ip,
    project: project,
    region: region,
    remote_traffic_selector: remote_traffic_selector,
    router: router,
    shared_secret: shared_secret,
    target_vpn_gateway: target_vpn_gateway,
    timeouts: timeouts,
    vpn_gateway: vpn_gateway,
    vpn_gateway_interface: vpn_gateway_interface,
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
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIkeVersion(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          ike_version: value,
        },
      },
    },
  },
  withLocalTrafficSelector(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          local_traffic_selector: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPeerExternalGateway(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_external_gateway: value,
        },
      },
    },
  },
  withPeerExternalGatewayInterface(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_external_gateway_interface: value,
        },
      },
    },
  },
  withPeerGcpGateway(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_gcp_gateway: value,
        },
      },
    },
  },
  withPeerIp(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_ip: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRemoteTrafficSelector(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          remote_traffic_selector: value,
        },
      },
    },
  },
  withRouter(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  withSharedSecret(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          shared_secret: value,
        },
      },
    },
  },
  withTargetVpnGateway(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          target_vpn_gateway: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVpnGateway(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          vpn_gateway: value,
        },
      },
    },
  },
  withVpnGatewayInterface(resourceLabel, value):: {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          vpn_gateway_interface: value,
        },
      },
    },
  },
}
