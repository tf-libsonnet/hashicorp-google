local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    config_id,
    organization,
    pubsub_topic,
    description=null,
    streaming_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_notification_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      config_id=config_id,
      description=description,
      organization=organization,
      pubsub_topic=pubsub_topic,
      streaming_config=streaming_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    config_id,
    organization,
    pubsub_topic,
    description=null,
    streaming_config=null,
    timeouts=null
  ):: std.prune(a={
    config_id: config_id,
    description: description,
    organization: organization,
    pubsub_topic: pubsub_topic,
    streaming_config: streaming_config,
    timeouts: timeouts,
  }),
  streaming_config:: {
    new(
      filter
    ):: std.prune(a={
      filter: filter,
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
  withConfigId(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          config_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withPubsubTopic(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          pubsub_topic: value,
        },
      },
    },
  },
  withStreamingConfig(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          streaming_config: value,
        },
      },
    },
  },
  withStreamingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          streaming_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
