local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    description,
    notification_config=null,
    project=null,
    schedule=null,
    status=null,
    transfer_spec=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_transfer_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      notification_config=notification_config,
      project=project,
      schedule=schedule,
      status=status,
      transfer_spec=transfer_spec
    ),
    _meta=_meta
  ),
  newAttrs(
    description,
    notification_config=null,
    project=null,
    schedule=null,
    status=null,
    transfer_spec=null
  ):: std.prune(a={
    description: description,
    notification_config: notification_config,
    project: project,
    schedule: schedule,
    status: status,
    transfer_spec: transfer_spec,
  }),
  notification_config:: {
    new(
      payload_format,
      pubsub_topic,
      event_types=null
    ):: std.prune(a={
      event_types: event_types,
      payload_format: payload_format,
      pubsub_topic: pubsub_topic,
    }),
  },
  schedule:: {
    new(
      repeat_interval=null,
      schedule_end_date=null,
      schedule_start_date=null,
      start_time_of_day=null
    ):: std.prune(a={
      repeat_interval: repeat_interval,
      schedule_end_date: schedule_end_date,
      schedule_start_date: schedule_start_date,
      start_time_of_day: start_time_of_day,
    }),
    schedule_end_date:: {
      new(
        day,
        month,
        year
      ):: std.prune(a={
        day: day,
        month: month,
        year: year,
      }),
    },
    schedule_start_date:: {
      new(
        day,
        month,
        year
      ):: std.prune(a={
        day: day,
        month: month,
        year: year,
      }),
    },
    start_time_of_day:: {
      new(
        hours,
        minutes,
        nanos,
        seconds
      ):: std.prune(a={
        hours: hours,
        minutes: minutes,
        nanos: nanos,
        seconds: seconds,
      }),
    },
  },
  transfer_spec:: {
    aws_s3_data_source:: {
      aws_access_key:: {
        new(
          access_key_id,
          secret_access_key
        ):: std.prune(a={
          access_key_id: access_key_id,
          secret_access_key: secret_access_key,
        }),
      },
      new(
        bucket_name,
        aws_access_key=null,
        role_arn=null
      ):: std.prune(a={
        aws_access_key: aws_access_key,
        bucket_name: bucket_name,
        role_arn: role_arn,
      }),
    },
    azure_blob_storage_data_source:: {
      azure_credentials:: {
        new(
          sas_token
        ):: std.prune(a={
          sas_token: sas_token,
        }),
      },
      new(
        container,
        storage_account,
        azure_credentials=null,
        path=null
      ):: std.prune(a={
        azure_credentials: azure_credentials,
        container: container,
        path: path,
        storage_account: storage_account,
      }),
    },
    gcs_data_sink:: {
      new(
        bucket_name,
        path=null
      ):: std.prune(a={
        bucket_name: bucket_name,
        path: path,
      }),
    },
    gcs_data_source:: {
      new(
        bucket_name,
        path=null
      ):: std.prune(a={
        bucket_name: bucket_name,
        path: path,
      }),
    },
    http_data_source:: {
      new(
        list_url
      ):: std.prune(a={
        list_url: list_url,
      }),
    },
    new(
      aws_s3_data_source=null,
      azure_blob_storage_data_source=null,
      gcs_data_sink=null,
      gcs_data_source=null,
      http_data_source=null,
      object_conditions=null,
      posix_data_sink=null,
      posix_data_source=null,
      transfer_options=null
    ):: std.prune(a={
      aws_s3_data_source: aws_s3_data_source,
      azure_blob_storage_data_source: azure_blob_storage_data_source,
      gcs_data_sink: gcs_data_sink,
      gcs_data_source: gcs_data_source,
      http_data_source: http_data_source,
      object_conditions: object_conditions,
      posix_data_sink: posix_data_sink,
      posix_data_source: posix_data_source,
      transfer_options: transfer_options,
    }),
    object_conditions:: {
      new(
        exclude_prefixes=null,
        include_prefixes=null,
        max_time_elapsed_since_last_modification=null,
        min_time_elapsed_since_last_modification=null
      ):: std.prune(a={
        exclude_prefixes: exclude_prefixes,
        include_prefixes: include_prefixes,
        max_time_elapsed_since_last_modification: max_time_elapsed_since_last_modification,
        min_time_elapsed_since_last_modification: min_time_elapsed_since_last_modification,
      }),
    },
    posix_data_sink:: {
      new(
        root_directory
      ):: std.prune(a={
        root_directory: root_directory,
      }),
    },
    posix_data_source:: {
      new(
        root_directory
      ):: std.prune(a={
        root_directory: root_directory,
      }),
    },
    transfer_options:: {
      new(
        delete_objects_from_source_after_transfer=null,
        delete_objects_unique_in_sink=null,
        overwrite_objects_already_existing_in_sink=null,
        overwrite_when=null
      ):: std.prune(a={
        delete_objects_from_source_after_transfer: delete_objects_from_source_after_transfer,
        delete_objects_unique_in_sink: delete_objects_unique_in_sink,
        overwrite_objects_already_existing_in_sink: overwrite_objects_already_existing_in_sink,
        overwrite_when: overwrite_when,
      }),
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withNotificationConfig(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  withNotificationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSchedule(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  withScheduleMixin(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStatus(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  withTransferSpec(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          transfer_spec: value,
        },
      },
    },
  },
  withTransferSpecMixin(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_job+: {
        [resourceLabel]+: {
          transfer_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
