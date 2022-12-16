local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    service_account_email,
    project=null,
    state=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_hmac_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      project=project,
      service_account_email=service_account_email,
      state=state,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service_account_email,
    project=null,
    state=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    service_account_email: service_account_email,
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
  withProject(resourceLabel, value):: {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceAccountEmail(resourceLabel, value):: {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  withState(resourceLabel, value):: {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          state: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_hmac_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
