local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    action,
    project,
    restore_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_default_service_accounts',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      project=project,
      restore_policy=restore_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    action,
    project,
    restore_policy=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    project: project,
    restore_policy: restore_policy,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  withAction(resourceLabel, value):: {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRestorePolicy(resourceLabel, value):: {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          restore_policy: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
