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
    billing_account_id,
    member,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_billing_account_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      billing_account_id=billing_account_id,
      condition=condition,
      member=member,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    billing_account_id,
    member,
    role,
    condition=null
  ):: std.prune(a={
    billing_account_id: billing_account_id,
    condition: condition,
    member: member,
    role: role,
  }),
  withBillingAccountId(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_member+: {
        [resourceLabel]+: {
          billing_account_id: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_billing_account_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
