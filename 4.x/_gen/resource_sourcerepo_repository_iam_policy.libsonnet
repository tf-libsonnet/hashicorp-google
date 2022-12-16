local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    repository,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_sourcerepo_repository_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, repository=repository),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    repository,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    repository: repository,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRepository(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository_iam_policy+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
}
