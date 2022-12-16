local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_tasks_queue_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      name=name,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    name: name,
    policy_data: policy_data,
    project: project,
  }),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue_iam_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
