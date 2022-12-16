local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    service_account_id,
    _meta={}
  ):: tf.withResource(
    type='google_service_account_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, service_account_id=service_account_id),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    service_account_id
  ):: std.prune(a={
    policy_data: policy_data,
    service_account_id: service_account_id,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withServiceAccountId(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_policy+: {
        [resourceLabel]+: {
          service_account_id: value,
        },
      },
    },
  },
}
