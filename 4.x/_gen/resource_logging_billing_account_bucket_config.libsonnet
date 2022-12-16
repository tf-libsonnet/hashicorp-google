local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  cmek_settings:: {
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  new(
    resourceLabel,
    billing_account,
    bucket_id,
    location,
    cmek_settings=null,
    description=null,
    retention_days=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_billing_account_bucket_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      billing_account=billing_account,
      bucket_id=bucket_id,
      cmek_settings=cmek_settings,
      description=description,
      location=location,
      retention_days=retention_days
    ),
    _meta=_meta
  ),
  newAttrs(
    billing_account,
    bucket_id,
    location,
    cmek_settings=null,
    description=null,
    retention_days=null
  ):: std.prune(a={
    billing_account: billing_account,
    bucket_id: bucket_id,
    cmek_settings: cmek_settings,
    description: description,
    location: location,
    retention_days: retention_days,
  }),
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withBucketId(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          bucket_id: value,
        },
      },
    },
  },
  withCmekSettings(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          cmek_settings: value,
        },
      },
    },
  },
  withCmekSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          cmek_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withRetentionDays(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_bucket_config+: {
        [resourceLabel]+: {
          retention_days: value,
        },
      },
    },
  },
}
