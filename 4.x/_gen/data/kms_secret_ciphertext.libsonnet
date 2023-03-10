local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='kms_secret_ciphertext', url='', help='`kms_secret_ciphertext` represents the `google_kms_secret_ciphertext` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.kms_secret_ciphertext.new` injects a new `data_google_kms_secret_ciphertext` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.kms_secret_ciphertext.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.kms_secret_ciphertext` using the reference:\n\n    $._ref.data_google_kms_secret_ciphertext.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_kms_secret_ciphertext.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `crypto_key` (`string`): Set the `crypto_key` field on the resulting data source block.\n  - `plaintext` (`string`): Set the `plaintext` field on the resulting data source block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    crypto_key,
    plaintext,
    _meta={}
  ):: tf.withData(
    type='google_kms_secret_ciphertext',
    label=dataSrcLabel,
    attrs=self.newAttrs(crypto_key=crypto_key, plaintext=plaintext),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.kms_secret_ciphertext.newAttrs` constructs a new object with attributes and blocks configured for the `kms_secret_ciphertext`\nTerraform data source.\n\nUnlike [google.data.kms_secret_ciphertext.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `crypto_key` (`string`): Set the `crypto_key` field on the resulting object.\n  - `plaintext` (`string`): Set the `plaintext` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `kms_secret_ciphertext` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    crypto_key,
    plaintext
  ):: std.prune(a={
    crypto_key: crypto_key,
    plaintext: plaintext,
  }),
  '#withCryptoKey':: d.fn(help='`google.string.withCryptoKey` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the crypto_key field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crypto_key` field.\n', args=[]),
  withCryptoKey(dataSrcLabel, value): {
    data+: {
      google_kms_secret_ciphertext+: {
        [dataSrcLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  '#withPlaintext':: d.fn(help='`google.string.withPlaintext` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the plaintext field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `plaintext` field.\n', args=[]),
  withPlaintext(dataSrcLabel, value): {
    data+: {
      google_kms_secret_ciphertext+: {
        [dataSrcLabel]+: {
          plaintext: value,
        },
      },
    },
  },
}
