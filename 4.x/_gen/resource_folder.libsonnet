local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    parent,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_folder',
    label=resourceLabel,
    attrs=self.newAttrs(display_name=display_name, parent=parent, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    parent,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_folder+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_folder+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_folder+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_folder+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
