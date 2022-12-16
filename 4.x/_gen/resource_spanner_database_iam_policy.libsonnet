local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    database,
    instance,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_database_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      database=database,
      instance=instance,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    database,
    instance,
    policy_data,
    project=null
  ):: std.prune(a={
    database: database,
    instance: instance,
    policy_data: policy_data,
    project: project,
  }),
  withDatabase(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_policy+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_policy+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
