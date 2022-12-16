local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_web_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_iap_web_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_web_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
