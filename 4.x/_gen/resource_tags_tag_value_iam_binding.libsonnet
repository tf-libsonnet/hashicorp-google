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
    members,
    role,
    tag_value,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_value_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      role=role,
      tag_value=tag_value
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    role,
    tag_value,
    condition=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    role: role,
    tag_value: tag_value,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTagValue(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_binding+: {
        [resourceLabel]+: {
          tag_value: value,
        },
      },
    },
  },
}
