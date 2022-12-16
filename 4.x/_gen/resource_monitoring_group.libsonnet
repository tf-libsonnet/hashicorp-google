local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    filter,
    is_cluster=null,
    parent_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      filter=filter,
      is_cluster=is_cluster,
      parent_name=parent_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    filter,
    is_cluster=null,
    parent_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    filter: filter,
    is_cluster: is_cluster,
    parent_name: parent_name,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withIsCluster(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          is_cluster: value,
        },
      },
    },
  },
  withParentName(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          parent_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
