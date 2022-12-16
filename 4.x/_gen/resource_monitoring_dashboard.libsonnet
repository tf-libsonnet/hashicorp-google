local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dashboard_json,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_dashboard',
    label=resourceLabel,
    attrs=self.newAttrs(dashboard_json=dashboard_json, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    dashboard_json,
    project=null,
    timeouts=null
  ):: std.prune(a={
    dashboard_json: dashboard_json,
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
  withDashboardJson(resourceLabel, value):: {
    resource+: {
      google_monitoring_dashboard+: {
        [resourceLabel]+: {
          dashboard_json: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_dashboard+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_dashboard+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_dashboard+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
