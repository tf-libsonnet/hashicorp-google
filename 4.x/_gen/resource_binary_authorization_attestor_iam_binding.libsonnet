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
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_attestor_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestor=attestor,
      condition=condition,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    attestor,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    attestor: attestor,
    condition: condition,
    members: members,
    project: project,
    role: role,
  }),
  withAttestor(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_binding+: {
        [resourceLabel]+: {
          attestor: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
