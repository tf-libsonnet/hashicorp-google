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
    members,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dicom_store_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      dicom_store_id=dicom_store_id,
      members=members,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    dicom_store_id,
    members,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    dicom_store_id: dicom_store_id,
    members: members,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDicomStoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_binding+: {
        [resourceLabel]+: {
          dicom_store_id: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_healthcare_dicom_store_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
