local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_snapshot_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(name=name, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    name,
    policy_data,
    project=null
  ):: std.prune(a={
    name: name,
    policy_data: policy_data,
    project: project,
  }),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot_iam_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
