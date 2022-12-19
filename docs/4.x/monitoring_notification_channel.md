---
permalink: /monitoring_notification_channel/
---

# monitoring_notification_channel

`monitoring_notification_channel` represents the `google_monitoring_notification_channel` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withForceDelete()`](#fn-withforcedelete)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withProject()`](#fn-withproject)
* [`fn withSensitiveLabels()`](#fn-withsensitivelabels)
* [`fn withSensitiveLabelsMixin()`](#fn-withsensitivelabelsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withUserLabels()`](#fn-withuserlabels)
* [`obj sensitive_labels`](#obj-sensitive_labels)
  * [`fn new()`](#fn-sensitive_labelsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_notification_channel.new` injects a new `google_monitoring_notification_channel` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_notification_channel.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_notification_channel` using the reference:

    $._ref.google_monitoring_notification_channel.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_notification_channel.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enabled` (`bool`): Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future. When `null`, the `enabled` field will be omitted from the resulting object.
  - `force_delete` (`bool`): If true, the notification channel will be deleted regardless
of its use in alert policies (the policies will be updated
to remove the channel). If false, channels that are still
referenced by an existing alerting policy will fail to be
deleted in a delete operation. When `null`, the `force_delete` field will be omitted from the resulting object.
  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The
permissible and required labels are specified in the
NotificationChannelDescriptor corresponding to the type field.

Labels with sensitive data are obfuscated by the API and therefore Terraform cannot
determine if there are upstream changes to these fields. They can also be configured via
the sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as &#34;email&#34;, &#34;slack&#34;, etc...
  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor&#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `sensitive_labels` (`list[obj]`): Different notification type behaviors are configured primarily using the the &#39;labels&#39; field on this
resource. This block contains the labels which contain secrets or passwords so that they can be marked
sensitive and hidden from plan output. The name of the field, eg: password, will be the key
in the &#39;labels&#39; map in the api request.

Credentials may not be specified in both locations and will cause an error. Changing from one location
to a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.sensitive_labels.new](#fn-monitoringnotificationchannelsensitivelabelsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.timeouts.new](#fn-monitoringnotificationchanneltimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_notification_channel.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_notification_channel`
Terraform resource.

Unlike [google.monitoring_notification_channel.new](#fn-monitoringnotificationchannelnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enabled` (`bool`): Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future. When `null`, the `enabled` field will be omitted from the resulting object.
  - `force_delete` (`bool`): If true, the notification channel will be deleted regardless
of its use in alert policies (the policies will be updated
to remove the channel). If false, channels that are still
referenced by an existing alerting policy will fail to be
deleted in a delete operation. When `null`, the `force_delete` field will be omitted from the resulting object.
  - `labels` (`obj`): Configuration fields that define the channel and its behavior. The
permissible and required labels are specified in the
NotificationChannelDescriptor corresponding to the type field.

Labels with sensitive data are obfuscated by the API and therefore Terraform cannot
determine if there are upstream changes to these fields. They can also be configured via
the sensitive_labels block, but cannot be configured in both places. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as &#34;email&#34;, &#34;slack&#34;, etc...
  - `user_labels` (`obj`): User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor&#39;s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `sensitive_labels` (`list[obj]`): Different notification type behaviors are configured primarily using the the &#39;labels&#39; field on this
resource. This block contains the labels which contain secrets or passwords so that they can be marked
sensitive and hidden from plan output. The name of the field, eg: password, will be the key
in the &#39;labels&#39; map in the api request.

Credentials may not be specified in both locations and will cause an error. Changing from one location
to a different credential configuration in the config will require an apply to update state. When `null`, the `sensitive_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.sensitive_labels.new](#fn-monitoringnotificationchannelsensitivelabelsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_notification_channel.timeouts.new](#fn-monitoringnotificationchanneltimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_notification_channel` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withForceDelete

```ts
withForceDelete()
```

`google.bool.withForceDelete` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_delete field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_delete` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSensitiveLabels

```ts
withSensitiveLabels()
```

`google.list[obj].withSensitiveLabels` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sensitive_labels field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSensitiveLabelsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sensitive_labels` field.


### fn withSensitiveLabelsMixin

```ts
withSensitiveLabelsMixin()
```

`google.list[obj].withSensitiveLabelsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sensitive_labels field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSensitiveLabels](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sensitive_labels` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


### fn withUserLabels

```ts
withUserLabels()
```

`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the user_labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `user_labels` field.


## obj sensitive_labels



### fn sensitive_labels.new

```ts
new()
```


`google.monitoring_notification_channel.sensitive_labels.new` constructs a new object with attributes and blocks configured for the `sensitive_labels`
Terraform sub block.



**Args**:
  - `auth_token` (`string`): An authorization token for a notification channel. Channel types that support this field include: slack When `null`, the `auth_token` field will be omitted from the resulting object.
  - `password` (`string`): An password for a notification channel. Channel types that support this field include: webhook_basicauth When `null`, the `password` field will be omitted from the resulting object.
  - `service_key` (`string`): An servicekey token for a notification channel. Channel types that support this field include: pagerduty When `null`, the `service_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sensitive_labels` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_notification_channel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
