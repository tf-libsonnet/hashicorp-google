local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    secret,
    secret_data,
    enabled=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_secret_manager_secret_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      enabled=enabled,
      secret=secret,
      secret_data=secret_data,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    secret,
    secret_data,
    enabled=null,
    timeouts=null
  ):: std.prune(a={
    enabled: enabled,
    secret: secret,
    secret_data: secret_data,
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
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withSecret(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          secret: value,
        },
      },
    },
  },
  withSecretData(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          secret_data: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
