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
    env_id,
    members,
    org_id,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_environment_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      env_id=env_id,
      members=members,
      org_id=org_id,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    env_id,
    members,
    org_id,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    env_id: env_id,
    members: members,
    org_id: org_id,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnvId(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_binding+: {
        [resourceLabel]+: {
          env_id: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_binding+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_apigee_environment_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
