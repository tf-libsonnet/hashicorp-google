local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudiot_registry', url='', help='`cloudiot_registry` represents the `google_cloudiot_registry` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  credentials:: {
    '#new':: d.fn(help='\n`google.cloudiot_registry.credentials.new` constructs a new object with attributes and blocks configured for the `credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_key_certificate` (`obj`): A public key certificate format and data.\n\n**Returns**:\n  - An attribute object that represents the `credentials` sub block.\n', args=[]),
    new(
      public_key_certificate
    ):: std.prune(a={
      public_key_certificate: public_key_certificate,
    }),
  },
  event_notification_configs:: {
    '#new':: d.fn(help='\n`google.cloudiot_registry.event_notification_configs.new` constructs a new object with attributes and blocks configured for the `event_notification_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub_topic_name` (`string`): PubSub topic name to publish device events.\n  - `subfolder_matches` (`string`): If the subfolder name matches this string exactly, this\nconfiguration will be used. The string must not include the\nleading &#39;/&#39; character. If empty, all strings are matched. Empty\nvalue can only be used for the last &#39;event_notification_configs&#39;\nitem. When `null`, the `subfolder_matches` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `event_notification_configs` sub block.\n', args=[]),
    new(
      pubsub_topic_name,
      subfolder_matches=null
    ):: std.prune(a={
      pubsub_topic_name: pubsub_topic_name,
      subfolder_matches: subfolder_matches,
    }),
  },
  '#new':: d.fn(help="\n`google.cloudiot_registry.new` injects a new `google_cloudiot_registry` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudiot_registry.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudiot_registry` using the reference:\n\n    $._ref.google_cloudiot_registry.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudiot_registry.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `http_config` (`obj`): Activate or deactivate HTTP. When `null`, the `http_config` field will be omitted from the resulting object.\n  - `log_level` (`string`): The default logging verbosity for activity from devices in this\nregistry. Specifies which events should be written to logs. For\nexample, if the LogLevel is ERROR, only events that terminate in\nerrors will be logged. LogLevel is inclusive; enabling INFO logging\nwill also enable ERROR logging. Default value: \u0026#34;NONE\u0026#34; Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;ERROR\u0026#34;, \u0026#34;INFO\u0026#34;, \u0026#34;DEBUG\u0026#34;] When `null`, the `log_level` field will be omitted from the resulting object.\n  - `mqtt_config` (`obj`): Activate or deactivate MQTT. When `null`, the `mqtt_config` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource, required by device registry.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created registry should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `state_notification_config` (`obj`): A PubSub topic to publish device state updates. When `null`, the `state_notification_config` field will be omitted from the resulting object.\n  - `credentials` (`list[obj]`): List of public key certificates to authenticate devices. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.credentials.new](#fn-credentialsnew) constructor.\n  - `event_notification_configs` (`list[obj]`): List of configurations for event notifications, such as PubSub topics\nto publish device events to. When `null`, the `event_notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.event_notification_configs.new](#fn-event_notification_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.cloudiot_registry.newAttrs` constructs a new object with attributes and blocks configured for the `cloudiot_registry`\nTerraform resource.\n\nUnlike [google.cloudiot_registry.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `http_config` (`obj`): Activate or deactivate HTTP. When `null`, the `http_config` field will be omitted from the resulting object.\n  - `log_level` (`string`): The default logging verbosity for activity from devices in this\nregistry. Specifies which events should be written to logs. For\nexample, if the LogLevel is ERROR, only events that terminate in\nerrors will be logged. LogLevel is inclusive; enabling INFO logging\nwill also enable ERROR logging. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ERROR&#34;, &#34;INFO&#34;, &#34;DEBUG&#34;] When `null`, the `log_level` field will be omitted from the resulting object.\n  - `mqtt_config` (`obj`): Activate or deactivate MQTT. When `null`, the `mqtt_config` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource, required by device registry.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created registry should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `state_notification_config` (`obj`): A PubSub topic to publish device state updates. When `null`, the `state_notification_config` field will be omitted from the resulting object.\n  - `credentials` (`list[obj]`): List of public key certificates to authenticate devices. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.credentials.new](#fn-credentialsnew) constructor.\n  - `event_notification_configs` (`list[obj]`): List of configurations for event notifications, such as PubSub topics\nto publish device events to. When `null`, the `event_notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.event_notification_configs.new](#fn-event_notification_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudiot_registry` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.cloudiot_registry.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCredentials':: d.fn(help='`google.list[obj].withCredentials` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the credentials field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCredentialsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `credentials` field.\n', args=[]),
  withCredentials(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          credentials: value,
        },
      },
    },
  },
  '#withCredentialsMixin':: d.fn(help='`google.list[obj].withCredentialsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the credentials field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCredentials](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `credentials` field.\n', args=[]),
  withCredentialsMixin(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          credentials+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEventNotificationConfigs':: d.fn(help='`google.list[obj].withEventNotificationConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_notification_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEventNotificationConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_notification_configs` field.\n', args=[]),
  withEventNotificationConfigs(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          event_notification_configs: value,
        },
      },
    },
  },
  '#withEventNotificationConfigsMixin':: d.fn(help='`google.list[obj].withEventNotificationConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_notification_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEventNotificationConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_notification_configs` field.\n', args=[]),
  withEventNotificationConfigsMixin(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          event_notification_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHttpConfig':: d.fn(help='`google.obj.withHttpConfig` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the http_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `http_config` field.\n', args=[]),
  withHttpConfig(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          http_config: value,
        },
      },
    },
  },
  '#withLogLevel':: d.fn(help='`google.string.withLogLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the log_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `log_level` field.\n', args=[]),
  withLogLevel(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          log_level: value,
        },
      },
    },
  },
  '#withMqttConfig':: d.fn(help='`google.obj.withMqttConfig` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the mqtt_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `mqtt_config` field.\n', args=[]),
  withMqttConfig(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          mqtt_config: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withStateNotificationConfig':: d.fn(help='`google.obj.withStateNotificationConfig` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the state_notification_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `state_notification_config` field.\n', args=[]),
  withStateNotificationConfig(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          state_notification_config: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudiot_registry+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
