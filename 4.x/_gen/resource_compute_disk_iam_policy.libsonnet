local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    policy_data,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      policy_data=policy_data,
      project=project,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    policy_data,
    project=null,
    zone=null
  ):: std.prune(a={
    name: name,
    policy_data: policy_data,
    project: project,
    zone: zone,
  }),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_policy+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
