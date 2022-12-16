local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  inspect_job:: {
    actions:: {
      new(
        pub_sub=null,
        save_findings=null
      ):: std.prune(a={
        pub_sub: pub_sub,
        save_findings: save_findings,
      }),
      pub_sub:: {
        new(
          topic
        ):: std.prune(a={
          topic: topic,
        }),
      },
      save_findings:: {
        new(
          output_config=null
        ):: std.prune(a={
          output_config: output_config,
        }),
        output_config:: {
          new(
            output_schema=null,
            table=null
          ):: std.prune(a={
            output_schema: output_schema,
            table: table,
          }),
          table:: {
            new(
              dataset_id,
              project_id,
              table_id=null
            ):: std.prune(a={
              dataset_id: dataset_id,
              project_id: project_id,
              table_id: table_id,
            }),
          },
        },
      },
    },
    new(
      inspect_template_name,
      actions=null,
      storage_config=null
    ):: std.prune(a={
      actions: actions,
      inspect_template_name: inspect_template_name,
      storage_config: storage_config,
    }),
    storage_config:: {
      big_query_options:: {
        new(
          rows_limit=null,
          rows_limit_percent=null,
          sample_method=null,
          table_reference=null
        ):: std.prune(a={
          rows_limit: rows_limit,
          rows_limit_percent: rows_limit_percent,
          sample_method: sample_method,
          table_reference: table_reference,
        }),
        table_reference:: {
          new(
            dataset_id,
            project_id,
            table_id
          ):: std.prune(a={
            dataset_id: dataset_id,
            project_id: project_id,
            table_id: table_id,
          }),
        },
      },
      cloud_storage_options:: {
        file_set:: {
          new(
            regex_file_set=null,
            url=null
          ):: std.prune(a={
            regex_file_set: regex_file_set,
            url: url,
          }),
          regex_file_set:: {
            new(
              bucket_name,
              exclude_regex=null,
              include_regex=null
            ):: std.prune(a={
              bucket_name: bucket_name,
              exclude_regex: exclude_regex,
              include_regex: include_regex,
            }),
          },
        },
        new(
          bytes_limit_per_file=null,
          bytes_limit_per_file_percent=null,
          file_set=null,
          file_types=null,
          files_limit_percent=null,
          sample_method=null
        ):: std.prune(a={
          bytes_limit_per_file: bytes_limit_per_file,
          bytes_limit_per_file_percent: bytes_limit_per_file_percent,
          file_set: file_set,
          file_types: file_types,
          files_limit_percent: files_limit_percent,
          sample_method: sample_method,
        }),
      },
      datastore_options:: {
        kind:: {
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        new(
          kind=null,
          partition_id=null
        ):: std.prune(a={
          kind: kind,
          partition_id: partition_id,
        }),
        partition_id:: {
          new(
            project_id,
            namespace_id=null
          ):: std.prune(a={
            namespace_id: namespace_id,
            project_id: project_id,
          }),
        },
      },
      new(
        big_query_options=null,
        cloud_storage_options=null,
        datastore_options=null,
        timespan_config=null
      ):: std.prune(a={
        big_query_options: big_query_options,
        cloud_storage_options: cloud_storage_options,
        datastore_options: datastore_options,
        timespan_config: timespan_config,
      }),
      timespan_config:: {
        new(
          enable_auto_population_of_timespan_config=null,
          end_time=null,
          start_time=null,
          timestamp_field=null
        ):: std.prune(a={
          enable_auto_population_of_timespan_config: enable_auto_population_of_timespan_config,
          end_time: end_time,
          start_time: start_time,
          timestamp_field: timestamp_field,
        }),
        timestamp_field:: {
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
      },
    },
  },
  new(
    resourceLabel,
    parent,
    description=null,
    display_name=null,
    inspect_job=null,
    status=null,
    timeouts=null,
    triggers=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_job_trigger',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      inspect_job=inspect_job,
      parent=parent,
      status=status,
      timeouts=timeouts,
      triggers=triggers
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    description=null,
    display_name=null,
    inspect_job=null,
    status=null,
    timeouts=null,
    triggers=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    inspect_job: inspect_job,
    parent: parent,
    status: status,
    timeouts: timeouts,
    triggers: triggers,
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
  triggers:: {
    new(
      schedule=null
    ):: std.prune(a={
      schedule: schedule,
    }),
    schedule:: {
      new(
        recurrence_period_duration=null
      ):: std.prune(a={
        recurrence_period_duration: recurrence_period_duration,
      }),
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withInspectJob(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          inspect_job: value,
        },
      },
    },
  },
  withInspectJobMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          inspect_job+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withStatus(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTriggers(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          triggers: value,
        },
      },
    },
  },
  withTriggersMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_job_trigger+: {
        [resourceLabel]+: {
          triggers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
