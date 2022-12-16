local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    repository,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_repository_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      policy_data=policy_data,
      project=project,
      repository=repository
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    repository,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    policy_data: policy_data,
    project: project,
    repository: repository,
  }),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRepository(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_policy+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
}
