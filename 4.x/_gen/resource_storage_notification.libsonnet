local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    payload_format,
    topic,
    custom_attributes=null,
    event_types=null,
    object_name_prefix=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_notification',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      custom_attributes=custom_attributes,
      event_types=event_types,
      object_name_prefix=object_name_prefix,
      payload_format=payload_format,
      topic=topic
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    payload_format,
    topic,
    custom_attributes=null,
    event_types=null,
    object_name_prefix=null
  ):: std.prune(a={
    bucket: bucket,
    custom_attributes: custom_attributes,
    event_types: event_types,
    object_name_prefix: object_name_prefix,
    payload_format: payload_format,
    topic: topic,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withCustomAttributes(resourceLabel, value):: {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          custom_attributes: value,
        },
      },
    },
  },
  withEventTypes(resourceLabel, value):: {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          event_types: value,
        },
      },
    },
  },
  withObjectNamePrefix(resourceLabel, value):: {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          object_name_prefix: value,
        },
      },
    },
  },
  withPayloadFormat(resourceLabel, value):: {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          payload_format: value,
        },
      },
    },
  },
  withTopic(resourceLabel, value):: {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
}
