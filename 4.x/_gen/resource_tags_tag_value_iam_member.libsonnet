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
    tag_value,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_value_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      role=role,
      tag_value=tag_value
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    tag_value,
    condition=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    role: role,
    tag_value: tag_value,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTagValue(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_member+: {
        [resourceLabel]+: {
          tag_value: value,
        },
      },
    },
  },
}
