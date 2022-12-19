local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='kms_crypto_key_version', url='', help='`kms_crypto_key_version` represents the `google_kms_crypto_key_version` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.kms_crypto_key_version.new` injects a new `data_google_kms_crypto_key_version` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.kms_crypto_key_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.kms_crypto_key_version` using the reference:\n\n    $._ref.data_google_kms_crypto_key_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_kms_crypto_key_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `crypto_key` (`string`): \n  - `version` (`number`):  When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    crypto_key,
    version=null,
    _meta={}
  ):: tf.withData(
    type='google_kms_crypto_key_version',
    label=dataSrcLabel,
    attrs=self.newAttrs(crypto_key=crypto_key, version=version),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.kms_crypto_key_version.newAttrs` constructs a new object with attributes and blocks configured for the `kms_crypto_key_version`\nTerraform data source.\n\nUnlike [google.data.kms_crypto_key_version.new](#fn-kmscryptokeyversionnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `crypto_key` (`string`): \n  - `version` (`number`):  When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `kms_crypto_key_version` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    crypto_key,
    version=null
  ):: std.prune(a={
    crypto_key: crypto_key,
    version: version,
  }),
  '#withCryptoKey':: d.fn(help='`google.string.withCryptoKey` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the crypto_key field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crypto_key` field.\n', args=[]),
  withCryptoKey(dataSrcLabel, value): {
    data+: {
      google_kms_crypto_key_version+: {
        [dataSrcLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.number.withVersion` constructs a mixin object that can be merged into the `number`\nTerraform data source block to set or update the version field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `version` field.\n', args=[]),
  withVersion(dataSrcLabel, value): {
    data+: {
      google_kms_crypto_key_version+: {
        [dataSrcLabel]+: {
          version: value,
        },
      },
    },
  },
}
