local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    attestor,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_attestor_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(attestor=attestor, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    attestor,
    policy_data,
    project=null
  ):: std.prune(a={
    attestor: attestor,
    policy_data: policy_data,
    project: project,
  }),
  withAttestor(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_policy+: {
        [resourceLabel]+: {
          attestor: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
