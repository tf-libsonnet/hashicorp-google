local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    payload,
    target_service_account,
    delegates=null,
    expires_in=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_jwt',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      delegates=delegates,
      expires_in=expires_in,
      payload=payload,
      target_service_account=target_service_account
    ),
    _meta=_meta
  ),
  newAttrs(
    payload,
    target_service_account,
    delegates=null,
    expires_in=null
  ):: std.prune(a={
    delegates: delegates,
    expires_in: expires_in,
    payload: payload,
    target_service_account: target_service_account,
  }),
  withDelegates(dataSrcLabel, value):: {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          delegates: value,
        },
      },
    },
  },
  withExpiresIn(dataSrcLabel, value):: {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          expires_in: value,
        },
      },
    },
  },
  withPayload(dataSrcLabel, value):: {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          payload: value,
        },
      },
    },
  },
  withTargetServiceAccount(dataSrcLabel, value):: {
    data+: {
      google_service_account_jwt+: {
        [dataSrcLabel]+: {
          target_service_account: value,
        },
      },
    },
  },
}
