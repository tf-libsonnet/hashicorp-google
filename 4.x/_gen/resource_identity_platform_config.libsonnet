local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    autodelete_anonymous_users=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_config',
    label=resourceLabel,
    attrs=self.newAttrs(autodelete_anonymous_users=autodelete_anonymous_users, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    autodelete_anonymous_users=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    autodelete_anonymous_users: autodelete_anonymous_users,
    project: project,
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
  withAutodeleteAnonymousUsers(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          autodelete_anonymous_users: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
