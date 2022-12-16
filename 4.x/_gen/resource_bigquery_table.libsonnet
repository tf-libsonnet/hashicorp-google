local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  encryption_configuration:: {
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  external_data_configuration:: {
    avro_options:: {
      new(
        use_avro_logical_types
      ):: std.prune(a={
        use_avro_logical_types: use_avro_logical_types,
      }),
    },
    csv_options:: {
      new(
        quote,
        allow_jagged_rows=null,
        allow_quoted_newlines=null,
        encoding=null,
        field_delimiter=null,
        skip_leading_rows=null
      ):: std.prune(a={
        allow_jagged_rows: allow_jagged_rows,
        allow_quoted_newlines: allow_quoted_newlines,
        encoding: encoding,
        field_delimiter: field_delimiter,
        quote: quote,
        skip_leading_rows: skip_leading_rows,
      }),
    },
    google_sheets_options:: {
      new(
        range=null,
        skip_leading_rows=null
      ):: std.prune(a={
        range: range,
        skip_leading_rows: skip_leading_rows,
      }),
    },
    hive_partitioning_options:: {
      new(
        mode=null,
        require_partition_filter=null,
        source_uri_prefix=null
      ):: std.prune(a={
        mode: mode,
        require_partition_filter: require_partition_filter,
        source_uri_prefix: source_uri_prefix,
      }),
    },
    new(
      autodetect,
      source_format,
      source_uris,
      avro_options=null,
      compression=null,
      connection_id=null,
      csv_options=null,
      google_sheets_options=null,
      hive_partitioning_options=null,
      ignore_unknown_values=null,
      max_bad_records=null,
      schema=null
    ):: std.prune(a={
      autodetect: autodetect,
      avro_options: avro_options,
      compression: compression,
      connection_id: connection_id,
      csv_options: csv_options,
      google_sheets_options: google_sheets_options,
      hive_partitioning_options: hive_partitioning_options,
      ignore_unknown_values: ignore_unknown_values,
      max_bad_records: max_bad_records,
      schema: schema,
      source_format: source_format,
      source_uris: source_uris,
    }),
  },
  materialized_view:: {
    new(
      query,
      enable_refresh=null,
      refresh_interval_ms=null
    ):: std.prune(a={
      enable_refresh: enable_refresh,
      query: query,
      refresh_interval_ms: refresh_interval_ms,
    }),
  },
  new(
    resourceLabel,
    dataset_id,
    table_id,
    clustering=null,
    deletion_protection=null,
    description=null,
    encryption_configuration=null,
    expiration_time=null,
    external_data_configuration=null,
    friendly_name=null,
    labels=null,
    materialized_view=null,
    project=null,
    range_partitioning=null,
    schema=null,
    time_partitioning=null,
    view=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_table',
    label=resourceLabel,
    attrs=self.newAttrs(
      clustering=clustering,
      dataset_id=dataset_id,
      deletion_protection=deletion_protection,
      description=description,
      encryption_configuration=encryption_configuration,
      expiration_time=expiration_time,
      external_data_configuration=external_data_configuration,
      friendly_name=friendly_name,
      labels=labels,
      materialized_view=materialized_view,
      project=project,
      range_partitioning=range_partitioning,
      schema=schema,
      table_id=table_id,
      time_partitioning=time_partitioning,
      view=view
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset_id,
    table_id,
    clustering=null,
    deletion_protection=null,
    description=null,
    encryption_configuration=null,
    expiration_time=null,
    external_data_configuration=null,
    friendly_name=null,
    labels=null,
    materialized_view=null,
    project=null,
    range_partitioning=null,
    schema=null,
    time_partitioning=null,
    view=null
  ):: std.prune(a={
    clustering: clustering,
    dataset_id: dataset_id,
    deletion_protection: deletion_protection,
    description: description,
    encryption_configuration: encryption_configuration,
    expiration_time: expiration_time,
    external_data_configuration: external_data_configuration,
    friendly_name: friendly_name,
    labels: labels,
    materialized_view: materialized_view,
    project: project,
    range_partitioning: range_partitioning,
    schema: schema,
    table_id: table_id,
    time_partitioning: time_partitioning,
    view: view,
  }),
  range_partitioning:: {
    new(
      field,
      range=null
    ):: std.prune(a={
      field: field,
      range: range,
    }),
    range:: {
      new(
        end,
        interval,
        start
      ):: std.prune(a={
        end: end,
        interval: interval,
        start: start,
      }),
    },
  },
  time_partitioning:: {
    new(
      type,
      expiration_ms=null,
      field=null,
      require_partition_filter=null
    ):: std.prune(a={
      expiration_ms: expiration_ms,
      field: field,
      require_partition_filter: require_partition_filter,
      type: type,
    }),
  },
  view:: {
    new(
      query,
      use_legacy_sql=null
    ):: std.prune(a={
      query: query,
      use_legacy_sql: use_legacy_sql,
    }),
  },
  withClustering(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          clustering: value,
        },
      },
    },
  },
  withDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEncryptionConfiguration(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          encryption_configuration: value,
        },
      },
    },
  },
  withEncryptionConfigurationMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          encryption_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withExpirationTime(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          expiration_time: value,
        },
      },
    },
  },
  withExternalDataConfiguration(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          external_data_configuration: value,
        },
      },
    },
  },
  withExternalDataConfigurationMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          external_data_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFriendlyName(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          friendly_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMaterializedView(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          materialized_view: value,
        },
      },
    },
  },
  withMaterializedViewMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          materialized_view+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRangePartitioning(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          range_partitioning: value,
        },
      },
    },
  },
  withRangePartitioningMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          range_partitioning+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSchema(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          schema: value,
        },
      },
    },
  },
  withTableId(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          table_id: value,
        },
      },
    },
  },
  withTimePartitioning(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          time_partitioning: value,
        },
      },
    },
  },
  withTimePartitioningMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          time_partitioning+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withView(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          view: value,
        },
      },
    },
  },
  withViewMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table+: {
        [resourceLabel]+: {
          view+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
