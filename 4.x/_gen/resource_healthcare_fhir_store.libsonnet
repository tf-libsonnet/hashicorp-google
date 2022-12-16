local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dataset,
    name,
    version,
    disable_referential_integrity=null,
    disable_resource_versioning=null,
    enable_history_import=null,
    enable_update_create=null,
    labels=null,
    notification_config=null,
    stream_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_fhir_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      disable_referential_integrity=disable_referential_integrity,
      disable_resource_versioning=disable_resource_versioning,
      enable_history_import=enable_history_import,
      enable_update_create=enable_update_create,
      labels=labels,
      name=name,
      notification_config=notification_config,
      stream_configs=stream_configs,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset,
    name,
    version,
    disable_referential_integrity=null,
    disable_resource_versioning=null,
    enable_history_import=null,
    enable_update_create=null,
    labels=null,
    notification_config=null,
    stream_configs=null,
    timeouts=null
  ):: std.prune(a={
    dataset: dataset,
    disable_referential_integrity: disable_referential_integrity,
    disable_resource_versioning: disable_resource_versioning,
    enable_history_import: enable_history_import,
    enable_update_create: enable_update_create,
    labels: labels,
    name: name,
    notification_config: notification_config,
    stream_configs: stream_configs,
    timeouts: timeouts,
    version: version,
  }),
  notification_config:: {
    new(
      pubsub_topic
    ):: std.prune(a={
      pubsub_topic: pubsub_topic,
    }),
  },
  stream_configs:: {
    bigquery_destination:: {
      new(
        dataset_uri,
        schema_config=null
      ):: std.prune(a={
        dataset_uri: dataset_uri,
        schema_config: schema_config,
      }),
      schema_config:: {
        new(
          recursive_structure_depth,
          schema_type=null
        ):: std.prune(a={
          recursive_structure_depth: recursive_structure_depth,
          schema_type: schema_type,
        }),
      },
    },
    new(
      bigquery_destination=null,
      resource_types=null
    ):: std.prune(a={
      bigquery_destination: bigquery_destination,
      resource_types: resource_types,
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
  withDataset(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withDisableReferentialIntegrity(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          disable_referential_integrity: value,
        },
      },
    },
  },
  withDisableResourceVersioning(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          disable_resource_versioning: value,
        },
      },
    },
  },
  withEnableHistoryImport(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          enable_history_import: value,
        },
      },
    },
  },
  withEnableUpdateCreate(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          enable_update_create: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNotificationConfig(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  withNotificationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStreamConfigs(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          stream_configs: value,
        },
      },
    },
  },
  withStreamConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          stream_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
