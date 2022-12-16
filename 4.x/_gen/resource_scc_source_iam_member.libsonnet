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
    organization,
    role,
    source,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_source_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      organization=organization,
      role=role,
      source=source
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    organization,
    role,
    source,
    condition=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    organization: organization,
    role: role,
    source: source,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_member+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withSource(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_member+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
}
