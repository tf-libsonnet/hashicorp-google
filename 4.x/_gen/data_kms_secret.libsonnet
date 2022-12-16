local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  newAttrs(
    ciphertext,
    crypto_key,
    additional_authenticated_data=null
  ):: std.prune(a={
    additional_authenticated_data: additional_authenticated_data,
    ciphertext: ciphertext,
    crypto_key: crypto_key,
  }),
  withAdditionalAuthenticatedData(dataSrcLabel, value):: {
    data+: {
      google_kms_secret+: {
        [dataSrcLabel]+: {
          additional_authenticated_data: value,
        },
      },
    },
  },
  withCiphertext(dataSrcLabel, value):: {
    data+: {
      google_kms_secret+: {
        [dataSrcLabel]+: {
          ciphertext: value,
        },
      },
    },
  },
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
