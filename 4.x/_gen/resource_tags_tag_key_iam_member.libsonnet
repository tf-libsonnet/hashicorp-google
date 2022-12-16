local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    member,
    role,
    tag_key,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_key_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      role=role,
      tag_key=tag_key
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    tag_key,
    condition=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    role: role,
    tag_key: tag_key,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTagKey(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_member+: {
        [resourceLabel]+: {
          tag_key: value,
        },
      },
    },
  },
}
