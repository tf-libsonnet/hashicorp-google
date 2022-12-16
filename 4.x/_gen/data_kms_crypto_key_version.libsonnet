local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  newAttrs(
    crypto_key,
    version=null
  ):: std.prune(a={
    crypto_key: crypto_key,
    version: version,
  }),
  withCryptoKey(dataSrcLabel, value):: {
    data+: {
      google_kms_crypto_key_version+: {
        [dataSrcLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  withVersion(dataSrcLabel, value):: {
    data+: {
      google_kms_crypto_key_version+: {
        [dataSrcLabel]+: {
          version: value,
        },
      },
    },
  },
}
