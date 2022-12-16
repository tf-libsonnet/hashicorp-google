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
    org_id,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_organization_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      org_id=org_id,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    org_id,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    org_id: org_id,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_organization_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_organization_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_organization_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_organization_iam_binding+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_organization_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
