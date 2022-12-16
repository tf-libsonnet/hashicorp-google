local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dataset_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dataset_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(dataset_id=dataset_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    dataset_id,
    policy_data
  ):: std.prune(a={
    dataset_id: dataset_id,
    policy_data: policy_data,
  }),
  withDatasetId(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset_iam_policy+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
