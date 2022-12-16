local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    crypto_key,
    state=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_crypto_key_version',
    label=resourceLabel,
    attrs=self.newAttrs(crypto_key=crypto_key, state=state, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    crypto_key,
    state=null,
    timeouts=null
  ):: std.prune(a={
    crypto_key: crypto_key,
    state: state,
    timeouts: timeouts,
  }),
  timeouts:: {
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
  withCryptoKey(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          crypto_key: value,
        },
      },
    },
  },
  withState(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          state: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
