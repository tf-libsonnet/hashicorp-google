local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    parent,
    title,
    scopes=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      parent=parent,
      scopes=scopes,
      timeouts=timeouts,
      title=title
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    title,
    scopes=null,
    timeouts=null
  ):: std.prune(a={
    parent: parent,
    scopes: scopes,
    timeouts: timeouts,
    title: title,
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
  withParent(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withScopes(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy+: {
        [resourceLabel]+: {
          scopes: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTitle(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy+: {
        [resourceLabel]+: {
          title: value,
        },
      },
    },
  },
}
