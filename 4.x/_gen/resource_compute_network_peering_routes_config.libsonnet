local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    export_custom_routes,
    import_custom_routes,
    network,
    peering,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_peering_routes_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      export_custom_routes=export_custom_routes,
      import_custom_routes=import_custom_routes,
      network=network,
      peering=peering,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    export_custom_routes,
    import_custom_routes,
    network,
    peering,
    project=null,
    timeouts=null
  ):: std.prune(a={
    export_custom_routes: export_custom_routes,
    import_custom_routes: import_custom_routes,
    network: network,
    peering: peering,
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
  withExportCustomRoutes(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          export_custom_routes: value,
        },
      },
    },
  },
  withImportCustomRoutes(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          import_custom_routes: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPeering(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          peering: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_network_peering_routes_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
