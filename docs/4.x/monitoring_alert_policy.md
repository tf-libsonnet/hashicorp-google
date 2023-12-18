---
permalink: /monitoring_alert_policy/
---

# monitoring_alert_policy

`monitoring_alert_policy` represents the `google_monitoring_alert_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlertStrategy()`](#fn-withalertstrategy)
* [`fn withAlertStrategyMixin()`](#fn-withalertstrategymixin)
* [`fn withCombiner()`](#fn-withcombiner)
* [`fn withConditions()`](#fn-withconditions)
* [`fn withConditionsMixin()`](#fn-withconditionsmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withDocumentation()`](#fn-withdocumentation)
* [`fn withDocumentationMixin()`](#fn-withdocumentationmixin)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withNotificationChannels()`](#fn-withnotificationchannels)
* [`fn withProject()`](#fn-withproject)
* [`fn withSeverity()`](#fn-withseverity)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserLabels()`](#fn-withuserlabels)
* [`obj alert_strategy`](#obj-alert_strategy)
  * [`fn new()`](#fn-alert_strategynew)
  * [`obj alert_strategy.notification_channel_strategy`](#obj-alert_strategynotification_channel_strategy)
    * [`fn new()`](#fn-alert_strategynotification_channel_strategynew)
  * [`obj alert_strategy.notification_rate_limit`](#obj-alert_strategynotification_rate_limit)
    * [`fn new()`](#fn-alert_strategynotification_rate_limitnew)
* [`obj conditions`](#obj-conditions)
  * [`fn new()`](#fn-conditionsnew)
  * [`obj conditions.condition_absent`](#obj-conditionscondition_absent)
    * [`fn new()`](#fn-conditionscondition_absentnew)
    * [`obj conditions.condition_absent.aggregations`](#obj-conditionscondition_absentaggregations)
      * [`fn new()`](#fn-conditionscondition_absentaggregationsnew)
    * [`obj conditions.condition_absent.trigger`](#obj-conditionscondition_absenttrigger)
      * [`fn new()`](#fn-conditionscondition_absenttriggernew)
  * [`obj conditions.condition_matched_log`](#obj-conditionscondition_matched_log)
    * [`fn new()`](#fn-conditionscondition_matched_lognew)
  * [`obj conditions.condition_monitoring_query_language`](#obj-conditionscondition_monitoring_query_language)
    * [`fn new()`](#fn-conditionscondition_monitoring_query_languagenew)
    * [`obj conditions.condition_monitoring_query_language.trigger`](#obj-conditionscondition_monitoring_query_languagetrigger)
      * [`fn new()`](#fn-conditionscondition_monitoring_query_languagetriggernew)
  * [`obj conditions.condition_prometheus_query_language`](#obj-conditionscondition_prometheus_query_language)
    * [`fn new()`](#fn-conditionscondition_prometheus_query_languagenew)
  * [`obj conditions.condition_threshold`](#obj-conditionscondition_threshold)
    * [`fn new()`](#fn-conditionscondition_thresholdnew)
    * [`obj conditions.condition_threshold.aggregations`](#obj-conditionscondition_thresholdaggregations)
      * [`fn new()`](#fn-conditionscondition_thresholdaggregationsnew)
    * [`obj conditions.condition_threshold.denominator_aggregations`](#obj-conditionscondition_thresholddenominator_aggregations)
      * [`fn new()`](#fn-conditionscondition_thresholddenominator_aggregationsnew)
    * [`obj conditions.condition_threshold.forecast_options`](#obj-conditionscondition_thresholdforecast_options)
      * [`fn new()`](#fn-conditionscondition_thresholdforecast_optionsnew)
    * [`obj conditions.condition_threshold.trigger`](#obj-conditionscondition_thresholdtrigger)
      * [`fn new()`](#fn-conditionscondition_thresholdtriggernew)
* [`obj documentation`](#obj-documentation)
  * [`fn new()`](#fn-documentationnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_alert_policy.new` injects a new `google_monitoring_alert_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_alert_policy.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_alert_policy` using the reference:

    $._ref.google_monitoring_alert_policy.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_alert_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `combiner` (`string`): How to combine the results of multiple conditions to
determine if an incident should be opened. Possible values: [&#34;AND&#34;, &#34;OR&#34;, &#34;AND_WITH_MATCHING_RESOURCE&#34;]
  - `display_name` (`string`): A short name or phrase used to identify the policy in
dashboards, notifications, and incidents. To avoid confusion, don&#39;t use
the same display name for multiple policies in the same project. The
name is limited to 512 Unicode characters.
  - `enabled` (`bool`): Whether or not the policy is enabled. The default is true. When `null`, the `enabled` field will be omitted from the resulting object.
  - `notification_channels` (`list`): Identifies the notification channels to which notifications should be
sent when incidents are opened or closed or when new violations occur
on an already opened incident. Each element of this array corresponds
to the name field in each of the NotificationChannel objects that are
returned from the notificationChannels.list method. The syntax of the
entries in this field is
&#39;projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]&#39; When `null`, the `notification_channels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `severity` (`string`): The severity of an alert policy indicates how important incidents generated
by that policy are. The severity level will be displayed on the Incident
detail page and in notifications. Possible values: [&#34;CRITICAL&#34;, &#34;ERROR&#34;, &#34;WARNING&#34;] When `null`, the `severity` field will be omitted from the resulting object.
  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy
objects.The field can contain up to 64 entries. Each key and value is limited
to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
can contain only lowercase letters, numerals, underscores, and dashes. Keys
must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `alert_strategy` (`list[obj]`): Control over how this alert policy&#39;s notification channels are notified. When `null`, the `alert_strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.new](#fn-alert_strategynew) constructor.
  - `conditions` (`list[obj]`): A list of conditions for the policy. The conditions are combined by
AND or OR according to the combiner field. If the combined conditions
evaluate to true, then an incident is created. A policy can have from
one to six conditions. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.new](#fn-conditionsnew) constructor.
  - `documentation` (`list[obj]`): Documentation that is included with notifications and incidents related
to this policy. Best practice is for the documentation to include information
to help responders understand, mitigate, escalate, and correct the underlying
problems detected by the alerting policy. Notification channels that have
limited capacity might not show this documentation. When `null`, the `documentation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.documentation.new](#fn-documentationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_alert_policy.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_alert_policy`
Terraform resource.

Unlike [google.monitoring_alert_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `combiner` (`string`): How to combine the results of multiple conditions to
determine if an incident should be opened. Possible values: [&#34;AND&#34;, &#34;OR&#34;, &#34;AND_WITH_MATCHING_RESOURCE&#34;]
  - `display_name` (`string`): A short name or phrase used to identify the policy in
dashboards, notifications, and incidents. To avoid confusion, don&#39;t use
the same display name for multiple policies in the same project. The
name is limited to 512 Unicode characters.
  - `enabled` (`bool`): Whether or not the policy is enabled. The default is true. When `null`, the `enabled` field will be omitted from the resulting object.
  - `notification_channels` (`list`): Identifies the notification channels to which notifications should be
sent when incidents are opened or closed or when new violations occur
on an already opened incident. Each element of this array corresponds
to the name field in each of the NotificationChannel objects that are
returned from the notificationChannels.list method. The syntax of the
entries in this field is
&#39;projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]&#39; When `null`, the `notification_channels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `severity` (`string`): The severity of an alert policy indicates how important incidents generated
by that policy are. The severity level will be displayed on the Incident
detail page and in notifications. Possible values: [&#34;CRITICAL&#34;, &#34;ERROR&#34;, &#34;WARNING&#34;] When `null`, the `severity` field will be omitted from the resulting object.
  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy
objects.The field can contain up to 64 entries. Each key and value is limited
to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
can contain only lowercase letters, numerals, underscores, and dashes. Keys
must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `alert_strategy` (`list[obj]`): Control over how this alert policy&#39;s notification channels are notified. When `null`, the `alert_strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.new](#fn-alert_strategynew) constructor.
  - `conditions` (`list[obj]`): A list of conditions for the policy. The conditions are combined by
AND or OR according to the combiner field. If the combined conditions
evaluate to true, then an incident is created. A policy can have from
one to six conditions. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.new](#fn-conditionsnew) constructor.
  - `documentation` (`list[obj]`): Documentation that is included with notifications and incidents related
to this policy. Best practice is for the documentation to include information
to help responders understand, mitigate, escalate, and correct the underlying
problems detected by the alerting policy. Notification channels that have
limited capacity might not show this documentation. When `null`, the `documentation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.documentation.new](#fn-documentationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_alert_policy` resource into the root Terraform configuration.


### fn withAlertStrategy

```ts
withAlertStrategy()
```

`google.list[obj].withAlertStrategy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the alert_strategy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAlertStrategyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `alert_strategy` field.


### fn withAlertStrategyMixin

```ts
withAlertStrategyMixin()
```

`google.list[obj].withAlertStrategyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the alert_strategy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAlertStrategy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `alert_strategy` field.


### fn withCombiner

```ts
withCombiner()
```

`google.string.withCombiner` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the combiner field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `combiner` field.


### fn withConditions

```ts
withConditions()
```

`google.list[obj].withConditions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the conditions field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConditionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `conditions` field.


### fn withConditionsMixin

```ts
withConditionsMixin()
```

`google.list[obj].withConditionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the conditions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConditions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `conditions` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withDocumentation

```ts
withDocumentation()
```

`google.list[obj].withDocumentation` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the documentation field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDocumentationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `documentation` field.


### fn withDocumentationMixin

```ts
withDocumentationMixin()
```

`google.list[obj].withDocumentationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the documentation field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDocumentation](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `documentation` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withNotificationChannels

```ts
withNotificationChannels()
```

`google.list.withNotificationChannels` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the notification_channels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `notification_channels` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSeverity

```ts
withSeverity()
```

`google.string.withSeverity` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the severity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `severity` field.


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


### fn withUserLabels

```ts
withUserLabels()
```

`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the user_labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `user_labels` field.


## obj alert_strategy



### fn alert_strategy.new

```ts
new()
```


`google.monitoring_alert_policy.alert_strategy.new` constructs a new object with attributes and blocks configured for the `alert_strategy`
Terraform sub block.



**Args**:
  - `auto_close` (`string`): If an alert policy that was active has no data for this long, any open incidents will close. When `null`, the `auto_close` field will be omitted from the resulting object.
  - `notification_channel_strategy` (`list[obj]`): Control over how the notification channels in &#39;notification_channels&#39;
are notified when this alert fires, on a per-channel basis. When `null`, the `notification_channel_strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.notification_channel_strategy.new](#fn-alert_strategynotification_channel_strategynew) constructor.
  - `notification_rate_limit` (`list[obj]`): Required for alert policies with a LogMatch condition.
This limit is not implemented for alert policies that are not log-based. When `null`, the `notification_rate_limit` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.notification_rate_limit.new](#fn-alert_strategynotification_rate_limitnew) constructor.

**Returns**:
  - An attribute object that represents the `alert_strategy` sub block.


## obj alert_strategy.notification_channel_strategy



### fn alert_strategy.notification_channel_strategy.new

```ts
new()
```


`google.monitoring_alert_policy.alert_strategy.notification_channel_strategy.new` constructs a new object with attributes and blocks configured for the `notification_channel_strategy`
Terraform sub block.



**Args**:
  - `notification_channel_names` (`list`): The notification channels that these settings apply to. Each of these
correspond to the name field in one of the NotificationChannel objects
referenced in the notification_channels field of this AlertPolicy. The format is
&#39;projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]&#39; When `null`, the `notification_channel_names` field will be omitted from the resulting object.
  - `renotify_interval` (`string`): The frequency at which to send reminder notifications for open incidents. When `null`, the `renotify_interval` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `notification_channel_strategy` sub block.


## obj alert_strategy.notification_rate_limit



### fn alert_strategy.notification_rate_limit.new

```ts
new()
```


`google.monitoring_alert_policy.alert_strategy.notification_rate_limit.new` constructs a new object with attributes and blocks configured for the `notification_rate_limit`
Terraform sub block.



**Args**:
  - `period` (`string`): Not more than one notification per period. When `null`, the `period` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `notification_rate_limit` sub block.


## obj conditions



### fn conditions.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`
Terraform sub block.



**Args**:
  - `display_name` (`string`): A short name or phrase used to identify the
condition in dashboards, notifications, and
incidents. To avoid confusion, don&#39;t use the same
display name for multiple conditions in the same
policy.
  - `condition_absent` (`list[obj]`): A condition that checks that a time series
continues to receive new data points. When `null`, the `condition_absent` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_absent.new](#fn-conditionscondition_absentnew) constructor.
  - `condition_matched_log` (`list[obj]`): A condition that checks for log messages matching given constraints.
If set, no other conditions can be present. When `null`, the `condition_matched_log` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_matched_log.new](#fn-conditionscondition_matched_lognew) constructor.
  - `condition_monitoring_query_language` (`list[obj]`): A Monitoring Query Language query that outputs a boolean stream When `null`, the `condition_monitoring_query_language` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_monitoring_query_language.new](#fn-conditionscondition_monitoring_query_languagenew) constructor.
  - `condition_prometheus_query_language` (`list[obj]`): A condition type that allows alert policies to be defined using
Prometheus Query Language (PromQL).

The PrometheusQueryLanguageCondition message contains information
from a Prometheus alerting rule and its associated rule group. When `null`, the `condition_prometheus_query_language` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_prometheus_query_language.new](#fn-conditionscondition_prometheus_query_languagenew) constructor.
  - `condition_threshold` (`list[obj]`): A condition that compares a time series against a
threshold. When `null`, the `condition_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.new](#fn-conditionscondition_thresholdnew) constructor.

**Returns**:
  - An attribute object that represents the `conditions` sub block.


## obj conditions.condition_absent



### fn conditions.condition_absent.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_absent.new` constructs a new object with attributes and blocks configured for the `condition_absent`
Terraform sub block.



**Args**:
  - `duration` (`string`): The amount of time that a time series must
fail to report new data to be considered
failing. Currently, only values that are a
multiple of a minute--e.g. 60s, 120s, or 300s
--are supported.
  - `filter` (`string`): A filter that identifies which time series
should be compared with the threshold.The
filter is similar to the one that is
specified in the
MetricService.ListTimeSeries request (that
call is useful to verify the time series
that will be retrieved / processed) and must
specify the metric type and optionally may
contain restrictions on resource type,
resource labels, and metric labels. This
field may not exceed 2048 Unicode characters
in length. When `null`, the `filter` field will be omitted from the resulting object.
  - `aggregations` (`list[obj]`): Specifies the alignment of data points in
individual time series as well as how to
combine the retrieved time series together
(such as when aggregating multiple streams
on each resource to a single stream for each
resource or when aggregating streams across
all members of a group of resources).
Multiple aggregations are applied in the
order specified. When `null`, the `aggregations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_absent.aggregations.new](#fn-conditionsconditionsaggregationsnew) constructor.
  - `trigger` (`list[obj]`): The number/percent of time series for which
the comparison must hold in order for the
condition to trigger. If unspecified, then
the condition will trigger if the comparison
is true for any of the time series that have
been identified by filter and aggregations. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_absent.trigger.new](#fn-conditionsconditionstriggernew) constructor.

**Returns**:
  - An attribute object that represents the `condition_absent` sub block.


## obj conditions.condition_absent.aggregations



### fn conditions.condition_absent.aggregations.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_absent.aggregations.new` constructs a new object with attributes and blocks configured for the `aggregations`
Terraform sub block.



**Args**:
  - `alignment_period` (`string`): The alignment period for per-time
series alignment. If present,
alignmentPeriod must be at least
60 seconds. After per-time series
alignment, each time series will
contain data points only on the
period boundaries. If
perSeriesAligner is not specified
or equals ALIGN_NONE, then this
field is ignored. If
perSeriesAligner is specified and
does not equal ALIGN_NONE, then
this field must be defined;
otherwise an error is returned. When `null`, the `alignment_period` field will be omitted from the resulting object.
  - `cross_series_reducer` (`string`): The approach to be used to combine
time series. Not all reducer
functions may be applied to all
time series, depending on the
metric type and the value type of
the original time series.
Reduction may change the metric
type of value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [&#34;REDUCE_NONE&#34;, &#34;REDUCE_MEAN&#34;, &#34;REDUCE_MIN&#34;, &#34;REDUCE_MAX&#34;, &#34;REDUCE_SUM&#34;, &#34;REDUCE_STDDEV&#34;, &#34;REDUCE_COUNT&#34;, &#34;REDUCE_COUNT_TRUE&#34;, &#34;REDUCE_COUNT_FALSE&#34;, &#34;REDUCE_FRACTION_TRUE&#34;, &#34;REDUCE_PERCENTILE_99&#34;, &#34;REDUCE_PERCENTILE_95&#34;, &#34;REDUCE_PERCENTILE_50&#34;, &#34;REDUCE_PERCENTILE_05&#34;] When `null`, the `cross_series_reducer` field will be omitted from the resulting object.
  - `group_by_fields` (`list`): The set of fields to preserve when
crossSeriesReducer is specified.
The groupByFields determine how
the time series are partitioned
into subsets prior to applying the
aggregation function. Each subset
contains time series that have the
same value for each of the
grouping fields. Each individual
time series is a member of exactly
one subset. The crossSeriesReducer
is applied to each subset of time
series. It is not possible to
reduce across different resource
types, so this field implicitly
contains resource.type. Fields not
specified in groupByFields are
aggregated away. If groupByFields
is not specified and all the time
series have the same resource
type, then the time series are
aggregated into a single output
time series. If crossSeriesReducer
is not defined, this field is
ignored. When `null`, the `group_by_fields` field will be omitted from the resulting object.
  - `per_series_aligner` (`string`): The approach to be used to align
individual time series. Not all
alignment functions may be applied
to all time series, depending on
the metric type and value type of
the original time series.
Alignment may change the metric
type or the value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [&#34;ALIGN_NONE&#34;, &#34;ALIGN_DELTA&#34;, &#34;ALIGN_RATE&#34;, &#34;ALIGN_INTERPOLATE&#34;, &#34;ALIGN_NEXT_OLDER&#34;, &#34;ALIGN_MIN&#34;, &#34;ALIGN_MAX&#34;, &#34;ALIGN_MEAN&#34;, &#34;ALIGN_COUNT&#34;, &#34;ALIGN_SUM&#34;, &#34;ALIGN_STDDEV&#34;, &#34;ALIGN_COUNT_TRUE&#34;, &#34;ALIGN_COUNT_FALSE&#34;, &#34;ALIGN_FRACTION_TRUE&#34;, &#34;ALIGN_PERCENTILE_99&#34;, &#34;ALIGN_PERCENTILE_95&#34;, &#34;ALIGN_PERCENTILE_50&#34;, &#34;ALIGN_PERCENTILE_05&#34;, &#34;ALIGN_PERCENT_CHANGE&#34;] When `null`, the `per_series_aligner` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `aggregations` sub block.


## obj conditions.condition_absent.trigger



### fn conditions.condition_absent.trigger.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_absent.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`
Terraform sub block.



**Args**:
  - `count` (`number`): The absolute number of time series
that must fail the predicate for the
condition to be triggered. When `null`, the `count` field will be omitted from the resulting object.
  - `percent` (`number`): The percentage of time series that
must fail the predicate for the
condition to be triggered. When `null`, the `percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `trigger` sub block.


## obj conditions.condition_matched_log



### fn conditions.condition_matched_log.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_matched_log.new` constructs a new object with attributes and blocks configured for the `condition_matched_log`
Terraform sub block.



**Args**:
  - `filter` (`string`): A logs-based filter.
  - `label_extractors` (`obj`): A map from a label key to an extractor expression, which is used to
extract the value for this label key. Each entry in this map is
a specification for how data should be extracted from log entries that
match filter. Each combination of extracted values is treated as
a separate rule for the purposes of triggering notifications.
Label keys and corresponding values can be used in notifications
generated by this condition. When `null`, the `label_extractors` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition_matched_log` sub block.


## obj conditions.condition_monitoring_query_language



### fn conditions.condition_monitoring_query_language.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_monitoring_query_language.new` constructs a new object with attributes and blocks configured for the `condition_monitoring_query_language`
Terraform sub block.



**Args**:
  - `duration` (`string`): The amount of time that a time series must
violate the threshold to be considered
failing. Currently, only values that are a
multiple of a minute--e.g., 0, 60, 120, or
300 seconds--are supported. If an invalid
value is given, an error will be returned.
When choosing a duration, it is useful to
keep in mind the frequency of the underlying
time series data (which may also be affected
by any alignments specified in the
aggregations field); a good duration is long
enough so that a single outlier does not
generate spurious alerts, but short enough
that unhealthy states are detected and
alerted on quickly.
  - `evaluation_missing_data` (`string`): A condition control that determines how
metric-threshold conditions are evaluated when
data stops arriving. Possible values: [&#34;EVALUATION_MISSING_DATA_INACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_ACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_NO_OP&#34;] When `null`, the `evaluation_missing_data` field will be omitted from the resulting object.
  - `query` (`string`): Monitoring Query Language query that outputs a boolean stream.
  - `trigger` (`list[obj]`): The number/percent of time series for which
the comparison must hold in order for the
condition to trigger. If unspecified, then
the condition will trigger if the comparison
is true for any of the time series that have
been identified by filter and aggregations,
or by the ratio, if denominator_filter and
denominator_aggregations are specified. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_monitoring_query_language.trigger.new](#fn-conditionsconditionstriggernew) constructor.

**Returns**:
  - An attribute object that represents the `condition_monitoring_query_language` sub block.


## obj conditions.condition_monitoring_query_language.trigger



### fn conditions.condition_monitoring_query_language.trigger.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_monitoring_query_language.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`
Terraform sub block.



**Args**:
  - `count` (`number`): The absolute number of time series
that must fail the predicate for the
condition to be triggered. When `null`, the `count` field will be omitted from the resulting object.
  - `percent` (`number`): The percentage of time series that
must fail the predicate for the
condition to be triggered. When `null`, the `percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `trigger` sub block.


## obj conditions.condition_prometheus_query_language



### fn conditions.condition_prometheus_query_language.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_prometheus_query_language.new` constructs a new object with attributes and blocks configured for the `condition_prometheus_query_language`
Terraform sub block.



**Args**:
  - `alert_rule` (`string`): The alerting rule name of this alert in the corresponding Prometheus
configuration file.

Some external tools may require this field to be populated correctly
in order to refer to the original Prometheus configuration file.
The rule group name and the alert name are necessary to update the
relevant AlertPolicies in case the definition of the rule group changes
in the future.

This field is optional. If this field is not empty, then it must be a
valid Prometheus label name. When `null`, the `alert_rule` field will be omitted from the resulting object.
  - `duration` (`string`): Alerts are considered firing once their PromQL expression evaluated
to be &#34;true&#34; for this long. Alerts whose PromQL expression was not
evaluated to be &#34;true&#34; for long enough are considered pending. The
default value is zero. Must be zero or positive. When `null`, the `duration` field will be omitted from the resulting object.
  - `evaluation_interval` (`string`): How often this rule should be evaluated. Must be a positive multiple
of 30 seconds or missing. The default value is 30 seconds. If this
PrometheusQueryLanguageCondition was generated from a Prometheus
alerting rule, then this value should be taken from the enclosing
rule group. When `null`, the `evaluation_interval` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to add to or overwrite in the PromQL query result. Label names
must be valid.

Label values can be templatized by using variables. The only available
variable names are the names of the labels in the PromQL result, including
&#34;__name__&#34; and &#34;value&#34;. &#34;labels&#34; may be empty. This field is intended to be
used for organizing and identifying the AlertPolicy When `null`, the `labels` field will be omitted from the resulting object.
  - `query` (`string`): The PromQL expression to evaluate. Every evaluation cycle this
expression is evaluated at the current time, and all resultant time
series become pending/firing alerts. This field must not be empty.
  - `rule_group` (`string`): The rule group name of this alert in the corresponding Prometheus
configuration file.

Some external tools may require this field to be populated correctly
in order to refer to the original Prometheus configuration file.
The rule group name and the alert name are necessary to update the
relevant AlertPolicies in case the definition of the rule group changes
in the future. This field is optional. When `null`, the `rule_group` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition_prometheus_query_language` sub block.


## obj conditions.condition_threshold



### fn conditions.condition_threshold.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_threshold.new` constructs a new object with attributes and blocks configured for the `condition_threshold`
Terraform sub block.



**Args**:
  - `comparison` (`string`): The comparison to apply between the time
series (indicated by filter and aggregation)
and the threshold (indicated by
threshold_value). The comparison is applied
on each time series, with the time series on
the left-hand side and the threshold on the
right-hand side. Only COMPARISON_LT and
COMPARISON_GT are supported currently. Possible values: [&#34;COMPARISON_GT&#34;, &#34;COMPARISON_GE&#34;, &#34;COMPARISON_LT&#34;, &#34;COMPARISON_LE&#34;, &#34;COMPARISON_EQ&#34;, &#34;COMPARISON_NE&#34;]
  - `denominator_filter` (`string`): A filter that identifies a time series that
should be used as the denominator of a ratio
that will be compared with the threshold. If
a denominator_filter is specified, the time
series specified by the filter field will be
used as the numerator.The filter is similar
to the one that is specified in the
MetricService.ListTimeSeries request (that
call is useful to verify the time series
that will be retrieved / processed) and must
specify the metric type and optionally may
contain restrictions on resource type,
resource labels, and metric labels. This
field may not exceed 2048 Unicode characters
in length. When `null`, the `denominator_filter` field will be omitted from the resulting object.
  - `duration` (`string`): The amount of time that a time series must
violate the threshold to be considered
failing. Currently, only values that are a
multiple of a minute--e.g., 0, 60, 120, or
300 seconds--are supported. If an invalid
value is given, an error will be returned.
When choosing a duration, it is useful to
keep in mind the frequency of the underlying
time series data (which may also be affected
by any alignments specified in the
aggregations field); a good duration is long
enough so that a single outlier does not
generate spurious alerts, but short enough
that unhealthy states are detected and
alerted on quickly.
  - `evaluation_missing_data` (`string`): A condition control that determines how
metric-threshold conditions are evaluated when
data stops arriving. Possible values: [&#34;EVALUATION_MISSING_DATA_INACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_ACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_NO_OP&#34;] When `null`, the `evaluation_missing_data` field will be omitted from the resulting object.
  - `filter` (`string`): A filter that identifies which time series
should be compared with the threshold.The
filter is similar to the one that is
specified in the
MetricService.ListTimeSeries request (that
call is useful to verify the time series
that will be retrieved / processed) and must
specify the metric type and optionally may
contain restrictions on resource type,
resource labels, and metric labels. This
field may not exceed 2048 Unicode characters
in length. When `null`, the `filter` field will be omitted from the resulting object.
  - `threshold_value` (`number`): A value against which to compare the time
series. When `null`, the `threshold_value` field will be omitted from the resulting object.
  - `aggregations` (`list[obj]`): Specifies the alignment of data points in
individual time series as well as how to
combine the retrieved time series together
(such as when aggregating multiple streams
on each resource to a single stream for each
resource or when aggregating streams across
all members of a group of resources).
Multiple aggregations are applied in the
order specified.This field is similar to the
one in the MetricService.ListTimeSeries
request. It is advisable to use the
ListTimeSeries method when debugging this
field. When `null`, the `aggregations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.aggregations.new](#fn-conditionsconditionsaggregationsnew) constructor.
  - `denominator_aggregations` (`list[obj]`): Specifies the alignment of data points in
individual time series selected by
denominatorFilter as well as how to combine
the retrieved time series together (such as
when aggregating multiple streams on each
resource to a single stream for each
resource or when aggregating streams across
all members of a group of resources).When
computing ratios, the aggregations and
denominator_aggregations fields must use the
same alignment period and produce time
series that have the same periodicity and
labels.This field is similar to the one in
the MetricService.ListTimeSeries request. It
is advisable to use the ListTimeSeries
method when debugging this field. When `null`, the `denominator_aggregations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.denominator_aggregations.new](#fn-conditionsconditionsdenominator_aggregationsnew) constructor.
  - `forecast_options` (`list[obj]`): When this field is present, the &#39;MetricThreshold&#39;
condition forecasts whether the time series is
predicted to violate the threshold within the
&#39;forecastHorizon&#39;. When this field is not set, the
&#39;MetricThreshold&#39; tests the current value of the
timeseries against the threshold. When `null`, the `forecast_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.forecast_options.new](#fn-conditionsconditionsforecast_optionsnew) constructor.
  - `trigger` (`list[obj]`): The number/percent of time series for which
the comparison must hold in order for the
condition to trigger. If unspecified, then
the condition will trigger if the comparison
is true for any of the time series that have
been identified by filter and aggregations,
or by the ratio, if denominator_filter and
denominator_aggregations are specified. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.trigger.new](#fn-conditionsconditionstriggernew) constructor.

**Returns**:
  - An attribute object that represents the `condition_threshold` sub block.


## obj conditions.condition_threshold.aggregations



### fn conditions.condition_threshold.aggregations.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_threshold.aggregations.new` constructs a new object with attributes and blocks configured for the `aggregations`
Terraform sub block.



**Args**:
  - `alignment_period` (`string`): The alignment period for per-time
series alignment. If present,
alignmentPeriod must be at least
60 seconds. After per-time series
alignment, each time series will
contain data points only on the
period boundaries. If
perSeriesAligner is not specified
or equals ALIGN_NONE, then this
field is ignored. If
perSeriesAligner is specified and
does not equal ALIGN_NONE, then
this field must be defined;
otherwise an error is returned. When `null`, the `alignment_period` field will be omitted from the resulting object.
  - `cross_series_reducer` (`string`): The approach to be used to combine
time series. Not all reducer
functions may be applied to all
time series, depending on the
metric type and the value type of
the original time series.
Reduction may change the metric
type of value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [&#34;REDUCE_NONE&#34;, &#34;REDUCE_MEAN&#34;, &#34;REDUCE_MIN&#34;, &#34;REDUCE_MAX&#34;, &#34;REDUCE_SUM&#34;, &#34;REDUCE_STDDEV&#34;, &#34;REDUCE_COUNT&#34;, &#34;REDUCE_COUNT_TRUE&#34;, &#34;REDUCE_COUNT_FALSE&#34;, &#34;REDUCE_FRACTION_TRUE&#34;, &#34;REDUCE_PERCENTILE_99&#34;, &#34;REDUCE_PERCENTILE_95&#34;, &#34;REDUCE_PERCENTILE_50&#34;, &#34;REDUCE_PERCENTILE_05&#34;] When `null`, the `cross_series_reducer` field will be omitted from the resulting object.
  - `group_by_fields` (`list`): The set of fields to preserve when
crossSeriesReducer is specified.
The groupByFields determine how
the time series are partitioned
into subsets prior to applying the
aggregation function. Each subset
contains time series that have the
same value for each of the
grouping fields. Each individual
time series is a member of exactly
one subset. The crossSeriesReducer
is applied to each subset of time
series. It is not possible to
reduce across different resource
types, so this field implicitly
contains resource.type. Fields not
specified in groupByFields are
aggregated away. If groupByFields
is not specified and all the time
series have the same resource
type, then the time series are
aggregated into a single output
time series. If crossSeriesReducer
is not defined, this field is
ignored. When `null`, the `group_by_fields` field will be omitted from the resulting object.
  - `per_series_aligner` (`string`): The approach to be used to align
individual time series. Not all
alignment functions may be applied
to all time series, depending on
the metric type and value type of
the original time series.
Alignment may change the metric
type or the value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [&#34;ALIGN_NONE&#34;, &#34;ALIGN_DELTA&#34;, &#34;ALIGN_RATE&#34;, &#34;ALIGN_INTERPOLATE&#34;, &#34;ALIGN_NEXT_OLDER&#34;, &#34;ALIGN_MIN&#34;, &#34;ALIGN_MAX&#34;, &#34;ALIGN_MEAN&#34;, &#34;ALIGN_COUNT&#34;, &#34;ALIGN_SUM&#34;, &#34;ALIGN_STDDEV&#34;, &#34;ALIGN_COUNT_TRUE&#34;, &#34;ALIGN_COUNT_FALSE&#34;, &#34;ALIGN_FRACTION_TRUE&#34;, &#34;ALIGN_PERCENTILE_99&#34;, &#34;ALIGN_PERCENTILE_95&#34;, &#34;ALIGN_PERCENTILE_50&#34;, &#34;ALIGN_PERCENTILE_05&#34;, &#34;ALIGN_PERCENT_CHANGE&#34;] When `null`, the `per_series_aligner` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `aggregations` sub block.


## obj conditions.condition_threshold.denominator_aggregations



### fn conditions.condition_threshold.denominator_aggregations.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_threshold.denominator_aggregations.new` constructs a new object with attributes and blocks configured for the `denominator_aggregations`
Terraform sub block.



**Args**:
  - `alignment_period` (`string`): The alignment period for per-time
series alignment. If present,
alignmentPeriod must be at least
60 seconds. After per-time series
alignment, each time series will
contain data points only on the
period boundaries. If
perSeriesAligner is not specified
or equals ALIGN_NONE, then this
field is ignored. If
perSeriesAligner is specified and
does not equal ALIGN_NONE, then
this field must be defined;
otherwise an error is returned. When `null`, the `alignment_period` field will be omitted from the resulting object.
  - `cross_series_reducer` (`string`): The approach to be used to combine
time series. Not all reducer
functions may be applied to all
time series, depending on the
metric type and the value type of
the original time series.
Reduction may change the metric
type of value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [&#34;REDUCE_NONE&#34;, &#34;REDUCE_MEAN&#34;, &#34;REDUCE_MIN&#34;, &#34;REDUCE_MAX&#34;, &#34;REDUCE_SUM&#34;, &#34;REDUCE_STDDEV&#34;, &#34;REDUCE_COUNT&#34;, &#34;REDUCE_COUNT_TRUE&#34;, &#34;REDUCE_COUNT_FALSE&#34;, &#34;REDUCE_FRACTION_TRUE&#34;, &#34;REDUCE_PERCENTILE_99&#34;, &#34;REDUCE_PERCENTILE_95&#34;, &#34;REDUCE_PERCENTILE_50&#34;, &#34;REDUCE_PERCENTILE_05&#34;] When `null`, the `cross_series_reducer` field will be omitted from the resulting object.
  - `group_by_fields` (`list`): The set of fields to preserve when
crossSeriesReducer is specified.
The groupByFields determine how
the time series are partitioned
into subsets prior to applying the
aggregation function. Each subset
contains time series that have the
same value for each of the
grouping fields. Each individual
time series is a member of exactly
one subset. The crossSeriesReducer
is applied to each subset of time
series. It is not possible to
reduce across different resource
types, so this field implicitly
contains resource.type. Fields not
specified in groupByFields are
aggregated away. If groupByFields
is not specified and all the time
series have the same resource
type, then the time series are
aggregated into a single output
time series. If crossSeriesReducer
is not defined, this field is
ignored. When `null`, the `group_by_fields` field will be omitted from the resulting object.
  - `per_series_aligner` (`string`): The approach to be used to align
individual time series. Not all
alignment functions may be applied
to all time series, depending on
the metric type and value type of
the original time series.
Alignment may change the metric
type or the value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [&#34;ALIGN_NONE&#34;, &#34;ALIGN_DELTA&#34;, &#34;ALIGN_RATE&#34;, &#34;ALIGN_INTERPOLATE&#34;, &#34;ALIGN_NEXT_OLDER&#34;, &#34;ALIGN_MIN&#34;, &#34;ALIGN_MAX&#34;, &#34;ALIGN_MEAN&#34;, &#34;ALIGN_COUNT&#34;, &#34;ALIGN_SUM&#34;, &#34;ALIGN_STDDEV&#34;, &#34;ALIGN_COUNT_TRUE&#34;, &#34;ALIGN_COUNT_FALSE&#34;, &#34;ALIGN_FRACTION_TRUE&#34;, &#34;ALIGN_PERCENTILE_99&#34;, &#34;ALIGN_PERCENTILE_95&#34;, &#34;ALIGN_PERCENTILE_50&#34;, &#34;ALIGN_PERCENTILE_05&#34;, &#34;ALIGN_PERCENT_CHANGE&#34;] When `null`, the `per_series_aligner` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `denominator_aggregations` sub block.


## obj conditions.condition_threshold.forecast_options



### fn conditions.condition_threshold.forecast_options.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_threshold.forecast_options.new` constructs a new object with attributes and blocks configured for the `forecast_options`
Terraform sub block.



**Args**:
  - `forecast_horizon` (`string`): The length of time into the future to forecast
whether a timeseries will violate the threshold.
If the predicted value is found to violate the
threshold, and the violation is observed in all
forecasts made for the Configured &#39;duration&#39;,
then the timeseries is considered to be failing.

**Returns**:
  - An attribute object that represents the `forecast_options` sub block.


## obj conditions.condition_threshold.trigger



### fn conditions.condition_threshold.trigger.new

```ts
new()
```


`google.monitoring_alert_policy.conditions.condition_threshold.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`
Terraform sub block.



**Args**:
  - `count` (`number`): The absolute number of time series
that must fail the predicate for the
condition to be triggered. When `null`, the `count` field will be omitted from the resulting object.
  - `percent` (`number`): The percentage of time series that
must fail the predicate for the
condition to be triggered. When `null`, the `percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `trigger` sub block.


## obj documentation



### fn documentation.new

```ts
new()
```


`google.monitoring_alert_policy.documentation.new` constructs a new object with attributes and blocks configured for the `documentation`
Terraform sub block.



**Args**:
  - `content` (`string`): The text of the documentation, interpreted according to mimeType.
The content may not exceed 8,192 Unicode characters and may not
exceed more than 10,240 bytes when encoded in UTF-8 format,
whichever is smaller. When `null`, the `content` field will be omitted from the resulting object.
  - `mime_type` (`string`): The format of the content field. Presently, only the value
&#34;text/markdown&#34; is supported. When `null`, the `mime_type` field will be omitted from the resulting object.
  - `subject` (`string`): The subject line of the notification. The subject line may not
exceed 10,240 bytes. In notifications generated by this policy the contents
of the subject line after variable expansion will be truncated to 255 bytes
or shorter at the latest UTF-8 character boundary. When `null`, the `subject` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `documentation` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_alert_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
