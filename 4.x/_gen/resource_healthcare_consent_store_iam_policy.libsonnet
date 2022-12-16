local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    consent_store_id,
    dataset,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_consent_store_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(consent_store_id=consent_store_id, dataset=dataset, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    consent_store_id,
    dataset,
    policy_data
  ):: std.prune(a={
    consent_store_id: consent_store_id,
    dataset: dataset,
    policy_data: policy_data,
  }),
  withConsentStoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_policy+: {
        [resourceLabel]+: {
          consent_store_id: value,
        },
      },
    },
  },
  withDataset(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_policy+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
