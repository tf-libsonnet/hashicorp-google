local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  all_updates_rule:: {
    new(
      disable_default_iam_recipients=null,
      monitoring_notification_channels=null,
      pubsub_topic=null,
      schema_version=null
    ):: std.prune(a={
      disable_default_iam_recipients: disable_default_iam_recipients,
      monitoring_notification_channels: monitoring_notification_channels,
      pubsub_topic: pubsub_topic,
      schema_version: schema_version,
    }),
  },
  amount:: {
    new(
      last_period_amount=null,
      specified_amount=null
    ):: std.prune(a={
      last_period_amount: last_period_amount,
      specified_amount: specified_amount,
    }),
    specified_amount:: {
      new(
        currency_code=null,
        nanos=null,
        units=null
      ):: std.prune(a={
        currency_code: currency_code,
        nanos: nanos,
        units: units,
      }),
    },
  },
  budget_filter:: {
    custom_period:: {
      end_date:: {
        new(
          day,
          month,
          year
        ):: std.prune(a={
          day: day,
          month: month,
          year: year,
        }),
      },
      new(
        end_date=null,
        start_date=null
      ):: std.prune(a={
        end_date: end_date,
        start_date: start_date,
      }),
      start_date:: {
        new(
          day,
          month,
          year
        ):: std.prune(a={
          day: day,
          month: month,
          year: year,
        }),
      },
    },
    new(
      calendar_period=null,
      credit_types=null,
      credit_types_treatment=null,
      custom_period=null,
      labels=null,
      projects=null,
      services=null,
      subaccounts=null
    ):: std.prune(a={
      calendar_period: calendar_period,
      credit_types: credit_types,
      credit_types_treatment: credit_types_treatment,
      custom_period: custom_period,
      labels: labels,
      projects: projects,
      services: services,
      subaccounts: subaccounts,
    }),
  },
  new(
    resourceLabel,
    billing_account,
    all_updates_rule=null,
    amount=null,
    budget_filter=null,
    display_name=null,
    threshold_rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_billing_budget',
    label=resourceLabel,
    attrs=self.newAttrs(
      all_updates_rule=all_updates_rule,
      amount=amount,
      billing_account=billing_account,
      budget_filter=budget_filter,
      display_name=display_name,
      threshold_rules=threshold_rules,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    billing_account,
    all_updates_rule=null,
    amount=null,
    budget_filter=null,
    display_name=null,
    threshold_rules=null,
    timeouts=null
  ):: std.prune(a={
    all_updates_rule: all_updates_rule,
    amount: amount,
    billing_account: billing_account,
    budget_filter: budget_filter,
    display_name: display_name,
    threshold_rules: threshold_rules,
    timeouts: timeouts,
  }),
  threshold_rules:: {
    new(
      threshold_percent,
      spend_basis=null
    ):: std.prune(a={
      spend_basis: spend_basis,
      threshold_percent: threshold_percent,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  withAllUpdatesRule(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          all_updates_rule: value,
        },
      },
    },
  },
  withAllUpdatesRuleMixin(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          all_updates_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAmount(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          amount: value,
        },
      },
    },
  },
  withAmountMixin(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          amount+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withBudgetFilter(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          budget_filter: value,
        },
      },
    },
  },
  withBudgetFilterMixin(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          budget_filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withThresholdRules(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          threshold_rules: value,
        },
      },
    },
  },
  withThresholdRulesMixin(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          threshold_rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
