local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    metrics_scope,
    name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_monitored_project',
    label=resourceLabel,
    attrs=self.newAttrs(metrics_scope=metrics_scope, name=name, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    metrics_scope,
    name,
    timeouts=null
  ):: std.prune(a={
    metrics_scope: metrics_scope,
    name: name,
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
  withMetricsScope(resourceLabel, value):: {
    resource+: {
      google_monitoring_monitored_project+: {
        [resourceLabel]+: {
          metrics_scope: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_monitoring_monitored_project+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_monitored_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_monitored_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
