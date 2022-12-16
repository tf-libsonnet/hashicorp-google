local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    scopes,
    target_service_account,
    delegates=null,
    lifetime=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_access_token',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      delegates=delegates,
      lifetime=lifetime,
      scopes=scopes,
      target_service_account=target_service_account
    ),
    _meta=_meta
  ),
  newAttrs(
    scopes,
    target_service_account,
    delegates=null,
    lifetime=null
  ):: std.prune(a={
    delegates: delegates,
    lifetime: lifetime,
    scopes: scopes,
    target_service_account: target_service_account,
  }),
  withDelegates(dataSrcLabel, value):: {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          delegates: value,
        },
      },
    },
  },
  withLifetime(dataSrcLabel, value):: {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  withScopes(dataSrcLabel, value):: {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          scopes: value,
        },
      },
    },
  },
  withTargetServiceAccount(dataSrcLabel, value):: {
    data+: {
      google_service_account_access_token+: {
        [dataSrcLabel]+: {
          target_service_account: value,
        },
      },
    },
  },
}
