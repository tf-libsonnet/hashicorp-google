local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    job_id,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_job_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      job_id=job_id,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    job_id,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    job_id: job_id,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withJobId(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_policy+: {
        [resourceLabel]+: {
          job_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}
