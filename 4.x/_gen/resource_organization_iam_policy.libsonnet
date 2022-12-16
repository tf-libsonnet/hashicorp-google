local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    org_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_organization_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(org_id=org_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    org_id,
    policy_data
  ):: std.prune(a={
    org_id: org_id,
    policy_data: policy_data,
  }),
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_organization_iam_policy+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_organization_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
