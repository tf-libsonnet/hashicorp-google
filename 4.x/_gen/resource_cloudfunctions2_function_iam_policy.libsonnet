local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cloud_function,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions2_function_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      cloud_function=cloud_function,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    cloud_function,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    cloud_function: cloud_function,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withCloudFunction(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_policy+: {
        [resourceLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
