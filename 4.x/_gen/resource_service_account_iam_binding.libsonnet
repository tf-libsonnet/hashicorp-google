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
    service_account_id,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_account_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      role=role,
      service_account_id=service_account_id
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    role,
    service_account_id,
    condition=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    role: role,
    service_account_id: service_account_id,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withServiceAccountId(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_binding+: {
        [resourceLabel]+: {
          service_account_id: value,
        },
      },
    },
  },
}
