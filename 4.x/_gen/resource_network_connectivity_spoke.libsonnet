local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  linked_interconnect_attachments:: {
    new(
      site_to_site_data_transfer,
      uris
    ):: std.prune(a={
      site_to_site_data_transfer: site_to_site_data_transfer,
      uris: uris,
    }),
  },
  linked_router_appliance_instances:: {
    instances:: {
      new(
        ip_address=null,
        virtual_machine=null
      ):: std.prune(a={
        ip_address: ip_address,
        virtual_machine: virtual_machine,
      }),
    },
    new(
      site_to_site_data_transfer,
      instances=null
    ):: std.prune(a={
      instances: instances,
      site_to_site_data_transfer: site_to_site_data_transfer,
    }),
  },
  linked_vpn_tunnels:: {
    new(
      site_to_site_data_transfer,
      uris
    ):: std.prune(a={
      site_to_site_data_transfer: site_to_site_data_transfer,
      uris: uris,
    }),
  },
  new(
    resourceLabel,
    hub,
    location,
    name,
    description=null,
    labels=null,
    linked_interconnect_attachments=null,
    linked_router_appliance_instances=null,
    linked_vpn_tunnels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_connectivity_spoke',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      hub=hub,
      labels=labels,
      linked_interconnect_attachments=linked_interconnect_attachments,
      linked_router_appliance_instances=linked_router_appliance_instances,
      linked_vpn_tunnels=linked_vpn_tunnels,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    hub,
    location,
    name,
    description=null,
    labels=null,
    linked_interconnect_attachments=null,
    linked_router_appliance_instances=null,
    linked_vpn_tunnels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    hub: hub,
    labels: labels,
    linked_interconnect_attachments: linked_interconnect_attachments,
    linked_router_appliance_instances: linked_router_appliance_instances,
    linked_vpn_tunnels: linked_vpn_tunnels,
    location: location,
    name: name,
    project: project,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withHub(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          hub: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLinkedInterconnectAttachments(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_interconnect_attachments: value,
        },
      },
    },
  },
  withLinkedInterconnectAttachmentsMixin(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_interconnect_attachments+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLinkedRouterApplianceInstances(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_router_appliance_instances: value,
        },
      },
    },
  },
  withLinkedRouterApplianceInstancesMixin(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_router_appliance_instances+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLinkedVpnTunnels(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_vpn_tunnels: value,
        },
      },
    },
  },
  withLinkedVpnTunnelsMixin(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          linked_vpn_tunnels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_spoke+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
