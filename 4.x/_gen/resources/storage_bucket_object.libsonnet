local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_bucket_object', url='', help='`storage_bucket_object` represents the `google_storage_bucket_object` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  customer_encryption:: {
    '#new':: d.fn(help='\n`google.storage_bucket_object.customer_encryption.new` constructs a new object with attributes and blocks configured for the `customer_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `encryption_algorithm` (`string`): The encryption algorithm. Default: AES256 When `null`, the `encryption_algorithm` field will be omitted from the resulting object.\n  - `encryption_key` (`string`): Base64 encoded customer supplied encryption key.\n\n**Returns**:\n  - An attribute object that represents the `customer_encryption` sub block.\n', args=[]),
    new(
      encryption_key,
      encryption_algorithm=null
    ):: std.prune(a={
      encryption_algorithm: encryption_algorithm,
      encryption_key: encryption_key,
    }),
  },
  '#new':: d.fn(help="\n`google.storage_bucket_object.new` injects a new `google_storage_bucket_object` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_bucket_object.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_bucket_object` using the reference:\n\n    $._ref.google_storage_bucket_object.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_bucket_object.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): The name of the containing bucket.\n  - `cache_control` (`string`): Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600 When `null`, the `cache_control` field will be omitted from the resulting object.\n  - `content` (`string`): Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. When `null`, the `content` field will be omitted from the resulting object.\n  - `content_disposition` (`string`): Content-Disposition of the object data. When `null`, the `content_disposition` field will be omitted from the resulting object.\n  - `content_encoding` (`string`): Content-Encoding of the object data. When `null`, the `content_encoding` field will be omitted from the resulting object.\n  - `content_language` (`string`): Content-Language of the object data. When `null`, the `content_language` field will be omitted from the resulting object.\n  - `content_type` (`string`): Content-Type of the object data. Defaults to \u0026#34;application/octet-stream\u0026#34; or \u0026#34;text/plain; charset=utf-8\u0026#34;. When `null`, the `content_type` field will be omitted from the resulting object.\n  - `detect_md5hash` (`string`):  When `null`, the `detect_md5hash` field will be omitted from the resulting object.\n  - `event_based_hold` (`bool`): Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold\u0026#39;s release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). When `null`, the `event_based_hold` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata\u0026#39;s kmsKeyName value, if any. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `metadata` (`obj`): User-provided metadata, in key/value pairs. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the object. If you\u0026#39;re interpolating the name of this object, see output_name instead.\n  - `source` (`string`): A path to the data you want to upload. Must be defined if content is not. When `null`, the `source` field will be omitted from the resulting object.\n  - `storage_class` (`string`): The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket\u0026#39;s default storage class or to a standard class. When `null`, the `storage_class` field will be omitted from the resulting object.\n  - `temporary_hold` (`bool`): Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. When `null`, the `temporary_hold` field will be omitted from the resulting object.\n  - `customer_encryption` (`list[obj]`): Encryption key; encoded using base64. When `null`, the `customer_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.customer_encryption.new](#fn-storagebucketobjectcustomerencryptionnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.timeouts.new](#fn-storagebucketobjecttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket,
    name,
    cache_control=null,
    content=null,
    content_disposition=null,
    content_encoding=null,
    content_language=null,
    content_type=null,
    customer_encryption=null,
    detect_md5hash=null,
    event_based_hold=null,
    kms_key_name=null,
    metadata=null,
    source=null,
    storage_class=null,
    temporary_hold=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_object',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      cache_control=cache_control,
      content=content,
      content_disposition=content_disposition,
      content_encoding=content_encoding,
      content_language=content_language,
      content_type=content_type,
      customer_encryption=customer_encryption,
      detect_md5hash=detect_md5hash,
      event_based_hold=event_based_hold,
      kms_key_name=kms_key_name,
      metadata=metadata,
      name=name,
      source=source,
      storage_class=storage_class,
      temporary_hold=temporary_hold,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_bucket_object.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket_object`\nTerraform resource.\n\nUnlike [google.storage_bucket_object.new](#fn-storagebucketobjectnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): The name of the containing bucket.\n  - `cache_control` (`string`): Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600 When `null`, the `cache_control` field will be omitted from the resulting object.\n  - `content` (`string`): Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. When `null`, the `content` field will be omitted from the resulting object.\n  - `content_disposition` (`string`): Content-Disposition of the object data. When `null`, the `content_disposition` field will be omitted from the resulting object.\n  - `content_encoding` (`string`): Content-Encoding of the object data. When `null`, the `content_encoding` field will be omitted from the resulting object.\n  - `content_language` (`string`): Content-Language of the object data. When `null`, the `content_language` field will be omitted from the resulting object.\n  - `content_type` (`string`): Content-Type of the object data. Defaults to &#34;application/octet-stream&#34; or &#34;text/plain; charset=utf-8&#34;. When `null`, the `content_type` field will be omitted from the resulting object.\n  - `detect_md5hash` (`string`):  When `null`, the `detect_md5hash` field will be omitted from the resulting object.\n  - `event_based_hold` (`bool`): Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold&#39;s release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). When `null`, the `event_based_hold` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata&#39;s kmsKeyName value, if any. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `metadata` (`obj`): User-provided metadata, in key/value pairs. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead.\n  - `source` (`string`): A path to the data you want to upload. Must be defined if content is not. When `null`, the `source` field will be omitted from the resulting object.\n  - `storage_class` (`string`): The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket&#39;s default storage class or to a standard class. When `null`, the `storage_class` field will be omitted from the resulting object.\n  - `temporary_hold` (`bool`): Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. When `null`, the `temporary_hold` field will be omitted from the resulting object.\n  - `customer_encryption` (`list[obj]`): Encryption key; encoded using base64. When `null`, the `customer_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.customer_encryption.new](#fn-storagebucketobjectcustomerencryptionnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket_object.timeouts.new](#fn-storagebucketobjecttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_bucket_object` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    name,
    cache_control=null,
    content=null,
    content_disposition=null,
    content_encoding=null,
    content_language=null,
    content_type=null,
    customer_encryption=null,
    detect_md5hash=null,
    event_based_hold=null,
    kms_key_name=null,
    metadata=null,
    source=null,
    storage_class=null,
    temporary_hold=null,
    timeouts=null
  ):: std.prune(a={
    bucket: bucket,
    cache_control: cache_control,
    content: content,
    content_disposition: content_disposition,
    content_encoding: content_encoding,
    content_language: content_language,
    content_type: content_type,
    customer_encryption: customer_encryption,
    detect_md5hash: detect_md5hash,
    event_based_hold: event_based_hold,
    kms_key_name: kms_key_name,
    metadata: metadata,
    name: name,
    source: source,
    storage_class: storage_class,
    temporary_hold: temporary_hold,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.storage_bucket_object.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBucket':: d.fn(help='`google.storage_bucket_object.withBucket` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withCacheControl':: d.fn(help='`google.storage_bucket_object.withCacheControl` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the cache_control field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `cache_control` field.\n', args=[]),
  withCacheControl(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          cache_control: value,
        },
      },
    },
  },
  '#withContent':: d.fn(help='`google.storage_bucket_object.withContent` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the content field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `content` field.\n', args=[]),
  withContent(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content: value,
        },
      },
    },
  },
  '#withContentDisposition':: d.fn(help='`google.storage_bucket_object.withContentDisposition` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the content_disposition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `content_disposition` field.\n', args=[]),
  withContentDisposition(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_disposition: value,
        },
      },
    },
  },
  '#withContentEncoding':: d.fn(help='`google.storage_bucket_object.withContentEncoding` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the content_encoding field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `content_encoding` field.\n', args=[]),
  withContentEncoding(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_encoding: value,
        },
      },
    },
  },
  '#withContentLanguage':: d.fn(help='`google.storage_bucket_object.withContentLanguage` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the content_language field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `content_language` field.\n', args=[]),
  withContentLanguage(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_language: value,
        },
      },
    },
  },
  '#withContentType':: d.fn(help='`google.storage_bucket_object.withContentType` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the content_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `content_type` field.\n', args=[]),
  withContentType(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_type: value,
        },
      },
    },
  },
  '#withCustomerEncryption':: d.fn(help='`google.storage_bucket_object.withCustomerEncryption` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the customer_encryption field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `customer_encryption` field.\n', args=[]),
  withCustomerEncryption(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          customer_encryption: value,
        },
      },
    },
  },
  '#withCustomerEncryptionMixin':: d.fn(help='`google.storage_bucket_object.withCustomerEncryptionMixin` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the customer_encryption field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.storage_bucket_object.withCustomerEncryption](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `customer_encryption` field.\n', args=[]),
  withCustomerEncryptionMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          customer_encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDetectMd5Hash':: d.fn(help='`google.storage_bucket_object.withDetectMd5Hash` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the detect_md5hash field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `detect_md5hash` field.\n', args=[]),
  withDetectMd5Hash(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          detect_md5hash: value,
        },
      },
    },
  },
  '#withEventBasedHold':: d.fn(help='`google.storage_bucket_object.withEventBasedHold` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the event_based_hold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `event_based_hold` field.\n', args=[]),
  withEventBasedHold(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          event_based_hold: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.storage_bucket_object.withKmsKeyName` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.storage_bucket_object.withMetadata` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.storage_bucket_object.withName` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withSource':: d.fn(help='`google.storage_bucket_object.withSource` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the source field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `source` field.\n', args=[]),
  withSource(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
  '#withStorageClass':: d.fn(help='`google.storage_bucket_object.withStorageClass` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the storage_class field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `storage_class` field.\n', args=[]),
  withStorageClass(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          storage_class: value,
        },
      },
    },
  },
  '#withTemporaryHold':: d.fn(help='`google.storage_bucket_object.withTemporaryHold` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the temporary_hold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `temporary_hold` field.\n', args=[]),
  withTemporaryHold(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          temporary_hold: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.storage_bucket_object.withTimeouts` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.storage_bucket_object.withTimeoutsMixin` constructs a mixin object that can be merged into the `storage_bucket_object`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.storage_bucket_object.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
