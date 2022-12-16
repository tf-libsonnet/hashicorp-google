local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    membership_id,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(membership_id=membership_id, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    membership_id,
    policy_data,
    project=null
  ):: std.prune(a={
    membership_id: membership_id,
    policy_data: policy_data,
    project: project,
  }),
  withMembershipId(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_policy+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
