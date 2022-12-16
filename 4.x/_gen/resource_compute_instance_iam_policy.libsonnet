local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance_name,
    policy_data,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance_name=instance_name,
      policy_data=policy_data,
      project=project,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    instance_name,
    policy_data,
    project=null,
    zone=null
  ):: std.prune(a={
    instance_name: instance_name,
    policy_data: policy_data,
    project: project,
    zone: zone,
  }),
  withInstanceName(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_policy+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_policy+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
