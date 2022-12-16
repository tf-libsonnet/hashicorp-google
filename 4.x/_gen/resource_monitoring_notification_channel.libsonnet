local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    type,
    description=null,
    display_name=null,
    enabled=null,
    force_delete=null,
    labels=null,
    project=null,
    sensitive_labels=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_notification_channel',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      enabled=enabled,
      force_delete=force_delete,
      labels=labels,
      project=project,
      sensitive_labels=sensitive_labels,
      timeouts=timeouts,
      type=type,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  newAttrs(
    type,
    description=null,
    display_name=null,
    enabled=null,
    force_delete=null,
    labels=null,
    project=null,
    sensitive_labels=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    enabled: enabled,
    force_delete: force_delete,
    labels: labels,
    project: project,
    sensitive_labels: sensitive_labels,
    timeouts: timeouts,
    type: type,
    user_labels: user_labels,
  }),
  sensitive_labels:: {
    new(
      auth_token=null,
      password=null,
      service_key=null
    ):: std.prune(a={
      auth_token: auth_token,
      password: password,
      service_key: service_key,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withForceDelete(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          force_delete: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSensitiveLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          sensitive_labels: value,
        },
      },
    },
  },
  withSensitiveLabelsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          sensitive_labels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  withUserLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
