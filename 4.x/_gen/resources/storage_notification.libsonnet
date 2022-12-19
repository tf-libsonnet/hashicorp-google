local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_notification', url='', help='`storage_notification` represents the `google_storage_notification` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.storage_notification.new` injects a new `google_storage_notification` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_notification.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_notification` using the reference:\n\n    $._ref.google_storage_notification.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_notification.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): The name of the bucket.\n  - `custom_attributes` (`obj`):  A set of key/value attribute pairs to attach to each Cloud Pub/Sub message published for this notification subscription When `null`, the `custom_attributes` field will be omitted from the resulting object.\n  - `event_types` (`list`): List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: \u0026#34;OBJECT_FINALIZE\u0026#34;, \u0026#34;OBJECT_METADATA_UPDATE\u0026#34;, \u0026#34;OBJECT_DELETE\u0026#34;, \u0026#34;OBJECT_ARCHIVE\u0026#34; When `null`, the `event_types` field will be omitted from the resulting object.\n  - `object_name_prefix` (`string`): Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix. When `null`, the `object_name_prefix` field will be omitted from the resulting object.\n  - `payload_format` (`string`): The desired content of the Payload. One of \u0026#34;JSON_API_V1\u0026#34; or \u0026#34;NONE\u0026#34;.\n  - `topic` (`string`): The Cloud Pub/Sub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.storage_notification.newAttrs` constructs a new object with attributes and blocks configured for the `storage_notification`\nTerraform resource.\n\nUnlike [google.storage_notification.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): The name of the bucket.\n  - `custom_attributes` (`obj`):  A set of key/value attribute pairs to attach to each Cloud Pub/Sub message published for this notification subscription When `null`, the `custom_attributes` field will be omitted from the resulting object.\n  - `event_types` (`list`): List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: &#34;OBJECT_FINALIZE&#34;, &#34;OBJECT_METADATA_UPDATE&#34;, &#34;OBJECT_DELETE&#34;, &#34;OBJECT_ARCHIVE&#34; When `null`, the `event_types` field will be omitted from the resulting object.\n  - `object_name_prefix` (`string`): Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix. When `null`, the `object_name_prefix` field will be omitted from the resulting object.\n  - `payload_format` (`string`): The desired content of the Payload. One of &#34;JSON_API_V1&#34; or &#34;NONE&#34;.\n  - `topic` (`string`): The Cloud Pub/Sub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_notification` resource into the root Terraform configuration.\n', args=[]),
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
  '#withBucket':: d.fn(help='`google.string.withBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value): {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withCustomAttributes':: d.fn(help='`google.obj.withCustomAttributes` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the custom_attributes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `custom_attributes` field.\n', args=[]),
  withCustomAttributes(resourceLabel, value): {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          custom_attributes: value,
        },
      },
    },
  },
  '#withEventTypes':: d.fn(help='`google.list.withEventTypes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the event_types field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `event_types` field.\n', args=[]),
  withEventTypes(resourceLabel, value): {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          event_types: value,
        },
      },
    },
  },
  '#withObjectNamePrefix':: d.fn(help='`google.string.withObjectNamePrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the object_name_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `object_name_prefix` field.\n', args=[]),
  withObjectNamePrefix(resourceLabel, value): {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          object_name_prefix: value,
        },
      },
    },
  },
  '#withPayloadFormat':: d.fn(help='`google.string.withPayloadFormat` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the payload_format field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `payload_format` field.\n', args=[]),
  withPayloadFormat(resourceLabel, value): {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          payload_format: value,
        },
      },
    },
  },
  '#withTopic':: d.fn(help='`google.string.withTopic` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the topic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `topic` field.\n', args=[]),
  withTopic(resourceLabel, value): {
    resource+: {
      google_storage_notification+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
}
