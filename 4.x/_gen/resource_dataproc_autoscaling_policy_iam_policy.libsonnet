local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    policy_id,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_autoscaling_policy_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      policy_data=policy_data,
      policy_id=policy_id,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    policy_id,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    policy_data: policy_data,
    policy_id: policy_id,
    project: project,
  }),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withPolicyId(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_policy+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
