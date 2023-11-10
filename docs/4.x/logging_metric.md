---
permalink: /logging_metric/
---

# logging_metric

`logging_metric` represents the `google_logging_metric` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucketName()`](#fn-withbucketname)
* [`fn withBucketOptions()`](#fn-withbucketoptions)
* [`fn withBucketOptionsMixin()`](#fn-withbucketoptionsmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withLabelExtractors()`](#fn-withlabelextractors)
* [`fn withMetricDescriptor()`](#fn-withmetricdescriptor)
* [`fn withMetricDescriptorMixin()`](#fn-withmetricdescriptormixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withValueExtractor()`](#fn-withvalueextractor)
* [`obj bucket_options`](#obj-bucket_options)
  * [`fn new()`](#fn-bucket_optionsnew)
  * [`obj bucket_options.explicit_buckets`](#obj-bucket_optionsexplicit_buckets)
    * [`fn new()`](#fn-bucket_optionsexplicit_bucketsnew)
  * [`obj bucket_options.exponential_buckets`](#obj-bucket_optionsexponential_buckets)
    * [`fn new()`](#fn-bucket_optionsexponential_bucketsnew)
  * [`obj bucket_options.linear_buckets`](#obj-bucket_optionslinear_buckets)
    * [`fn new()`](#fn-bucket_optionslinear_bucketsnew)
* [`obj metric_descriptor`](#obj-metric_descriptor)
  * [`fn new()`](#fn-metric_descriptornew)
  * [`obj metric_descriptor.labels`](#obj-metric_descriptorlabels)
    * [`fn new()`](#fn-metric_descriptorlabelsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.logging_metric.new` injects a new `google_logging_metric` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.logging_metric.new('some_id')

You can get the reference to the `id` field of the created `google.logging_metric` using the reference:

    $._ref.google_logging_metric.some_id.get('id')

This is the same as directly entering `"${ google_logging_metric.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket_name` (`string`): The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
are supported. The bucket has to be in the same project as the metric. When `null`, the `bucket_name` field will be omitted from the resulting object.
  - `description` (`string`): A description of this metric, which is used in documentation. The maximum length of the
description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): If set to True, then this metric is disabled and it does not generate any points. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
is used to match log entries.
  - `label_extractors` (`obj`): A map from a label key string to an extractor expression which is used to extract data from a log
entry field and assign as the label value. Each label key specified in the LabelDescriptor must
have an associated extractor expression in this map. The syntax of the extractor expression is
the same as for the valueExtractor field. When `null`, the `label_extractors` field will be omitted from the resulting object.
  - `name` (`string`): The client-assigned metric identifier. Examples - &#34;error_count&#34;, &#34;nginx/requests&#34;.
Metric identifiers are limited to 100 characters and can include only the following
characters A-Z, a-z, 0-9, and the special characters _-.,&#43;!*&#39;,()%/. The forward-slash
character (/) denotes a hierarchy of name pieces, and it cannot be the first character
of the name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `value_extractor` (`string`): A valueExtractor is required when using a distribution logs-based metric to extract the values to
record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
log entry field. The value of the field is converted to a string before applying the regex. It is an
error to specify a regex that does not include exactly one capture group. When `null`, the `value_extractor` field will be omitted from the resulting object.
  - `bucket_options` (`list[obj]`): The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
describes the bucket boundaries used to create a histogram of the extracted values. When `null`, the `bucket_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.new](#fn-bucket_optionsnew) constructor.
  - `metric_descriptor` (`list[obj]`): The optional metric descriptor associated with the logs-based metric.
If unspecified, it uses a default metric descriptor with a DELTA metric kind,
INT64 value type, with no labels and a unit of &#34;1&#34;. Such a metric counts the
number of log entries matching the filter expression. When `null`, the `metric_descriptor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.metric_descriptor.new](#fn-metric_descriptornew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.logging_metric.newAttrs` constructs a new object with attributes and blocks configured for the `logging_metric`
Terraform resource.

Unlike [google.logging_metric.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket_name` (`string`): The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
are supported. The bucket has to be in the same project as the metric. When `null`, the `bucket_name` field will be omitted from the resulting object.
  - `description` (`string`): A description of this metric, which is used in documentation. The maximum length of the
description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): If set to True, then this metric is disabled and it does not generate any points. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
is used to match log entries.
  - `label_extractors` (`obj`): A map from a label key string to an extractor expression which is used to extract data from a log
entry field and assign as the label value. Each label key specified in the LabelDescriptor must
have an associated extractor expression in this map. The syntax of the extractor expression is
the same as for the valueExtractor field. When `null`, the `label_extractors` field will be omitted from the resulting object.
  - `name` (`string`): The client-assigned metric identifier. Examples - &#34;error_count&#34;, &#34;nginx/requests&#34;.
Metric identifiers are limited to 100 characters and can include only the following
characters A-Z, a-z, 0-9, and the special characters _-.,&#43;!*&#39;,()%/. The forward-slash
character (/) denotes a hierarchy of name pieces, and it cannot be the first character
of the name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `value_extractor` (`string`): A valueExtractor is required when using a distribution logs-based metric to extract the values to
record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
log entry field. The value of the field is converted to a string before applying the regex. It is an
error to specify a regex that does not include exactly one capture group. When `null`, the `value_extractor` field will be omitted from the resulting object.
  - `bucket_options` (`list[obj]`): The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
describes the bucket boundaries used to create a histogram of the extracted values. When `null`, the `bucket_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.new](#fn-bucket_optionsnew) constructor.
  - `metric_descriptor` (`list[obj]`): The optional metric descriptor associated with the logs-based metric.
If unspecified, it uses a default metric descriptor with a DELTA metric kind,
INT64 value type, with no labels and a unit of &#34;1&#34;. Such a metric counts the
number of log entries matching the filter expression. When `null`, the `metric_descriptor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.metric_descriptor.new](#fn-metric_descriptornew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_metric` resource into the root Terraform configuration.


### fn withBucketName

```ts
withBucketName()
```

`google.string.withBucketName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket_name` field.


### fn withBucketOptions

```ts
withBucketOptions()
```

`google.list[obj].withBucketOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bucket_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBucketOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bucket_options` field.


### fn withBucketOptionsMixin

```ts
withBucketOptionsMixin()
```

`google.list[obj].withBucketOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bucket_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBucketOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bucket_options` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withFilter

```ts
withFilter()
```

`google.string.withFilter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filter` field.


### fn withLabelExtractors

```ts
withLabelExtractors()
```

`google.obj.withLabelExtractors` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the label_extractors field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `label_extractors` field.


### fn withMetricDescriptor

```ts
withMetricDescriptor()
```

`google.list[obj].withMetricDescriptor` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metric_descriptor field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetricDescriptorMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metric_descriptor` field.


### fn withMetricDescriptorMixin

```ts
withMetricDescriptorMixin()
```

`google.list[obj].withMetricDescriptorMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metric_descriptor field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetricDescriptor](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metric_descriptor` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


### fn withValueExtractor

```ts
withValueExtractor()
```

`google.string.withValueExtractor` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the value_extractor field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `value_extractor` field.


## obj bucket_options



### fn bucket_options.new

```ts
new()
```


`google.logging_metric.bucket_options.new` constructs a new object with attributes and blocks configured for the `bucket_options`
Terraform sub block.



**Args**:
  - `explicit_buckets` (`list[obj]`): Specifies a set of buckets with arbitrary widths. When `null`, the `explicit_buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.explicit_buckets.new](#fn-bucket_optionsexplicit_bucketsnew) constructor.
  - `exponential_buckets` (`list[obj]`): Specifies an exponential sequence of buckets that have a width that is proportional to the value of
the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket. When `null`, the `exponential_buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.exponential_buckets.new](#fn-bucket_optionsexponential_bucketsnew) constructor.
  - `linear_buckets` (`list[obj]`): Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
Each bucket represents a constant absolute uncertainty on the specific value in the bucket. When `null`, the `linear_buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.linear_buckets.new](#fn-bucket_optionslinear_bucketsnew) constructor.

**Returns**:
  - An attribute object that represents the `bucket_options` sub block.


## obj bucket_options.explicit_buckets



### fn bucket_options.explicit_buckets.new

```ts
new()
```


`google.logging_metric.bucket_options.explicit_buckets.new` constructs a new object with attributes and blocks configured for the `explicit_buckets`
Terraform sub block.



**Args**:
  - `bounds` (`list`): The values must be monotonically increasing.

**Returns**:
  - An attribute object that represents the `explicit_buckets` sub block.


## obj bucket_options.exponential_buckets



### fn bucket_options.exponential_buckets.new

```ts
new()
```


`google.logging_metric.bucket_options.exponential_buckets.new` constructs a new object with attributes and blocks configured for the `exponential_buckets`
Terraform sub block.



**Args**:
  - `growth_factor` (`number`): Must be greater than 1.
  - `num_finite_buckets` (`number`): Must be greater than 0.
  - `scale` (`number`): Must be greater than 0.

**Returns**:
  - An attribute object that represents the `exponential_buckets` sub block.


## obj bucket_options.linear_buckets



### fn bucket_options.linear_buckets.new

```ts
new()
```


`google.logging_metric.bucket_options.linear_buckets.new` constructs a new object with attributes and blocks configured for the `linear_buckets`
Terraform sub block.



**Args**:
  - `num_finite_buckets` (`number`): Must be greater than 0.
  - `offset` (`number`): Lower bound of the first bucket.
  - `width` (`number`): Must be greater than 0.

**Returns**:
  - An attribute object that represents the `linear_buckets` sub block.


## obj metric_descriptor



### fn metric_descriptor.new

```ts
new()
```


`google.logging_metric.metric_descriptor.new` constructs a new object with attributes and blocks configured for the `metric_descriptor`
Terraform sub block.



**Args**:
  - `display_name` (`string`): A concise name for the metric, which can be displayed in user interfaces. Use sentence case
without an ending period, for example &#34;Request count&#34;. This field is optional but it is
recommended to be set for any metrics associated with user-visible concepts, such as Quota. When `null`, the `display_name` field will be omitted from the resulting object.
  - `metric_kind` (`string`): Whether the metric records instantaneous values, changes to a value, etc.
Some combinations of metricKind and valueType might not be supported.
For counter metrics, set this to DELTA. Possible values: [&#34;DELTA&#34;, &#34;GAUGE&#34;, &#34;CUMULATIVE&#34;]
  - `unit` (`string`): The unit in which the metric value is reported. It is only applicable if the valueType is
&#39;INT64&#39;, &#39;DOUBLE&#39;, or &#39;DISTRIBUTION&#39;. The supported units are a subset of
[The Unified Code for Units of Measure](http://unitsofmeasure.org/ucum.html) standard When `null`, the `unit` field will be omitted from the resulting object.
  - `value_type` (`string`): Whether the measurement is an integer, a floating-point number, etc.
Some combinations of metricKind and valueType might not be supported.
For counter metrics, set this to INT64. Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;DISTRIBUTION&#34;, &#34;MONEY&#34;]
  - `labels` (`list[obj]`): The set of labels that can be used to describe a specific instance of this metric type. For
example, the appengine.googleapis.com/http/server/response_latencies metric type has a label
for the HTTP response code, response_code, so you can look at latencies for successful responses
or just for responses that failed. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.metric_descriptor.labels.new](#fn-metric_descriptorlabelsnew) constructor.

**Returns**:
  - An attribute object that represents the `metric_descriptor` sub block.


## obj metric_descriptor.labels



### fn metric_descriptor.labels.new

```ts
new()
```


`google.logging_metric.metric_descriptor.labels.new` constructs a new object with attributes and blocks configured for the `labels`
Terraform sub block.



**Args**:
  - `description` (`string`): A human-readable description for the label. When `null`, the `description` field will be omitted from the resulting object.
  - `key` (`string`): The label key.
  - `value_type` (`string`): The type of data that can be assigned to the label. Default value: &#34;STRING&#34; Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;STRING&#34;] When `null`, the `value_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `labels` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.logging_metric.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
