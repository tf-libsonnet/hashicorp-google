local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    parent,
    short_name,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_value',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      parent=parent,
      short_name=short_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    short_name,
    description=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    parent: parent,
    short_name: short_name,
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
      google_tags_tag_value+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withShortName(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          short_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
