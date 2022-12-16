local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance_name,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_instance_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance_name=instance_name,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    instance_name,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    instance_name: instance_name,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withInstanceName(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance_iam_policy+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
