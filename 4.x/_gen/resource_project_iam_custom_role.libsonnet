local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    permissions,
    role_id,
    title,
    description=null,
    project=null,
    stage=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_iam_custom_role',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      permissions=permissions,
      project=project,
      role_id=role_id,
      stage=stage,
      title=title
    ),
    _meta=_meta
  ),
  newAttrs(
    permissions,
    role_id,
    title,
    description=null,
    project=null,
    stage=null
  ):: std.prune(a={
    description: description,
    permissions: permissions,
    project: project,
    role_id: role_id,
    stage: stage,
    title: title,
  }),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withPermissions(resourceLabel, value):: {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          permissions: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRoleId(resourceLabel, value):: {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          role_id: value,
        },
      },
    },
  },
  withStage(resourceLabel, value):: {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          stage: value,
        },
      },
    },
  },
  withTitle(resourceLabel, value):: {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          title: value,
        },
      },
    },
  },
}
