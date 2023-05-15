local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='kms_crypto_key', url='', help='`kms_crypto_key` represents the `google_kms_crypto_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.kms_crypto_key.new` injects a new `google_kms_crypto_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.kms_crypto_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.kms_crypto_key` using the reference:\n\n    $._ref.google_kms_crypto_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_kms_crypto_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `destroy_scheduled_duration` (`string`): The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.\nIf not specified at creation time, the default duration is 24 hours. When `null`, the `destroy_scheduled_duration` field will be omitted from the resulting object.\n  - `import_only` (`bool`): Whether this key may contain imported versions only. When `null`, the `import_only` field will be omitted from the resulting object.\n  - `key_ring` (`string`): The KeyRing that this key belongs to.\nFormat: \u0026#39;\u0026#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}\u0026#39;\u0026#39;.\n  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the CryptoKey.\n  - `purpose` (`string`): The immutable purpose of this CryptoKey. See the\n[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)\nfor possible inputs. Default value: \u0026#34;ENCRYPT_DECRYPT\u0026#34; Possible values: [\u0026#34;ENCRYPT_DECRYPT\u0026#34;, \u0026#34;ASYMMETRIC_SIGN\u0026#34;, \u0026#34;ASYMMETRIC_DECRYPT\u0026#34;, \u0026#34;MAC\u0026#34;] When `null`, the `purpose` field will be omitted from the resulting object.\n  - `rotation_period` (`string`): Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.\nThe first rotation will take place after the specified period. The rotation period has\nthe format of a decimal number with up to 9 fractional digits, followed by the\nletter \u0026#39;s\u0026#39; (seconds). It must be greater than a day (ie, 86400). When `null`, the `rotation_period` field will be omitted from the resulting object.\n  - `skip_initial_version_creation` (`bool`): If set to true, the request will create a CryptoKey without any CryptoKeyVersions.\nYou must use the \u0026#39;google_kms_key_ring_import_job\u0026#39; resource to import the CryptoKeyVersion. When `null`, the `skip_initial_version_creation` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.timeouts.new](#fn-timeoutsnew) constructor.\n  - `version_template` (`list[obj]`): A template describing settings for new crypto key versions. When `null`, the `version_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.version_template.new](#fn-version_templatenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    key_ring,
    name,
    destroy_scheduled_duration=null,
    import_only=null,
    labels=null,
    purpose=null,
    rotation_period=null,
    skip_initial_version_creation=null,
    timeouts=null,
    version_template=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_crypto_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      destroy_scheduled_duration=destroy_scheduled_duration,
      import_only=import_only,
      key_ring=key_ring,
      labels=labels,
      name=name,
      purpose=purpose,
      rotation_period=rotation_period,
      skip_initial_version_creation=skip_initial_version_creation,
      timeouts=timeouts,
      version_template=version_template
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.kms_crypto_key.newAttrs` constructs a new object with attributes and blocks configured for the `kms_crypto_key`\nTerraform resource.\n\nUnlike [google.kms_crypto_key.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `destroy_scheduled_duration` (`string`): The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.\nIf not specified at creation time, the default duration is 24 hours. When `null`, the `destroy_scheduled_duration` field will be omitted from the resulting object.\n  - `import_only` (`bool`): Whether this key may contain imported versions only. When `null`, the `import_only` field will be omitted from the resulting object.\n  - `key_ring` (`string`): The KeyRing that this key belongs to.\nFormat: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.\n  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the CryptoKey.\n  - `purpose` (`string`): The immutable purpose of this CryptoKey. See the\n[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)\nfor possible inputs. Default value: &#34;ENCRYPT_DECRYPT&#34; Possible values: [&#34;ENCRYPT_DECRYPT&#34;, &#34;ASYMMETRIC_SIGN&#34;, &#34;ASYMMETRIC_DECRYPT&#34;, &#34;MAC&#34;] When `null`, the `purpose` field will be omitted from the resulting object.\n  - `rotation_period` (`string`): Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.\nThe first rotation will take place after the specified period. The rotation period has\nthe format of a decimal number with up to 9 fractional digits, followed by the\nletter &#39;s&#39; (seconds). It must be greater than a day (ie, 86400). When `null`, the `rotation_period` field will be omitted from the resulting object.\n  - `skip_initial_version_creation` (`bool`): If set to true, the request will create a CryptoKey without any CryptoKeyVersions.\nYou must use the &#39;google_kms_key_ring_import_job&#39; resource to import the CryptoKeyVersion. When `null`, the `skip_initial_version_creation` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.timeouts.new](#fn-timeoutsnew) constructor.\n  - `version_template` (`list[obj]`): A template describing settings for new crypto key versions. When `null`, the `version_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.version_template.new](#fn-version_templatenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_crypto_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    key_ring,
    name,
    destroy_scheduled_duration=null,
    import_only=null,
    labels=null,
    purpose=null,
    rotation_period=null,
    skip_initial_version_creation=null,
    timeouts=null,
    version_template=null
  ):: std.prune(a={
    destroy_scheduled_duration: destroy_scheduled_duration,
    import_only: import_only,
    key_ring: key_ring,
    labels: labels,
    name: name,
    purpose: purpose,
    rotation_period: rotation_period,
    skip_initial_version_creation: skip_initial_version_creation,
    timeouts: timeouts,
    version_template: version_template,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.kms_crypto_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  version_template:: {
    '#new':: d.fn(help='\n`google.kms_crypto_key.version_template.new` constructs a new object with attributes and blocks configured for the `version_template`\nTerraform sub block.\n\n\n\n**Args**:\n  - `algorithm` (`string`): The algorithm to use when creating a version based on this template.\nSee the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.\n  - `protection_level` (`string`): The protection level to use when creating a version based on this template. Possible values include &#34;SOFTWARE&#34;, &#34;HSM&#34;, &#34;EXTERNAL&#34;, &#34;EXTERNAL_VPC&#34;. Defaults to &#34;SOFTWARE&#34;. When `null`, the `protection_level` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `version_template` sub block.\n', args=[]),
    new(
      algorithm,
      protection_level=null
    ):: std.prune(a={
      algorithm: algorithm,
      protection_level: protection_level,
    }),
  },
  '#withDestroyScheduledDuration':: d.fn(help='`google.string.withDestroyScheduledDuration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the destroy_scheduled_duration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `destroy_scheduled_duration` field.\n', args=[]),
  withDestroyScheduledDuration(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          destroy_scheduled_duration: value,
        },
      },
    },
  },
  '#withImportOnly':: d.fn(help='`google.bool.withImportOnly` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the import_only field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `import_only` field.\n', args=[]),
  withImportOnly(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          import_only: value,
        },
      },
    },
  },
  '#withKeyRing':: d.fn(help='`google.string.withKeyRing` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key_ring field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key_ring` field.\n', args=[]),
  withKeyRing(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          key_ring: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPurpose':: d.fn(help='`google.string.withPurpose` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the purpose field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `purpose` field.\n', args=[]),
  withPurpose(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  '#withRotationPeriod':: d.fn(help='`google.string.withRotationPeriod` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the rotation_period field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `rotation_period` field.\n', args=[]),
  withRotationPeriod(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          rotation_period: value,
        },
      },
    },
  },
  '#withSkipInitialVersionCreation':: d.fn(help='`google.bool.withSkipInitialVersionCreation` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the skip_initial_version_creation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `skip_initial_version_creation` field.\n', args=[]),
  withSkipInitialVersionCreation(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          skip_initial_version_creation: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionTemplate':: d.fn(help='`google.list[obj].withVersionTemplate` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the version_template field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVersionTemplateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `version_template` field.\n', args=[]),
  withVersionTemplate(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          version_template: value,
        },
      },
    },
  },
  '#withVersionTemplateMixin':: d.fn(help='`google.list[obj].withVersionTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the version_template field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVersionTemplate](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `version_template` field.\n', args=[]),
  withVersionTemplateMixin(resourceLabel, value): {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          version_template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
