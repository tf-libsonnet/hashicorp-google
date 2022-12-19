---
permalink: /monitoring_metric_descriptor/
---

# monitoring_metric_descriptor

`monitoring_metric_descriptor` represents the `google_monitoring_metric_descriptor` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLabelsMixin()`](#fn-withlabelsmixin)
* [`fn withLaunchStage()`](#fn-withlaunchstage)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withMetadataMixin()`](#fn-withmetadatamixin)
* [`fn withMetricKind()`](#fn-withmetrickind)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withUnit()`](#fn-withunit)
* [`fn withValueType()`](#fn-withvaluetype)
* [`obj labels`](#obj-labels)
  * [`fn new()`](#fn-labelsnew)
* [`obj metadata`](#obj-metadata)
  * [`fn new()`](#fn-metadatanew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_metric_descriptor.new` injects a new `google_monitoring_metric_descriptor` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_metric_descriptor.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_metric_descriptor` using the reference:

    $._ref.google_monitoring_metric_descriptor.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_metric_descriptor.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A detailed description of the metric, which can be used in documentation.
  - `display_name` (`string`): A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example &#34;Request count&#34;.
  - `launch_stage` (`string`): The launch stage of the metric definition. Possible values: [&#34;LAUNCH_STAGE_UNSPECIFIED&#34;, &#34;UNIMPLEMENTED&#34;, &#34;PRELAUNCH&#34;, &#34;EARLY_ACCESS&#34;, &#34;ALPHA&#34;, &#34;BETA&#34;, &#34;GA&#34;, &#34;DEPRECATED&#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.
  - `metric_kind` (`string`): Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [&#34;METRIC_KIND_UNSPECIFIED&#34;, &#34;GAUGE&#34;, &#34;DELTA&#34;, &#34;CUMULATIVE&#34;]
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, &#39;/&#39; and underscores &#39;_&#39; are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  - `unit` (`string`): The units in which the metric value is reported. It is only applicable if the
valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
the stored metric values.

Different systems may scale the values to be more easily displayed (so a value of
0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
3.5MBy). However, if the unit is KBy, then the value of the metric is always in
thousands of bytes, no matter how it may be displayed.

If you want a custom metric to record the exact number of CPU-seconds used by a job,
you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
12005.

Alternatively, if you want a custom metric to record data in a more granular way, you
can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
The supported units are a subset of The Unified Code for Units of Measure standard.
More info can be found in the API documentation
(https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors). When `null`, the `unit` field will be omitted from the resulting object.
  - `value_type` (`string`): Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;DISTRIBUTION&#34;]
  - `labels` (`list[obj]`): The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.labels.new](#fn-labelsnew) constructor.
  - `metadata` (`list[obj]`): Metadata which can be used to guide usage of the metric. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.metadata.new](#fn-metadatanew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_metric_descriptor.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_metric_descriptor`
Terraform resource.

Unlike [google.monitoring_metric_descriptor.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A detailed description of the metric, which can be used in documentation.
  - `display_name` (`string`): A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example &#34;Request count&#34;.
  - `launch_stage` (`string`): The launch stage of the metric definition. Possible values: [&#34;LAUNCH_STAGE_UNSPECIFIED&#34;, &#34;UNIMPLEMENTED&#34;, &#34;PRELAUNCH&#34;, &#34;EARLY_ACCESS&#34;, &#34;ALPHA&#34;, &#34;BETA&#34;, &#34;GA&#34;, &#34;DEPRECATED&#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.
  - `metric_kind` (`string`): Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [&#34;METRIC_KIND_UNSPECIFIED&#34;, &#34;GAUGE&#34;, &#34;DELTA&#34;, &#34;CUMULATIVE&#34;]
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, &#39;/&#39; and underscores &#39;_&#39; are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  - `unit` (`string`): The units in which the metric value is reported. It is only applicable if the
valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
the stored metric values.

Different systems may scale the values to be more easily displayed (so a value of
0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
3.5MBy). However, if the unit is KBy, then the value of the metric is always in
thousands of bytes, no matter how it may be displayed.

If you want a custom metric to record the exact number of CPU-seconds used by a job,
you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
12005.

Alternatively, if you want a custom metric to record data in a more granular way, you
can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
The supported units are a subset of The Unified Code for Units of Measure standard.
More info can be found in the API documentation
(https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors). When `null`, the `unit` field will be omitted from the resulting object.
  - `value_type` (`string`): Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;DISTRIBUTION&#34;]
  - `labels` (`list[obj]`): The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.labels.new](#fn-labelsnew) constructor.
  - `metadata` (`list[obj]`): Metadata which can be used to guide usage of the metric. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.metadata.new](#fn-metadatanew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_metric_descriptor` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.list[obj].withLabels` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the labels field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLabelsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `labels` field.


### fn withLabelsMixin

```ts
withLabelsMixin()
```

`google.list[obj].withLabelsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the labels field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLabels](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `labels` field.


### fn withLaunchStage

```ts
withLaunchStage()
```

`google.string.withLaunchStage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the launch_stage field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `launch_stage` field.


### fn withMetadata

```ts
withMetadata()
```

`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


### fn withMetadataMixin

```ts
withMetadataMixin()
```

`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


### fn withMetricKind

```ts
withMetricKind()
```

`google.string.withMetricKind` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the metric_kind field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `metric_kind` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


### fn withUnit

```ts
withUnit()
```

`google.string.withUnit` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the unit field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `unit` field.


### fn withValueType

```ts
withValueType()
```

`google.string.withValueType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the value_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `value_type` field.


## obj labels



### fn labels.new

```ts
new()
```


`google.monitoring_metric_descriptor.labels.new` constructs a new object with attributes and blocks configured for the `labels`
Terraform sub block.



**Args**:
  - `description` (`string`): A human-readable description for the label. When `null`, the `description` field will be omitted from the resulting object.
  - `key` (`string`): The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]*
  - `value_type` (`string`): The type of data that can be assigned to the label. Default value: &#34;STRING&#34; Possible values: [&#34;STRING&#34;, &#34;BOOL&#34;, &#34;INT64&#34;] When `null`, the `value_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `labels` sub block.


## obj metadata



### fn metadata.new

```ts
new()
```


`google.monitoring_metric_descriptor.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`
Terraform sub block.



**Args**:
  - `ingest_delay` (`string`): The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In &#39;[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&amp;_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)&#39;. When `null`, the `ingest_delay` field will be omitted from the resulting object.
  - `sample_period` (`string`): The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In &#39;[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&amp;_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)&#39;. When `null`, the `sample_period` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metadata` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_metric_descriptor.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
