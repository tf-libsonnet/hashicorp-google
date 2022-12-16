local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAdditionalAuthenticatedData(resourceLabel, value):: {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          additional_authenticated_data: value,
        },
      },
    },
  },
  withCryptoKey(resourceLabel, value):: {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  withPlaintext(resourceLabel, value):: {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          plaintext: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_kms_secret_ciphertext+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
