local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cluster,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_cluster_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster=cluster,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    cluster: cluster,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withCluster(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster_iam_policy+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}
