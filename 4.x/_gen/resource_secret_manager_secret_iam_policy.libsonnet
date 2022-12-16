local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    secret_id,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_secret_manager_secret_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, secret_id=secret_id),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    secret_id,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    secret_id: secret_id,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSecretId(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_policy+: {
        [resourceLabel]+: {
          secret_id: value,
        },
      },
    },
  },
}
