local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    parent,
    short_name,
    description=null,
    purpose=null,
    purpose_data=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      parent=parent,
      purpose=purpose,
      purpose_data=purpose_data,
      short_name=short_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    short_name,
    description=null,
    purpose=null,
    purpose_data=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    parent: parent,
    purpose: purpose,
    purpose_data: purpose_data,
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
      google_tags_tag_key+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  withPurposeData(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          purpose_data: value,
        },
      },
    },
  },
  withShortName(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          short_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
