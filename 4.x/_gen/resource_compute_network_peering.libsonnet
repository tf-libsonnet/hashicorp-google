local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    network,
    peer_network,
    export_custom_routes=null,
    export_subnet_routes_with_public_ip=null,
    import_custom_routes=null,
    import_subnet_routes_with_public_ip=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_peering',
    label=resourceLabel,
    attrs=self.newAttrs(
      export_custom_routes=export_custom_routes,
      export_subnet_routes_with_public_ip=export_subnet_routes_with_public_ip,
      import_custom_routes=import_custom_routes,
      import_subnet_routes_with_public_ip=import_subnet_routes_with_public_ip,
      name=name,
      network=network,
      peer_network=peer_network,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    network,
    peer_network,
    export_custom_routes=null,
    export_subnet_routes_with_public_ip=null,
    import_custom_routes=null,
    import_subnet_routes_with_public_ip=null,
    timeouts=null
  ):: std.prune(a={
    export_custom_routes: export_custom_routes,
    export_subnet_routes_with_public_ip: export_subnet_routes_with_public_ip,
    import_custom_routes: import_custom_routes,
    import_subnet_routes_with_public_ip: import_subnet_routes_with_public_ip,
    name: name,
    network: network,
    peer_network: peer_network,
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
  withExportCustomRoutes(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          export_custom_routes: value,
        },
      },
    },
  },
  withExportSubnetRoutesWithPublicIp(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          export_subnet_routes_with_public_ip: value,
        },
      },
    },
  },
  withImportCustomRoutes(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          import_custom_routes: value,
        },
      },
    },
  },
  withImportSubnetRoutesWithPublicIp(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          import_subnet_routes_with_public_ip: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPeerNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          peer_network: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
