local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    entry_group,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_entry_group_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      entry_group=entry_group,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    entry_group,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    entry_group: entry_group,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withEntryGroup(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_policy+: {
        [resourceLabel]+: {
          entry_group: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}
