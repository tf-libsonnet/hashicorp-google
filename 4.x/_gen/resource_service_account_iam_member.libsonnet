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
    role,
    service_account_id,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_account_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      role=role,
      service_account_id=service_account_id
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    service_account_id,
    condition=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    role: role,
    service_account_id: service_account_id,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withServiceAccountId(resourceLabel, value):: {
    resource+: {
      google_service_account_iam_member+: {
        [resourceLabel]+: {
          service_account_id: value,
        },
      },
    },
  },
}