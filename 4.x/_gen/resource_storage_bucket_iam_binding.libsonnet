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
    members,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      condition=condition,
      members=members,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    members,
    role,
    condition=null
  ):: std.prune(a={
    bucket: bucket,
    condition: condition,
    members: members,
    role: role,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_binding+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
