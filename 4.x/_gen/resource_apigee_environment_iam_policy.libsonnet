local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    env_id,
    org_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_environment_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(env_id=env_id, org_id=org_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    env_id,
    org_id,
    policy_data
  ):: std.prune(a={
    env_id: env_id,
    org_id: org_id,
    policy_data: policy_data,
  }),
  withEnvId(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_policy+: {
        [resourceLabel]+: {
          env_id: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_policy+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
