local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_instance_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(instance=instance, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    instance,
    policy_data,
    project=null
  ):: std.prune(a={
    instance: instance,
    policy_data: policy_data,
    project: project,
  }),
  withInstance(resourceLabel, value):: {
    resource+: {
      google_spanner_instance_iam_policy+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_spanner_instance_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_spanner_instance_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
