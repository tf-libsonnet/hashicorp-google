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
    organization,
    role,
    source,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_source_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      organization=organization,
      role=role,
      source=source
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    organization,
    role,
    source,
    condition=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    organization: organization,
    role: role,
    source: source,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_binding+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withSource(resourceLabel, value):: {
    resource+: {
      google_scc_source_iam_binding+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
}
