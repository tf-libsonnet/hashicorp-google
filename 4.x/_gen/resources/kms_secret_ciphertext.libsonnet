local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='kms_secret_ciphertext', url='', help='`kms_secret_ciphertext` represents the `google_kms_secret_ciphertext` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.kms_secret_ciphertext.new` injects a new `google_kms_secret_ciphertext` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.kms_secret_ciphertext.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.kms_secret_ciphertext` using the reference:\n\n    $._ref.google_kms_secret_ciphertext.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_kms_secret_ciphertext.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `additional_authenticated_data` (`string`): The additional authenticated data used for integrity checks during encryption and decryption. When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.\n  - `crypto_key` (`string`): The full name of the CryptoKey that will be used to encrypt the provided plaintext.\nFormat: \u0026#39;\u0026#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}\u0026#39;\u0026#39;\n  - `plaintext` (`string`): The plaintext to be encrypted.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_secret_ciphertext.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    crypto_key,
    plaintext,
    additional_authenticated_data=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_secret_ciphertext',
    label=resourceLabel,
    attrs=self.newAttrs(
      additional_authenticated_data=additional_authenticated_data,
      crypto_key=crypto_key,
      plaintext=plaintext,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.kms_secret_ciphertext.newAttrs` constructs a new object with attributes and blocks configured for the `kms_secret_ciphertext`\nTerraform resource.\n\nUnlike [google.kms_secret_ciphertext.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `additional_authenticated_data` (`string`): The additional authenticated data used for integrity checks during encryption and decryption. When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.\n  - `crypto_key` (`string`): The full name of the CryptoKey that will be used to encrypt the provided plaintext.\nFormat: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}&#39;&#39;\n  - `plaintext` (`string`): The plaintext to be encrypted.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_secret_ciphertext.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_secret_ciphertext` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    crypto_key,
    plaintext,
    additional_authenticated_data=null,
    timeouts=null
  ):: std.prune(a={
    additional_authenticated_data: additional_authenticated_data,
    crypto_key: crypto_key,
    plaintext: plaintext,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.kms_secret_ciphertext.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAdditionalAuthenticatedData':: d.fn(help='`google.string.withAdditionalAuthenticatedData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the additional_authenticated_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `additional_authenticated_data` field.\n', args=[]),
  withAdditionalAuthenticatedData(resourceLabel, value): {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          additional_authenticated_data: value,
        },
      },
    },
  },
  '#withCryptoKey':: d.fn(help='`google.string.withCryptoKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the crypto_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crypto_key` field.\n', args=[]),
  withCryptoKey(resourceLabel, value): {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  '#withPlaintext':: d.fn(help='`google.string.withPlaintext` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the plaintext field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `plaintext` field.\n', args=[]),
  withPlaintext(resourceLabel, value): {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          plaintext: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
