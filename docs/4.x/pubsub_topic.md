---
permalink: /pubsub_topic/
---

# pubsub_topic

`pubsub_topic` represents the `google_pubsub_topic` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMessageRetentionDuration()`](#fn-withmessageretentionduration)
* [`fn withMessageStoragePolicy()`](#fn-withmessagestoragepolicy)
* [`fn withMessageStoragePolicyMixin()`](#fn-withmessagestoragepolicymixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSchemaSettings()`](#fn-withschemasettings)
* [`fn withSchemaSettingsMixin()`](#fn-withschemasettingsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj message_storage_policy`](#obj-message_storage_policy)
  * [`fn new()`](#fn-message_storage_policynew)
* [`obj schema_settings`](#obj-schema_settings)
  * [`fn new()`](#fn-schema_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.pubsub_topic.new` injects a new `google_pubsub_topic` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.pubsub_topic.new('some_id')

You can get the reference to the `id` field of the created `google.pubsub_topic` using the reference:

    $._ref.google_pubsub_topic.some_id.get('id')

This is the same as directly entering `"${ google_pubsub_topic.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `kms_key_name` (`string`): The resource name of the Cloud KMS CryptoKey to be used to protect access
to messages published on this topic. Your project&#39;s PubSub service account
(&#39;service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com&#39;) must have
&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.
The expected format is &#39;projects/*/locations/*/keyRings/*/cryptoKeys/*&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Topic. When `null`, the `labels` field will be omitted from the resulting object.
  - `message_retention_duration` (`string`): Indicates the minimum duration to retain a message after it is published
to the topic. If this field is set, messages published to the topic in
the last messageRetentionDuration are always available to subscribers.
For instance, it allows any attached subscription to seek to a timestamp
that is up to messageRetentionDuration in the past. If this field is not
set, message retention is controlled by settings on individual subscriptions.
Cannot be more than 31 days or less than 10 minutes. When `null`, the `message_retention_duration` field will be omitted from the resulting object.
  - `name` (`string`): Name of the topic.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `message_storage_policy` (`list[obj]`): Policy constraining the set of Google Cloud Platform regions where
messages published to the topic may be stored. If not present, then no
constraints are in effect. When `null`, the `message_storage_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.message_storage_policy.new](#fn-pubsubtopicmessagestoragepolicynew) constructor.
  - `schema_settings` (`list[obj]`): Settings for validating messages published against a schema. When `null`, the `schema_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.schema_settings.new](#fn-pubsubtopicschemasettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.timeouts.new](#fn-pubsubtopictimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.pubsub_topic.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_topic`
Terraform resource.

Unlike [google.pubsub_topic.new](#fn-pubsubtopicnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `kms_key_name` (`string`): The resource name of the Cloud KMS CryptoKey to be used to protect access
to messages published on this topic. Your project&#39;s PubSub service account
(&#39;service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com&#39;) must have
&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.
The expected format is &#39;projects/*/locations/*/keyRings/*/cryptoKeys/*&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Topic. When `null`, the `labels` field will be omitted from the resulting object.
  - `message_retention_duration` (`string`): Indicates the minimum duration to retain a message after it is published
to the topic. If this field is set, messages published to the topic in
the last messageRetentionDuration are always available to subscribers.
For instance, it allows any attached subscription to seek to a timestamp
that is up to messageRetentionDuration in the past. If this field is not
set, message retention is controlled by settings on individual subscriptions.
Cannot be more than 31 days or less than 10 minutes. When `null`, the `message_retention_duration` field will be omitted from the resulting object.
  - `name` (`string`): Name of the topic.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `message_storage_policy` (`list[obj]`): Policy constraining the set of Google Cloud Platform regions where
messages published to the topic may be stored. If not present, then no
constraints are in effect. When `null`, the `message_storage_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.message_storage_policy.new](#fn-pubsubtopicmessagestoragepolicynew) constructor.
  - `schema_settings` (`list[obj]`): Settings for validating messages published against a schema. When `null`, the `schema_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.schema_settings.new](#fn-pubsubtopicschemasettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.timeouts.new](#fn-pubsubtopictimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_topic` resource into the root Terraform configuration.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google.pubsub_topic.withKmsKeyName` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `kms_key_name` field.


### fn withLabels

```ts
withLabels()
```

`google.pubsub_topic.withLabels` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withMessageRetentionDuration

```ts
withMessageRetentionDuration()
```

`google.pubsub_topic.withMessageRetentionDuration` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the message_retention_duration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `message_retention_duration` field.


### fn withMessageStoragePolicy

```ts
withMessageStoragePolicy()
```

`google.pubsub_topic.withMessageStoragePolicy` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the message_storage_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `message_storage_policy` field.


### fn withMessageStoragePolicyMixin

```ts
withMessageStoragePolicyMixin()
```

`google.pubsub_topic.withMessageStoragePolicyMixin` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the message_storage_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.pubsub_topic.withMessageStoragePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `message_storage_policy` field.


### fn withName

```ts
withName()
```

`google.pubsub_topic.withName` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.pubsub_topic.withProject` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withSchemaSettings

```ts
withSchemaSettings()
```

`google.pubsub_topic.withSchemaSettings` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the schema_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `schema_settings` field.


### fn withSchemaSettingsMixin

```ts
withSchemaSettingsMixin()
```

`google.pubsub_topic.withSchemaSettingsMixin` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the schema_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.pubsub_topic.withSchemaSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `schema_settings` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.pubsub_topic.withTimeouts` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.pubsub_topic.withTimeoutsMixin` constructs a mixin object that can be merged into the `pubsub_topic`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.pubsub_topic.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj message_storage_policy



### fn message_storage_policy.new

```ts
new()
```


`google.pubsub_topic.message_storage_policy.new` constructs a new object with attributes and blocks configured for the `message_storage_policy`
Terraform sub block.



**Args**:
  - `allowed_persistence_regions` (`list`): A list of IDs of GCP regions where messages that are published to
the topic may be persisted in storage. Messages published by
publishers running in non-allowed GCP regions (or running outside
of GCP altogether) will be routed for storage in one of the
allowed regions. An empty list means that no regions are allowed,
and is not a valid configuration.

**Returns**:
  - An attribute object that represents the `message_storage_policy` sub block.


## obj schema_settings



### fn schema_settings.new

```ts
new()
```


`google.pubsub_topic.schema_settings.new` constructs a new object with attributes and blocks configured for the `schema_settings`
Terraform sub block.



**Args**:
  - `encoding` (`string`): The encoding of messages validated against schema. Default value: &#34;ENCODING_UNSPECIFIED&#34; Possible values: [&#34;ENCODING_UNSPECIFIED&#34;, &#34;JSON&#34;, &#34;BINARY&#34;] When `null`, the `encoding` field will be omitted from the resulting object.
  - `schema` (`string`): The name of the schema that messages published should be
validated against. Format is projects/{project}/schemas/{schema}.
The value of this field will be _deleted-schema_
if the schema has been deleted.

**Returns**:
  - An attribute object that represents the `schema_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.pubsub_topic.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
