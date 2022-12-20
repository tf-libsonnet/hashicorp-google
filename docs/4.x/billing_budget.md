---
permalink: /billing_budget/
---

# billing_budget

`billing_budget` represents the `google_billing_budget` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAllUpdatesRule()`](#fn-withallupdatesrule)
* [`fn withAllUpdatesRuleMixin()`](#fn-withallupdatesrulemixin)
* [`fn withAmount()`](#fn-withamount)
* [`fn withAmountMixin()`](#fn-withamountmixin)
* [`fn withBillingAccount()`](#fn-withbillingaccount)
* [`fn withBudgetFilter()`](#fn-withbudgetfilter)
* [`fn withBudgetFilterMixin()`](#fn-withbudgetfiltermixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withThresholdRules()`](#fn-withthresholdrules)
* [`fn withThresholdRulesMixin()`](#fn-withthresholdrulesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj all_updates_rule`](#obj-all_updates_rule)
  * [`fn new()`](#fn-all_updates_rulenew)
* [`obj amount`](#obj-amount)
  * [`fn new()`](#fn-amountnew)
  * [`obj amount.specified_amount`](#obj-amountspecified_amount)
    * [`fn new()`](#fn-amountspecified_amountnew)
* [`obj budget_filter`](#obj-budget_filter)
  * [`fn new()`](#fn-budget_filternew)
  * [`obj budget_filter.custom_period`](#obj-budget_filtercustom_period)
    * [`fn new()`](#fn-budget_filtercustom_periodnew)
    * [`obj budget_filter.custom_period.end_date`](#obj-budget_filtercustom_periodend_date)
      * [`fn new()`](#fn-budget_filtercustom_periodend_datenew)
    * [`obj budget_filter.custom_period.start_date`](#obj-budget_filtercustom_periodstart_date)
      * [`fn new()`](#fn-budget_filtercustom_periodstart_datenew)
* [`obj threshold_rules`](#obj-threshold_rules)
  * [`fn new()`](#fn-threshold_rulesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.billing_budget.new` injects a new `google_billing_budget` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.billing_budget.new('some_id')

You can get the reference to the `id` field of the created `google.billing_budget` using the reference:

    $._ref.google_billing_budget.some_id.get('id')

This is the same as directly entering `"${ google_billing_budget.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `billing_account` (`string`): ID of the billing account to set a budget on.
  - `display_name` (`string`): User data for display name in UI. Must be &lt;= 60 chars. When `null`, the `display_name` field will be omitted from the resulting object.
  - `all_updates_rule` (`list[obj]`): Defines notifications that are sent on every update to the
billing account&#39;s spend, regardless of the thresholds defined
using threshold rules. When `null`, the `all_updates_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.all_updates_rule.new](#fn-all_updates_rulenew) constructor.
  - `amount` (`list[obj]`): The budgeted amount for each usage period. When `null`, the `amount` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.amount.new](#fn-amountnew) constructor.
  - `budget_filter` (`list[obj]`): Filters that define which resources are used to compute the actual
spend against the budget. When `null`, the `budget_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.new](#fn-budget_filternew) constructor.
  - `threshold_rules` (`list[obj]`): Rules that trigger alerts (notifications of thresholds being
crossed) when spend exceeds the specified percentages of the
budget. When `null`, the `threshold_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.threshold_rules.new](#fn-threshold_rulesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.billing_budget.newAttrs` constructs a new object with attributes and blocks configured for the `billing_budget`
Terraform resource.

Unlike [google.billing_budget.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `billing_account` (`string`): ID of the billing account to set a budget on.
  - `display_name` (`string`): User data for display name in UI. Must be &lt;= 60 chars. When `null`, the `display_name` field will be omitted from the resulting object.
  - `all_updates_rule` (`list[obj]`): Defines notifications that are sent on every update to the
billing account&#39;s spend, regardless of the thresholds defined
using threshold rules. When `null`, the `all_updates_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.all_updates_rule.new](#fn-all_updates_rulenew) constructor.
  - `amount` (`list[obj]`): The budgeted amount for each usage period. When `null`, the `amount` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.amount.new](#fn-amountnew) constructor.
  - `budget_filter` (`list[obj]`): Filters that define which resources are used to compute the actual
spend against the budget. When `null`, the `budget_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.new](#fn-budget_filternew) constructor.
  - `threshold_rules` (`list[obj]`): Rules that trigger alerts (notifications of thresholds being
crossed) when spend exceeds the specified percentages of the
budget. When `null`, the `threshold_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.threshold_rules.new](#fn-threshold_rulesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `billing_budget` resource into the root Terraform configuration.


### fn withAllUpdatesRule

```ts
withAllUpdatesRule()
```

`google.list[obj].withAllUpdatesRule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the all_updates_rule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAllUpdatesRuleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `all_updates_rule` field.


### fn withAllUpdatesRuleMixin

```ts
withAllUpdatesRuleMixin()
```

`google.list[obj].withAllUpdatesRuleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the all_updates_rule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAllUpdatesRule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `all_updates_rule` field.


### fn withAmount

```ts
withAmount()
```

`google.list[obj].withAmount` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the amount field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAmountMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `amount` field.


### fn withAmountMixin

```ts
withAmountMixin()
```

`google.list[obj].withAmountMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the amount field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAmount](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `amount` field.


### fn withBillingAccount

```ts
withBillingAccount()
```

`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the billing_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `billing_account` field.


### fn withBudgetFilter

```ts
withBudgetFilter()
```

`google.list[obj].withBudgetFilter` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the budget_filter field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBudgetFilterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `budget_filter` field.


### fn withBudgetFilterMixin

```ts
withBudgetFilterMixin()
```

`google.list[obj].withBudgetFilterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the budget_filter field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBudgetFilter](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `budget_filter` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withThresholdRules

```ts
withThresholdRules()
```

`google.list[obj].withThresholdRules` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the threshold_rules field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withThresholdRulesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `threshold_rules` field.


### fn withThresholdRulesMixin

```ts
withThresholdRulesMixin()
```

`google.list[obj].withThresholdRulesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the threshold_rules field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withThresholdRules](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `threshold_rules` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj all_updates_rule



### fn all_updates_rule.new

```ts
new()
```


`google.billing_budget.all_updates_rule.new` constructs a new object with attributes and blocks configured for the `all_updates_rule`
Terraform sub block.



**Args**:
  - `disable_default_iam_recipients` (`bool`): Boolean. When set to true, disables default notifications sent
when a threshold is exceeded. Default recipients are
those with Billing Account Administrators and Billing
Account Users IAM roles for the target account. When `null`, the `disable_default_iam_recipients` field will be omitted from the resulting object.
  - `monitoring_notification_channels` (`list`): The full resource name of a monitoring notification
channel in the form
projects/{project_id}/notificationChannels/{channel_id}.
A maximum of 5 channels are allowed. When `null`, the `monitoring_notification_channels` field will be omitted from the resulting object.
  - `pubsub_topic` (`string`): The name of the Cloud Pub/Sub topic where budget related
messages will be published, in the form
projects/{project_id}/topics/{topic_id}. Updates are sent
at regular intervals to the topic. When `null`, the `pubsub_topic` field will be omitted from the resulting object.
  - `schema_version` (`string`): The schema version of the notification. Only &#34;1.0&#34; is
accepted. It represents the JSON schema as defined in
https://cloud.google.com/billing/docs/how-to/budgets#notification_format. When `null`, the `schema_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `all_updates_rule` sub block.


## obj amount



### fn amount.new

```ts
new()
```


`google.billing_budget.amount.new` constructs a new object with attributes and blocks configured for the `amount`
Terraform sub block.



**Args**:
  - `last_period_amount` (`bool`): Configures a budget amount that is automatically set to 100% of
last period&#39;s spend.
Boolean. Set value to true to use. Do not set to false, instead
use the &#39;specified_amount&#39; block. When `null`, the `last_period_amount` field will be omitted from the resulting object.
  - `specified_amount` (`list[obj]`): A specified amount to use as the budget. currencyCode is
optional. If specified, it must match the currency of the
billing account. The currencyCode is provided on output. When `null`, the `specified_amount` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.amount.specified_amount.new](#fn-amountspecified_amountnew) constructor.

**Returns**:
  - An attribute object that represents the `amount` sub block.


## obj amount.specified_amount



### fn amount.specified_amount.new

```ts
new()
```


`google.billing_budget.amount.specified_amount.new` constructs a new object with attributes and blocks configured for the `specified_amount`
Terraform sub block.



**Args**:
  - `currency_code` (`string`): The 3-letter currency code defined in ISO 4217. When `null`, the `currency_code` field will be omitted from the resulting object.
  - `nanos` (`number`): Number of nano (10^-9) units of the amount.
The value must be between -999,999,999 and &#43;999,999,999
inclusive. If units is positive, nanos must be positive or
zero. If units is zero, nanos can be positive, zero, or
negative. If units is negative, nanos must be negative or
zero. For example $-1.75 is represented as units=-1 and
nanos=-750,000,000. When `null`, the `nanos` field will be omitted from the resulting object.
  - `units` (`string`): The whole units of the amount. For example if currencyCode
is &#34;USD&#34;, then 1 unit is one US dollar. When `null`, the `units` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `specified_amount` sub block.


## obj budget_filter



### fn budget_filter.new

```ts
new()
```


`google.billing_budget.budget_filter.new` constructs a new object with attributes and blocks configured for the `budget_filter`
Terraform sub block.



**Args**:
  - `calendar_period` (`string`): A CalendarPeriod represents the abstract concept of a recurring time period that has a
canonical start. Grammatically, &#34;the start of the current CalendarPeriod&#34;.
All calendar times begin at 12 AM US and Canadian Pacific Time (UTC-8).

Exactly one of &#39;calendar_period&#39;, &#39;custom_period&#39; must be provided. Possible values: [&#34;MONTH&#34;, &#34;QUARTER&#34;, &#34;YEAR&#34;, &#34;CALENDAR_PERIOD_UNSPECIFIED&#34;] When `null`, the `calendar_period` field will be omitted from the resulting object.
  - `credit_types` (`list`): Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,
this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See a list of acceptable credit type values.
If creditTypesTreatment is not INCLUDE_SPECIFIED_CREDITS, this field must be empty. When `null`, the `credit_types` field will be omitted from the resulting object.
  - `credit_types_treatment` (`string`): Specifies how credits should be treated when determining spend
for threshold calculations. Default value: &#34;INCLUDE_ALL_CREDITS&#34; Possible values: [&#34;INCLUDE_ALL_CREDITS&#34;, &#34;EXCLUDE_ALL_CREDITS&#34;, &#34;INCLUDE_SPECIFIED_CREDITS&#34;] When `null`, the `credit_types_treatment` field will be omitted from the resulting object.
  - `labels` (`obj`): A single label and value pair specifying that usage from only
this set of labeled resources should be included in the budget. When `null`, the `labels` field will be omitted from the resulting object.
  - `projects` (`list`): A set of projects of the form projects/{project_number},
specifying that usage from only this set of projects should be
included in the budget. If omitted, the report will include
all usage for the billing account, regardless of which project
the usage occurred on. When `null`, the `projects` field will be omitted from the resulting object.
  - `services` (`list`): A set of services of the form services/{service_id},
specifying that usage from only this set of services should be
included in the budget. If omitted, the report will include
usage for all the services. The service names are available
through the Catalog API:
https://cloud.google.com/billing/v1/how-tos/catalog-api. When `null`, the `services` field will be omitted from the resulting object.
  - `subaccounts` (`list`): A set of subaccounts of the form billingAccounts/{account_id},
specifying that usage from only this set of subaccounts should
be included in the budget. If a subaccount is set to the name of
the parent account, usage from the parent account will be included.
If the field is omitted, the report will include usage from the parent
account and all subaccounts, if they exist. When `null`, the `subaccounts` field will be omitted from the resulting object.
  - `custom_period` (`list[obj]`): Specifies to track usage from any start date (required) to any end date (optional).
This time period is static, it does not recur.

Exactly one of &#39;calendar_period&#39;, &#39;custom_period&#39; must be provided. When `null`, the `custom_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.custom_period.new](#fn-budget_filtercustom_periodnew) constructor.

**Returns**:
  - An attribute object that represents the `budget_filter` sub block.


## obj budget_filter.custom_period



### fn budget_filter.custom_period.new

```ts
new()
```


`google.billing_budget.budget_filter.custom_period.new` constructs a new object with attributes and blocks configured for the `custom_period`
Terraform sub block.



**Args**:
  - `end_date` (`list[obj]`): Optional. The end date of the time period. Budgets with elapsed end date won&#39;t be processed. 
If unset, specifies to track all usage incurred since the startDate. When `null`, the `end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.custom_period.end_date.new](#fn-budget_filterbudget_filterend_datenew) constructor.
  - `start_date` (`list[obj]`): A start date is required. The start date must be after January 1, 2017. When `null`, the `start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.billing_budget.budget_filter.custom_period.start_date.new](#fn-budget_filterbudget_filterstart_datenew) constructor.

**Returns**:
  - An attribute object that represents the `custom_period` sub block.


## obj budget_filter.custom_period.end_date



### fn budget_filter.custom_period.end_date.new

```ts
new()
```


`google.billing_budget.budget_filter.custom_period.end_date.new` constructs a new object with attributes and blocks configured for the `end_date`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month.
  - `month` (`number`): Month of a year. Must be from 1 to 12.
  - `year` (`number`): Year of the date. Must be from 1 to 9999.

**Returns**:
  - An attribute object that represents the `end_date` sub block.


## obj budget_filter.custom_period.start_date



### fn budget_filter.custom_period.start_date.new

```ts
new()
```


`google.billing_budget.budget_filter.custom_period.start_date.new` constructs a new object with attributes and blocks configured for the `start_date`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month.
  - `month` (`number`): Month of a year. Must be from 1 to 12.
  - `year` (`number`): Year of the date. Must be from 1 to 9999.

**Returns**:
  - An attribute object that represents the `start_date` sub block.


## obj threshold_rules



### fn threshold_rules.new

```ts
new()
```


`google.billing_budget.threshold_rules.new` constructs a new object with attributes and blocks configured for the `threshold_rules`
Terraform sub block.



**Args**:
  - `spend_basis` (`string`): The type of basis used to determine if spend has passed
the threshold. Default value: &#34;CURRENT_SPEND&#34; Possible values: [&#34;CURRENT_SPEND&#34;, &#34;FORECASTED_SPEND&#34;] When `null`, the `spend_basis` field will be omitted from the resulting object.
  - `threshold_percent` (`number`): Send an alert when this threshold is exceeded. This is a
1.0-based percentage, so 0.5 = 50%. Must be &gt;= 0.

**Returns**:
  - An attribute object that represents the `threshold_rules` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.billing_budget.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
