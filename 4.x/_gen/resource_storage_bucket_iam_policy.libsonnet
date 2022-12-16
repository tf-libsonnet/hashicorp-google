local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(bucket=bucket, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    policy_data
  ):: std.prune(a={
    bucket: bucket,
    policy_data: policy_data,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_policy+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
