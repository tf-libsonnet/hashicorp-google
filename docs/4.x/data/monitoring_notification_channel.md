---
permalink: /data/monitoring_notification_channel/
---

# data.monitoring_notification_channel

`monitoring_notification_channel` represents the `google_monitoring_notification_channel` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withProject()`](#fn-withproject)
* [`fn withType()`](#fn-withtype)
* [`fn withUserLabels()`](#fn-withuserlabels)

## Fields

### fn new

```ts
new()
```


`google.data.monitoring_notification_channel.new` injects a new `data_google_monitoring_notification_channel` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.monitoring_notification_channel.new('some_id')

You can get the reference to the `id` field of the created `google.data.monitoring_notification_channel` using the reference:

    $._ref.data_google_monitoring_notification_channel.some_id.get('id')

This is the same as directly entering `"${ data_google_monitoring_notification_channel.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The
permissible and required labels are specified in the
NotificationChannelDescriptor corresponding to the type field.

Labels with sensitive data are obfuscated by the API and therefore Terraform cannot
determine if there are upstream changes to these fields. They can also be configured via
the sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as &#34;email&#34;, &#34;slack&#34;, etc... When `null`, the `type` field will be omitted from the resulting object.
  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor&#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.monitoring_notification_channel.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_notification_channel`
Terraform data source.

Unlike [google.data.monitoring_notification_channel.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The
permissible and required labels are specified in the
NotificationChannelDescriptor corresponding to the type field.

Labels with sensitive data are obfuscated by the API and therefore Terraform cannot
determine if there are upstream changes to these fields. They can also be configured via
the sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as &#34;email&#34;, &#34;slack&#34;, etc... When `null`, the `type` field will be omitted from the resulting object.
  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor&#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_notification_channel` data source into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the display_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the labels field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the type field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


### fn withUserLabels

```ts
withUserLabels()
```

`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the user_labels field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `user_labels` field.
