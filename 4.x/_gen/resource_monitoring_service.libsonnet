local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  basic_service:: {
    new(
      service_labels=null,
      service_type=null
    ):: std.prune(a={
      service_labels: service_labels,
      service_type: service_type,
    }),
  },
  new(
    resourceLabel,
    service_id,
    basic_service=null,
    display_name=null,
    project=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      basic_service=basic_service,
      display_name=display_name,
      project=project,
      service_id=service_id,
      timeouts=timeouts,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  newAttrs(
    service_id,
    basic_service=null,
    display_name=null,
    project=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    basic_service: basic_service,
    display_name: display_name,
    project: project,
    service_id: service_id,
    timeouts: timeouts,
    user_labels: user_labels,
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
  withBasicService(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          basic_service: value,
        },
      },
    },
  },
  withBasicServiceMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          basic_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceId(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUserLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_service+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
