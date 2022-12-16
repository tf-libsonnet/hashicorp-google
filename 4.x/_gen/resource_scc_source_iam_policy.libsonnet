local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    organization,
    policy_data,
    source,
    _meta={}
  ):: tf.withResource(
    type='google_scc_source_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(organization=organization, policy_data=policy_data, source=source),
    _meta=_meta
  ),
  newAttrs(
    organization,
    policy_data,
    source
  ):: std.prune(a={
    organization: organization,
    policy_data: policy_data,
    source: source,
  }),
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_policy+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withSource(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_policy+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
}
