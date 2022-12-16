local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  access:: {
    dataset:: {
      dataset:: {
        new(
          dataset_id,
          project_id
        ):: std.prune(a={
          dataset_id: dataset_id,
          project_id: project_id,
        }),
      },
      new(
        target_types,
        dataset=null
      ):: std.prune(a={
        dataset: dataset,
        target_types: target_types,
      }),
    },
    new(
      dataset=null,
      domain=null,
      group_by_email=null,
      role=null,
      routine=null,
      special_group=null,
      user_by_email=null,
      view=null
    ):: std.prune(a={
      dataset: dataset,
      domain: domain,
      group_by_email: group_by_email,
      role: role,
      routine: routine,
      special_group: special_group,
      user_by_email: user_by_email,
      view: view,
    }),
    routine:: {
      new(
        dataset_id,
        project_id,
        routine_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        routine_id: routine_id,
      }),
    },
    view:: {
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
  default_encryption_configuration:: {
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  new(
    resourceLabel,
    dataset_id,
    access=null,
    default_encryption_configuration=null,
    default_partition_expiration_ms=null,
    default_table_expiration_ms=null,
    delete_contents_on_destroy=null,
    description=null,
    friendly_name=null,
    labels=null,
    location=null,
    max_time_travel_hours=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_dataset',
    label=resourceLabel,
    attrs=self.newAttrs(
      access=access,
      dataset_id=dataset_id,
      default_encryption_configuration=default_encryption_configuration,
      default_partition_expiration_ms=default_partition_expiration_ms,
      default_table_expiration_ms=default_table_expiration_ms,
      delete_contents_on_destroy=delete_contents_on_destroy,
      description=description,
      friendly_name=friendly_name,
      labels=labels,
      location=location,
      max_time_travel_hours=max_time_travel_hours,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset_id,
    access=null,
    default_encryption_configuration=null,
    default_partition_expiration_ms=null,
    default_table_expiration_ms=null,
    delete_contents_on_destroy=null,
    description=null,
    friendly_name=null,
    labels=null,
    location=null,
    max_time_travel_hours=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    access: access,
    dataset_id: dataset_id,
    default_encryption_configuration: default_encryption_configuration,
    default_partition_expiration_ms: default_partition_expiration_ms,
    default_table_expiration_ms: default_table_expiration_ms,
    delete_contents_on_destroy: delete_contents_on_destroy,
    description: description,
    friendly_name: friendly_name,
    labels: labels,
    location: location,
    max_time_travel_hours: max_time_travel_hours,
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
  withAccess(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          access: value,
        },
      },
    },
  },
  withAccessMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          access+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  withDefaultEncryptionConfiguration(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_encryption_configuration: value,
        },
      },
    },
  },
  withDefaultEncryptionConfigurationMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_encryption_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDefaultPartitionExpirationMs(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_partition_expiration_ms: value,
        },
      },
    },
  },
  withDefaultTableExpirationMs(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_table_expiration_ms: value,
        },
      },
    },
  },
  withDeleteContentsOnDestroy(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          delete_contents_on_destroy: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFriendlyName(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          friendly_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMaxTimeTravelHours(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          max_time_travel_hours: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
