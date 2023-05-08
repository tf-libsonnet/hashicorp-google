local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='pubsub_subscription', url='', help='`pubsub_subscription` represents the `google_pubsub_subscription` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigquery_config:: {
    '#new':: d.fn(help='\n`google.pubsub_subscription.bigquery_config.new` constructs a new object with attributes and blocks configured for the `bigquery_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `drop_unknown_fields` (`bool`): When true and useTopicSchema is true, any fields that are a part of the topic schema that are not part of the BigQuery table schema are dropped when writing to BigQuery.\nOtherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription&#39;s backlog. When `null`, the `drop_unknown_fields` field will be omitted from the resulting object.\n  - `table` (`string`): The name of the table to which to write data, of the form {projectId}:{datasetId}.{tableId}\n  - `use_topic_schema` (`bool`): When true, use the topic&#39;s schema as the columns to write to in BigQuery, if it exists. When `null`, the `use_topic_schema` field will be omitted from the resulting object.\n  - `write_metadata` (`bool`): When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.\nThe subscription name, messageId, and publishTime fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column. When `null`, the `write_metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `bigquery_config` sub block.\n', args=[]),
    new(
      table,
      drop_unknown_fields=null,
      use_topic_schema=null,
      write_metadata=null
    ):: std.prune(a={
      drop_unknown_fields: drop_unknown_fields,
      table: table,
      use_topic_schema: use_topic_schema,
      write_metadata: write_metadata,
    }),
  },
  dead_letter_policy:: {
    '#new':: d.fn(help='\n`google.pubsub_subscription.dead_letter_policy.new` constructs a new object with attributes and blocks configured for the `dead_letter_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dead_letter_topic` (`string`): The name of the topic to which dead letter messages should be published.\nFormat is &#39;projects/{project}/topics/{topic}&#39;.\n\nThe Cloud Pub/Sub service account associated with the enclosing subscription&#39;s\nparent project (i.e.,\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have\npermission to Publish() to this topic.\n\nThe operation will fail if the topic does not exist.\nUsers should ensure that there is a subscription attached to this topic\nsince messages published to a topic with no subscriptions are lost. When `null`, the `dead_letter_topic` field will be omitted from the resulting object.\n  - `max_delivery_attempts` (`number`): The maximum number of delivery attempts for any message. The value must be\nbetween 5 and 100.\n\nThe number of delivery attempts is defined as 1 &#43; (the sum of number of\nNACKs and number of times the acknowledgement deadline has been exceeded for the message).\n\nA NACK is any call to ModifyAckDeadline with a 0 deadline. Note that\nclient libraries may automatically extend ack_deadlines.\n\nThis field will be honored on a best effort basis.\n\nIf this parameter is 0, a default value of 5 is used. When `null`, the `max_delivery_attempts` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dead_letter_policy` sub block.\n', args=[]),
    new(
      dead_letter_topic=null,
      max_delivery_attempts=null
    ):: std.prune(a={
      dead_letter_topic: dead_letter_topic,
      max_delivery_attempts: max_delivery_attempts,
    }),
  },
  expiration_policy:: {
    '#new':: d.fn(help='\n`google.pubsub_subscription.expiration_policy.new` constructs a new object with attributes and blocks configured for the `expiration_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ttl` (`string`): Specifies the &#34;time-to-live&#34; duration for an associated resource. The\nresource expires if it is not active for a period of ttl.\nIf ttl is set to &#34;&#34;, the associated resource never expires.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;.\nExample - &#34;3.5s&#34;.\n\n**Returns**:\n  - An attribute object that represents the `expiration_policy` sub block.\n', args=[]),
    new(
      ttl
    ):: std.prune(a={
      ttl: ttl,
    }),
  },
  '#new':: d.fn(help="\n`google.pubsub_subscription.new` injects a new `google_pubsub_subscription` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.pubsub_subscription.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.pubsub_subscription` using the reference:\n\n    $._ref.google_pubsub_subscription.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_pubsub_subscription.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `ack_deadline_seconds` (`number`): This value is the maximum time after a subscriber receives a message\nbefore the subscriber should acknowledge the message. After message\ndelivery but before the ack deadline expires and before the message is\nacknowledged, it is an outstanding message and will not be delivered\nagain during that time (on a best-effort basis).\n\nFor pull subscriptions, this value is used as the initial value for\nthe ack deadline. To override this value for a given message, call\nsubscriptions.modifyAckDeadline with the corresponding ackId if using\npull. The minimum custom deadline you can specify is 10 seconds. The\nmaximum custom deadline you can specify is 600 seconds (10 minutes).\nIf this parameter is 0, a default value of 10 seconds is used.\n\nFor push delivery, this value is also used to set the request timeout\nfor the call to the push endpoint.\n\nIf the subscriber never acknowledges the message, the Pub/Sub system\nwill eventually redeliver the message. When `null`, the `ack_deadline_seconds` field will be omitted from the resulting object.\n  - `enable_exactly_once_delivery` (`bool`): If \u0026#39;true\u0026#39;, Pub/Sub provides the following guarantees for the delivery\nof a message with a given value of messageId on this Subscriptions\u0026#39;:\n\n- The message sent to a subscriber is guaranteed not to be resent before the message\u0026#39;s acknowledgement deadline expires.\n\n- An acknowledged message will not be resent to a subscriber.\n\nNote that subscribers may still receive multiple copies of a message when \u0026#39;enable_exactly_once_delivery\u0026#39;\nis true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values When `null`, the `enable_exactly_once_delivery` field will be omitted from the resulting object.\n  - `enable_message_ordering` (`bool`): If \u0026#39;true\u0026#39;, messages published with the same orderingKey in PubsubMessage will be delivered to\nthe subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they\nmay be delivered in any order. When `null`, the `enable_message_ordering` field will be omitted from the resulting object.\n  - `filter` (`string`): The subscription only delivers the messages that match the filter.\nPub/Sub automatically acknowledges the messages that don\u0026#39;t match the filter. You can filter messages\nby their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,\nyou can\u0026#39;t modify the filter. When `null`, the `filter` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Subscription. When `null`, the `labels` field will be omitted from the resulting object.\n  - `message_retention_duration` (`string`): How long to retain unacknowledged messages in the subscription\u0026#39;s\nbacklog, from the moment a message is published. If\nretain_acked_messages is true, then this also configures the retention\nof acknowledged messages, and thus configures how far back in time a\nsubscriptions.seek can be done. Defaults to 7 days. Cannot be more\nthan 7 days (\u0026#39;\u0026#34;604800s\u0026#34;\u0026#39;) or less than 10 minutes (\u0026#39;\u0026#34;600s\u0026#34;\u0026#39;).\n\nA duration in seconds with up to nine fractional digits, terminated\nby \u0026#39;s\u0026#39;. Example: \u0026#39;\u0026#34;600.5s\u0026#34;\u0026#39;. When `null`, the `message_retention_duration` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the subscription.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `retain_acked_messages` (`bool`): Indicates whether to retain acknowledged messages. If \u0026#39;true\u0026#39;, then\nmessages are not expunged from the subscription\u0026#39;s backlog, even if\nthey are acknowledged, until they fall out of the\nmessageRetentionDuration window. When `null`, the `retain_acked_messages` field will be omitted from the resulting object.\n  - `topic` (`string`): A reference to a Topic resource.\n  - `bigquery_config` (`list[obj]`): If delivery to BigQuery is used with this subscription, this field is used to configure it.\nEither pushConfig or bigQueryConfig can be set, but not both.\nIf both are empty, then the subscriber will pull and ack messages using API methods. When `null`, the `bigquery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.bigquery_config.new](#fn-bigquery_confignew) constructor.\n  - `dead_letter_policy` (`list[obj]`): A policy that specifies the conditions for dead lettering messages in\nthis subscription. If dead_letter_policy is not set, dead lettering\nis disabled.\n\nThe Cloud Pub/Sub service account associated with this subscription\u0026#39;s\nparent project (i.e.,\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have\npermission to Acknowledge() messages on this subscription. When `null`, the `dead_letter_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.dead_letter_policy.new](#fn-dead_letter_policynew) constructor.\n  - `expiration_policy` (`list[obj]`): A policy that specifies the conditions for this subscription\u0026#39;s expiration.\nA subscription is considered active as long as any connected subscriber\nis successfully consuming messages from the subscription or is issuing\noperations on the subscription. If expirationPolicy is not set, a default\npolicy with ttl of 31 days will be used.  If it is set but ttl is \u0026#34;\u0026#34;, the\nresource never expires.  The minimum allowed value for expirationPolicy.ttl\nis 1 day. When `null`, the `expiration_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.expiration_policy.new](#fn-expiration_policynew) constructor.\n  - `push_config` (`list[obj]`): If push delivery is used with this subscription, this field is used to\nconfigure it. An empty pushConfig signifies that the subscriber will\npull and ack messages using API methods. When `null`, the `push_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.new](#fn-push_confignew) constructor.\n  - `retry_policy` (`list[obj]`): A policy that specifies how Pub/Sub retries message delivery for this subscription.\n\nIf not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.\nRetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.retry_policy.new](#fn-retry_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    topic,
    ack_deadline_seconds=null,
    bigquery_config=null,
    dead_letter_policy=null,
    enable_exactly_once_delivery=null,
    enable_message_ordering=null,
    expiration_policy=null,
    filter=null,
    labels=null,
    message_retention_duration=null,
    project=null,
    push_config=null,
    retain_acked_messages=null,
    retry_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_subscription',
    label=resourceLabel,
    attrs=self.newAttrs(
      ack_deadline_seconds=ack_deadline_seconds,
      bigquery_config=bigquery_config,
      dead_letter_policy=dead_letter_policy,
      enable_exactly_once_delivery=enable_exactly_once_delivery,
      enable_message_ordering=enable_message_ordering,
      expiration_policy=expiration_policy,
      filter=filter,
      labels=labels,
      message_retention_duration=message_retention_duration,
      name=name,
      project=project,
      push_config=push_config,
      retain_acked_messages=retain_acked_messages,
      retry_policy=retry_policy,
      timeouts=timeouts,
      topic=topic
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.pubsub_subscription.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_subscription`\nTerraform resource.\n\nUnlike [google.pubsub_subscription.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `ack_deadline_seconds` (`number`): This value is the maximum time after a subscriber receives a message\nbefore the subscriber should acknowledge the message. After message\ndelivery but before the ack deadline expires and before the message is\nacknowledged, it is an outstanding message and will not be delivered\nagain during that time (on a best-effort basis).\n\nFor pull subscriptions, this value is used as the initial value for\nthe ack deadline. To override this value for a given message, call\nsubscriptions.modifyAckDeadline with the corresponding ackId if using\npull. The minimum custom deadline you can specify is 10 seconds. The\nmaximum custom deadline you can specify is 600 seconds (10 minutes).\nIf this parameter is 0, a default value of 10 seconds is used.\n\nFor push delivery, this value is also used to set the request timeout\nfor the call to the push endpoint.\n\nIf the subscriber never acknowledges the message, the Pub/Sub system\nwill eventually redeliver the message. When `null`, the `ack_deadline_seconds` field will be omitted from the resulting object.\n  - `enable_exactly_once_delivery` (`bool`): If &#39;true&#39;, Pub/Sub provides the following guarantees for the delivery\nof a message with a given value of messageId on this Subscriptions&#39;:\n\n- The message sent to a subscriber is guaranteed not to be resent before the message&#39;s acknowledgement deadline expires.\n\n- An acknowledged message will not be resent to a subscriber.\n\nNote that subscribers may still receive multiple copies of a message when &#39;enable_exactly_once_delivery&#39;\nis true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values When `null`, the `enable_exactly_once_delivery` field will be omitted from the resulting object.\n  - `enable_message_ordering` (`bool`): If &#39;true&#39;, messages published with the same orderingKey in PubsubMessage will be delivered to\nthe subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they\nmay be delivered in any order. When `null`, the `enable_message_ordering` field will be omitted from the resulting object.\n  - `filter` (`string`): The subscription only delivers the messages that match the filter.\nPub/Sub automatically acknowledges the messages that don&#39;t match the filter. You can filter messages\nby their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,\nyou can&#39;t modify the filter. When `null`, the `filter` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Subscription. When `null`, the `labels` field will be omitted from the resulting object.\n  - `message_retention_duration` (`string`): How long to retain unacknowledged messages in the subscription&#39;s\nbacklog, from the moment a message is published. If\nretain_acked_messages is true, then this also configures the retention\nof acknowledged messages, and thus configures how far back in time a\nsubscriptions.seek can be done. Defaults to 7 days. Cannot be more\nthan 7 days (&#39;&#34;604800s&#34;&#39;) or less than 10 minutes (&#39;&#34;600s&#34;&#39;).\n\nA duration in seconds with up to nine fractional digits, terminated\nby &#39;s&#39;. Example: &#39;&#34;600.5s&#34;&#39;. When `null`, the `message_retention_duration` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the subscription.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `retain_acked_messages` (`bool`): Indicates whether to retain acknowledged messages. If &#39;true&#39;, then\nmessages are not expunged from the subscription&#39;s backlog, even if\nthey are acknowledged, until they fall out of the\nmessageRetentionDuration window. When `null`, the `retain_acked_messages` field will be omitted from the resulting object.\n  - `topic` (`string`): A reference to a Topic resource.\n  - `bigquery_config` (`list[obj]`): If delivery to BigQuery is used with this subscription, this field is used to configure it.\nEither pushConfig or bigQueryConfig can be set, but not both.\nIf both are empty, then the subscriber will pull and ack messages using API methods. When `null`, the `bigquery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.bigquery_config.new](#fn-bigquery_confignew) constructor.\n  - `dead_letter_policy` (`list[obj]`): A policy that specifies the conditions for dead lettering messages in\nthis subscription. If dead_letter_policy is not set, dead lettering\nis disabled.\n\nThe Cloud Pub/Sub service account associated with this subscription&#39;s\nparent project (i.e.,\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have\npermission to Acknowledge() messages on this subscription. When `null`, the `dead_letter_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.dead_letter_policy.new](#fn-dead_letter_policynew) constructor.\n  - `expiration_policy` (`list[obj]`): A policy that specifies the conditions for this subscription&#39;s expiration.\nA subscription is considered active as long as any connected subscriber\nis successfully consuming messages from the subscription or is issuing\noperations on the subscription. If expirationPolicy is not set, a default\npolicy with ttl of 31 days will be used.  If it is set but ttl is &#34;&#34;, the\nresource never expires.  The minimum allowed value for expirationPolicy.ttl\nis 1 day. When `null`, the `expiration_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.expiration_policy.new](#fn-expiration_policynew) constructor.\n  - `push_config` (`list[obj]`): If push delivery is used with this subscription, this field is used to\nconfigure it. An empty pushConfig signifies that the subscriber will\npull and ack messages using API methods. When `null`, the `push_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.new](#fn-push_confignew) constructor.\n  - `retry_policy` (`list[obj]`): A policy that specifies how Pub/Sub retries message delivery for this subscription.\n\nIf not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.\nRetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.retry_policy.new](#fn-retry_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_subscription` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    topic,
    ack_deadline_seconds=null,
    bigquery_config=null,
    dead_letter_policy=null,
    enable_exactly_once_delivery=null,
    enable_message_ordering=null,
    expiration_policy=null,
    filter=null,
    labels=null,
    message_retention_duration=null,
    project=null,
    push_config=null,
    retain_acked_messages=null,
    retry_policy=null,
    timeouts=null
  ):: std.prune(a={
    ack_deadline_seconds: ack_deadline_seconds,
    bigquery_config: bigquery_config,
    dead_letter_policy: dead_letter_policy,
    enable_exactly_once_delivery: enable_exactly_once_delivery,
    enable_message_ordering: enable_message_ordering,
    expiration_policy: expiration_policy,
    filter: filter,
    labels: labels,
    message_retention_duration: message_retention_duration,
    name: name,
    project: project,
    push_config: push_config,
    retain_acked_messages: retain_acked_messages,
    retry_policy: retry_policy,
    timeouts: timeouts,
    topic: topic,
  }),
  push_config:: {
    '#new':: d.fn(help='\n`google.pubsub_subscription.push_config.new` constructs a new object with attributes and blocks configured for the `push_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `attributes` (`obj`): Endpoint configuration attributes.\n\nEvery endpoint has a set of API supported attributes that can\nbe used to control different aspects of the message delivery.\n\nThe currently supported attribute is x-goog-version, which you\ncan use to change the format of the pushed message. This\nattribute indicates the version of the data expected by\nthe endpoint. This controls the shape of the pushed message\n(i.e., its fields and metadata). The endpoint version is\nbased on the version of the Pub/Sub API.\n\nIf not present during the subscriptions.create call,\nit will default to the version of the API used to make\nsuch call. If not present during a subscriptions.modifyPushConfig\ncall, its value will not be changed. subscriptions.get\ncalls will always return a valid version, even if the\nsubscription was created without this attribute.\n\nThe possible values for this attribute are:\n\n- v1beta1: uses the push format defined in the v1beta1 Pub/Sub API.\n- v1 or v1beta2: uses the push format defined in the v1 Pub/Sub API. When `null`, the `attributes` field will be omitted from the resulting object.\n  - `push_endpoint` (`string`): A URL locating the endpoint to which messages should be pushed.\nFor example, a Webhook endpoint might use\n&#34;https://example.com/push&#34;.\n  - `oidc_token` (`list[obj]`): If specified, Pub/Sub will generate and attach an OIDC JWT token as\nan Authorization header in the HTTP request for every pushed message. When `null`, the `oidc_token` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_subscription.push_config.oidc_token.new](#fn-push_configoidc_tokennew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `push_config` sub block.\n', args=[]),
    new(
      push_endpoint,
      attributes=null,
      oidc_token=null
    ):: std.prune(a={
      attributes: attributes,
      oidc_token: oidc_token,
      push_endpoint: push_endpoint,
    }),
    oidc_token:: {
      '#new':: d.fn(help='\n`google.pubsub_subscription.push_config.oidc_token.new` constructs a new object with attributes and blocks configured for the `oidc_token`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audience` (`string`): Audience to be used when generating OIDC token. The audience claim\nidentifies the recipients that the JWT is intended for. The audience\nvalue is a single case-sensitive string. Having multiple values (array)\nfor the audience field is not supported. More info about the OIDC JWT\ntoken audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3\nNote: if not specified, the Push endpoint URL will be used. When `null`, the `audience` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): Service account email to be used for generating the OIDC token.\nThe caller (for subscriptions.create, subscriptions.patch, and\nsubscriptions.modifyPushConfig RPCs) must have the\niam.serviceAccounts.actAs permission for the service account.\n\n**Returns**:\n  - An attribute object that represents the `oidc_token` sub block.\n', args=[]),
      new(
        service_account_email,
        audience=null
      ):: std.prune(a={
        audience: audience,
        service_account_email: service_account_email,
      }),
    },
  },
  retry_policy:: {
    '#new':: d.fn(help='\n`google.pubsub_subscription.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `maximum_backoff` (`string`): The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `maximum_backoff` field will be omitted from the resulting object.\n  - `minimum_backoff` (`string`): The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `minimum_backoff` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retry_policy` sub block.\n', args=[]),
    new(
      maximum_backoff=null,
      minimum_backoff=null
    ):: std.prune(a={
      maximum_backoff: maximum_backoff,
      minimum_backoff: minimum_backoff,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.pubsub_subscription.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAckDeadlineSeconds':: d.fn(help='`google.number.withAckDeadlineSeconds` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the ack_deadline_seconds field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `ack_deadline_seconds` field.\n', args=[]),
  withAckDeadlineSeconds(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          ack_deadline_seconds: value,
        },
      },
    },
  },
  '#withBigqueryConfig':: d.fn(help='`google.list[obj].withBigqueryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBigqueryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_config` field.\n', args=[]),
  withBigqueryConfig(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          bigquery_config: value,
        },
      },
    },
  },
  '#withBigqueryConfigMixin':: d.fn(help='`google.list[obj].withBigqueryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBigqueryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_config` field.\n', args=[]),
  withBigqueryConfigMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          bigquery_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeadLetterPolicy':: d.fn(help='`google.list[obj].withDeadLetterPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dead_letter_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDeadLetterPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dead_letter_policy` field.\n', args=[]),
  withDeadLetterPolicy(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          dead_letter_policy: value,
        },
      },
    },
  },
  '#withDeadLetterPolicyMixin':: d.fn(help='`google.list[obj].withDeadLetterPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dead_letter_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDeadLetterPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dead_letter_policy` field.\n', args=[]),
  withDeadLetterPolicyMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          dead_letter_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnableExactlyOnceDelivery':: d.fn(help='`google.bool.withEnableExactlyOnceDelivery` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_exactly_once_delivery field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_exactly_once_delivery` field.\n', args=[]),
  withEnableExactlyOnceDelivery(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          enable_exactly_once_delivery: value,
        },
      },
    },
  },
  '#withEnableMessageOrdering':: d.fn(help='`google.bool.withEnableMessageOrdering` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_message_ordering field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_message_ordering` field.\n', args=[]),
  withEnableMessageOrdering(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          enable_message_ordering: value,
        },
      },
    },
  },
  '#withExpirationPolicy':: d.fn(help='`google.list[obj].withExpirationPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the expiration_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExpirationPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `expiration_policy` field.\n', args=[]),
  withExpirationPolicy(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          expiration_policy: value,
        },
      },
    },
  },
  '#withExpirationPolicyMixin':: d.fn(help='`google.list[obj].withExpirationPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the expiration_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExpirationPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `expiration_policy` field.\n', args=[]),
  withExpirationPolicyMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          expiration_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMessageRetentionDuration':: d.fn(help='`google.string.withMessageRetentionDuration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the message_retention_duration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `message_retention_duration` field.\n', args=[]),
  withMessageRetentionDuration(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          message_retention_duration: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPushConfig':: d.fn(help='`google.list[obj].withPushConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the push_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPushConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `push_config` field.\n', args=[]),
  withPushConfig(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          push_config: value,
        },
      },
    },
  },
  '#withPushConfigMixin':: d.fn(help='`google.list[obj].withPushConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the push_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPushConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `push_config` field.\n', args=[]),
  withPushConfigMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          push_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRetainAckedMessages':: d.fn(help='`google.bool.withRetainAckedMessages` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the retain_acked_messages field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `retain_acked_messages` field.\n', args=[]),
  withRetainAckedMessages(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          retain_acked_messages: value,
        },
      },
    },
  },
  '#withRetryPolicy':: d.fn(help='`google.list[obj].withRetryPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retry_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRetryPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retry_policy` field.\n', args=[]),
  withRetryPolicy(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          retry_policy: value,
        },
      },
    },
  },
  '#withRetryPolicyMixin':: d.fn(help='`google.list[obj].withRetryPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retry_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRetryPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retry_policy` field.\n', args=[]),
  withRetryPolicyMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          retry_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTopic':: d.fn(help='`google.string.withTopic` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the topic field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `topic` field.\n', args=[]),
  withTopic(resourceLabel, value): {
    resource+: {
      google_pubsub_subscription+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
}
