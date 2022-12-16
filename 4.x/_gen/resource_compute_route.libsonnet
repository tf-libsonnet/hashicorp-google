local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dest_range,
    name,
    network,
    description=null,
    next_hop_gateway=null,
    next_hop_ilb=null,
    next_hop_instance=null,
    next_hop_instance_zone=null,
    next_hop_ip=null,
    next_hop_vpn_tunnel=null,
    priority=null,
    project=null,
    tags=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      dest_range=dest_range,
      name=name,
      network=network,
      next_hop_gateway=next_hop_gateway,
      next_hop_ilb=next_hop_ilb,
      next_hop_instance=next_hop_instance,
      next_hop_instance_zone=next_hop_instance_zone,
      next_hop_ip=next_hop_ip,
      next_hop_vpn_tunnel=next_hop_vpn_tunnel,
      priority=priority,
      project=project,
      tags=tags,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dest_range,
    name,
    network,
    description=null,
    next_hop_gateway=null,
    next_hop_ilb=null,
    next_hop_instance=null,
    next_hop_instance_zone=null,
    next_hop_ip=null,
    next_hop_vpn_tunnel=null,
    priority=null,
    project=null,
    tags=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    dest_range: dest_range,
    name: name,
    network: network,
    next_hop_gateway: next_hop_gateway,
    next_hop_ilb: next_hop_ilb,
    next_hop_instance: next_hop_instance,
    next_hop_instance_zone: next_hop_instance_zone,
    next_hop_ip: next_hop_ip,
    next_hop_vpn_tunnel: next_hop_vpn_tunnel,
    priority: priority,
    project: project,
    tags: tags,
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
      google_compute_route+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDestRange(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          dest_range: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNextHopGateway(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_gateway: value,
        },
      },
    },
  },
  withNextHopIlb(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_ilb: value,
        },
      },
    },
  },
  withNextHopInstance(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_instance: value,
        },
      },
    },
  },
  withNextHopInstanceZone(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_instance_zone: value,
        },
      },
    },
  },
  withNextHopIp(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_ip: value,
        },
      },
    },
  },
  withNextHopVpnTunnel(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          next_hop_vpn_tunnel: value,
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTags(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
