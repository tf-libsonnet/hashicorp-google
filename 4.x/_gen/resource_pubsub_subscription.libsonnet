local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bigquery_config:: {
    new(
      table,
      drop_unknown_fields=null,
      use_topic_schema=null,
      write_metadata=null
    ):: std.prune(a={
      drop_unknown_fields: drop_unknown_fields,
      table: table,
      use_topic_schema: use_topic_schema,
      write_metadata: write_metadata,
    }),
  },
  dead_letter_policy:: {
    new(
      dead_letter_topic=null,
      max_delivery_attempts=null
    ):: std.prune(a={
      dead_letter_topic: dead_letter_topic,
      max_delivery_attempts: max_delivery_attempts,
    }),
  },
  expiration_policy:: {
    new(
      ttl
    ):: std.prune(a={
      ttl: ttl,
    }),
  },
  new(
    resourceLabel,
    name,
    topic,
    ack_deadline_seconds=null,
    bigquery_config=null,
    dead_letter_policy=null,
    enable_exactly_once_delivery=null,
    enable_message_ordering=null,
    expiration_policy=null,
    filter=null,
    labels=null,
    message_retention_duration=null,
    project=null,
    push_config=null,
    retain_acked_messages=null,
    retry_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_subscription',
    label=resourceLabel,
    attrs=self.newAttrs(
      ack_deadline_seconds=ack_deadline_seconds,
      bigquery_config=bigquery_config,
      dead_letter_policy=dead_letter_policy,
      enable_exactly_once_delivery=enable_exactly_once_delivery,
      enable_message_ordering=enable_message_ordering,
      expiration_policy=expiration_policy,
      filter=filter,
      labels=labels,
      message_retention_duration=message_retention_duration,
      name=name,
      project=project,
      push_config=push_config,
      retain_acked_messages=retain_acked_messages,
      retry_policy=retry_policy,
      timeouts=timeouts,
      topic=topic
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    topic,
    ack_deadline_seconds=null,
    bigquery_config=null,
    dead_letter_policy=null,
    enable_exactly_once_delivery=null,
    enable_message_ordering=null,
    expiration_policy=null,
    filter=null,
    labels=null,
    message_retention_duration=null,
    project=null,
    push_config=null,
    retain_acked_messages=null,
    retry_policy=null,
    timeouts=null
  ):: std.prune(a={
    ack_deadline_seconds: ack_deadline_seconds,
    bigquery_config: bigquery_config,
    dead_letter_policy: dead_letter_policy,
    enable_exactly_once_delivery: enable_exactly_once_delivery,
    enable_message_ordering: enable_message_ordering,
    expiration_policy: expiration_policy,
    filter: filter,
    labels: labels,
    message_retention_duration: message_retention_duration,
    name: name,
    project: project,
    push_config: push_config,
    retain_acked_messages: retain_acked_messages,
    retry_policy: retry_policy,
    timeouts: timeouts,
    topic: topic,
  }),
  push_config:: {
    new(
      push_endpoint,
      attributes=null,
      oidc_token=null
    ):: std.prune(a={
      attributes: attributes,
      oidc_token: oidc_token,
      push_endpoint: push_endpoint,
    }),
    oidc_token:: {
      new(
        service_account_email,
        audience=null
      ):: std.prune(a={
        audience: audience,
        service_account_email: service_account_email,
      }),
    },
  },
  retry_policy:: {
    new(
      maximum_backoff=null,
      minimum_backoff=null
    ):: std.prune(a={
      maximum_backoff: maximum_backoff,
      minimum_backoff: minimum_backoff,
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
  withAckDeadlineSeconds(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          ack_deadline_seconds: value,
        },
      },
    },
  },
  withBigqueryConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          bigquery_config: value,
        },
      },
    },
  },
  withBigqueryConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          bigquery_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDeadLetterPolicy(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          dead_letter_policy: value,
        },
      },
    },
  },
  withDeadLetterPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          dead_letter_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnableExactlyOnceDelivery(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          enable_exactly_once_delivery: value,
        },
      },
    },
  },
  withEnableMessageOrdering(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          enable_message_ordering: value,
        },
      },
    },
  },
  withExpirationPolicy(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          expiration_policy: value,
        },
      },
    },
  },
  withExpirationPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          expiration_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMessageRetentionDuration(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          message_retention_duration: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPushConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          push_config: value,
        },
      },
    },
  },
  withPushConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          push_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRetainAckedMessages(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          retain_acked_messages: value,
        },
      },
    },
  },
  withRetryPolicy(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          retry_policy: value,
        },
      },
    },
  },
  withRetryPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          retry_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTopic(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
}
