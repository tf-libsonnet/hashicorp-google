local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    description=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    description=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    parent: parent,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_version+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_version+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_version+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
