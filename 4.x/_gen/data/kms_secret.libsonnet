local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='kms_secret', url='', help='`kms_secret` represents the `google_kms_secret` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.kms_secret.new` injects a new `data_google_kms_secret` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.kms_secret.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.kms_secret` using the reference:\n\n    $._ref.data_google_kms_secret.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_kms_secret.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `additional_authenticated_data` (`string`):  When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.\n  - `ciphertext` (`string`): \n  - `crypto_key` (`string`): \n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    ciphertext,
    crypto_key,
    additional_authenticated_data=null,
    _meta={}
  ):: tf.withData(
    type='google_kms_secret',
    label=dataSrcLabel,
    attrs=self.newAttrs(additional_authenticated_data=additional_authenticated_data, ciphertext=ciphertext, crypto_key=crypto_key),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.kms_secret.newAttrs` constructs a new object with attributes and blocks configured for the `kms_secret`\nTerraform data source.\n\nUnlike [google.data.kms_secret.new](#fn-kmssecretnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `additional_authenticated_data` (`string`):  When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.\n  - `ciphertext` (`string`): \n  - `crypto_key` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `kms_secret` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    ciphertext,
    crypto_key,
    additional_authenticated_data=null
  ):: std.prune(a={
    additional_authenticated_data: additional_authenticated_data,
    ciphertext: ciphertext,
    crypto_key: crypto_key,
  }),
  '#withAdditionalAuthenticatedData':: d.fn(help='`google.kms_secret.withAdditionalAuthenticatedData` constructs a mixin object that can be merged into the `kms_secret`\nTerraform data source block to set or update the additional_authenticated_data field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `additional_authenticated_data` field.\n', args=[]),
  withAdditionalAuthenticatedData(dataSrcLabel, value):: {
    data+: {
      google_kms_secret+: {
        [dataSrcLabel]+: {
          additional_authenticated_data: value,
        },
      },
    },
  },
  '#withCiphertext':: d.fn(help='`google.kms_secret.withCiphertext` constructs a mixin object that can be merged into the `kms_secret`\nTerraform data source block to set or update the ciphertext field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `ciphertext` field.\n', args=[]),
  withCiphertext(dataSrcLabel, value):: {
    data+: {
      google_kms_secret+: {
        [dataSrcLabel]+: {
          ciphertext: value,
        },
      },
    },
  },
  '#withCryptoKey':: d.fn(help='`google.kms_secret.withCryptoKey` constructs a mixin object that can be merged into the `kms_secret`\nTerraform data source block to set or update the crypto_key field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `crypto_key` field.\n', args=[]),
  withCryptoKey(dataSrcLabel, value):: {
    data+: {
      google_kms_secret+: {
        [dataSrcLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
}
