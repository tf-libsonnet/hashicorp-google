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
    members,
    repository,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_repository_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      location=location,
      members=members,
      project=project,
      repository=repository,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    repository,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    location: location,
    members: members,
    project: project,
    repository: repository,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRepository(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
