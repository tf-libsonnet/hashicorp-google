---
permalink: /storage_notification/
---

# storage_notification

`storage_notification` represents the `google_storage_notification` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withCustomAttributes()`](#fn-withcustomattributes)
* [`fn withEventTypes()`](#fn-witheventtypes)
* [`fn withObjectNamePrefix()`](#fn-withobjectnameprefix)
* [`fn withPayloadFormat()`](#fn-withpayloadformat)
* [`fn withTopic()`](#fn-withtopic)

## Fields

### fn new

```ts
new()
```


`google.storage_notification.new` injects a new `google_storage_notification` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_notification.new('some_id')

You can get the reference to the `id` field of the created `google.storage_notification` using the reference:

    $._ref.google_storage_notification.some_id.get('id')

This is the same as directly entering `"${ google_storage_notification.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The name of the bucket.
  - `custom_attributes` (`obj`):  A set of key/value attribute pairs to attach to each Cloud Pub/Sub message published for this notification subscription When `null`, the `custom_attributes` field will be omitted from the resulting object.
  - `event_types` (`list`): List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: &#34;OBJECT_FINALIZE&#34;, &#34;OBJECT_METADATA_UPDATE&#34;, &#34;OBJECT_DELETE&#34;, &#34;OBJECT_ARCHIVE&#34; When `null`, the `event_types` field will be omitted from the resulting object.
  - `object_name_prefix` (`string`): Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix. When `null`, the `object_name_prefix` field will be omitted from the resulting object.
  - `payload_format` (`string`): The desired content of the Payload. One of &#34;JSON_API_V1&#34; or &#34;NONE&#34;.
  - `topic` (`string`): The Cloud Pub/Sub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_notification.newAttrs` constructs a new object with attributes and blocks configured for the `storage_notification`
Terraform resource.

Unlike [google.storage_notification.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The name of the bucket.
  - `custom_attributes` (`obj`):  A set of key/value attribute pairs to attach to each Cloud Pub/Sub message published for this notification subscription When `null`, the `custom_attributes` field will be omitted from the resulting object.
  - `event_types` (`list`): List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: &#34;OBJECT_FINALIZE&#34;, &#34;OBJECT_METADATA_UPDATE&#34;, &#34;OBJECT_DELETE&#34;, &#34;OBJECT_ARCHIVE&#34; When `null`, the `event_types` field will be omitted from the resulting object.
  - `object_name_prefix` (`string`): Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix. When `null`, the `object_name_prefix` field will be omitted from the resulting object.
  - `payload_format` (`string`): The desired content of the Payload. One of &#34;JSON_API_V1&#34; or &#34;NONE&#34;.
  - `topic` (`string`): The Cloud Pub/Sub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_notification` resource into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withCustomAttributes

```ts
withCustomAttributes()
```

`google.obj.withCustomAttributes` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the custom_attributes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `custom_attributes` field.


### fn withEventTypes

```ts
withEventTypes()
```

`google.list.withEventTypes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the event_types field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `event_types` field.


### fn withObjectNamePrefix

```ts
withObjectNamePrefix()
```

`google.string.withObjectNamePrefix` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the object_name_prefix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `object_name_prefix` field.


### fn withPayloadFormat

```ts
withPayloadFormat()
```

`google.string.withPayloadFormat` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the payload_format field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `payload_format` field.


### fn withTopic

```ts
withTopic()
```

`google.string.withTopic` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the topic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `topic` field.
