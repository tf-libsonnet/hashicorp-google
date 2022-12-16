local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dataset,
    name,
    labels=null,
    notification_config=null,
    notification_configs=null,
    parser_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_hl7_v2_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      labels=labels,
      name=name,
      notification_config=notification_config,
      notification_configs=notification_configs,
      parser_config=parser_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset,
    name,
    labels=null,
    notification_config=null,
    notification_configs=null,
    parser_config=null,
    timeouts=null
  ):: std.prune(a={
    dataset: dataset,
    labels: labels,
    name: name,
    notification_config: notification_config,
    notification_configs: notification_configs,
    parser_config: parser_config,
    timeouts: timeouts,
  }),
  notification_config:: {
    new(
      pubsub_topic
    ):: std.prune(a={
      pubsub_topic: pubsub_topic,
    }),
  },
  notification_configs:: {
    new(
      pubsub_topic,
      filter=null
    ):: std.prune(a={
      filter: filter,
      pubsub_topic: pubsub_topic,
    }),
  },
  parser_config:: {
    new(
      allow_null_header=null,
      schema=null,
      segment_terminator=null,
      version=null
    ):: std.prune(a={
      allow_null_header: allow_null_header,
      schema: schema,
      segment_terminator: segment_terminator,
      version: version,
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
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNotificationConfig(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  withNotificationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNotificationConfigs(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_configs: value,
        },
      },
    },
  },
  withNotificationConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParserConfig(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          parser_config: value,
        },
      },
    },
  },
  withParserConfigMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          parser_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
