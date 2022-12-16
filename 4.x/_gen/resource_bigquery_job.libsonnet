local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  copy:: {
    destination_encryption_configuration:: {
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    destination_table:: {
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
    new(
      create_disposition=null,
      destination_encryption_configuration=null,
      destination_table=null,
      source_tables=null,
      write_disposition=null
    ):: std.prune(a={
      create_disposition: create_disposition,
      destination_encryption_configuration: destination_encryption_configuration,
      destination_table: destination_table,
      source_tables: source_tables,
      write_disposition: write_disposition,
    }),
    source_tables:: {
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
  },
  extract:: {
    new(
      destination_uris,
      compression=null,
      destination_format=null,
      field_delimiter=null,
      print_header=null,
      source_model=null,
      source_table=null,
      use_avro_logical_types=null
    ):: std.prune(a={
      compression: compression,
      destination_format: destination_format,
      destination_uris: destination_uris,
      field_delimiter: field_delimiter,
      print_header: print_header,
      source_model: source_model,
      source_table: source_table,
      use_avro_logical_types: use_avro_logical_types,
    }),
    source_model:: {
      new(
        dataset_id,
        model_id,
        project_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        model_id: model_id,
        project_id: project_id,
      }),
    },
    source_table:: {
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
  },
  load:: {
    destination_encryption_configuration:: {
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    destination_table:: {
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
    new(
      source_uris,
      allow_jagged_rows=null,
      allow_quoted_newlines=null,
      autodetect=null,
      create_disposition=null,
      destination_encryption_configuration=null,
      destination_table=null,
      encoding=null,
      field_delimiter=null,
      ignore_unknown_values=null,
      json_extension=null,
      max_bad_records=null,
      null_marker=null,
      projection_fields=null,
      quote=null,
      schema_update_options=null,
      skip_leading_rows=null,
      source_format=null,
      time_partitioning=null,
      write_disposition=null
    ):: std.prune(a={
      allow_jagged_rows: allow_jagged_rows,
      allow_quoted_newlines: allow_quoted_newlines,
      autodetect: autodetect,
      create_disposition: create_disposition,
      destination_encryption_configuration: destination_encryption_configuration,
      destination_table: destination_table,
      encoding: encoding,
      field_delimiter: field_delimiter,
      ignore_unknown_values: ignore_unknown_values,
      json_extension: json_extension,
      max_bad_records: max_bad_records,
      null_marker: null_marker,
      projection_fields: projection_fields,
      quote: quote,
      schema_update_options: schema_update_options,
      skip_leading_rows: skip_leading_rows,
      source_format: source_format,
      source_uris: source_uris,
      time_partitioning: time_partitioning,
      write_disposition: write_disposition,
    }),
    time_partitioning:: {
      new(
        type,
        expiration_ms=null,
        field=null
      ):: std.prune(a={
        expiration_ms: expiration_ms,
        field: field,
        type: type,
      }),
    },
  },
  new(
    resourceLabel,
    job_id,
    copy=null,
    extract=null,
    job_timeout_ms=null,
    labels=null,
    load=null,
    location=null,
    project=null,
    query=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      copy=copy,
      extract=extract,
      job_id=job_id,
      job_timeout_ms=job_timeout_ms,
      labels=labels,
      load=load,
      location=location,
      project=project,
      query=query,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    job_id,
    copy=null,
    extract=null,
    job_timeout_ms=null,
    labels=null,
    load=null,
    location=null,
    project=null,
    query=null,
    timeouts=null
  ):: std.prune(a={
    copy: copy,
    extract: extract,
    job_id: job_id,
    job_timeout_ms: job_timeout_ms,
    labels: labels,
    load: load,
    location: location,
    project: project,
    query: query,
    timeouts: timeouts,
  }),
  query:: {
    default_dataset:: {
      new(
        dataset_id,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
      }),
    },
    destination_encryption_configuration:: {
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    destination_table:: {
      new(
        table_id,
        dataset_id=null,
        project_id=null
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
    new(
      query,
      allow_large_results=null,
      create_disposition=null,
      default_dataset=null,
      destination_encryption_configuration=null,
      destination_table=null,
      flatten_results=null,
      maximum_billing_tier=null,
      maximum_bytes_billed=null,
      parameter_mode=null,
      priority=null,
      schema_update_options=null,
      script_options=null,
      use_legacy_sql=null,
      use_query_cache=null,
      user_defined_function_resources=null,
      write_disposition=null
    ):: std.prune(a={
      allow_large_results: allow_large_results,
      create_disposition: create_disposition,
      default_dataset: default_dataset,
      destination_encryption_configuration: destination_encryption_configuration,
      destination_table: destination_table,
      flatten_results: flatten_results,
      maximum_billing_tier: maximum_billing_tier,
      maximum_bytes_billed: maximum_bytes_billed,
      parameter_mode: parameter_mode,
      priority: priority,
      query: query,
      schema_update_options: schema_update_options,
      script_options: script_options,
      use_legacy_sql: use_legacy_sql,
      use_query_cache: use_query_cache,
      user_defined_function_resources: user_defined_function_resources,
      write_disposition: write_disposition,
    }),
    script_options:: {
      new(
        key_result_statement=null,
        statement_byte_budget=null,
        statement_timeout_ms=null
      ):: std.prune(a={
        key_result_statement: key_result_statement,
        statement_byte_budget: statement_byte_budget,
        statement_timeout_ms: statement_timeout_ms,
      }),
    },
    user_defined_function_resources:: {
      new(
        inline_code=null,
        resource_uri=null
      ):: std.prune(a={
        inline_code: inline_code,
        resource_uri: resource_uri,
      }),
    },
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withCopy(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          copy: value,
        },
      },
    },
  },
  withCopyMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          copy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withExtract(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          extract: value,
        },
      },
    },
  },
  withExtractMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          extract+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withJobId(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          job_id: value,
        },
      },
    },
  },
  withJobTimeoutMs(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          job_timeout_ms: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLoad(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          load: value,
        },
      },
    },
  },
  withLoadMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          load+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withQuery(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          query: value,
        },
      },
    },
  },
  withQueryMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          query+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
