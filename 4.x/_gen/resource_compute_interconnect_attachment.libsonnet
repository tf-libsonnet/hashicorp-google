local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    router,
    admin_enabled=null,
    bandwidth=null,
    candidate_subnets=null,
    description=null,
    edge_availability_domain=null,
    encryption=null,
    interconnect=null,
    ipsec_internal_addresses=null,
    mtu=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    vlan_tag8021q=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_interconnect_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin_enabled=admin_enabled,
      bandwidth=bandwidth,
      candidate_subnets=candidate_subnets,
      description=description,
      edge_availability_domain=edge_availability_domain,
      encryption=encryption,
      interconnect=interconnect,
      ipsec_internal_addresses=ipsec_internal_addresses,
      mtu=mtu,
      name=name,
      project=project,
      region=region,
      router=router,
      timeouts=timeouts,
      type=type,
      vlan_tag8021q=vlan_tag8021q
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    router,
    admin_enabled=null,
    bandwidth=null,
    candidate_subnets=null,
    description=null,
    edge_availability_domain=null,
    encryption=null,
    interconnect=null,
    ipsec_internal_addresses=null,
    mtu=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    vlan_tag8021q=null
  ):: std.prune(a={
    admin_enabled: admin_enabled,
    bandwidth: bandwidth,
    candidate_subnets: candidate_subnets,
    description: description,
    edge_availability_domain: edge_availability_domain,
    encryption: encryption,
    interconnect: interconnect,
    ipsec_internal_addresses: ipsec_internal_addresses,
    mtu: mtu,
    name: name,
    project: project,
    region: region,
    router: router,
    timeouts: timeouts,
    type: type,
    vlan_tag8021q: vlan_tag8021q,
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
  withAdminEnabled(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          admin_enabled: value,
        },
      },
    },
  },
  withBandwidth(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          bandwidth: value,
        },
      },
    },
  },
  withCandidateSubnets(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          candidate_subnets: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEdgeAvailabilityDomain(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          edge_availability_domain: value,
        },
      },
    },
  },
  withEncryption(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          encryption: value,
        },
      },
    },
  },
  withInterconnect(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          interconnect: value,
        },
      },
    },
  },
  withIpsecInternalAddresses(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          ipsec_internal_addresses: value,
        },
      },
    },
  },
  withMtu(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          mtu: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRouter(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  withVlanTag8021Q(resourceLabel, value):: {
    resource+: {
      google_compute_interconnect_attachment+: {
        [resourceLabel]+: {
          vlan_tag8021q: value,
        },
      },
    },
  },
}
