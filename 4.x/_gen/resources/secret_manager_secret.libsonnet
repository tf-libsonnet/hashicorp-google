local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='secret_manager_secret', url='', help='`secret_manager_secret` represents the `google_secret_manager_secret` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.secret_manager_secret.new` injects a new `google_secret_manager_secret` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.secret_manager_secret.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.secret_manager_secret` using the reference:\n\n    $._ref.google_secret_manager_secret.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_secret_manager_secret.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Custom metadata about the secret.\n\nAnnotations are distinct from various forms of labels. Annotations exist to allow\nclient tools to store their own state information without requiring a database.\n\nAnnotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of\nmaximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and\nmay have dashes (-), underscores (_), dots (.), and alphanumerics in between these\nsymbols.\n\nThe total size of annotation keys and values must be less than 16KiB.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example:\n{ \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `expire_time` (`string`): Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.\nA timestamp in RFC3339 UTC \u0026#34;Zulu\u0026#34; format, with nanosecond resolution and up to nine fractional digits. Examples: \u0026#34;2014-10-02T15:01:23Z\u0026#34; and \u0026#34;2014-10-02T15:01:23.045123456Z\u0026#34;. When `null`, the `expire_time` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels assigned to this Secret.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be assigned to a given resource.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example:\n{ \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `secret_id` (`string`): This must be unique within the project.\n  - `ttl` (`string`): The TTL for the Secret.\nA duration in seconds with up to nine fractional digits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34;. When `null`, the `ttl` field will be omitted from the resulting object.\n  - `replication` (`list[obj]`): The replication policy of the secret data attached to the Secret. It cannot be changed\nafter the Secret has been created. When `null`, the `replication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.replication.new](#fn-replicationnew) constructor.\n  - `rotation` (`list[obj]`): The rotation time and period for a Secret. At \u0026#39;next_rotation_time\u0026#39;, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. \u0026#39;topics\u0026#39; must be set to configure rotation. When `null`, the `rotation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.rotation.new](#fn-rotationnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.timeouts.new](#fn-timeoutsnew) constructor.\n  - `topics` (`list[obj]`): A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions. When `null`, the `topics` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.topics.new](#fn-topicsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    secret_id,
    annotations=null,
    expire_time=null,
    labels=null,
    project=null,
    replication=null,
    rotation=null,
    timeouts=null,
    topics=null,
    ttl=null,
    _meta={}
  ):: tf.withResource(
    type='google_secret_manager_secret',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      expire_time=expire_time,
      labels=labels,
      project=project,
      replication=replication,
      rotation=rotation,
      secret_id=secret_id,
      timeouts=timeouts,
      topics=topics,
      ttl=ttl
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.secret_manager_secret.newAttrs` constructs a new object with attributes and blocks configured for the `secret_manager_secret`\nTerraform resource.\n\nUnlike [google.secret_manager_secret.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Custom metadata about the secret.\n\nAnnotations are distinct from various forms of labels. Annotations exist to allow\nclient tools to store their own state information without requiring a database.\n\nAnnotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of\nmaximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and\nmay have dashes (-), underscores (_), dots (.), and alphanumerics in between these\nsymbols.\n\nThe total size of annotation keys and values must be less than 16KiB.\n\nAn object containing a list of &#34;key&#34;: value pairs. Example:\n{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `expire_time` (`string`): Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `expire_time` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels assigned to this Secret.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be assigned to a given resource.\n\nAn object containing a list of &#34;key&#34;: value pairs. Example:\n{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `secret_id` (`string`): This must be unique within the project.\n  - `ttl` (`string`): The TTL for the Secret.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `ttl` field will be omitted from the resulting object.\n  - `replication` (`list[obj]`): The replication policy of the secret data attached to the Secret. It cannot be changed\nafter the Secret has been created. When `null`, the `replication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.replication.new](#fn-replicationnew) constructor.\n  - `rotation` (`list[obj]`): The rotation time and period for a Secret. At &#39;next_rotation_time&#39;, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. &#39;topics&#39; must be set to configure rotation. When `null`, the `rotation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.rotation.new](#fn-rotationnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.timeouts.new](#fn-timeoutsnew) constructor.\n  - `topics` (`list[obj]`): A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions. When `null`, the `topics` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.topics.new](#fn-topicsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `secret_manager_secret` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    secret_id,
    annotations=null,
    expire_time=null,
    labels=null,
    project=null,
    replication=null,
    rotation=null,
    timeouts=null,
    topics=null,
    ttl=null
  ):: std.prune(a={
    annotations: annotations,
    expire_time: expire_time,
    labels: labels,
    project: project,
    replication: replication,
    rotation: rotation,
    secret_id: secret_id,
    timeouts: timeouts,
    topics: topics,
    ttl: ttl,
  }),
  replication:: {
    '#new':: d.fn(help='\n`google.secret_manager_secret.replication.new` constructs a new object with attributes and blocks configured for the `replication`\nTerraform sub block.\n\n\n\n**Args**:\n  - `automatic` (`bool`): The Secret will automatically be replicated without any restrictions. When `null`, the `automatic` field will be omitted from the resulting object.\n  - `user_managed` (`list[obj]`): The Secret will be replicated to the regions specified by the user. When `null`, the `user_managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.replication.user_managed.new](#fn-replicationuser_managednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replication` sub block.\n', args=[]),
    new(
      automatic=null,
      user_managed=null
    ):: std.prune(a={
      automatic: automatic,
      user_managed: user_managed,
    }),
    user_managed:: {
      '#new':: d.fn(help='\n`google.secret_manager_secret.replication.user_managed.new` constructs a new object with attributes and blocks configured for the `user_managed`\nTerraform sub block.\n\n\n\n**Args**:\n  - `replicas` (`list[obj]`): The list of Replicas for this Secret. Cannot be empty. When `null`, the `replicas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.replication.user_managed.replicas.new](#fn-replicationreplicationreplicasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `user_managed` sub block.\n', args=[]),
      new(
        replicas=null
      ):: std.prune(a={
        replicas: replicas,
      }),
      replicas:: {
        customer_managed_encryption:: {
          '#new':: d.fn(help='\n`google.secret_manager_secret.replication.user_managed.replicas.customer_managed_encryption.new` constructs a new object with attributes and blocks configured for the `customer_managed_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination secret.\n\n**Returns**:\n  - An attribute object that represents the `customer_managed_encryption` sub block.\n', args=[]),
          new(
            kms_key_name
          ):: std.prune(a={
            kms_key_name: kms_key_name,
          }),
        },
        '#new':: d.fn(help='\n`google.secret_manager_secret.replication.user_managed.replicas.new` constructs a new object with attributes and blocks configured for the `replicas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`string`): The canonical IDs of the location to replicate data. For example: &#34;us-east1&#34;.\n  - `customer_managed_encryption` (`list[obj]`): Customer Managed Encryption for the secret. When `null`, the `customer_managed_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.secret_manager_secret.replication.user_managed.replicas.customer_managed_encryption.new](#fn-replicationreplicationuser_managedcustomer_managed_encryptionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replicas` sub block.\n', args=[]),
        new(
          location,
          customer_managed_encryption=null
        ):: std.prune(a={
          customer_managed_encryption: customer_managed_encryption,
          location: location,
        }),
      },
    },
  },
  rotation:: {
    '#new':: d.fn(help='\n`google.secret_manager_secret.rotation.new` constructs a new object with attributes and blocks configured for the `rotation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `next_rotation_time` (`string`): Timestamp in UTC at which the Secret is scheduled to rotate.\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `next_rotation_time` field will be omitted from the resulting object.\n  - `rotation_period` (`string`): The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years).\nIf rotationPeriod is set, &#39;next_rotation_time&#39; must be set. &#39;next_rotation_time&#39; will be advanced by this period when the service automatically sends rotation notifications. When `null`, the `rotation_period` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `rotation` sub block.\n', args=[]),
    new(
      next_rotation_time=null,
      rotation_period=null
    ):: std.prune(a={
      next_rotation_time: next_rotation_time,
      rotation_period: rotation_period,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.secret_manager_secret.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  topics:: {
    '#new':: d.fn(help='\n`google.secret_manager_secret.topics.new` constructs a new object with attributes and blocks configured for the `topics`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.\nFor publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic.\n\n**Returns**:\n  - An attribute object that represents the `topics` sub block.\n', args=[]),
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withExpireTime':: d.fn(help='`google.string.withExpireTime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the expire_time field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `expire_time` field.\n', args=[]),
  withExpireTime(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          expire_time: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReplication':: d.fn(help='`google.list[obj].withReplication` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the replication field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReplicationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `replication` field.\n', args=[]),
  withReplication(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          replication: value,
        },
      },
    },
  },
  '#withReplicationMixin':: d.fn(help='`google.list[obj].withReplicationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the replication field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReplication](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `replication` field.\n', args=[]),
  withReplicationMixin(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          replication+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRotation':: d.fn(help='`google.list[obj].withRotation` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rotation field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRotationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rotation` field.\n', args=[]),
  withRotation(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          rotation: value,
        },
      },
    },
  },
  '#withRotationMixin':: d.fn(help='`google.list[obj].withRotationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rotation field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRotation](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rotation` field.\n', args=[]),
  withRotationMixin(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          rotation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSecretId':: d.fn(help='`google.string.withSecretId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the secret_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `secret_id` field.\n', args=[]),
  withSecretId(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          secret_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTopics':: d.fn(help='`google.list[obj].withTopics` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the topics field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTopicsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `topics` field.\n', args=[]),
  withTopics(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          topics: value,
        },
      },
    },
  },
  '#withTopicsMixin':: d.fn(help='`google.list[obj].withTopicsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the topics field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTopics](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `topics` field.\n', args=[]),
  withTopicsMixin(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          topics+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTtl':: d.fn(help='`google.string.withTtl` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ttl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ttl` field.\n', args=[]),
  withTtl(resourceLabel, value): {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          ttl: value,
        },
      },
    },
  },
}
