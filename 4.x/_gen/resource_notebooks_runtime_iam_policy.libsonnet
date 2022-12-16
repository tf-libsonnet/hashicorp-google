local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    runtime_name,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_runtime_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      policy_data=policy_data,
      project=project,
      runtime_name=runtime_name
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    runtime_name,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    policy_data: policy_data,
    project: project,
    runtime_name: runtime_name,
  }),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRuntimeName(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_policy+: {
        [resourceLabel]+: {
          runtime_name: value,
        },
      },
    },
  },
}
