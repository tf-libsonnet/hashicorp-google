local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='pubsub_topic', url='', help='`pubsub_topic` represents the `google_pubsub_topic` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  message_storage_policy:: {
    '#new':: d.fn(help='\n`google.pubsub_topic.message_storage_policy.new` constructs a new object with attributes and blocks configured for the `message_storage_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_persistence_regions` (`list`): A list of IDs of GCP regions where messages that are published to\nthe topic may be persisted in storage. Messages published by\npublishers running in non-allowed GCP regions (or running outside\nof GCP altogether) will be routed for storage in one of the\nallowed regions. An empty list means that no regions are allowed,\nand is not a valid configuration.\n\n**Returns**:\n  - An attribute object that represents the `message_storage_policy` sub block.\n', args=[]),
    new(
      allowed_persistence_regions
    ):: std.prune(a={
      allowed_persistence_regions: allowed_persistence_regions,
    }),
  },
  '#new':: d.fn(help="\n`google.pubsub_topic.new` injects a new `google_pubsub_topic` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.pubsub_topic.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.pubsub_topic` using the reference:\n\n    $._ref.google_pubsub_topic.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_pubsub_topic.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `kms_key_name` (`string`): The resource name of the Cloud KMS CryptoKey to be used to protect access\nto messages published on this topic. Your project\u0026#39;s PubSub service account\n(\u0026#39;service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com\u0026#39;) must have\n\u0026#39;roles/cloudkms.cryptoKeyEncrypterDecrypter\u0026#39; to use this feature.\nThe expected format is \u0026#39;projects/*/locations/*/keyRings/*/cryptoKeys/*\u0026#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Topic.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `message_retention_duration` (`string`): Indicates the minimum duration to retain a message after it is published\nto the topic. If this field is set, messages published to the topic in\nthe last messageRetentionDuration are always available to subscribers.\nFor instance, it allows any attached subscription to seek to a timestamp\nthat is up to messageRetentionDuration in the past. If this field is not\nset, message retention is controlled by settings on individual subscriptions.\nThe rotation period has the format of a decimal number, followed by the\nletter \u0026#39;s\u0026#39; (seconds). Cannot be more than 31 days or less than 10 minutes. When `null`, the `message_retention_duration` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the topic.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `message_storage_policy` (`list[obj]`): Policy constraining the set of Google Cloud Platform regions where\nmessages published to the topic may be stored. If not present, then no\nconstraints are in effect. When `null`, the `message_storage_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.message_storage_policy.new](#fn-message_storage_policynew) constructor.\n  - `schema_settings` (`list[obj]`): Settings for validating messages published against a schema. When `null`, the `schema_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.schema_settings.new](#fn-schema_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    kms_key_name=null,
    labels=null,
    message_retention_duration=null,
    message_storage_policy=null,
    project=null,
    schema_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_topic',
    label=resourceLabel,
    attrs=self.newAttrs(
      kms_key_name=kms_key_name,
      labels=labels,
      message_retention_duration=message_retention_duration,
      message_storage_policy=message_storage_policy,
      name=name,
      project=project,
      schema_settings=schema_settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.pubsub_topic.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_topic`\nTerraform resource.\n\nUnlike [google.pubsub_topic.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `kms_key_name` (`string`): The resource name of the Cloud KMS CryptoKey to be used to protect access\nto messages published on this topic. Your project&#39;s PubSub service account\n(&#39;service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com&#39;) must have\n&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.\nThe expected format is &#39;projects/*/locations/*/keyRings/*/cryptoKeys/*&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Topic.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `message_retention_duration` (`string`): Indicates the minimum duration to retain a message after it is published\nto the topic. If this field is set, messages published to the topic in\nthe last messageRetentionDuration are always available to subscribers.\nFor instance, it allows any attached subscription to seek to a timestamp\nthat is up to messageRetentionDuration in the past. If this field is not\nset, message retention is controlled by settings on individual subscriptions.\nThe rotation period has the format of a decimal number, followed by the\nletter &#39;s&#39; (seconds). Cannot be more than 31 days or less than 10 minutes. When `null`, the `message_retention_duration` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the topic.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `message_storage_policy` (`list[obj]`): Policy constraining the set of Google Cloud Platform regions where\nmessages published to the topic may be stored. If not present, then no\nconstraints are in effect. When `null`, the `message_storage_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.message_storage_policy.new](#fn-message_storage_policynew) constructor.\n  - `schema_settings` (`list[obj]`): Settings for validating messages published against a schema. When `null`, the `schema_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.schema_settings.new](#fn-schema_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_topic.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_topic` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    kms_key_name=null,
    labels=null,
    message_retention_duration=null,
    message_storage_policy=null,
    project=null,
    schema_settings=null,
    timeouts=null
  ):: std.prune(a={
    kms_key_name: kms_key_name,
    labels: labels,
    message_retention_duration: message_retention_duration,
    message_storage_policy: message_storage_policy,
    name: name,
    project: project,
    schema_settings: schema_settings,
    timeouts: timeouts,
  }),
  schema_settings:: {
    '#new':: d.fn(help='\n`google.pubsub_topic.schema_settings.new` constructs a new object with attributes and blocks configured for the `schema_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `encoding` (`string`): The encoding of messages validated against schema. Default value: &#34;ENCODING_UNSPECIFIED&#34; Possible values: [&#34;ENCODING_UNSPECIFIED&#34;, &#34;JSON&#34;, &#34;BINARY&#34;] When `null`, the `encoding` field will be omitted from the resulting object.\n  - `schema` (`string`): The name of the schema that messages published should be\nvalidated against. Format is projects/{project}/schemas/{schema}.\nThe value of this field will be _deleted-schema_\nif the schema has been deleted.\n\n**Returns**:\n  - An attribute object that represents the `schema_settings` sub block.\n', args=[]),
    new(
      schema,
      encoding=null
    ):: std.prune(a={
      encoding: encoding,
      schema: schema,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.pubsub_topic.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withKmsKeyName':: d.fn(help='`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMessageRetentionDuration':: d.fn(help='`google.string.withMessageRetentionDuration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the message_retention_duration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `message_retention_duration` field.\n', args=[]),
  withMessageRetentionDuration(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          message_retention_duration: value,
        },
      },
    },
  },
  '#withMessageStoragePolicy':: d.fn(help='`google.list[obj].withMessageStoragePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the message_storage_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMessageStoragePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `message_storage_policy` field.\n', args=[]),
  withMessageStoragePolicy(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          message_storage_policy: value,
        },
      },
    },
  },
  '#withMessageStoragePolicyMixin':: d.fn(help='`google.list[obj].withMessageStoragePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the message_storage_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMessageStoragePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `message_storage_policy` field.\n', args=[]),
  withMessageStoragePolicyMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          message_storage_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSchemaSettings':: d.fn(help='`google.list[obj].withSchemaSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schema_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSchemaSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schema_settings` field.\n', args=[]),
  withSchemaSettings(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          schema_settings: value,
        },
      },
    },
  },
  '#withSchemaSettingsMixin':: d.fn(help='`google.list[obj].withSchemaSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schema_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSchemaSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schema_settings` field.\n', args=[]),
  withSchemaSettingsMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          schema_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_pubsub_topic+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
