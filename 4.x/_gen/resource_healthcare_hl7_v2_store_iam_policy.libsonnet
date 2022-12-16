local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    hl7_v2_store_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_hl7_v2_store_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(hl7_v2_store_id=hl7_v2_store_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    hl7_v2_store_id,
    policy_data
  ):: std.prune(a={
    hl7_v2_store_id: hl7_v2_store_id,
    policy_data: policy_data,
  }),
  withHl7V2StoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store_iam_policy+: {
        [resourceLabel]+: {
          hl7_v2_store_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_healthcare_hl7_v2_store_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
