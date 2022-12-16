local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  credentials:: {
    new(
      public_key_certificate
    ):: std.prune(a={
      public_key_certificate: public_key_certificate,
    }),
  },
  event_notification_configs:: {
    new(
      pubsub_topic_name,
      subfolder_matches=null
    ):: std.prune(a={
      pubsub_topic_name: pubsub_topic_name,
      subfolder_matches: subfolder_matches,
    }),
  },
  new(
    resourceLabel,
    name,
    credentials=null,
    event_notification_configs=null,
    http_config=null,
    log_level=null,
    mqtt_config=null,
    project=null,
    region=null,
    state_notification_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudiot_registry',
    label=resourceLabel,
    attrs=self.newAttrs(
      credentials=credentials,
      event_notification_configs=event_notification_configs,
      http_config=http_config,
      log_level=log_level,
      mqtt_config=mqtt_config,
      name=name,
      project=project,
      region=region,
      state_notification_config=state_notification_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    credentials=null,
    event_notification_configs=null,
    http_config=null,
    log_level=null,
    mqtt_config=null,
    project=null,
    region=null,
    state_notification_config=null,
    timeouts=null
  ):: std.prune(a={
    credentials: credentials,
    event_notification_configs: event_notification_configs,
    http_config: http_config,
    log_level: log_level,
    mqtt_config: mqtt_config,
    name: name,
    project: project,
    region: region,
    state_notification_config: state_notification_config,
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
  withCredentials(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          credentials: value,
        },
      },
    },
  },
  withCredentialsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          credentials+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEventNotificationConfigs(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          event_notification_configs: value,
        },
      },
    },
  },
  withEventNotificationConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          event_notification_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHttpConfig(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          http_config: value,
        },
      },
    },
  },
  withLogLevel(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          log_level: value,
        },
      },
    },
  },
  withMqttConfig(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          mqtt_config: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withStateNotificationConfig(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          state_notification_config: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
