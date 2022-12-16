local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_policy_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(name=name, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    name,
    policy_data
  ):: std.prune(a={
    name: name,
    policy_data: policy_data,
  }),
  withName(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy_iam_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_policy_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
