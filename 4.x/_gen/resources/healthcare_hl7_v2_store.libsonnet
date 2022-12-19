local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='healthcare_hl7_v2_store', url='', help='`healthcare_hl7_v2_store` represents the `google_healthcare_hl7_v2_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.healthcare_hl7_v2_store.new` injects a new `google_healthcare_hl7_v2_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.healthcare_hl7_v2_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.healthcare_hl7_v2_store` using the reference:\n\n    $._ref.google_healthcare_hl7_v2_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_healthcare_hl7_v2_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/datasets/{dataset}\u0026#39;\n  - `labels` (`obj`): User-supplied key-value pairs used to organize HL7v2 stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the Hl7V2Store.\n\n** Changing this property may recreate the Hl7v2 store (removing all data) **\n  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_config.new](#fn-healthcare_hl7_v2_storenotification_confignew) constructor.\n  - `notification_configs` (`list[obj]`): A list of notification configs. Each configuration uses a filter to determine whether to publish a\nmessage (both Ingest \u0026amp; Create) on the corresponding notification destination. Only the message name\nis sent as part of the notification. Supplied by the client. When `null`, the `notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_configs.new](#fn-healthcare_hl7_v2_storenotification_configsnew) constructor.\n  - `parser_config` (`list[obj]`): A nested object resource When `null`, the `parser_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.parser_config.new](#fn-healthcare_hl7_v2_storeparser_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.timeouts.new](#fn-healthcare_hl7_v2_storetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.healthcare_hl7_v2_store.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_hl7_v2_store`\nTerraform resource.\n\nUnlike [google.healthcare_hl7_v2_store.new](#fn-healthcare_hl7_v2_storenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;\n  - `labels` (`obj`): User-supplied key-value pairs used to organize HL7v2 stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the Hl7V2Store.\n\n** Changing this property may recreate the Hl7v2 store (removing all data) **\n  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_config.new](#fn-healthcare_hl7_v2_storenotification_confignew) constructor.\n  - `notification_configs` (`list[obj]`): A list of notification configs. Each configuration uses a filter to determine whether to publish a\nmessage (both Ingest &amp; Create) on the corresponding notification destination. Only the message name\nis sent as part of the notification. Supplied by the client. When `null`, the `notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_configs.new](#fn-healthcare_hl7_v2_storenotification_configsnew) constructor.\n  - `parser_config` (`list[obj]`): A nested object resource When `null`, the `parser_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.parser_config.new](#fn-healthcare_hl7_v2_storeparser_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.timeouts.new](#fn-healthcare_hl7_v2_storetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_hl7_v2_store` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.healthcare_hl7_v2_store.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.\nPubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.\nIt is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message\nwas published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a\nproject. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given\nCloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.\n\n**Returns**:\n  - An attribute object that represents the `notification_config` sub block.\n', args=[]),
    new(
      pubsub_topic
    ):: std.prune(a={
      pubsub_topic: pubsub_topic,
    }),
  },
  notification_configs:: {
    '#new':: d.fn(help='\n`google.healthcare_hl7_v2_store.notification_configs.new` constructs a new object with attributes and blocks configured for the `notification_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `filter` (`string`): Restricts notifications sent for messages matching a filter. If this is empty, all messages\nare matched. Syntax: https://cloud.google.com/appengine/docs/standard/python/search/query_strings\n\nFields/functions available for filtering are:\n\n* messageType, from the MSH-9.1 field. For example, NOT messageType = &#34;ADT&#34;.\n* send_date or sendDate, the YYYY-MM-DD date the message was sent in the dataset&#39;s timeZone, from the MSH-7 segment. For example, send_date &lt; &#34;2017-01-02&#34;.\n* sendTime, the timestamp when the message was sent, using the RFC3339 time format for comparisons, from the MSH-7 segment. For example, sendTime &lt; &#34;2017-01-02T00:00:00-05:00&#34;.\n* sendFacility, the care center that the message came from, from the MSH-4 segment. For example, sendFacility = &#34;ABC&#34;.\n* PatientId(value, type), which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, PatientId(&#34;123456&#34;, &#34;MRN&#34;).\n* labels.x, a string value of the label with key x as set using the Message.labels map. For example, labels.&#34;priority&#34;=&#34;high&#34;. The operator :* can be used to assert the existence of a label. For example, labels.&#34;priority&#34;:*. When `null`, the `filter` field will be omitted from the resulting object.\n  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.\nPubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.\nIt is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message\nwas published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a\nproject. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given\nCloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.\n\nIf a notification cannot be published to Cloud Pub/Sub, errors will be logged to Stackdriver\n\n**Returns**:\n  - An attribute object that represents the `notification_configs` sub block.\n', args=[]),
    new(
      pubsub_topic,
      filter=null
    ):: std.prune(a={
      filter: filter,
      pubsub_topic: pubsub_topic,
    }),
  },
  parser_config:: {
    '#new':: d.fn(help='\n`google.healthcare_hl7_v2_store.parser_config.new` constructs a new object with attributes and blocks configured for the `parser_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_null_header` (`bool`): Determines whether messages with no header are allowed. When `null`, the `allow_null_header` field will be omitted from the resulting object.\n  - `schema` (`string`): JSON encoded string for schemas used to parse messages in this\nstore if schematized parsing is desired. When `null`, the `schema` field will be omitted from the resulting object.\n  - `segment_terminator` (`string`): Byte(s) to be used as the segment terminator. If this is unset, &#39;\\r&#39; will be used as segment terminator.\n\nA base64-encoded string. When `null`, the `segment_terminator` field will be omitted from the resulting object.\n  - `version` (`string`): The version of the unschematized parser to be used when a custom &#39;schema&#39; is not set. Default value: &#34;V1&#34; Possible values: [&#34;V1&#34;, &#34;V2&#34;, &#34;V3&#34;] When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `parser_config` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.healthcare_hl7_v2_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDataset':: d.fn(help='`google.string.withDataset` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset` field.\n', args=[]),
  withDataset(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNotificationConfig':: d.fn(help='`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfig(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  '#withNotificationConfigMixin':: d.fn(help='`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfigMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNotificationConfigs':: d.fn(help='`google.list[obj].withNotificationConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNotificationConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_configs` field.\n', args=[]),
  withNotificationConfigs(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_configs: value,
        },
      },
    },
  },
  '#withNotificationConfigsMixin':: d.fn(help='`google.list[obj].withNotificationConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_configs` field.\n', args=[]),
  withNotificationConfigsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          notification_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParserConfig':: d.fn(help='`google.list[obj].withParserConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the parser_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withParserConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `parser_config` field.\n', args=[]),
  withParserConfig(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          parser_config: value,
        },
      },
    },
  },
  '#withParserConfigMixin':: d.fn(help='`google.list[obj].withParserConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the parser_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withParserConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `parser_config` field.\n', args=[]),
  withParserConfigMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          parser_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
