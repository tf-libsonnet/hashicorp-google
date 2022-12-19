local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='billing_budget', url='', help='`billing_budget` represents the `google_billing_budget` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  all_updates_rule:: {
    '#new':: d.fn(help='\n`google.billing_budget.all_updates_rule.new` constructs a new object with attributes and blocks configured for the `all_updates_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disable_default_iam_recipients` (`bool`): Boolean. When set to true, disables default notifications sent\nwhen a threshold is exceeded. Default recipients are\nthose with Billing Account Administrators and Billing\nAccount Users IAM roles for the target account. When `null`, the `disable_default_iam_recipients` field will be omitted from the resulting object.\n  - `monitoring_notification_channels` (`list`): The full resource name of a monitoring notification\nchannel in the form\nprojects/{project_id}/notificationChannels/{channel_id}.\nA maximum of 5 channels are allowed. When `null`, the `monitoring_notification_channels` field will be omitted from the resulting object.\n  - `pubsub_topic` (`string`): The name of the Cloud Pub/Sub topic where budget related\nmessages will be published, in the form\nprojects/{project_id}/topics/{topic_id}. Updates are sent\nat regular intervals to the topic. When `null`, the `pubsub_topic` field will be omitted from the resulting object.\n  - `schema_version` (`string`): The schema version of the notification. Only &#34;1.0&#34; is\naccepted. It represents the JSON schema as defined in\nhttps://cloud.google.com/billing/docs/how-to/budgets#notification_format. When `null`, the `schema_version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `all_updates_rule` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.billing_budget.amount.new` constructs a new object with attributes and blocks configured for the `amount`\nTerraform sub block.\n\n\n\n**Args**:\n  - `last_period_amount` (`bool`): Configures a budget amount that is automatically set to 100% of\nlast period&#39;s spend.\nBoolean. Set value to true to use. Do not set to false, instead\nuse the &#39;specified_amount&#39; block. When `null`, the `last_period_amount` field will be omitted from the resulting object.\n  - `specified_amount` (`list[obj]`): A specified amount to use as the budget. currencyCode is\noptional. If specified, it must match the currency of the\nbilling account. The currencyCode is provided on output. When `null`, the `specified_amount` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.amount.specified_amount.new](#fn-amountspecifiedamountnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `amount` sub block.\n', args=[]),
    new(
      last_period_amount=null,
      specified_amount=null
    ):: std.prune(a={
      last_period_amount: last_period_amount,
      specified_amount: specified_amount,
    }),
    specified_amount:: {
      '#new':: d.fn(help='\n`google.billing_budget.amount.specified_amount.new` constructs a new object with attributes and blocks configured for the `specified_amount`\nTerraform sub block.\n\n\n\n**Args**:\n  - `currency_code` (`string`): The 3-letter currency code defined in ISO 4217. When `null`, the `currency_code` field will be omitted from the resulting object.\n  - `nanos` (`number`): Number of nano (10^-9) units of the amount.\nThe value must be between -999,999,999 and &#43;999,999,999\ninclusive. If units is positive, nanos must be positive or\nzero. If units is zero, nanos can be positive, zero, or\nnegative. If units is negative, nanos must be negative or\nzero. For example $-1.75 is represented as units=-1 and\nnanos=-750,000,000. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `units` (`string`): The whole units of the amount. For example if currencyCode\nis &#34;USD&#34;, then 1 unit is one US dollar. When `null`, the `units` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `specified_amount` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.billing_budget.budget_filter.custom_period.end_date.new` constructs a new object with attributes and blocks configured for the `end_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month.\n  - `month` (`number`): Month of a year. Must be from 1 to 12.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999.\n\n**Returns**:\n  - An attribute object that represents the `end_date` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.billing_budget.budget_filter.custom_period.new` constructs a new object with attributes and blocks configured for the `custom_period`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_date` (`list[obj]`): Optional. The end date of the time period. Budgets with elapsed end date won&#39;t be processed. \nIf unset, specifies to track all usage incurred since the startDate. When `null`, the `end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.custom_period.end_date.new](#fn-customperiodenddatenew) constructor.\n  - `start_date` (`list[obj]`): A start date is required. The start date must be after January 1, 2017. When `null`, the `start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.custom_period.start_date.new](#fn-customperiodstartdatenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_period` sub block.\n', args=[]),
      new(
        end_date=null,
        start_date=null
      ):: std.prune(a={
        end_date: end_date,
        start_date: start_date,
      }),
      start_date:: {
        '#new':: d.fn(help='\n`google.billing_budget.budget_filter.custom_period.start_date.new` constructs a new object with attributes and blocks configured for the `start_date`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month.\n  - `month` (`number`): Month of a year. Must be from 1 to 12.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999.\n\n**Returns**:\n  - An attribute object that represents the `start_date` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.billing_budget.budget_filter.new` constructs a new object with attributes and blocks configured for the `budget_filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `calendar_period` (`string`): A CalendarPeriod represents the abstract concept of a recurring time period that has a\ncanonical start. Grammatically, &#34;the start of the current CalendarPeriod&#34;.\nAll calendar times begin at 12 AM US and Canadian Pacific Time (UTC-8).\n\nExactly one of &#39;calendar_period&#39;, &#39;custom_period&#39; must be provided. Possible values: [&#34;MONTH&#34;, &#34;QUARTER&#34;, &#34;YEAR&#34;, &#34;CALENDAR_PERIOD_UNSPECIFIED&#34;] When `null`, the `calendar_period` field will be omitted from the resulting object.\n  - `credit_types` (`list`): Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,\nthis is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See a list of acceptable credit type values.\nIf creditTypesTreatment is not INCLUDE_SPECIFIED_CREDITS, this field must be empty. When `null`, the `credit_types` field will be omitted from the resulting object.\n  - `credit_types_treatment` (`string`): Specifies how credits should be treated when determining spend\nfor threshold calculations. Default value: &#34;INCLUDE_ALL_CREDITS&#34; Possible values: [&#34;INCLUDE_ALL_CREDITS&#34;, &#34;EXCLUDE_ALL_CREDITS&#34;, &#34;INCLUDE_SPECIFIED_CREDITS&#34;] When `null`, the `credit_types_treatment` field will be omitted from the resulting object.\n  - `labels` (`obj`): A single label and value pair specifying that usage from only\nthis set of labeled resources should be included in the budget. When `null`, the `labels` field will be omitted from the resulting object.\n  - `projects` (`list`): A set of projects of the form projects/{project_number},\nspecifying that usage from only this set of projects should be\nincluded in the budget. If omitted, the report will include\nall usage for the billing account, regardless of which project\nthe usage occurred on. When `null`, the `projects` field will be omitted from the resulting object.\n  - `services` (`list`): A set of services of the form services/{service_id},\nspecifying that usage from only this set of services should be\nincluded in the budget. If omitted, the report will include\nusage for all the services. The service names are available\nthrough the Catalog API:\nhttps://cloud.google.com/billing/v1/how-tos/catalog-api. When `null`, the `services` field will be omitted from the resulting object.\n  - `subaccounts` (`list`): A set of subaccounts of the form billingAccounts/{account_id},\nspecifying that usage from only this set of subaccounts should\nbe included in the budget. If a subaccount is set to the name of\nthe parent account, usage from the parent account will be included.\nIf the field is omitted, the report will include usage from the parent\naccount and all subaccounts, if they exist. When `null`, the `subaccounts` field will be omitted from the resulting object.\n  - `custom_period` (`list[obj]`): Specifies to track usage from any start date (required) to any end date (optional).\nThis time period is static, it does not recur.\n\nExactly one of &#39;calendar_period&#39;, &#39;custom_period&#39; must be provided. When `null`, the `custom_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.custom_period.new](#fn-budgetfiltercustomperiodnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `budget_filter` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.billing_budget.new` injects a new `google_billing_budget` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.billing_budget.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.billing_budget` using the reference:\n\n    $._ref.google_billing_budget.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_billing_budget.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `billing_account` (`string`): ID of the billing account to set a budget on.\n  - `display_name` (`string`): User data for display name in UI. Must be \u0026lt;= 60 chars. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `all_updates_rule` (`list[obj]`): Defines notifications that are sent on every update to the\nbilling account\u0026#39;s spend, regardless of the thresholds defined\nusing threshold rules. When `null`, the `all_updates_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.all_updates_rule.new](#fn-billingbudgetallupdatesrulenew) constructor.\n  - `amount` (`list[obj]`): The budgeted amount for each usage period. When `null`, the `amount` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.amount.new](#fn-billingbudgetamountnew) constructor.\n  - `budget_filter` (`list[obj]`): Filters that define which resources are used to compute the actual\nspend against the budget. When `null`, the `budget_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.new](#fn-billingbudgetbudgetfilternew) constructor.\n  - `threshold_rules` (`list[obj]`): Rules that trigger alerts (notifications of thresholds being\ncrossed) when spend exceeds the specified percentages of the\nbudget. When `null`, the `threshold_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.threshold_rules.new](#fn-billingbudgetthresholdrulesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.timeouts.new](#fn-billingbudgettimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.billing_budget.newAttrs` constructs a new object with attributes and blocks configured for the `billing_budget`\nTerraform resource.\n\nUnlike [google.billing_budget.new](#fn-billingbudgetnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `billing_account` (`string`): ID of the billing account to set a budget on.\n  - `display_name` (`string`): User data for display name in UI. Must be &lt;= 60 chars. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `all_updates_rule` (`list[obj]`): Defines notifications that are sent on every update to the\nbilling account&#39;s spend, regardless of the thresholds defined\nusing threshold rules. When `null`, the `all_updates_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.all_updates_rule.new](#fn-billingbudgetallupdatesrulenew) constructor.\n  - `amount` (`list[obj]`): The budgeted amount for each usage period. When `null`, the `amount` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.amount.new](#fn-billingbudgetamountnew) constructor.\n  - `budget_filter` (`list[obj]`): Filters that define which resources are used to compute the actual\nspend against the budget. When `null`, the `budget_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.new](#fn-billingbudgetbudgetfilternew) constructor.\n  - `threshold_rules` (`list[obj]`): Rules that trigger alerts (notifications of thresholds being\ncrossed) when spend exceeds the specified percentages of the\nbudget. When `null`, the `threshold_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.threshold_rules.new](#fn-billingbudgetthresholdrulesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.timeouts.new](#fn-billingbudgettimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `billing_budget` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.billing_budget.threshold_rules.new` constructs a new object with attributes and blocks configured for the `threshold_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `spend_basis` (`string`): The type of basis used to determine if spend has passed\nthe threshold. Default value: &#34;CURRENT_SPEND&#34; Possible values: [&#34;CURRENT_SPEND&#34;, &#34;FORECASTED_SPEND&#34;] When `null`, the `spend_basis` field will be omitted from the resulting object.\n  - `threshold_percent` (`number`): Send an alert when this threshold is exceeded. This is a\n1.0-based percentage, so 0.5 = 50%. Must be &gt;= 0.\n\n**Returns**:\n  - An attribute object that represents the `threshold_rules` sub block.\n', args=[]),
    new(
      threshold_percent,
      spend_basis=null
    ):: std.prune(a={
      spend_basis: spend_basis,
      threshold_percent: threshold_percent,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.billing_budget.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAllUpdatesRule':: d.fn(help='`google.list[obj].withAllUpdatesRule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the all_updates_rule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAllUpdatesRuleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `all_updates_rule` field.\n', args=[]),
  withAllUpdatesRule(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          all_updates_rule: value,
        },
      },
    },
  },
  '#withAllUpdatesRuleMixin':: d.fn(help='`google.list[obj].withAllUpdatesRuleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the all_updates_rule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAllUpdatesRule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `all_updates_rule` field.\n', args=[]),
  withAllUpdatesRuleMixin(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          all_updates_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAmount':: d.fn(help='`google.list[obj].withAmount` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the amount field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAmountMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `amount` field.\n', args=[]),
  withAmount(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          amount: value,
        },
      },
    },
  },
  '#withAmountMixin':: d.fn(help='`google.list[obj].withAmountMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the amount field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAmount](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `amount` field.\n', args=[]),
  withAmountMixin(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          amount+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBillingAccount':: d.fn(help='`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the billing_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_account` field.\n', args=[]),
  withBillingAccount(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  '#withBudgetFilter':: d.fn(help='`google.list[obj].withBudgetFilter` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the budget_filter field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBudgetFilterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `budget_filter` field.\n', args=[]),
  withBudgetFilter(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          budget_filter: value,
        },
      },
    },
  },
  '#withBudgetFilterMixin':: d.fn(help='`google.list[obj].withBudgetFilterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the budget_filter field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBudgetFilter](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `budget_filter` field.\n', args=[]),
  withBudgetFilterMixin(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          budget_filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withThresholdRules':: d.fn(help='`google.list[obj].withThresholdRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the threshold_rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withThresholdRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `threshold_rules` field.\n', args=[]),
  withThresholdRules(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          threshold_rules: value,
        },
      },
    },
  },
  '#withThresholdRulesMixin':: d.fn(help='`google.list[obj].withThresholdRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the threshold_rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withThresholdRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `threshold_rules` field.\n', args=[]),
  withThresholdRulesMixin(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          threshold_rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_billing_budget+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
