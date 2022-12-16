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
    bucket,
    member,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      condition=condition,
      member=member,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    member,
    role,
    condition=null
  ):: std.prune(a={
    bucket: bucket,
    condition: condition,
    member: member,
    role: role,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_member+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
