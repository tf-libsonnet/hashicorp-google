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
    role,
    secret_id,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_secret_manager_secret_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      project=project,
      role=role,
      secret_id=secret_id
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    role,
    secret_id,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    project: project,
    role: role,
    secret_id: secret_id,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withSecretId(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret_iam_binding+: {
        [resourceLabel]+: {
          secret_id: value,
        },
      },
    },
  },
}
