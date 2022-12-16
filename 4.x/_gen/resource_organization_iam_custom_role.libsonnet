local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    org_id,
    permissions,
    role_id,
    title,
    description=null,
    stage=null,
    _meta={}
  ):: tf.withResource(
    type='google_organization_iam_custom_role',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      org_id=org_id,
      permissions=permissions,
      role_id=role_id,
      stage=stage,
      title=title
    ),
    _meta=_meta
  ),
  newAttrs(
    org_id,
    permissions,
    role_id,
    title,
    description=null,
    stage=null
  ):: std.prune(a={
    description: description,
    org_id: org_id,
    permissions: permissions,
    role_id: role_id,
    stage: stage,
    title: title,
  }),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_organization_iam_custom_role+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_organization_iam_custom_role+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withPermissions(resourceLabel, value):: {
    resource+: {
      google_organization_iam_custom_role+: {
        [resourceLabel]+: {
          permissions: value,
        },
      },
    },
  },
  withRoleId(resourceLabel, value):: {
    resource+: {
      google_organization_iam_custom_role+: {
        [resourceLabel]+: {
          role_id: value,
        },
      },
    },
  },
  withStage(resourceLabel, value):: {
    resource+: {
      google_organization_iam_custom_role+: {
        [resourceLabel]+: {
          stage: value,
        },
      },
    },
  },
  withTitle(resourceLabel, value):: {
    resource+: {
      google_organization_iam_custom_role+: {
        [resourceLabel]+: {
          title: value,
        },
      },
    },
  },
}
