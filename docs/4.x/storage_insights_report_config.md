---
permalink: /storage_insights_report_config/
---

# storage_insights_report_config

`storage_insights_report_config` represents the `google_storage_insights_report_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCsvOptions()`](#fn-withcsvoptions)
* [`fn withCsvOptionsMixin()`](#fn-withcsvoptionsmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withFrequencyOptions()`](#fn-withfrequencyoptions)
* [`fn withFrequencyOptionsMixin()`](#fn-withfrequencyoptionsmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withObjectMetadataReportOptions()`](#fn-withobjectmetadatareportoptions)
* [`fn withObjectMetadataReportOptionsMixin()`](#fn-withobjectmetadatareportoptionsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj csv_options`](#obj-csv_options)
  * [`fn new()`](#fn-csv_optionsnew)
* [`obj frequency_options`](#obj-frequency_options)
  * [`fn new()`](#fn-frequency_optionsnew)
  * [`obj frequency_options.end_date`](#obj-frequency_optionsend_date)
    * [`fn new()`](#fn-frequency_optionsend_datenew)
  * [`obj frequency_options.start_date`](#obj-frequency_optionsstart_date)
    * [`fn new()`](#fn-frequency_optionsstart_datenew)
* [`obj object_metadata_report_options`](#obj-object_metadata_report_options)
  * [`fn new()`](#fn-object_metadata_report_optionsnew)
  * [`obj object_metadata_report_options.storage_destination_options`](#obj-object_metadata_report_optionsstorage_destination_options)
    * [`fn new()`](#fn-object_metadata_report_optionsstorage_destination_optionsnew)
  * [`obj object_metadata_report_options.storage_filters`](#obj-object_metadata_report_optionsstorage_filters)
    * [`fn new()`](#fn-object_metadata_report_optionsstorage_filtersnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.storage_insights_report_config.new` injects a new `google_storage_insights_report_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_insights_report_config.new('some_id')

You can get the reference to the `id` field of the created `google.storage_insights_report_config` using the reference:

    $._ref.google_storage_insights_report_config.some_id.get('id')

This is the same as directly entering `"${ google_storage_insights_report_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
must be in the same location.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `csv_options` (`list[obj]`): Options for configuring the format of the inventory report CSV file. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.csv_options.new](#fn-csv_optionsnew) constructor.
  - `frequency_options` (`list[obj]`): Options for configuring how inventory reports are generated. When `null`, the `frequency_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.new](#fn-frequency_optionsnew) constructor.
  - `object_metadata_report_options` (`list[obj]`): Options for including metadata in an inventory report. When `null`, the `object_metadata_report_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.new](#fn-object_metadata_report_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_insights_report_config.newAttrs` constructs a new object with attributes and blocks configured for the `storage_insights_report_config`
Terraform resource.

Unlike [google.storage_insights_report_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
must be in the same location.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `csv_options` (`list[obj]`): Options for configuring the format of the inventory report CSV file. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.csv_options.new](#fn-csv_optionsnew) constructor.
  - `frequency_options` (`list[obj]`): Options for configuring how inventory reports are generated. When `null`, the `frequency_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.new](#fn-frequency_optionsnew) constructor.
  - `object_metadata_report_options` (`list[obj]`): Options for including metadata in an inventory report. When `null`, the `object_metadata_report_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.new](#fn-object_metadata_report_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_insights_report_config` resource into the root Terraform configuration.


### fn withCsvOptions

```ts
withCsvOptions()
```

`google.list[obj].withCsvOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the csv_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCsvOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `csv_options` field.


### fn withCsvOptionsMixin

```ts
withCsvOptionsMixin()
```

`google.list[obj].withCsvOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the csv_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCsvOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `csv_options` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withFrequencyOptions

```ts
withFrequencyOptions()
```

`google.list[obj].withFrequencyOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the frequency_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFrequencyOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `frequency_options` field.


### fn withFrequencyOptionsMixin

```ts
withFrequencyOptionsMixin()
```

`google.list[obj].withFrequencyOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the frequency_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFrequencyOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `frequency_options` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withObjectMetadataReportOptions

```ts
withObjectMetadataReportOptions()
```

`google.list[obj].withObjectMetadataReportOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the object_metadata_report_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withObjectMetadataReportOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `object_metadata_report_options` field.


### fn withObjectMetadataReportOptionsMixin

```ts
withObjectMetadataReportOptionsMixin()
```

`google.list[obj].withObjectMetadataReportOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the object_metadata_report_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withObjectMetadataReportOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `object_metadata_report_options` field.


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


## obj csv_options



### fn csv_options.new

```ts
new()
```


`google.storage_insights_report_config.csv_options.new` constructs a new object with attributes and blocks configured for the `csv_options`
Terraform sub block.



**Args**:
  - `delimiter` (`string`): The delimiter used to separate the fields in the inventory report CSV file. When `null`, the `delimiter` field will be omitted from the resulting object.
  - `header_required` (`bool`): The boolean that indicates whether or not headers are included in the inventory report CSV file. When `null`, the `header_required` field will be omitted from the resulting object.
  - `record_separator` (`string`): The character used to separate the records in the inventory report CSV file. When `null`, the `record_separator` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `csv_options` sub block.


## obj frequency_options



### fn frequency_options.new

```ts
new()
```


`google.storage_insights_report_config.frequency_options.new` constructs a new object with attributes and blocks configured for the `frequency_options`
Terraform sub block.



**Args**:
  - `frequency` (`string`): The frequency in which inventory reports are generated. Values are DAILY or WEEKLY. Possible values: [&#34;DAILY&#34;, &#34;WEEKLY&#34;]
  - `end_date` (`list[obj]`): The date to stop generating inventory reports. For example, {&#34;day&#34;: 15, &#34;month&#34;: 9, &#34;year&#34;: 2022}. When `null`, the `end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.end_date.new](#fn-frequency_optionsend_datenew) constructor.
  - `start_date` (`list[obj]`): The date to start generating inventory reports. For example, {&#34;day&#34;: 15, &#34;month&#34;: 8, &#34;year&#34;: 2022}. When `null`, the `start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.frequency_options.start_date.new](#fn-frequency_optionsstart_datenew) constructor.

**Returns**:
  - An attribute object that represents the `frequency_options` sub block.


## obj frequency_options.end_date



### fn frequency_options.end_date.new

```ts
new()
```


`google.storage_insights_report_config.frequency_options.end_date.new` constructs a new object with attributes and blocks configured for the `end_date`
Terraform sub block.



**Args**:
  - `day` (`number`): The day of the month to stop generating inventory reports.
  - `month` (`number`): The month to stop generating inventory reports.
  - `year` (`number`): The year to stop generating inventory reports

**Returns**:
  - An attribute object that represents the `end_date` sub block.


## obj frequency_options.start_date



### fn frequency_options.start_date.new

```ts
new()
```


`google.storage_insights_report_config.frequency_options.start_date.new` constructs a new object with attributes and blocks configured for the `start_date`
Terraform sub block.



**Args**:
  - `day` (`number`): The day of the month to start generating inventory reports.
  - `month` (`number`): The month to start generating inventory reports.
  - `year` (`number`): The year to start generating inventory reports

**Returns**:
  - An attribute object that represents the `start_date` sub block.


## obj object_metadata_report_options



### fn object_metadata_report_options.new

```ts
new()
```


`google.storage_insights_report_config.object_metadata_report_options.new` constructs a new object with attributes and blocks configured for the `object_metadata_report_options`
Terraform sub block.



**Args**:
  - `metadata_fields` (`list`): The metadata fields included in an inventory report.
  - `storage_destination_options` (`list[obj]`): Options for where the inventory reports are stored. When `null`, the `storage_destination_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.storage_destination_options.new](#fn-object_metadata_report_optionsstorage_destination_optionsnew) constructor.
  - `storage_filters` (`list[obj]`): A nested object resource When `null`, the `storage_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_insights_report_config.object_metadata_report_options.storage_filters.new](#fn-object_metadata_report_optionsstorage_filtersnew) constructor.

**Returns**:
  - An attribute object that represents the `object_metadata_report_options` sub block.


## obj object_metadata_report_options.storage_destination_options



### fn object_metadata_report_options.storage_destination_options.new

```ts
new()
```


`google.storage_insights_report_config.object_metadata_report_options.storage_destination_options.new` constructs a new object with attributes and blocks configured for the `storage_destination_options`
Terraform sub block.



**Args**:
  - `bucket` (`string`): The destination bucket that stores the generated inventory reports.
  - `destination_path` (`string`): The path within the destination bucket to store generated inventory reports. When `null`, the `destination_path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `storage_destination_options` sub block.


## obj object_metadata_report_options.storage_filters



### fn object_metadata_report_options.storage_filters.new

```ts
new()
```


`google.storage_insights_report_config.object_metadata_report_options.storage_filters.new` constructs a new object with attributes and blocks configured for the `storage_filters`
Terraform sub block.



**Args**:
  - `bucket` (`string`): The filter to use when specifying which bucket to generate inventory reports for. When `null`, the `bucket` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `storage_filters` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.storage_insights_report_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
