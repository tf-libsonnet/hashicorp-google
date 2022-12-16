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
    bucket_id,
    location,
    organization,
    cmek_settings=null,
    description=null,
    retention_days=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_organization_bucket_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_id=bucket_id,
      cmek_settings=cmek_settings,
      description=description,
      location=location,
      organization=organization,
      retention_days=retention_days
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket_id,
    location,
    organization,
    cmek_settings=null,
    description=null,
    retention_days=null
  ):: std.prune(a={
    bucket_id: bucket_id,
    cmek_settings: cmek_settings,
    description: description,
    location: location,
    organization: organization,
    retention_days: retention_days,
  }),
  withBucketId(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          bucket_id: value,
        },
      },
    },
  },
  withCmekSettings(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          cmek_settings: value,
        },
      },
    },
  },
  withCmekSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          cmek_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withRetentionDays(resourceLabel, value):: {
    resource+: {
      google_logging_organization_bucket_config+: {
        [resourceLabel]+: {
          retention_days: value,
        },
      },
    },
  },
}
