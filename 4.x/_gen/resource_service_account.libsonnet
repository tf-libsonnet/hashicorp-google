local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    account_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_account',
    label=resourceLabel,
    attrs=self.newAttrs(
      account_id=account_id,
      description=description,
      disabled=disabled,
      display_name=display_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    account_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    account_id: account_id,
    description: description,
    disabled: disabled,
    display_name: display_name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null
    ):: std.prune(a={
      create: create,
    }),
  },
  withAccountId(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          account_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
