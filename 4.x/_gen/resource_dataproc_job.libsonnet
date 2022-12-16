local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  hadoop_config:: {
    logging_config:: {
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    new(
      archive_uris=null,
      args=null,
      file_uris=null,
      jar_file_uris=null,
      logging_config=null,
      main_class=null,
      main_jar_file_uri=null,
      properties=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      args: args,
      file_uris: file_uris,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      main_class: main_class,
      main_jar_file_uri: main_jar_file_uri,
      properties: properties,
    }),
  },
  hive_config:: {
    new(
      continue_on_failure=null,
      jar_file_uris=null,
      properties=null,
      query_file_uri=null,
      query_list=null,
      script_variables=null
    ):: std.prune(a={
      continue_on_failure: continue_on_failure,
      jar_file_uris: jar_file_uris,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
      script_variables: script_variables,
    }),
  },
  new(
    resourceLabel,
    force_delete=null,
    hadoop_config=null,
    hive_config=null,
    labels=null,
    pig_config=null,
    placement=null,
    presto_config=null,
    project=null,
    pyspark_config=null,
    reference=null,
    region=null,
    scheduling=null,
    spark_config=null,
    sparksql_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      force_delete=force_delete,
      hadoop_config=hadoop_config,
      hive_config=hive_config,
      labels=labels,
      pig_config=pig_config,
      placement=placement,
      presto_config=presto_config,
      project=project,
      pyspark_config=pyspark_config,
      reference=reference,
      region=region,
      scheduling=scheduling,
      spark_config=spark_config,
      sparksql_config=sparksql_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    force_delete=null,
    hadoop_config=null,
    hive_config=null,
    labels=null,
    pig_config=null,
    placement=null,
    presto_config=null,
    project=null,
    pyspark_config=null,
    reference=null,
    region=null,
    scheduling=null,
    spark_config=null,
    sparksql_config=null,
    timeouts=null
  ):: std.prune(a={
    force_delete: force_delete,
    hadoop_config: hadoop_config,
    hive_config: hive_config,
    labels: labels,
    pig_config: pig_config,
    placement: placement,
    presto_config: presto_config,
    project: project,
    pyspark_config: pyspark_config,
    reference: reference,
    region: region,
    scheduling: scheduling,
    spark_config: spark_config,
    sparksql_config: sparksql_config,
    timeouts: timeouts,
  }),
  pig_config:: {
    logging_config:: {
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    new(
      continue_on_failure=null,
      jar_file_uris=null,
      logging_config=null,
      properties=null,
      query_file_uri=null,
      query_list=null,
      script_variables=null
    ):: std.prune(a={
      continue_on_failure: continue_on_failure,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
      script_variables: script_variables,
    }),
  },
  placement:: {
    new(
      cluster_name
    ):: std.prune(a={
      cluster_name: cluster_name,
    }),
  },
  presto_config:: {
    logging_config:: {
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    new(
      client_tags=null,
      continue_on_failure=null,
      logging_config=null,
      output_format=null,
      properties=null,
      query_file_uri=null,
      query_list=null
    ):: std.prune(a={
      client_tags: client_tags,
      continue_on_failure: continue_on_failure,
      logging_config: logging_config,
      output_format: output_format,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
    }),
  },
  pyspark_config:: {
    logging_config:: {
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    new(
      main_python_file_uri,
      archive_uris=null,
      args=null,
      file_uris=null,
      jar_file_uris=null,
      logging_config=null,
      properties=null,
      python_file_uris=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      args: args,
      file_uris: file_uris,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      main_python_file_uri: main_python_file_uri,
      properties: properties,
      python_file_uris: python_file_uris,
    }),
  },
  reference:: {
    new(
      job_id=null
    ):: std.prune(a={
      job_id: job_id,
    }),
  },
  scheduling:: {
    new(
      max_failures_per_hour,
      max_failures_total
    ):: std.prune(a={
      max_failures_per_hour: max_failures_per_hour,
      max_failures_total: max_failures_total,
    }),
  },
  spark_config:: {
    logging_config:: {
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    new(
      archive_uris=null,
      args=null,
      file_uris=null,
      jar_file_uris=null,
      logging_config=null,
      main_class=null,
      main_jar_file_uri=null,
      properties=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      args: args,
      file_uris: file_uris,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      main_class: main_class,
      main_jar_file_uri: main_jar_file_uri,
      properties: properties,
    }),
  },
  sparksql_config:: {
    logging_config:: {
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    new(
      jar_file_uris=null,
      logging_config=null,
      properties=null,
      query_file_uri=null,
      query_list=null,
      script_variables=null
    ):: std.prune(a={
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
      script_variables: script_variables,
    }),
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
  withForceDelete(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          force_delete: value,
        },
      },
    },
  },
  withHadoopConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hadoop_config: value,
        },
      },
    },
  },
  withHadoopConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hadoop_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHiveConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hive_config: value,
        },
      },
    },
  },
  withHiveConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hive_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withPigConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pig_config: value,
        },
      },
    },
  },
  withPigConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pig_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPlacement(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          placement: value,
        },
      },
    },
  },
  withPlacementMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          placement+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPrestoConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          presto_config: value,
        },
      },
    },
  },
  withPrestoConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          presto_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPysparkConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pyspark_config: value,
        },
      },
    },
  },
  withPysparkConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pyspark_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withReference(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          reference: value,
        },
      },
    },
  },
  withReferenceMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          reference+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withScheduling(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          scheduling: value,
        },
      },
    },
  },
  withSchedulingMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          scheduling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSparkConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          spark_config: value,
        },
      },
    },
  },
  withSparkConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          spark_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSparksqlConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          sparksql_config: value,
        },
      },
    },
  },
  withSparksqlConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          sparksql_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
