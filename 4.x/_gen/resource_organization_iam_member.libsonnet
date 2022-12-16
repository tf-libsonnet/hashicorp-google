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
    org_id,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_organization_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      org_id=org_id,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    org_id,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    org_id: org_id,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_organization_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_organization_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_organization_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_organization_iam_member+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_organization_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
