local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  email_preferences:: {
    new(
      enable_failure_email
    ):: std.prune(a={
      enable_failure_email: enable_failure_email,
    }),
  },
  new(
    resourceLabel,
    data_source_id,
    display_name,
    params,
    data_refresh_window_days=null,
    destination_dataset_id=null,
    disabled=null,
    email_preferences=null,
    location=null,
    notification_pubsub_topic=null,
    project=null,
    schedule=null,
    schedule_options=null,
    sensitive_params=null,
    service_account_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_data_transfer_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_refresh_window_days=data_refresh_window_days,
      data_source_id=data_source_id,
      destination_dataset_id=destination_dataset_id,
      disabled=disabled,
      display_name=display_name,
      email_preferences=email_preferences,
      location=location,
      notification_pubsub_topic=notification_pubsub_topic,
      params=params,
      project=project,
      schedule=schedule,
      schedule_options=schedule_options,
      sensitive_params=sensitive_params,
      service_account_name=service_account_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    data_source_id,
    display_name,
    params,
    data_refresh_window_days=null,
    destination_dataset_id=null,
    disabled=null,
    email_preferences=null,
    location=null,
    notification_pubsub_topic=null,
    project=null,
    schedule=null,
    schedule_options=null,
    sensitive_params=null,
    service_account_name=null,
    timeouts=null
  ):: std.prune(a={
    data_refresh_window_days: data_refresh_window_days,
    data_source_id: data_source_id,
    destination_dataset_id: destination_dataset_id,
    disabled: disabled,
    display_name: display_name,
    email_preferences: email_preferences,
    location: location,
    notification_pubsub_topic: notification_pubsub_topic,
    params: params,
    project: project,
    schedule: schedule,
    schedule_options: schedule_options,
    sensitive_params: sensitive_params,
    service_account_name: service_account_name,
    timeouts: timeouts,
  }),
  schedule_options:: {
    new(
      disable_auto_scheduling=null,
      end_time=null,
      start_time=null
    ):: std.prune(a={
      disable_auto_scheduling: disable_auto_scheduling,
      end_time: end_time,
      start_time: start_time,
    }),
  },
  sensitive_params:: {
    new(
      secret_access_key
    ):: std.prune(a={
      secret_access_key: secret_access_key,
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
  withDataRefreshWindowDays(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          data_refresh_window_days: value,
        },
      },
    },
  },
  withDataSourceId(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          data_source_id: value,
        },
      },
    },
  },
  withDestinationDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          destination_dataset_id: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEmailPreferences(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          email_preferences: value,
        },
      },
    },
  },
  withEmailPreferencesMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          email_preferences+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withNotificationPubsubTopic(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          notification_pubsub_topic: value,
        },
      },
    },
  },
  withParams(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          params: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSchedule(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  withScheduleOptions(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          schedule_options: value,
        },
      },
    },
  },
  withScheduleOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          schedule_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSensitiveParams(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          sensitive_params: value,
        },
      },
    },
  },
  withSensitiveParamsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          sensitive_params+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceAccountName(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          service_account_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_data_transfer_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
