local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    billing_account_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_billing_account_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(billing_account_id=billing_account_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    billing_account_id,
    policy_data
  ):: std.prune(a={
    billing_account_id: billing_account_id,
    policy_data: policy_data,
  }),
  withBillingAccountId(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_policy+: {
        [resourceLabel]+: {
          billing_account_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
