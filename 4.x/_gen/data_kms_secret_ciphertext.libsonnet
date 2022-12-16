local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  newAttrs(
    crypto_key,
    plaintext
  ):: std.prune(a={
    crypto_key: crypto_key,
    plaintext: plaintext,
  }),
  withCryptoKey(dataSrcLabel, value):: {
    data+: {
      google_kms_secret_ciphertext+: {
        [dataSrcLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  withPlaintext(dataSrcLabel, value):: {
    data+: {
      google_kms_secret_ciphertext+: {
        [dataSrcLabel]+: {
          plaintext: value,
        },
      },
    },
  },
}
