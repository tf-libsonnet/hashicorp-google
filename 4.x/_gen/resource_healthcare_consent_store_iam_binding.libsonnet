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
    consent_store_id,
    dataset,
    members,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_consent_store_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      consent_store_id=consent_store_id,
      dataset=dataset,
      members=members,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    consent_store_id,
    dataset,
    members,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    consent_store_id: consent_store_id,
    dataset: dataset,
    members: members,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConsentStoreId(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_binding+: {
        [resourceLabel]+: {
          consent_store_id: value,
        },
      },
    },
  },
  withDataset(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_binding+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
