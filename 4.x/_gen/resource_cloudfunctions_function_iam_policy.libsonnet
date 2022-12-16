local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cloud_function,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions_function_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      cloud_function=cloud_function,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    cloud_function,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    cloud_function: cloud_function,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withCloudFunction(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_policy+: {
        [resourceLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}
