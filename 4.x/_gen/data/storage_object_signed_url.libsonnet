local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_object_signed_url', url='', help='`storage_object_signed_url` represents the `google_storage_object_signed_url` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.storage_object_signed_url.new` injects a new `data_google_storage_object_signed_url` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.storage_object_signed_url.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.storage_object_signed_url` using the reference:\n\n    $._ref.data_google_storage_object_signed_url.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_storage_object_signed_url.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): Set the `bucket` field on the resulting data source block.\n  - `content_md5` (`string`): Set the `content_md5` field on the resulting data source block. When `null`, the `content_md5` field will be omitted from the resulting object.\n  - `content_type` (`string`): Set the `content_type` field on the resulting data source block. When `null`, the `content_type` field will be omitted from the resulting object.\n  - `credentials` (`string`): Set the `credentials` field on the resulting data source block. When `null`, the `credentials` field will be omitted from the resulting object.\n  - `duration` (`string`): Set the `duration` field on the resulting data source block. When `null`, the `duration` field will be omitted from the resulting object.\n  - `extension_headers` (`obj`): Set the `extension_headers` field on the resulting data source block. When `null`, the `extension_headers` field will be omitted from the resulting object.\n  - `http_method` (`string`): Set the `http_method` field on the resulting data source block. When `null`, the `http_method` field will be omitted from the resulting object.\n  - `path` (`string`): Set the `path` field on the resulting data source block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    bucket,
    path,
    content_md5=null,
    content_type=null,
    credentials=null,
    duration=null,
    extension_headers=null,
    http_method=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_object_signed_url',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      content_md5=content_md5,
      content_type=content_type,
      credentials=credentials,
      duration=duration,
      extension_headers=extension_headers,
      http_method=http_method,
      path=path
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.storage_object_signed_url.newAttrs` constructs a new object with attributes and blocks configured for the `storage_object_signed_url`\nTerraform data source.\n\nUnlike [google.data.storage_object_signed_url.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): Set the `bucket` field on the resulting object.\n  - `content_md5` (`string`): Set the `content_md5` field on the resulting object. When `null`, the `content_md5` field will be omitted from the resulting object.\n  - `content_type` (`string`): Set the `content_type` field on the resulting object. When `null`, the `content_type` field will be omitted from the resulting object.\n  - `credentials` (`string`): Set the `credentials` field on the resulting object. When `null`, the `credentials` field will be omitted from the resulting object.\n  - `duration` (`string`): Set the `duration` field on the resulting object. When `null`, the `duration` field will be omitted from the resulting object.\n  - `extension_headers` (`obj`): Set the `extension_headers` field on the resulting object. When `null`, the `extension_headers` field will be omitted from the resulting object.\n  - `http_method` (`string`): Set the `http_method` field on the resulting object. When `null`, the `http_method` field will be omitted from the resulting object.\n  - `path` (`string`): Set the `path` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `storage_object_signed_url` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    path,
    content_md5=null,
    content_type=null,
    credentials=null,
    duration=null,
    extension_headers=null,
    http_method=null
  ):: std.prune(a={
    bucket: bucket,
    content_md5: content_md5,
    content_type: content_type,
    credentials: credentials,
    duration: duration,
    extension_headers: extension_headers,
    http_method: http_method,
    path: path,
  }),
  '#withBucket':: d.fn(help='`google.string.withBucket` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the bucket field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withContentMd5':: d.fn(help='`google.string.withContentMd5` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the content_md5 field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `content_md5` field.\n', args=[]),
  withContentMd5(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          content_md5: value,
        },
      },
    },
  },
  '#withContentType':: d.fn(help='`google.string.withContentType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the content_type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `content_type` field.\n', args=[]),
  withContentType(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          content_type: value,
        },
      },
    },
  },
  '#withCredentials':: d.fn(help='`google.string.withCredentials` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the credentials field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `credentials` field.\n', args=[]),
  withCredentials(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          credentials: value,
        },
      },
    },
  },
  '#withDuration':: d.fn(help='`google.string.withDuration` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the duration field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `duration` field.\n', args=[]),
  withDuration(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          duration: value,
        },
      },
    },
  },
  '#withExtensionHeaders':: d.fn(help='`google.obj.withExtensionHeaders` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the extension_headers field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `extension_headers` field.\n', args=[]),
  withExtensionHeaders(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          extension_headers: value,
        },
      },
    },
  },
  '#withHttpMethod':: d.fn(help='`google.string.withHttpMethod` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the http_method field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `http_method` field.\n', args=[]),
  withHttpMethod(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          http_method: value,
        },
      },
    },
  },
  '#withPath':: d.fn(help='`google.string.withPath` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the path field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `path` field.\n', args=[]),
  withPath(dataSrcLabel, value): {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          path: value,
        },
      },
    },
  },
}
