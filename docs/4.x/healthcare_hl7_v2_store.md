---
permalink: /healthcare_hl7_v2_store/
---

# healthcare_hl7_v2_store

`healthcare_hl7_v2_store` represents the `google_healthcare_hl7_v2_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataset()`](#fn-withdataset)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNotificationConfig()`](#fn-withnotificationconfig)
* [`fn withNotificationConfigMixin()`](#fn-withnotificationconfigmixin)
* [`fn withNotificationConfigs()`](#fn-withnotificationconfigs)
* [`fn withNotificationConfigsMixin()`](#fn-withnotificationconfigsmixin)
* [`fn withParserConfig()`](#fn-withparserconfig)
* [`fn withParserConfigMixin()`](#fn-withparserconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj notification_config`](#obj-notification_config)
  * [`fn new()`](#fn-notification_confignew)
* [`obj notification_configs`](#obj-notification_configs)
  * [`fn new()`](#fn-notification_configsnew)
* [`obj parser_config`](#obj-parser_config)
  * [`fn new()`](#fn-parser_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.healthcare_hl7_v2_store.new` injects a new `google_healthcare_hl7_v2_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.healthcare_hl7_v2_store.new('some_id')

You can get the reference to the `id` field of the created `google.healthcare_hl7_v2_store` using the reference:

    $._ref.google_healthcare_hl7_v2_store.some_id.get('id')

This is the same as directly entering `"${ google_healthcare_hl7_v2_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `labels` (`obj`): User-supplied key-value pairs used to organize HL7v2 stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the Hl7V2Store.

** Changing this property may recreate the Hl7v2 store (removing all data) **
  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_config.new](#fn-notification_confignew) constructor.
  - `notification_configs` (`list[obj]`): A list of notification configs. Each configuration uses a filter to determine whether to publish a
message (both Ingest &amp; Create) on the corresponding notification destination. Only the message name
is sent as part of the notification. Supplied by the client. When `null`, the `notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_configs.new](#fn-notification_configsnew) constructor.
  - `parser_config` (`list[obj]`): A nested object resource When `null`, the `parser_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.parser_config.new](#fn-parser_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.healthcare_hl7_v2_store.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_hl7_v2_store`
Terraform resource.

Unlike [google.healthcare_hl7_v2_store.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `labels` (`obj`): User-supplied key-value pairs used to organize HL7v2 stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the Hl7V2Store.

** Changing this property may recreate the Hl7v2 store (removing all data) **
  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_config.new](#fn-notification_confignew) constructor.
  - `notification_configs` (`list[obj]`): A list of notification configs. Each configuration uses a filter to determine whether to publish a
message (both Ingest &amp; Create) on the corresponding notification destination. Only the message name
is sent as part of the notification. Supplied by the client. When `null`, the `notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.notification_configs.new](#fn-notification_configsnew) constructor.
  - `parser_config` (`list[obj]`): A nested object resource When `null`, the `parser_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.parser_config.new](#fn-parser_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_hl7_v2_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_hl7_v2_store` resource into the root Terraform configuration.


### fn withDataset

```ts
withDataset()
```

`google.string.withDataset` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNotificationConfig

```ts
withNotificationConfig()
```

`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withNotificationConfigMixin

```ts
withNotificationConfigMixin()
```

`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withNotificationConfigs

```ts
withNotificationConfigs()
```

`google.list[obj].withNotificationConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNotificationConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_configs` field.


### fn withNotificationConfigsMixin

```ts
withNotificationConfigsMixin()
```

`google.list[obj].withNotificationConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_configs` field.


### fn withParserConfig

```ts
withParserConfig()
```

`google.list[obj].withParserConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the parser_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withParserConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `parser_config` field.


### fn withParserConfigMixin

```ts
withParserConfigMixin()
```

`google.list[obj].withParserConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the parser_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withParserConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `parser_config` field.


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


## obj notification_config



### fn notification_config.new

```ts
new()
```


`google.healthcare_hl7_v2_store.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`
Terraform sub block.



**Args**:
  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.

**Returns**:
  - An attribute object that represents the `notification_config` sub block.


## obj notification_configs



### fn notification_configs.new

```ts
new()
```


`google.healthcare_hl7_v2_store.notification_configs.new` constructs a new object with attributes and blocks configured for the `notification_configs`
Terraform sub block.



**Args**:
  - `filter` (`string`): Restricts notifications sent for messages matching a filter. If this is empty, all messages
are matched. Syntax: https://cloud.google.com/appengine/docs/standard/python/search/query_strings

Fields/functions available for filtering are:

* messageType, from the MSH-9.1 field. For example, NOT messageType = &#34;ADT&#34;.
* send_date or sendDate, the YYYY-MM-DD date the message was sent in the dataset&#39;s timeZone, from the MSH-7 segment. For example, send_date &lt; &#34;2017-01-02&#34;.
* sendTime, the timestamp when the message was sent, using the RFC3339 time format for comparisons, from the MSH-7 segment. For example, sendTime &lt; &#34;2017-01-02T00:00:00-05:00&#34;.
* sendFacility, the care center that the message came from, from the MSH-4 segment. For example, sendFacility = &#34;ABC&#34;.
* PatientId(value, type), which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, PatientId(&#34;123456&#34;, &#34;MRN&#34;).
* labels.x, a string value of the label with key x as set using the Message.labels map. For example, labels.&#34;priority&#34;=&#34;high&#34;. The operator :* can be used to assert the existence of a label. For example, labels.&#34;priority&#34;:*. When `null`, the `filter` field will be omitted from the resulting object.
  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.

If a notification cannot be published to Cloud Pub/Sub, errors will be logged to Stackdriver

**Returns**:
  - An attribute object that represents the `notification_configs` sub block.


## obj parser_config



### fn parser_config.new

```ts
new()
```


`google.healthcare_hl7_v2_store.parser_config.new` constructs a new object with attributes and blocks configured for the `parser_config`
Terraform sub block.



**Args**:
  - `allow_null_header` (`bool`): Determines whether messages with no header are allowed. When `null`, the `allow_null_header` field will be omitted from the resulting object.
  - `schema` (`string`): JSON encoded string for schemas used to parse messages in this
store if schematized parsing is desired. When `null`, the `schema` field will be omitted from the resulting object.
  - `segment_terminator` (`string`): Byte(s) to be used as the segment terminator. If this is unset, &#39;\r&#39; will be used as segment terminator.

A base64-encoded string. When `null`, the `segment_terminator` field will be omitted from the resulting object.
  - `version` (`string`): The version of the unschematized parser to be used when a custom &#39;schema&#39; is not set. Default value: &#34;V1&#34; Possible values: [&#34;V1&#34;, &#34;V2&#34;, &#34;V3&#34;] When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `parser_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.healthcare_hl7_v2_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
