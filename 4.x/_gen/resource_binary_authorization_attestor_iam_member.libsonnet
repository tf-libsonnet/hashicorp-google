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
    attestor,
    member,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_attestor_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestor=attestor,
      condition=condition,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    attestor,
    member,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    attestor: attestor,
    condition: condition,
    member: member,
    project: project,
    role: role,
  }),
  withAttestor(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_member+: {
        [resourceLabel]+: {
          attestor: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
