local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='scc_notification_config', url='', help='`scc_notification_config` represents the `google_scc_notification_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.scc_notification_config.new` injects a new `google_scc_notification_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.scc_notification_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.scc_notification_config` using the reference:\n\n    $._ref.google_scc_notification_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_scc_notification_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `config_id` (`string`): This must be unique within the organization.\n  - `description` (`string`): The description of the notification config (max of 1024 characters). When `null`, the `description` field will be omitted from the resulting object.\n  - `organization` (`string`): The organization whose Cloud Security Command Center the Notification\nConfig lives in.\n  - `pubsub_topic` (`string`): The Pub/Sub topic to send notifications to. Its format is\n\u0026#34;projects/[project_id]/topics/[topic]\u0026#34;.\n  - `streaming_config` (`list[obj]`): The config for triggering streaming-based notifications. When `null`, the `streaming_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_notification_config.streaming_config.new](#fn-streaming_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_notification_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.scc_notification_config.newAttrs` constructs a new object with attributes and blocks configured for the `scc_notification_config`\nTerraform resource.\n\nUnlike [google.scc_notification_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config_id` (`string`): This must be unique within the organization.\n  - `description` (`string`): The description of the notification config (max of 1024 characters). When `null`, the `description` field will be omitted from the resulting object.\n  - `organization` (`string`): The organization whose Cloud Security Command Center the Notification\nConfig lives in.\n  - `pubsub_topic` (`string`): The Pub/Sub topic to send notifications to. Its format is\n&#34;projects/[project_id]/topics/[topic]&#34;.\n  - `streaming_config` (`list[obj]`): The config for triggering streaming-based notifications. When `null`, the `streaming_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_notification_config.streaming_config.new](#fn-streaming_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_notification_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_notification_config` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.scc_notification_config.streaming_config.new` constructs a new object with attributes and blocks configured for the `streaming_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `filter` (`string`): Expression that defines the filter to apply across create/update\nevents of assets or findings as specified by the event type. The\nexpression is a list of zero or more restrictions combined via\nlogical operators AND and OR. Parentheses are supported, and OR\nhas higher precedence than AND.\n\nRestrictions have the form &lt;field&gt; &lt;operator&gt; &lt;value&gt; and may have\na - character in front of them to indicate negation. The fields\nmap to those defined in the corresponding resource.\n\nThe supported operators are:\n\n* = for all value types.\n* &gt;, &lt;, &gt;=, &lt;= for integer values.\n* :, meaning substring matching, for strings.\n\nThe supported value types are:\n\n* string literals in quotes.\n* integer literals without quotes.\n* boolean literals true and false without quotes.\n\nSee\n[Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)\nfor information on how to write a filter.\n\n**Returns**:\n  - An attribute object that represents the `streaming_config` sub block.\n', args=[]),
    new(
      filter
    ):: std.prune(a={
      filter: filter,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.scc_notification_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withConfigId':: d.fn(help='`google.string.withConfigId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the config_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config_id` field.\n', args=[]),
  withConfigId(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          config_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withOrganization':: d.fn(help='`google.string.withOrganization` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organization` field.\n', args=[]),
  withOrganization(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  '#withPubsubTopic':: d.fn(help='`google.string.withPubsubTopic` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the pubsub_topic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `pubsub_topic` field.\n', args=[]),
  withPubsubTopic(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          pubsub_topic: value,
        },
      },
    },
  },
  '#withStreamingConfig':: d.fn(help='`google.list[obj].withStreamingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the streaming_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withStreamingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `streaming_config` field.\n', args=[]),
  withStreamingConfig(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          streaming_config: value,
        },
      },
    },
  },
  '#withStreamingConfigMixin':: d.fn(help='`google.list[obj].withStreamingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the streaming_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withStreamingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `streaming_config` field.\n', args=[]),
  withStreamingConfigMixin(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          streaming_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_scc_notification_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
