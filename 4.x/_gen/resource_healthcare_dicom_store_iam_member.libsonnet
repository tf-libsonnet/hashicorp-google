local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    dicom_store_id,
    member,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dicom_store_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      dicom_store_id=dicom_store_id,
      member=member,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    dicom_store_id,
    member,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    dicom_store_id: dicom_store_id,
    member: member,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDicomStoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_member+: {
        [resourceLabel]+: {
          dicom_store_id: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
