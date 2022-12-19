local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_notification_channel', url='', help='`monitoring_notification_channel` represents the `google_monitoring_notification_channel` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.monitoring_notification_channel.new` injects a new `data_google_monitoring_notification_channel` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.monitoring_notification_channel.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.monitoring_notification_channel` using the reference:\n\n    $._ref.data_google_monitoring_notification_channel.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_monitoring_notification_channel.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The\npermissible and required labels are specified in the\nNotificationChannelDescriptor corresponding to the type field.\n\nLabels with sensitive data are obfuscated by the API and therefore Terraform cannot\ndetermine if there are upstream changes to these fields. They can also be configured via\nthe sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as \u0026#34;email\u0026#34;, \u0026#34;slack\u0026#34;, etc... When `null`, the `type` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor\u0026#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    display_name=null,
    labels=null,
    project=null,
    type=null,
    user_labels=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_notification_channel',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      labels=labels,
      project=project,
      type=type,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.monitoring_notification_channel.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_notification_channel`\nTerraform data source.\n\nUnlike [google.data.monitoring_notification_channel.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The\npermissible and required labels are specified in the\nNotificationChannelDescriptor corresponding to the type field.\n\nLabels with sensitive data are obfuscated by the API and therefore Terraform cannot\ndetermine if there are upstream changes to these fields. They can also be configured via\nthe sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as &#34;email&#34;, &#34;slack&#34;, etc... When `null`, the `type` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor&#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_notification_channel` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name=null,
    labels=null,
    project=null,
    type=null,
    user_labels=null
  ):: std.prune(a={
    display_name: display_name,
    labels: labels,
    project: project,
    type: type,
    user_labels: user_labels,
  }),
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the display_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(dataSrcLabel, value): {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the labels field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(dataSrcLabel, value): {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(dataSrcLabel, value): {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withUserLabels':: d.fn(help='`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the user_labels field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `user_labels` field.\n', args=[]),
  withUserLabels(dataSrcLabel, value): {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
