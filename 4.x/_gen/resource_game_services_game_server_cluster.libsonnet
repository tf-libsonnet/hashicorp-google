local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  connection_info:: {
    gke_cluster_reference:: {
      new(
        cluster
      ):: std.prune(a={
        cluster: cluster,
      }),
    },
    new(
      namespace,
      gke_cluster_reference=null
    ):: std.prune(a={
      gke_cluster_reference: gke_cluster_reference,
      namespace: namespace,
    }),
  },
  new(
    resourceLabel,
    cluster_id,
    realm_id,
    connection_info=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_game_server_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      connection_info=connection_info,
      description=description,
      labels=labels,
      location=location,
      project=project,
      realm_id=realm_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    realm_id,
    connection_info=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    connection_info: connection_info,
    description: description,
    labels: labels,
    location: location,
    project: project,
    realm_id: realm_id,
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
  withClusterId(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withConnectionInfo(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          connection_info: value,
        },
      },
    },
  },
  withConnectionInfoMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          connection_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRealmId(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          realm_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
