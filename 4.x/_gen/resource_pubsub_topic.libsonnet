local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  message_storage_policy:: {
    new(
      allowed_persistence_regions
    ):: std.prune(a={
      allowed_persistence_regions: allowed_persistence_regions,
    }),
  },
  new(
    resourceLabel,
    name,
    kms_key_name=null,
    labels=null,
    message_retention_duration=null,
    message_storage_policy=null,
    project=null,
    schema_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_topic',
    label=resourceLabel,
    attrs=self.newAttrs(
      kms_key_name=kms_key_name,
      labels=labels,
      message_retention_duration=message_retention_duration,
      message_storage_policy=message_storage_policy,
      name=name,
      project=project,
      schema_settings=schema_settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    kms_key_name=null,
    labels=null,
    message_retention_duration=null,
    message_storage_policy=null,
    project=null,
    schema_settings=null,
    timeouts=null
  ):: std.prune(a={
    kms_key_name: kms_key_name,
    labels: labels,
    message_retention_duration: message_retention_duration,
    message_storage_policy: message_storage_policy,
    name: name,
    project: project,
    schema_settings: schema_settings,
    timeouts: timeouts,
  }),
  schema_settings:: {
    new(
      schema,
      encoding=null
    ):: std.prune(a={
      encoding: encoding,
      schema: schema,
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
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMessageRetentionDuration(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          message_retention_duration: value,
        },
      },
    },
  },
  withMessageStoragePolicy(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          message_storage_policy: value,
        },
      },
    },
  },
  withMessageStoragePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          message_storage_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSchemaSettings(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          schema_settings: value,
        },
      },
    },
  },
  withSchemaSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          schema_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
