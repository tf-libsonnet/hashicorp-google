---
permalink: /monitoring_slo/
---

# monitoring_slo

`monitoring_slo` represents the `google_monitoring_slo` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBasicSli()`](#fn-withbasicsli)
* [`fn withBasicSliMixin()`](#fn-withbasicslimixin)
* [`fn withCalendarPeriod()`](#fn-withcalendarperiod)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withGoal()`](#fn-withgoal)
* [`fn withProject()`](#fn-withproject)
* [`fn withRequestBasedSli()`](#fn-withrequestbasedsli)
* [`fn withRequestBasedSliMixin()`](#fn-withrequestbasedslimixin)
* [`fn withRollingPeriodDays()`](#fn-withrollingperioddays)
* [`fn withService()`](#fn-withservice)
* [`fn withSloId()`](#fn-withsloid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserLabels()`](#fn-withuserlabels)
* [`fn withWindowsBasedSli()`](#fn-withwindowsbasedsli)
* [`fn withWindowsBasedSliMixin()`](#fn-withwindowsbasedslimixin)
* [`obj basic_sli`](#obj-basic_sli)
  * [`fn new()`](#fn-basic_slinew)
  * [`obj basic_sli.availability`](#obj-basic_sliavailability)
    * [`fn new()`](#fn-basic_sliavailabilitynew)
  * [`obj basic_sli.latency`](#obj-basic_slilatency)
    * [`fn new()`](#fn-basic_slilatencynew)
* [`obj request_based_sli`](#obj-request_based_sli)
  * [`fn new()`](#fn-request_based_slinew)
  * [`obj request_based_sli.distribution_cut`](#obj-request_based_slidistribution_cut)
    * [`fn new()`](#fn-request_based_slidistribution_cutnew)
    * [`obj request_based_sli.distribution_cut.range`](#obj-request_based_slidistribution_cutrange)
      * [`fn new()`](#fn-request_based_slidistribution_cutrangenew)
  * [`obj request_based_sli.good_total_ratio`](#obj-request_based_sligood_total_ratio)
    * [`fn new()`](#fn-request_based_sligood_total_rationew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj windows_based_sli`](#obj-windows_based_sli)
  * [`fn new()`](#fn-windows_based_slinew)
  * [`obj windows_based_sli.good_total_ratio_threshold`](#obj-windows_based_sligood_total_ratio_threshold)
    * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdnew)
    * [`obj windows_based_sli.good_total_ratio_threshold.basic_sli_performance`](#obj-windows_based_sligood_total_ratio_thresholdbasic_sli_performance)
      * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdbasic_sli_performancenew)
      * [`obj windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability`](#obj-windows_based_sligood_total_ratio_thresholdbasic_sli_performanceavailability)
        * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdbasic_sli_performanceavailabilitynew)
      * [`obj windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency`](#obj-windows_based_sligood_total_ratio_thresholdbasic_sli_performancelatency)
        * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdbasic_sli_performancelatencynew)
    * [`obj windows_based_sli.good_total_ratio_threshold.performance`](#obj-windows_based_sligood_total_ratio_thresholdperformance)
      * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdperformancenew)
      * [`obj windows_based_sli.good_total_ratio_threshold.performance.distribution_cut`](#obj-windows_based_sligood_total_ratio_thresholdperformancedistribution_cut)
        * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdperformancedistribution_cutnew)
        * [`obj windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range`](#obj-windows_based_sligood_total_ratio_thresholdperformancedistribution_cutrange)
          * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdperformancedistribution_cutrangenew)
      * [`obj windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio`](#obj-windows_based_sligood_total_ratio_thresholdperformancegood_total_ratio)
        * [`fn new()`](#fn-windows_based_sligood_total_ratio_thresholdperformancegood_total_rationew)
  * [`obj windows_based_sli.metric_mean_in_range`](#obj-windows_based_slimetric_mean_in_range)
    * [`fn new()`](#fn-windows_based_slimetric_mean_in_rangenew)
    * [`obj windows_based_sli.metric_mean_in_range.range`](#obj-windows_based_slimetric_mean_in_rangerange)
      * [`fn new()`](#fn-windows_based_slimetric_mean_in_rangerangenew)
  * [`obj windows_based_sli.metric_sum_in_range`](#obj-windows_based_slimetric_sum_in_range)
    * [`fn new()`](#fn-windows_based_slimetric_sum_in_rangenew)
    * [`obj windows_based_sli.metric_sum_in_range.range`](#obj-windows_based_slimetric_sum_in_rangerange)
      * [`fn new()`](#fn-windows_based_slimetric_sum_in_rangerangenew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_slo.new` injects a new `google_monitoring_slo` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_slo.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_slo` using the reference:

    $._ref.google_monitoring_slo.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_slo.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `calendar_period` (`string`): A calendar period, semantically &#34;since the start of the current
&lt;calendarPeriod&gt;&#34;. Possible values: [&#34;DAY&#34;, &#34;WEEK&#34;, &#34;FORTNIGHT&#34;, &#34;MONTH&#34;] When `null`, the `calendar_period` field will be omitted from the resulting object.
  - `display_name` (`string`): Name used for UI elements listing this SLO. When `null`, the `display_name` field will be omitted from the resulting object.
  - `goal` (`number`): The fraction of service that must be good in order for this objective
to be met. 0 &lt; goal &lt;= 0.999
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `rolling_period_days` (`number`): A rolling time period, semantically &#34;in the past X days&#34;.
Must be between 1 to 30 days, inclusive. When `null`, the `rolling_period_days` field will be omitted from the resulting object.
  - `service` (`string`): ID of the service to which this SLO belongs.
  - `slo_id` (`string`): The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. When `null`, the `slo_id` field will be omitted from the resulting object.
  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy
objects.The field can contain up to 64 entries. Each key and value is limited
to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
can contain only lowercase letters, numerals, underscores, and dashes. Keys
must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `basic_sli` (`list[obj]`): Basic Service-Level Indicator (SLI) on a well-known service type.
Performance will be computed on the basis of pre-defined metrics.

SLIs are used to measure and calculate the quality of the Service&#39;s
performance with respect to a single aspect of service quality.

Exactly one of the following must be set:
&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `basic_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.new](#fn-monitoring_slobasic_slinew) constructor.
  - `request_based_sli` (`list[obj]`): A request-based SLI defines a SLI for which atomic units of
service are counted directly.

A SLI describes a good service.
It is used to measure and calculate the quality of the Service&#39;s
performance with respect to a single aspect of service quality.
Exactly one of the following must be set:
&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `request_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.new](#fn-monitoring_slorequest_based_slinew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.timeouts.new](#fn-monitoring_slotimeoutsnew) constructor.
  - `windows_based_sli` (`list[obj]`): A windows-based SLI defines the criteria for time windows.
good_service is defined based off the count of these time windows
for which the provided service was of good quality.

A SLI describes a good service. It is used to measure and calculate
the quality of the Service&#39;s performance with respect to a single
aspect of service quality.

Exactly one of the following must be set:
&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `windows_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.new](#fn-monitoring_slowindows_based_slinew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_slo.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_slo`
Terraform resource.

Unlike [google.monitoring_slo.new](#fn-monitoring_slonew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `calendar_period` (`string`): A calendar period, semantically &#34;since the start of the current
&lt;calendarPeriod&gt;&#34;. Possible values: [&#34;DAY&#34;, &#34;WEEK&#34;, &#34;FORTNIGHT&#34;, &#34;MONTH&#34;] When `null`, the `calendar_period` field will be omitted from the resulting object.
  - `display_name` (`string`): Name used for UI elements listing this SLO. When `null`, the `display_name` field will be omitted from the resulting object.
  - `goal` (`number`): The fraction of service that must be good in order for this objective
to be met. 0 &lt; goal &lt;= 0.999
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `rolling_period_days` (`number`): A rolling time period, semantically &#34;in the past X days&#34;.
Must be between 1 to 30 days, inclusive. When `null`, the `rolling_period_days` field will be omitted from the resulting object.
  - `service` (`string`): ID of the service to which this SLO belongs.
  - `slo_id` (`string`): The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. When `null`, the `slo_id` field will be omitted from the resulting object.
  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy
objects.The field can contain up to 64 entries. Each key and value is limited
to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
can contain only lowercase letters, numerals, underscores, and dashes. Keys
must begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `basic_sli` (`list[obj]`): Basic Service-Level Indicator (SLI) on a well-known service type.
Performance will be computed on the basis of pre-defined metrics.

SLIs are used to measure and calculate the quality of the Service&#39;s
performance with respect to a single aspect of service quality.

Exactly one of the following must be set:
&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `basic_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.new](#fn-monitoring_slobasic_slinew) constructor.
  - `request_based_sli` (`list[obj]`): A request-based SLI defines a SLI for which atomic units of
service are counted directly.

A SLI describes a good service.
It is used to measure and calculate the quality of the Service&#39;s
performance with respect to a single aspect of service quality.
Exactly one of the following must be set:
&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `request_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.new](#fn-monitoring_slorequest_based_slinew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.timeouts.new](#fn-monitoring_slotimeoutsnew) constructor.
  - `windows_based_sli` (`list[obj]`): A windows-based SLI defines the criteria for time windows.
good_service is defined based off the count of these time windows
for which the provided service was of good quality.

A SLI describes a good service. It is used to measure and calculate
the quality of the Service&#39;s performance with respect to a single
aspect of service quality.

Exactly one of the following must be set:
&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `windows_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.new](#fn-monitoring_slowindows_based_slinew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_slo` resource into the root Terraform configuration.


### fn withBasicSli

```ts
withBasicSli()
```

`google.list[obj].withBasicSli` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_sli field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBasicSliMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_sli` field.


### fn withBasicSliMixin

```ts
withBasicSliMixin()
```

`google.list[obj].withBasicSliMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_sli field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBasicSli](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_sli` field.


### fn withCalendarPeriod

```ts
withCalendarPeriod()
```

`google.string.withCalendarPeriod` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the calendar_period field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `calendar_period` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withGoal

```ts
withGoal()
```

`google.number.withGoal` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the goal field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `goal` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRequestBasedSli

```ts
withRequestBasedSli()
```

`google.list[obj].withRequestBasedSli` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the request_based_sli field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRequestBasedSliMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `request_based_sli` field.


### fn withRequestBasedSliMixin

```ts
withRequestBasedSliMixin()
```

`google.list[obj].withRequestBasedSliMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the request_based_sli field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRequestBasedSli](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `request_based_sli` field.


### fn withRollingPeriodDays

```ts
withRollingPeriodDays()
```

`google.number.withRollingPeriodDays` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the rolling_period_days field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `rolling_period_days` field.


### fn withService

```ts
withService()
```

`google.string.withService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


### fn withSloId

```ts
withSloId()
```

`google.string.withSloId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the slo_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `slo_id` field.


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


### fn withWindowsBasedSli

```ts
withWindowsBasedSli()
```

`google.list[obj].withWindowsBasedSli` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the windows_based_sli field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWindowsBasedSliMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `windows_based_sli` field.


### fn withWindowsBasedSliMixin

```ts
withWindowsBasedSliMixin()
```

`google.list[obj].withWindowsBasedSliMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the windows_based_sli field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWindowsBasedSli](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `windows_based_sli` field.


## obj basic_sli



### fn basic_sli.new

```ts
new()
```


`google.monitoring_slo.basic_sli.new` constructs a new object with attributes and blocks configured for the `basic_sli`
Terraform sub block.



**Args**:
  - `location` (`list`): An optional set of locations to which this SLI is relevant.
Telemetry from other locations will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
locations in which the Service has activity. For service types
that don&#39;t support breaking down by location, setting this
field will result in an error. When `null`, the `location` field will be omitted from the resulting object.
  - `method` (`list`): An optional set of RPCs to which this SLI is relevant.
Telemetry from other methods will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
the Service&#39;s methods. For service types that don&#39;t support
breaking down by method, setting this field will result in an
error. When `null`, the `method` field will be omitted from the resulting object.
  - `version` (`list`): The set of API versions to which this SLI is relevant.
Telemetry from other API versions will not be used to
calculate performance for this SLI. If omitted,
this SLI applies to all API versions. For service types
that don&#39;t support breaking down by version, setting this
field will result in an error. When `null`, the `version` field will be omitted from the resulting object.
  - `availability` (`list[obj]`): Availability based SLI, dervied from count of requests made to this service that return successfully. When `null`, the `availability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.availability.new](#fn-basic_sliavailabilitynew) constructor.
  - `latency` (`list[obj]`): Parameters for a latency threshold SLI. When `null`, the `latency` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.latency.new](#fn-basic_slilatencynew) constructor.

**Returns**:
  - An attribute object that represents the `basic_sli` sub block.


## obj basic_sli.availability



### fn basic_sli.availability.new

```ts
new()
```


`google.monitoring_slo.basic_sli.availability.new` constructs a new object with attributes and blocks configured for the `availability`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether an availability SLI is enabled or not. Must be set to true. Defaults to &#39;true&#39;. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `availability` sub block.


## obj basic_sli.latency



### fn basic_sli.latency.new

```ts
new()
```


`google.monitoring_slo.basic_sli.latency.new` constructs a new object with attributes and blocks configured for the `latency`
Terraform sub block.



**Args**:
  - `threshold` (`string`): A duration string, e.g. 10s.
Good service is defined to be the count of requests made to
this service that return in no more than threshold.

**Returns**:
  - An attribute object that represents the `latency` sub block.


## obj request_based_sli



### fn request_based_sli.new

```ts
new()
```


`google.monitoring_slo.request_based_sli.new` constructs a new object with attributes and blocks configured for the `request_based_sli`
Terraform sub block.



**Args**:
  - `distribution_cut` (`list[obj]`): Used when good_service is defined by a count of values aggregated in a
Distribution that fall into a good range. The total_service is the
total count of all values aggregated in the Distribution.
Defines a distribution TimeSeries filter and thresholds used for
measuring good service and total service.

Exactly one of &#39;distribution_cut&#39; or &#39;good_total_ratio&#39; can be set. When `null`, the `distribution_cut` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.distribution_cut.new](#fn-request_based_slidistribution_cutnew) constructor.
  - `good_total_ratio` (`list[obj]`): A means to compute a ratio of &#39;good_service&#39; to &#39;total_service&#39;.
Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
Must specify exactly two of good, bad, and total service filters.
The relationship good_service &#43; bad_service = total_service
will be assumed.

Exactly one of &#39;distribution_cut&#39; or &#39;good_total_ratio&#39; can be set. When `null`, the `good_total_ratio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.good_total_ratio.new](#fn-request_based_sligood_total_rationew) constructor.

**Returns**:
  - An attribute object that represents the `request_based_sli` sub block.


## obj request_based_sli.distribution_cut



### fn request_based_sli.distribution_cut.new

```ts
new()
```


`google.monitoring_slo.request_based_sli.distribution_cut.new` constructs a new object with attributes and blocks configured for the `distribution_cut`
Terraform sub block.



**Args**:
  - `distribution_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
aggregating values to quantify the good service provided.

Must have ValueType = DISTRIBUTION and
MetricKind = DELTA or MetricKind = CUMULATIVE.
  - `range` (`list[obj]`): Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min &lt;= x &lt;= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.distribution_cut.range.new](#fn-distribution_cutrangenew) constructor.

**Returns**:
  - An attribute object that represents the `distribution_cut` sub block.


## obj request_based_sli.distribution_cut.range



### fn request_based_sli.distribution_cut.range.new

```ts
new()
```


`google.monitoring_slo.request_based_sli.distribution_cut.range.new` constructs a new object with attributes and blocks configured for the `range`
Terraform sub block.



**Args**:
  - `max` (`number`): max value for the range (inclusive). If not given,
will be set to &#34;infinity&#34;, defining an open range
&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.
  - `min` (`number`): Min value for the range (inclusive). If not given,
will be set to &#34;-infinity&#34;, defining an open range
&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `range` sub block.


## obj request_based_sli.good_total_ratio



### fn request_based_sli.good_total_ratio.new

```ts
new()
```


`google.monitoring_slo.request_based_sli.good_total_ratio.new` constructs a new object with attributes and blocks configured for the `good_total_ratio`
Terraform sub block.



**Args**:
  - `bad_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying bad service provided, either demanded service that
was not provided or demanded service that was of inadequate
quality.

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE.

Exactly two of &#39;good_service_filter&#39;,&#39;bad_service_filter&#39;,&#39;total_service_filter&#39;
must be set (good &#43; bad = total is assumed). When `null`, the `bad_service_filter` field will be omitted from the resulting object.
  - `good_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying good service provided.
Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE.

Exactly two of &#39;good_service_filter&#39;,&#39;bad_service_filter&#39;,&#39;total_service_filter&#39;
must be set (good &#43; bad = total is assumed). When `null`, the `good_service_filter` field will be omitted from the resulting object.
  - `total_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying total demanded service.

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE.

Exactly two of &#39;good_service_filter&#39;,&#39;bad_service_filter&#39;,&#39;total_service_filter&#39;
must be set (good &#43; bad = total is assumed). When `null`, the `total_service_filter` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `good_total_ratio` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_slo.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj windows_based_sli



### fn windows_based_sli.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.new` constructs a new object with attributes and blocks configured for the `windows_based_sli`
Terraform sub block.



**Args**:
  - `good_bad_metric_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
with ValueType = BOOL. The window is good if any true values
appear in the window. One of &#39;good_bad_metric_filter&#39;,
&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,
&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;. When `null`, the `good_bad_metric_filter` field will be omitted from the resulting object.
  - `window_period` (`string`): Duration over which window quality is evaluated, given as a
duration string &#34;{X}s&#34; representing X seconds. Must be an
integer fraction of a day and at least 60s. When `null`, the `window_period` field will be omitted from the resulting object.
  - `good_total_ratio_threshold` (`list[obj]`): Criterion that describes a window as good if its performance is
high enough. One of &#39;good_bad_metric_filter&#39;,
&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,
&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;. When `null`, the `good_total_ratio_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.new](#fn-windows_based_sligood_total_ratio_thresholdnew) constructor.
  - `metric_mean_in_range` (`list[obj]`): Criterion that describes a window as good if the metric&#39;s value
is in a good range, *averaged* across returned streams.
One of &#39;good_bad_metric_filter&#39;,

&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,
&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;.
Average value X of &#39;time_series&#39; should satisfy
&#39;range.min &lt;= X &lt;= range.max&#39; for a good window. When `null`, the `metric_mean_in_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_mean_in_range.new](#fn-windows_based_slimetric_mean_in_rangenew) constructor.
  - `metric_sum_in_range` (`list[obj]`): Criterion that describes a window as good if the metric&#39;s value
is in a good range, *summed* across returned streams.
Summed value &#39;X&#39; of &#39;time_series&#39; should satisfy
&#39;range.min &lt;= X &lt;= range.max&#39; for a good window.

One of &#39;good_bad_metric_filter&#39;,
&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,
&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;. When `null`, the `metric_sum_in_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_sum_in_range.new](#fn-windows_based_slimetric_sum_in_rangenew) constructor.

**Returns**:
  - An attribute object that represents the `windows_based_sli` sub block.


## obj windows_based_sli.good_total_ratio_threshold



### fn windows_based_sli.good_total_ratio_threshold.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.new` constructs a new object with attributes and blocks configured for the `good_total_ratio_threshold`
Terraform sub block.



**Args**:
  - `threshold` (`number`): If window performance &gt;= threshold, the window is counted
as good. When `null`, the `threshold` field will be omitted from the resulting object.
  - `basic_sli_performance` (`list[obj]`): Basic SLI to evaluate to judge window quality. When `null`, the `basic_sli_performance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.new](#fn-good_total_ratio_thresholdbasic_sli_performancenew) constructor.
  - `performance` (`list[obj]`): Request-based SLI to evaluate to judge window quality. When `null`, the `performance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.new](#fn-good_total_ratio_thresholdperformancenew) constructor.

**Returns**:
  - An attribute object that represents the `good_total_ratio_threshold` sub block.


## obj windows_based_sli.good_total_ratio_threshold.basic_sli_performance



### fn windows_based_sli.good_total_ratio_threshold.basic_sli_performance.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.new` constructs a new object with attributes and blocks configured for the `basic_sli_performance`
Terraform sub block.



**Args**:
  - `location` (`list`): An optional set of locations to which this SLI is relevant.
Telemetry from other locations will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
locations in which the Service has activity. For service types
that don&#39;t support breaking down by location, setting this
field will result in an error. When `null`, the `location` field will be omitted from the resulting object.
  - `method` (`list`): An optional set of RPCs to which this SLI is relevant.
Telemetry from other methods will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
the Service&#39;s methods. For service types that don&#39;t support
breaking down by method, setting this field will result in an
error. When `null`, the `method` field will be omitted from the resulting object.
  - `version` (`list`): The set of API versions to which this SLI is relevant.
Telemetry from other API versions will not be used to
calculate performance for this SLI. If omitted,
this SLI applies to all API versions. For service types
that don&#39;t support breaking down by version, setting this
field will result in an error. When `null`, the `version` field will be omitted from the resulting object.
  - `availability` (`list[obj]`): Availability based SLI, dervied from count of requests made to this service that return successfully. When `null`, the `availability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability.new](#fn-basic_sli_performanceavailabilitynew) constructor.
  - `latency` (`list[obj]`): Parameters for a latency threshold SLI. When `null`, the `latency` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency.new](#fn-basic_sli_performancelatencynew) constructor.

**Returns**:
  - An attribute object that represents the `basic_sli_performance` sub block.


## obj windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability



### fn windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability.new` constructs a new object with attributes and blocks configured for the `availability`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether an availability SLI is enabled or not. Must be set to &#39;true. Defaults to &#39;true&#39;. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `availability` sub block.


## obj windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency



### fn windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency.new` constructs a new object with attributes and blocks configured for the `latency`
Terraform sub block.



**Args**:
  - `threshold` (`string`): A duration string, e.g. 10s.
Good service is defined to be the count of requests made to
this service that return in no more than threshold.

**Returns**:
  - An attribute object that represents the `latency` sub block.


## obj windows_based_sli.good_total_ratio_threshold.performance



### fn windows_based_sli.good_total_ratio_threshold.performance.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.new` constructs a new object with attributes and blocks configured for the `performance`
Terraform sub block.



**Args**:
  - `distribution_cut` (`list[obj]`): Used when good_service is defined by a count of values aggregated in a
Distribution that fall into a good range. The total_service is the
total count of all values aggregated in the Distribution.
Defines a distribution TimeSeries filter and thresholds used for
measuring good service and total service. When `null`, the `distribution_cut` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.new](#fn-performancedistribution_cutnew) constructor.
  - `good_total_ratio` (`list[obj]`): A means to compute a ratio of &#39;good_service&#39; to &#39;total_service&#39;.
Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
Must specify exactly two of good, bad, and total service filters.
The relationship good_service &#43; bad_service = total_service
will be assumed. When `null`, the `good_total_ratio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio.new](#fn-performancegood_total_rationew) constructor.

**Returns**:
  - An attribute object that represents the `performance` sub block.


## obj windows_based_sli.good_total_ratio_threshold.performance.distribution_cut



### fn windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.new` constructs a new object with attributes and blocks configured for the `distribution_cut`
Terraform sub block.



**Args**:
  - `distribution_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
aggregating values to quantify the good service provided.

Must have ValueType = DISTRIBUTION and
MetricKind = DELTA or MetricKind = CUMULATIVE.
  - `range` (`list[obj]`): Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min &lt;= x &lt;= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range.new](#fn-distribution_cutrangenew) constructor.

**Returns**:
  - An attribute object that represents the `distribution_cut` sub block.


## obj windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range



### fn windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range.new` constructs a new object with attributes and blocks configured for the `range`
Terraform sub block.



**Args**:
  - `max` (`number`): max value for the range (inclusive). If not given,
will be set to &#34;infinity&#34;, defining an open range
&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.
  - `min` (`number`): Min value for the range (inclusive). If not given,
will be set to &#34;-infinity&#34;, defining an open range
&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `range` sub block.


## obj windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio



### fn windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio.new` constructs a new object with attributes and blocks configured for the `good_total_ratio`
Terraform sub block.



**Args**:
  - `bad_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying bad service provided, either demanded service that
was not provided or demanded service that was of inadequate
quality. Exactly two of
good, bad, or total service filter must be defined (where
good &#43; bad = total is assumed)

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE. When `null`, the `bad_service_filter` field will be omitted from the resulting object.
  - `good_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying good service provided. Exactly two of
good, bad, or total service filter must be defined (where
good &#43; bad = total is assumed)

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE. When `null`, the `good_service_filter` field will be omitted from the resulting object.
  - `total_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying total demanded service. Exactly two of
good, bad, or total service filter must be defined (where
good &#43; bad = total is assumed)

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE. When `null`, the `total_service_filter` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `good_total_ratio` sub block.


## obj windows_based_sli.metric_mean_in_range



### fn windows_based_sli.metric_mean_in_range.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.metric_mean_in_range.new` constructs a new object with attributes and blocks configured for the `metric_mean_in_range`
Terraform sub block.



**Args**:
  - `time_series` (`string`): A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
specifying the TimeSeries to use for evaluating window
The provided TimeSeries must have ValueType = INT64 or
ValueType = DOUBLE and MetricKind = GAUGE. Mean value &#39;X&#39;
should satisfy &#39;range.min &lt;= X &lt;= range.max&#39;
under good service.
  - `range` (`list[obj]`): Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min &lt;= x &lt;= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. Mean value &#39;X&#39; of &#39;time_series&#39;
values should satisfy &#39;range.min &lt;= X &lt;= range.max&#39; for a
good service. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_mean_in_range.range.new](#fn-metric_mean_in_rangerangenew) constructor.

**Returns**:
  - An attribute object that represents the `metric_mean_in_range` sub block.


## obj windows_based_sli.metric_mean_in_range.range



### fn windows_based_sli.metric_mean_in_range.range.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.metric_mean_in_range.range.new` constructs a new object with attributes and blocks configured for the `range`
Terraform sub block.



**Args**:
  - `max` (`number`): max value for the range (inclusive). If not given,
will be set to &#34;infinity&#34;, defining an open range
&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.
  - `min` (`number`): Min value for the range (inclusive). If not given,
will be set to &#34;-infinity&#34;, defining an open range
&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `range` sub block.


## obj windows_based_sli.metric_sum_in_range



### fn windows_based_sli.metric_sum_in_range.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.metric_sum_in_range.new` constructs a new object with attributes and blocks configured for the `metric_sum_in_range`
Terraform sub block.



**Args**:
  - `time_series` (`string`): A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
specifying the TimeSeries to use for evaluating window
quality. The provided TimeSeries must have
ValueType = INT64 or ValueType = DOUBLE and
MetricKind = GAUGE.

Summed value &#39;X&#39; should satisfy
&#39;range.min &lt;= X &lt;= range.max&#39; for a good window.
  - `range` (`list[obj]`): Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min &lt;= x &lt;= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. Summed value &#39;X&#39; should satisfy
&#39;range.min &lt;= X &lt;= range.max&#39; for a good window. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_sum_in_range.range.new](#fn-metric_sum_in_rangerangenew) constructor.

**Returns**:
  - An attribute object that represents the `metric_sum_in_range` sub block.


## obj windows_based_sli.metric_sum_in_range.range



### fn windows_based_sli.metric_sum_in_range.range.new

```ts
new()
```


`google.monitoring_slo.windows_based_sli.metric_sum_in_range.range.new` constructs a new object with attributes and blocks configured for the `range`
Terraform sub block.



**Args**:
  - `max` (`number`): max value for the range (inclusive). If not given,
will be set to &#34;infinity&#34;, defining an open range
&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.
  - `min` (`number`): Min value for the range (inclusive). If not given,
will be set to &#34;-infinity&#34;, defining an open range
&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `range` sub block.
