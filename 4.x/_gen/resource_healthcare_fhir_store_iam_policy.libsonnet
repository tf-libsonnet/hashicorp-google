local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    fhir_store_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_fhir_store_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(fhir_store_id=fhir_store_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    fhir_store_id,
    policy_data
  ):: std.prune(a={
    fhir_store_id: fhir_store_id,
    policy_data: policy_data,
  }),
  withFhirStoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store_iam_policy+: {
        [resourceLabel]+: {
          fhir_store_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_healthcare_fhir_store_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
