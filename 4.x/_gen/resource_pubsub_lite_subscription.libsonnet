local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  delivery_config:: {
    new(
      delivery_requirement
    ):: std.prune(a={
      delivery_requirement: delivery_requirement,
    }),
  },
  new(
    resourceLabel,
    name,
    topic,
    delivery_config=null,
    project=null,
    region=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_lite_subscription',
    label=resourceLabel,
    attrs=self.newAttrs(
      delivery_config=delivery_config,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      topic=topic,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    topic,
    delivery_config=null,
    project=null,
    region=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    delivery_config: delivery_config,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    topic: topic,
    zone: zone,
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
  withDeliveryConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          delivery_config: value,
        },
      },
    },
  },
  withDeliveryConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          delivery_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTopic(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_subscription+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
