local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    parent,
    tag_value,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_binding',
    label=resourceLabel,
    attrs=self.newAttrs(parent=parent, tag_value=tag_value, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    parent,
    tag_value,
    timeouts=null
  ):: std.prune(a={
    parent: parent,
    tag_value: tag_value,
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
  withParent(resourceLabel, value):: {
    resource+: {
      google_tags_tag_binding+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTagValue(resourceLabel, value):: {
    resource+: {
      google_tags_tag_binding+: {
        [resourceLabel]+: {
          tag_value: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_tags_tag_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
