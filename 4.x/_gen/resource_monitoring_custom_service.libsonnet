local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name=null,
    project=null,
    service_id=null,
    telemetry=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_custom_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      project=project,
      service_id=service_id,
      telemetry=telemetry,
      timeouts=timeouts,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name=null,
    project=null,
    service_id=null,
    telemetry=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    display_name: display_name,
    project: project,
    service_id: service_id,
    telemetry: telemetry,
    timeouts: timeouts,
    user_labels: user_labels,
  }),
  telemetry:: {
    new(
      resource_name=null
    ):: std.prune(a={
      resource_name: resource_name,
    }),
  },
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
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceId(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  withTelemetry(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          telemetry: value,
        },
      },
    },
  },
  withTelemetryMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          telemetry+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUserLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
