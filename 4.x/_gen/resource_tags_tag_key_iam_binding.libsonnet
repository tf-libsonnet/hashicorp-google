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
    tag_key,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_key_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      role=role,
      tag_key=tag_key
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    role,
    tag_key,
    condition=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    role: role,
    tag_key: tag_key,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTagKey(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_binding+: {
        [resourceLabel]+: {
          tag_key: value,
        },
      },
    },
  },
}
