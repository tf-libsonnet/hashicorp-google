local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    policy_data,
    table,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_table_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance=instance,
      policy_data=policy_data,
      project=project,
      table=table
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    policy_data,
    table,
    project=null
  ):: std.prune(a={
    instance: instance,
    policy_data: policy_data,
    project: project,
    table: table,
  }),
  withInstance(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_policy+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTable(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_policy+: {
        [resourceLabel]+: {
          table: value,
        },
      },
    },
  },
}
