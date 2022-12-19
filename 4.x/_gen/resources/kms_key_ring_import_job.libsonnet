local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='kms_key_ring_import_job', url='', help='`kms_key_ring_import_job` represents the `google_kms_key_ring_import_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.kms_key_ring_import_job.new` injects a new `google_kms_key_ring_import_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.kms_key_ring_import_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.kms_key_ring_import_job` using the reference:\n\n    $._ref.google_kms_key_ring_import_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_kms_key_ring_import_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `import_job_id` (`string`): It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}\n  - `import_method` (`string`): The wrapping method to be used for incoming key material. Possible values: [\u0026#34;RSA_OAEP_3072_SHA1_AES_256\u0026#34;, \u0026#34;RSA_OAEP_4096_SHA1_AES_256\u0026#34;]\n  - `key_ring` (`string`): The KeyRing that this import job belongs to.\nFormat: \u0026#39;\u0026#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}\u0026#39;\u0026#39;.\n  - `protection_level` (`string`): The protection level of the ImportJob. This must match the protectionLevel of the\nversionTemplate on the CryptoKey you attempt to import into. Possible values: [\u0026#34;SOFTWARE\u0026#34;, \u0026#34;HSM\u0026#34;, \u0026#34;EXTERNAL\u0026#34;]\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_key_ring_import_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    import_job_id,
    import_method,
    key_ring,
    protection_level,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_key_ring_import_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      import_job_id=import_job_id,
      import_method=import_method,
      key_ring=key_ring,
      protection_level=protection_level,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.kms_key_ring_import_job.newAttrs` constructs a new object with attributes and blocks configured for the `kms_key_ring_import_job`\nTerraform resource.\n\nUnlike [google.kms_key_ring_import_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `import_job_id` (`string`): It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}\n  - `import_method` (`string`): The wrapping method to be used for incoming key material. Possible values: [&#34;RSA_OAEP_3072_SHA1_AES_256&#34;, &#34;RSA_OAEP_4096_SHA1_AES_256&#34;]\n  - `key_ring` (`string`): The KeyRing that this import job belongs to.\nFormat: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.\n  - `protection_level` (`string`): The protection level of the ImportJob. This must match the protectionLevel of the\nversionTemplate on the CryptoKey you attempt to import into. Possible values: [&#34;SOFTWARE&#34;, &#34;HSM&#34;, &#34;EXTERNAL&#34;]\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_key_ring_import_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_key_ring_import_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    import_job_id,
    import_method,
    key_ring,
    protection_level,
    timeouts=null
  ):: std.prune(a={
    import_job_id: import_job_id,
    import_method: import_method,
    key_ring: key_ring,
    protection_level: protection_level,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.kms_key_ring_import_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withImportJobId':: d.fn(help='`google.string.withImportJobId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the import_job_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `import_job_id` field.\n', args=[]),
  withImportJobId(resourceLabel, value): {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          import_job_id: value,
        },
      },
    },
  },
  '#withImportMethod':: d.fn(help='`google.string.withImportMethod` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the import_method field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `import_method` field.\n', args=[]),
  withImportMethod(resourceLabel, value): {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          import_method: value,
        },
      },
    },
  },
  '#withKeyRing':: d.fn(help='`google.string.withKeyRing` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key_ring field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key_ring` field.\n', args=[]),
  withKeyRing(resourceLabel, value): {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          key_ring: value,
        },
      },
    },
  },
  '#withProtectionLevel':: d.fn(help='`google.string.withProtectionLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the protection_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `protection_level` field.\n', args=[]),
  withProtectionLevel(resourceLabel, value): {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          protection_level: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
