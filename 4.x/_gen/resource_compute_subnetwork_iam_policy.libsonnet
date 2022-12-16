local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    subnetwork,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_subnetwork_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      policy_data=policy_data,
      project=project,
      region=region,
      subnetwork=subnetwork
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    subnetwork,
    project=null,
    region=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    region: region,
    subnetwork: subnetwork,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_policy+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
}
