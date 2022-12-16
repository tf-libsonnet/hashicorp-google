local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    target_audience,
    delegates=null,
    include_email=null,
    target_service_account=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_id_token',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      delegates=delegates,
      include_email=include_email,
      target_audience=target_audience,
      target_service_account=target_service_account
    ),
    _meta=_meta
  ),
  newAttrs(
    target_audience,
    delegates=null,
    include_email=null,
    target_service_account=null
  ):: std.prune(a={
    delegates: delegates,
    include_email: include_email,
    target_audience: target_audience,
    target_service_account: target_service_account,
  }),
  withDelegates(dataSrcLabel, value):: {
    data+: {
      google_service_account_id_token+: {
        [dataSrcLabel]+: {
          delegates: value,
        },
      },
    },
  },
  withIncludeEmail(dataSrcLabel, value):: {
    data+: {
      google_service_account_id_token+: {
        [dataSrcLabel]+: {
          include_email: value,
        },
      },
    },
  },
  withTargetAudience(dataSrcLabel, value):: {
    data+: {
      google_service_account_id_token+: {
        [dataSrcLabel]+: {
          target_audience: value,
        },
      },
    },
  },
  withTargetServiceAccount(dataSrcLabel, value):: {
    data+: {
      google_service_account_id_token+: {
        [dataSrcLabel]+: {
          target_service_account: value,
        },
      },
    },
  },
}
