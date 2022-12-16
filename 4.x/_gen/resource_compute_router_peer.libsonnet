local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  advertised_ip_ranges:: {
    new(
      range,
      description=null
    ):: std.prune(a={
      description: description,
      range: range,
    }),
  },
  bfd:: {
    new(
      session_initialization_mode,
      min_receive_interval=null,
      min_transmit_interval=null,
      multiplier=null
    ):: std.prune(a={
      min_receive_interval: min_receive_interval,
      min_transmit_interval: min_transmit_interval,
      multiplier: multiplier,
      session_initialization_mode: session_initialization_mode,
    }),
  },
  new(
    resourceLabel,
    interface,
    name,
    peer_asn,
    peer_ip_address,
    router,
    advertise_mode=null,
    advertised_groups=null,
    advertised_ip_ranges=null,
    advertised_route_priority=null,
    bfd=null,
    enable=null,
    ip_address=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_router_peer',
    label=resourceLabel,
    attrs=self.newAttrs(
      advertise_mode=advertise_mode,
      advertised_groups=advertised_groups,
      advertised_ip_ranges=advertised_ip_ranges,
      advertised_route_priority=advertised_route_priority,
      bfd=bfd,
      enable=enable,
      interface=interface,
      ip_address=ip_address,
      name=name,
      peer_asn=peer_asn,
      peer_ip_address=peer_ip_address,
      project=project,
      region=region,
      router=router,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    interface,
    name,
    peer_asn,
    peer_ip_address,
    router,
    advertise_mode=null,
    advertised_groups=null,
    advertised_ip_ranges=null,
    advertised_route_priority=null,
    bfd=null,
    enable=null,
    ip_address=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    advertise_mode: advertise_mode,
    advertised_groups: advertised_groups,
    advertised_ip_ranges: advertised_ip_ranges,
    advertised_route_priority: advertised_route_priority,
    bfd: bfd,
    enable: enable,
    interface: interface,
    ip_address: ip_address,
    name: name,
    peer_asn: peer_asn,
    peer_ip_address: peer_ip_address,
    project: project,
    region: region,
    router: router,
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
  withAdvertiseMode(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertise_mode: value,
        },
      },
    },
  },
  withAdvertisedGroups(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_groups: value,
        },
      },
    },
  },
  withAdvertisedIpRanges(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_ip_ranges: value,
        },
      },
    },
  },
  withAdvertisedIpRangesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_ip_ranges+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAdvertisedRoutePriority(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          advertised_route_priority: value,
        },
      },
    },
  },
  withBfd(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          bfd: value,
        },
      },
    },
  },
  withBfdMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          bfd+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnable(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          enable: value,
        },
      },
    },
  },
  withInterface(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          interface: value,
        },
      },
    },
  },
  withIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          ip_address: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPeerAsn(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          peer_asn: value,
        },
      },
    },
  },
  withPeerIpAddress(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          peer_ip_address: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRouter(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_router_peer+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
