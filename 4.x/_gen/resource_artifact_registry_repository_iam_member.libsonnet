local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    member,
    repository,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_repository_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      location=location,
      member=member,
      project=project,
      repository=repository,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    repository,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    location: location,
    member: member,
    project: project,
    repository: repository,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRepository(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
