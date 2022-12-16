local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dicom_store_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dicom_store_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(dicom_store_id=dicom_store_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    dicom_store_id,
    policy_data
  ):: std.prune(a={
    dicom_store_id: dicom_store_id,
    policy_data: policy_data,
  }),
  withDicomStoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_policy+: {
        [resourceLabel]+: {
          dicom_store_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
