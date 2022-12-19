local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_notification_channel', url='', help='`monitoring_notification_channel` represents the `google_monitoring_notification_channel` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.monitoring_notification_channel.new` injects a new `google_monitoring_notification_channel` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_notification_channel.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_notification_channel` using the reference:\n\n    $._ref.google_monitoring_notification_channel.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_notification_channel.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `force_delete` (`bool`): If true, the notification channel will be deleted regardless\nof its use in alert policies (the policies will be updated\nto remove the channel). If false, channels that are still\nreferenced by an existing alerting policy will fail to be\ndeleted in a delete operation. When `null`, the `force_delete` field will be omitted from the resulting object.\n  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The\npermissible and required labels are specified in the\nNotificationChannelDescriptor corresponding to the type field.\n\nLabels with sensitive data are obfuscated by the API and therefore Terraform cannot\ndetermine if there are upstream changes to these fields. They can also be configured via\nthe sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as \u0026#34;email\u0026#34;, \u0026#34;slack\u0026#34;, etc...\n  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor\u0026#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `sensitive_labels` (`list[obj]`): Different notification type behaviors are configured primarily using the the \u0026#39;labels\u0026#39; field on this\nresource. This block contains the labels which contain secrets or passwords so that they can be marked\nsensitive and hidden from plan output. The name of the field, eg: password, will be the key\nin the \u0026#39;labels\u0026#39; map in the api request.\n\nCredentials may not be specified in both locations and will cause an error. Changing from one location\nto a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.sensitive_labels.new](#fn-monitoring_notification_channelsensitive_labelsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.timeouts.new](#fn-monitoring_notification_channeltimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    type,
    description=null,
    display_name=null,
    enabled=null,
    force_delete=null,
    labels=null,
    project=null,
    sensitive_labels=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_notification_channel',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      enabled=enabled,
      force_delete=force_delete,
      labels=labels,
      project=project,
      sensitive_labels=sensitive_labels,
      timeouts=timeouts,
      type=type,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_notification_channel.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_notification_channel`\nTerraform resource.\n\nUnlike [google.monitoring_notification_channel.new](#fn-monitoring_notification_channelnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `force_delete` (`bool`): If true, the notification channel will be deleted regardless\nof its use in alert policies (the policies will be updated\nto remove the channel). If false, channels that are still\nreferenced by an existing alerting policy will fail to be\ndeleted in a delete operation. When `null`, the `force_delete` field will be omitted from the resulting object.\n  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The\npermissible and required labels are specified in the\nNotificationChannelDescriptor corresponding to the type field.\n\nLabels with sensitive data are obfuscated by the API and therefore Terraform cannot\ndetermine if there are upstream changes to these fields. They can also be configured via\nthe sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as &#34;email&#34;, &#34;slack&#34;, etc...\n  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor&#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `sensitive_labels` (`list[obj]`): Different notification type behaviors are configured primarily using the the &#39;labels&#39; field on this\nresource. This block contains the labels which contain secrets or passwords so that they can be marked\nsensitive and hidden from plan output. The name of the field, eg: password, will be the key\nin the &#39;labels&#39; map in the api request.\n\nCredentials may not be specified in both locations and will cause an error. Changing from one location\nto a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.sensitive_labels.new](#fn-monitoring_notification_channelsensitive_labelsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.timeouts.new](#fn-monitoring_notification_channeltimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_notification_channel` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    type,
    description=null,
    display_name=null,
    enabled=null,
    force_delete=null,
    labels=null,
    project=null,
    sensitive_labels=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    enabled: enabled,
    force_delete: force_delete,
    labels: labels,
    project: project,
    sensitive_labels: sensitive_labels,
    timeouts: timeouts,
    type: type,
    user_labels: user_labels,
  }),
  sensitive_labels:: {
    '#new':: d.fn(help='\n`google.monitoring_notification_channel.sensitive_labels.new` constructs a new object with attributes and blocks configured for the `sensitive_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_token` (`string`): An authorization token for a notification channel. Channel types that support this field include: slack When `null`, the `auth_token` field will be omitted from the resulting object.\n  - `password` (`string`): An password for a notification channel. Channel types that support this field include: webhook_basicauth When `null`, the `password` field will be omitted from the resulting object.\n  - `service_key` (`string`): An servicekey token for a notification channel. Channel types that support this field include: pagerduty When `null`, the `service_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sensitive_labels` sub block.\n', args=[]),
    new(
      auth_token=null,
      password=null,
      service_key=null
    ):: std.prune(a={
      auth_token: auth_token,
      password: password,
      service_key: service_key,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_notification_channel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withForceDelete':: d.fn(help='`google.bool.withForceDelete` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_delete field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_delete` field.\n', args=[]),
  withForceDelete(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          force_delete: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSensitiveLabels':: d.fn(help='`google.list[obj].withSensitiveLabels` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sensitive_labels field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSensitiveLabelsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sensitive_labels` field.\n', args=[]),
  withSensitiveLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          sensitive_labels: value,
        },
      },
    },
  },
  '#withSensitiveLabelsMixin':: d.fn(help='`google.list[obj].withSensitiveLabelsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sensitive_labels field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSensitiveLabels](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sensitive_labels` field.\n', args=[]),
  withSensitiveLabelsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          sensitive_labels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withUserLabels':: d.fn(help='`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the user_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `user_labels` field.\n', args=[]),
  withUserLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_notification_channel+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
