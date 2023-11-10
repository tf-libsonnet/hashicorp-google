---
permalink: /pubsub_subscription/
---

# pubsub_subscription

`pubsub_subscription` represents the `google_pubsub_subscription` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAckDeadlineSeconds()`](#fn-withackdeadlineseconds)
* [`fn withBigqueryConfig()`](#fn-withbigqueryconfig)
* [`fn withBigqueryConfigMixin()`](#fn-withbigqueryconfigmixin)
* [`fn withCloudStorageConfig()`](#fn-withcloudstorageconfig)
* [`fn withCloudStorageConfigMixin()`](#fn-withcloudstorageconfigmixin)
* [`fn withDeadLetterPolicy()`](#fn-withdeadletterpolicy)
* [`fn withDeadLetterPolicyMixin()`](#fn-withdeadletterpolicymixin)
* [`fn withEnableExactlyOnceDelivery()`](#fn-withenableexactlyoncedelivery)
* [`fn withEnableMessageOrdering()`](#fn-withenablemessageordering)
* [`fn withExpirationPolicy()`](#fn-withexpirationpolicy)
* [`fn withExpirationPolicyMixin()`](#fn-withexpirationpolicymixin)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMessageRetentionDuration()`](#fn-withmessageretentionduration)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPushConfig()`](#fn-withpushconfig)
* [`fn withPushConfigMixin()`](#fn-withpushconfigmixin)
* [`fn withRetainAckedMessages()`](#fn-withretainackedmessages)
* [`fn withRetryPolicy()`](#fn-withretrypolicy)
* [`fn withRetryPolicyMixin()`](#fn-withretrypolicymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTopic()`](#fn-withtopic)
* [`obj bigquery_config`](#obj-bigquery_config)
  * [`fn new()`](#fn-bigquery_confignew)
* [`obj cloud_storage_config`](#obj-cloud_storage_config)
  * [`fn new()`](#fn-cloud_storage_confignew)
  * [`obj cloud_storage_config.avro_config`](#obj-cloud_storage_configavro_config)
    * [`fn new()`](#fn-cloud_storage_configavro_confignew)
* [`obj dead_letter_policy`](#obj-dead_letter_policy)
  * [`fn new()`](#fn-dead_letter_policynew)
* [`obj expiration_policy`](#obj-expiration_policy)
  * [`fn new()`](#fn-expiration_policynew)
* [`obj push_config`](#obj-push_config)
  * [`fn new()`](#fn-push_confignew)
  * [`obj push_config.no_wrapper`](#obj-push_configno_wrapper)
    * [`fn new()`](#fn-push_configno_wrappernew)
  * [`obj push_config.oidc_token`](#obj-push_configoidc_token)
    * [`fn new()`](#fn-push_configoidc_tokennew)
* [`obj retry_policy`](#obj-retry_policy)
  * [`fn new()`](#fn-retry_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.pubsub_subscription.new` injects a new `google_pubsub_subscription` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.pubsub_subscription.new('some_id')

You can get the reference to the `id` field of the created `google.pubsub_subscription` using the reference:

    $._ref.google_pubsub_subscription.some_id.get('id')

This is the same as directly entering `"${ google_pubsub_subscription.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `ack_deadline_seconds` (`number`): This value is the maximum time after a subscriber receives a message
before the subscriber should acknowledge the message. After message
delivery but before the ack deadline expires and before the message is
acknowledged, it is an outstanding message and will not be delivered
again during that time (on a best-effort basis).

For pull subscriptions, this value is used as the initial value for
the ack deadline. To override this value for a given message, call
subscriptions.modifyAckDeadline with the corresponding ackId if using
pull. The minimum custom deadline you can specify is 10 seconds. The
maximum custom deadline you can specify is 600 seconds (10 minutes).
If this parameter is 0, a default value of 10 seconds is used.

For push delivery, this value is also used to set the request timeout
for the call to the push endpoint.

If the subscriber never acknowledges the message, the Pub/Sub system
will eventually redeliver the message. When `null`, the `ack_deadline_seconds` field will be omitted from the resulting object.
  - `enable_exactly_once_delivery` (`bool`): If &#39;true&#39;, Pub/Sub provides the following guarantees for the delivery
of a message with a given value of messageId on this Subscriptions&#39;:

- The message sent to a subscriber is guaranteed not to be resent before the message&#39;s acknowledgement deadline expires.

- An acknowledged message will not be resent to a subscriber.

Note that subscribers may still receive multiple copies of a message when &#39;enable_exactly_once_delivery&#39;
is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values When `null`, the `enable_exactly_once_delivery` field will be omitted from the resulting object.
  - `enable_message_ordering` (`bool`): If &#39;true&#39;, messages published with the same orderingKey in PubsubMessage will be delivered to
the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
may be delivered in any order. When `null`, the `enable_message_ordering` field will be omitted from the resulting object.
  - `filter` (`string`): The subscription only delivers the messages that match the filter.
Pub/Sub automatically acknowledges the messages that don&#39;t match the filter. You can filter messages
by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
you can&#39;t modify the filter. When `null`, the `filter` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Subscription.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `message_retention_duration` (`string`): How long to retain unacknowledged messages in the subscription&#39;s
backlog, from the moment a message is published. If
retain_acked_messages is true, then this also configures the retention
of acknowledged messages, and thus configures how far back in time a
subscriptions.seek can be done. Defaults to 7 days. Cannot be more
than 7 days (&#39;&#34;604800s&#34;&#39;) or less than 10 minutes (&#39;&#34;600s&#34;&#39;).

A duration in seconds with up to nine fractional digits, terminated
by &#39;s&#39;. Example: &#39;&#34;600.5s&#34;&#39;. When `null`, the `message_retention_duration` field will be omitted from the resulting object.
  - `name` (`string`): Name of the subscription.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `retain_acked_messages` (`bool`): Indicates whether to retain acknowledged messages. If &#39;true&#39;, then
messages are not expunged from the subscription&#39;s backlog, even if
they are acknowledged, until they fall out of the
messageRetentionDuration window. When `null`, the `retain_acked_messages` field will be omitted from the resulting object.
  - `topic` (`string`): A reference to a Topic resource.
  - `bigquery_config` (`list[obj]`): If delivery to BigQuery is used with this subscription, this field is used to configure it.
Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
If all three are empty, then the subscriber will pull and ack messages using API methods. When `null`, the `bigquery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.bigquery_config.new](#fn-bigquery_confignew) constructor.
  - `cloud_storage_config` (`list[obj]`): If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
If all three are empty, then the subscriber will pull and ack messages using API methods. When `null`, the `cloud_storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.cloud_storage_config.new](#fn-cloud_storage_confignew) constructor.
  - `dead_letter_policy` (`list[obj]`): A policy that specifies the conditions for dead lettering messages in
this subscription. If dead_letter_policy is not set, dead lettering
is disabled.

The Cloud Pub/Sub service account associated with this subscription&#39;s
parent project (i.e.,
service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
permission to Acknowledge() messages on this subscription. When `null`, the `dead_letter_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.dead_letter_policy.new](#fn-dead_letter_policynew) constructor.
  - `expiration_policy` (`list[obj]`): A policy that specifies the conditions for this subscription&#39;s expiration.
A subscription is considered active as long as any connected subscriber
is successfully consuming messages from the subscription or is issuing
operations on the subscription. If expirationPolicy is not set, a default
policy with ttl of 31 days will be used.  If it is set but ttl is &#34;&#34;, the
resource never expires.  The minimum allowed value for expirationPolicy.ttl
is 1 day. When `null`, the `expiration_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.expiration_policy.new](#fn-expiration_policynew) constructor.
  - `push_config` (`list[obj]`): If push delivery is used with this subscription, this field is used to
configure it. An empty pushConfig signifies that the subscriber will
pull and ack messages using API methods. When `null`, the `push_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.new](#fn-push_confignew) constructor.
  - `retry_policy` (`list[obj]`): A policy that specifies how Pub/Sub retries message delivery for this subscription.

If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.retry_policy.new](#fn-retry_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.pubsub_subscription.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_subscription`
Terraform resource.

Unlike [google.pubsub_subscription.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `ack_deadline_seconds` (`number`): This value is the maximum time after a subscriber receives a message
before the subscriber should acknowledge the message. After message
delivery but before the ack deadline expires and before the message is
acknowledged, it is an outstanding message and will not be delivered
again during that time (on a best-effort basis).

For pull subscriptions, this value is used as the initial value for
the ack deadline. To override this value for a given message, call
subscriptions.modifyAckDeadline with the corresponding ackId if using
pull. The minimum custom deadline you can specify is 10 seconds. The
maximum custom deadline you can specify is 600 seconds (10 minutes).
If this parameter is 0, a default value of 10 seconds is used.

For push delivery, this value is also used to set the request timeout
for the call to the push endpoint.

If the subscriber never acknowledges the message, the Pub/Sub system
will eventually redeliver the message. When `null`, the `ack_deadline_seconds` field will be omitted from the resulting object.
  - `enable_exactly_once_delivery` (`bool`): If &#39;true&#39;, Pub/Sub provides the following guarantees for the delivery
of a message with a given value of messageId on this Subscriptions&#39;:

- The message sent to a subscriber is guaranteed not to be resent before the message&#39;s acknowledgement deadline expires.

- An acknowledged message will not be resent to a subscriber.

Note that subscribers may still receive multiple copies of a message when &#39;enable_exactly_once_delivery&#39;
is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values When `null`, the `enable_exactly_once_delivery` field will be omitted from the resulting object.
  - `enable_message_ordering` (`bool`): If &#39;true&#39;, messages published with the same orderingKey in PubsubMessage will be delivered to
the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
may be delivered in any order. When `null`, the `enable_message_ordering` field will be omitted from the resulting object.
  - `filter` (`string`): The subscription only delivers the messages that match the filter.
Pub/Sub automatically acknowledges the messages that don&#39;t match the filter. You can filter messages
by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
you can&#39;t modify the filter. When `null`, the `filter` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Subscription.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `message_retention_duration` (`string`): How long to retain unacknowledged messages in the subscription&#39;s
backlog, from the moment a message is published. If
retain_acked_messages is true, then this also configures the retention
of acknowledged messages, and thus configures how far back in time a
subscriptions.seek can be done. Defaults to 7 days. Cannot be more
than 7 days (&#39;&#34;604800s&#34;&#39;) or less than 10 minutes (&#39;&#34;600s&#34;&#39;).

A duration in seconds with up to nine fractional digits, terminated
by &#39;s&#39;. Example: &#39;&#34;600.5s&#34;&#39;. When `null`, the `message_retention_duration` field will be omitted from the resulting object.
  - `name` (`string`): Name of the subscription.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `retain_acked_messages` (`bool`): Indicates whether to retain acknowledged messages. If &#39;true&#39;, then
messages are not expunged from the subscription&#39;s backlog, even if
they are acknowledged, until they fall out of the
messageRetentionDuration window. When `null`, the `retain_acked_messages` field will be omitted from the resulting object.
  - `topic` (`string`): A reference to a Topic resource.
  - `bigquery_config` (`list[obj]`): If delivery to BigQuery is used with this subscription, this field is used to configure it.
Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
If all three are empty, then the subscriber will pull and ack messages using API methods. When `null`, the `bigquery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.bigquery_config.new](#fn-bigquery_confignew) constructor.
  - `cloud_storage_config` (`list[obj]`): If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
If all three are empty, then the subscriber will pull and ack messages using API methods. When `null`, the `cloud_storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.cloud_storage_config.new](#fn-cloud_storage_confignew) constructor.
  - `dead_letter_policy` (`list[obj]`): A policy that specifies the conditions for dead lettering messages in
this subscription. If dead_letter_policy is not set, dead lettering
is disabled.

The Cloud Pub/Sub service account associated with this subscription&#39;s
parent project (i.e.,
service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
permission to Acknowledge() messages on this subscription. When `null`, the `dead_letter_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.dead_letter_policy.new](#fn-dead_letter_policynew) constructor.
  - `expiration_policy` (`list[obj]`): A policy that specifies the conditions for this subscription&#39;s expiration.
A subscription is considered active as long as any connected subscriber
is successfully consuming messages from the subscription or is issuing
operations on the subscription. If expirationPolicy is not set, a default
policy with ttl of 31 days will be used.  If it is set but ttl is &#34;&#34;, the
resource never expires.  The minimum allowed value for expirationPolicy.ttl
is 1 day. When `null`, the `expiration_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.expiration_policy.new](#fn-expiration_policynew) constructor.
  - `push_config` (`list[obj]`): If push delivery is used with this subscription, this field is used to
configure it. An empty pushConfig signifies that the subscriber will
pull and ack messages using API methods. When `null`, the `push_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.new](#fn-push_confignew) constructor.
  - `retry_policy` (`list[obj]`): A policy that specifies how Pub/Sub retries message delivery for this subscription.

If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.retry_policy.new](#fn-retry_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_subscription` resource into the root Terraform configuration.


### fn withAckDeadlineSeconds

```ts
withAckDeadlineSeconds()
```

`google.number.withAckDeadlineSeconds` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the ack_deadline_seconds field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `ack_deadline_seconds` field.


### fn withBigqueryConfig

```ts
withBigqueryConfig()
```

`google.list[obj].withBigqueryConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigquery_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBigqueryConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigquery_config` field.


### fn withBigqueryConfigMixin

```ts
withBigqueryConfigMixin()
```

`google.list[obj].withBigqueryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigquery_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBigqueryConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigquery_config` field.


### fn withCloudStorageConfig

```ts
withCloudStorageConfig()
```

`google.list[obj].withCloudStorageConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_storage_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloudStorageConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_storage_config` field.


### fn withCloudStorageConfigMixin

```ts
withCloudStorageConfigMixin()
```

`google.list[obj].withCloudStorageConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_storage_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCloudStorageConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_storage_config` field.


### fn withDeadLetterPolicy

```ts
withDeadLetterPolicy()
```

`google.list[obj].withDeadLetterPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dead_letter_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDeadLetterPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dead_letter_policy` field.


### fn withDeadLetterPolicyMixin

```ts
withDeadLetterPolicyMixin()
```

`google.list[obj].withDeadLetterPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dead_letter_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDeadLetterPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dead_letter_policy` field.


### fn withEnableExactlyOnceDelivery

```ts
withEnableExactlyOnceDelivery()
```

`google.bool.withEnableExactlyOnceDelivery` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_exactly_once_delivery field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_exactly_once_delivery` field.


### fn withEnableMessageOrdering

```ts
withEnableMessageOrdering()
```

`google.bool.withEnableMessageOrdering` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_message_ordering field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_message_ordering` field.


### fn withExpirationPolicy

```ts
withExpirationPolicy()
```

`google.list[obj].withExpirationPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the expiration_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExpirationPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `expiration_policy` field.


### fn withExpirationPolicyMixin

```ts
withExpirationPolicyMixin()
```

`google.list[obj].withExpirationPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the expiration_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExpirationPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `expiration_policy` field.


### fn withFilter

```ts
withFilter()
```

`google.string.withFilter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filter` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMessageRetentionDuration

```ts
withMessageRetentionDuration()
```

`google.string.withMessageRetentionDuration` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the message_retention_duration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `message_retention_duration` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPushConfig

```ts
withPushConfig()
```

`google.list[obj].withPushConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the push_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPushConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `push_config` field.


### fn withPushConfigMixin

```ts
withPushConfigMixin()
```

`google.list[obj].withPushConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the push_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPushConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `push_config` field.


### fn withRetainAckedMessages

```ts
withRetainAckedMessages()
```

`google.bool.withRetainAckedMessages` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the retain_acked_messages field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `retain_acked_messages` field.


### fn withRetryPolicy

```ts
withRetryPolicy()
```

`google.list[obj].withRetryPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retry_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRetryPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retry_policy` field.


### fn withRetryPolicyMixin

```ts
withRetryPolicyMixin()
```

`google.list[obj].withRetryPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retry_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRetryPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retry_policy` field.


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


### fn withTopic

```ts
withTopic()
```

`google.string.withTopic` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the topic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `topic` field.


## obj bigquery_config



### fn bigquery_config.new

```ts
new()
```


`google.pubsub_subscription.bigquery_config.new` constructs a new object with attributes and blocks configured for the `bigquery_config`
Terraform sub block.



**Args**:
  - `drop_unknown_fields` (`bool`): When true and useTopicSchema is true, any fields that are a part of the topic schema that are not part of the BigQuery table schema are dropped when writing to BigQuery.
Otherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription&#39;s backlog. When `null`, the `drop_unknown_fields` field will be omitted from the resulting object.
  - `table` (`string`): The name of the table to which to write data, of the form {projectId}:{datasetId}.{tableId}
  - `use_topic_schema` (`bool`): When true, use the topic&#39;s schema as the columns to write to in BigQuery, if it exists. When `null`, the `use_topic_schema` field will be omitted from the resulting object.
  - `write_metadata` (`bool`): When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.
The subscription name, messageId, and publishTime fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column. When `null`, the `write_metadata` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `bigquery_config` sub block.


## obj cloud_storage_config



### fn cloud_storage_config.new

```ts
new()
```


`google.pubsub_subscription.cloud_storage_config.new` constructs a new object with attributes and blocks configured for the `cloud_storage_config`
Terraform sub block.



**Args**:
  - `bucket` (`string`): User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like &#34;gs://&#34;.
  - `filename_prefix` (`string`): User-provided prefix for Cloud Storage filename. When `null`, the `filename_prefix` field will be omitted from the resulting object.
  - `filename_suffix` (`string`): User-provided suffix for Cloud Storage filename. Must not end in &#34;/&#34;. When `null`, the `filename_suffix` field will be omitted from the resulting object.
  - `max_bytes` (`number`): The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
The maxBytes limit may be exceeded in cases where messages are larger than the limit. When `null`, the `max_bytes` field will be omitted from the resulting object.
  - `max_duration` (`string`): The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
May not exceed the subscription&#39;s acknowledgement deadline.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `max_duration` field will be omitted from the resulting object.
  - `avro_config` (`list[obj]`): If set, message data will be written to Cloud Storage in Avro format. When `null`, the `avro_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.cloud_storage_config.avro_config.new](#fn-cloud_storage_configavro_confignew) constructor.

**Returns**:
  - An attribute object that represents the `cloud_storage_config` sub block.


## obj cloud_storage_config.avro_config



### fn cloud_storage_config.avro_config.new

```ts
new()
```


`google.pubsub_subscription.cloud_storage_config.avro_config.new` constructs a new object with attributes and blocks configured for the `avro_config`
Terraform sub block.



**Args**:
  - `write_metadata` (`bool`): When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output. When `null`, the `write_metadata` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `avro_config` sub block.


## obj dead_letter_policy



### fn dead_letter_policy.new

```ts
new()
```


`google.pubsub_subscription.dead_letter_policy.new` constructs a new object with attributes and blocks configured for the `dead_letter_policy`
Terraform sub block.



**Args**:
  - `dead_letter_topic` (`string`): The name of the topic to which dead letter messages should be published.
Format is &#39;projects/{project}/topics/{topic}&#39;.

The Cloud Pub/Sub service account associated with the enclosing subscription&#39;s
parent project (i.e.,
service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
permission to Publish() to this topic.

The operation will fail if the topic does not exist.
Users should ensure that there is a subscription attached to this topic
since messages published to a topic with no subscriptions are lost. When `null`, the `dead_letter_topic` field will be omitted from the resulting object.
  - `max_delivery_attempts` (`number`): The maximum number of delivery attempts for any message. The value must be
between 5 and 100.

The number of delivery attempts is defined as 1 &#43; (the sum of number of
NACKs and number of times the acknowledgement deadline has been exceeded for the message).

A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that
client libraries may automatically extend ack_deadlines.

This field will be honored on a best effort basis.

If this parameter is 0, a default value of 5 is used. When `null`, the `max_delivery_attempts` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `dead_letter_policy` sub block.


## obj expiration_policy



### fn expiration_policy.new

```ts
new()
```


`google.pubsub_subscription.expiration_policy.new` constructs a new object with attributes and blocks configured for the `expiration_policy`
Terraform sub block.



**Args**:
  - `ttl` (`string`): Specifies the &#34;time-to-live&#34; duration for an associated resource. The
resource expires if it is not active for a period of ttl.
If ttl is set to &#34;&#34;, the associated resource never expires.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;.
Example - &#34;3.5s&#34;.

**Returns**:
  - An attribute object that represents the `expiration_policy` sub block.


## obj push_config



### fn push_config.new

```ts
new()
```


`google.pubsub_subscription.push_config.new` constructs a new object with attributes and blocks configured for the `push_config`
Terraform sub block.



**Args**:
  - `attributes` (`obj`): Endpoint configuration attributes.

Every endpoint has a set of API supported attributes that can
be used to control different aspects of the message delivery.

The currently supported attribute is x-goog-version, which you
can use to change the format of the pushed message. This
attribute indicates the version of the data expected by
the endpoint. This controls the shape of the pushed message
(i.e., its fields and metadata). The endpoint version is
based on the version of the Pub/Sub API.

If not present during the subscriptions.create call,
it will default to the version of the API used to make
such call. If not present during a subscriptions.modifyPushConfig
call, its value will not be changed. subscriptions.get
calls will always return a valid version, even if the
subscription was created without this attribute.

The possible values for this attribute are:

- v1beta1: uses the push format defined in the v1beta1 Pub/Sub API.
- v1 or v1beta2: uses the push format defined in the v1 Pub/Sub API. When `null`, the `attributes` field will be omitted from the resulting object.
  - `push_endpoint` (`string`): A URL locating the endpoint to which messages should be pushed.
For example, a Webhook endpoint might use
&#34;https://example.com/push&#34;.
  - `no_wrapper` (`list[obj]`): When set, the payload to the push endpoint is not wrapped.Sets the
&#39;data&#39; field as the HTTP body for delivery. When `null`, the `no_wrapper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.no_wrapper.new](#fn-push_configno_wrappernew) constructor.
  - `oidc_token` (`list[obj]`): If specified, Pub/Sub will generate and attach an OIDC JWT token as
an Authorization header in the HTTP request for every pushed message. When `null`, the `oidc_token` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.oidc_token.new](#fn-push_configoidc_tokennew) constructor.

**Returns**:
  - An attribute object that represents the `push_config` sub block.


## obj push_config.no_wrapper



### fn push_config.no_wrapper.new

```ts
new()
```


`google.pubsub_subscription.push_config.no_wrapper.new` constructs a new object with attributes and blocks configured for the `no_wrapper`
Terraform sub block.



**Args**:
  - `write_metadata` (`bool`): When true, writes the Pub/Sub message metadata to
&#39;x-goog-pubsub-&lt;KEY&gt;:&lt;VAL&gt;&#39; headers of the HTTP request. Writes the
Pub/Sub message attributes to &#39;&lt;KEY&gt;:&lt;VAL&gt;&#39; headers of the HTTP request.

**Returns**:
  - An attribute object that represents the `no_wrapper` sub block.


## obj push_config.oidc_token



### fn push_config.oidc_token.new

```ts
new()
```


`google.pubsub_subscription.push_config.oidc_token.new` constructs a new object with attributes and blocks configured for the `oidc_token`
Terraform sub block.



**Args**:
  - `audience` (`string`): Audience to be used when generating OIDC token. The audience claim
identifies the recipients that the JWT is intended for. The audience
value is a single case-sensitive string. Having multiple values (array)
for the audience field is not supported. More info about the OIDC JWT
token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3
Note: if not specified, the Push endpoint URL will be used. When `null`, the `audience` field will be omitted from the resulting object.
  - `service_account_email` (`string`): Service account email to be used for generating the OIDC token.
The caller (for subscriptions.create, subscriptions.patch, and
subscriptions.modifyPushConfig RPCs) must have the
iam.serviceAccounts.actAs permission for the service account.

**Returns**:
  - An attribute object that represents the `oidc_token` sub block.


## obj retry_policy



### fn retry_policy.new

```ts
new()
```


`google.pubsub_subscription.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `maximum_backoff` (`string`): The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `maximum_backoff` field will be omitted from the resulting object.
  - `minimum_backoff` (`string`): The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `minimum_backoff` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.pubsub_subscription.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
