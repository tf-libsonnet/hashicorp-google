---
permalink: /dataplex_datascan/
---

# dataplex_datascan

`dataplex_datascan` represents the `google_dataplex_datascan` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withData()`](#fn-withdata)
* [`fn withDataMixin()`](#fn-withdatamixin)
* [`fn withDataProfileSpec()`](#fn-withdataprofilespec)
* [`fn withDataProfileSpecMixin()`](#fn-withdataprofilespecmixin)
* [`fn withDataQualitySpec()`](#fn-withdataqualityspec)
* [`fn withDataQualitySpecMixin()`](#fn-withdataqualityspecmixin)
* [`fn withDataScanId()`](#fn-withdatascanid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withExecutionSpec()`](#fn-withexecutionspec)
* [`fn withExecutionSpecMixin()`](#fn-withexecutionspecmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj data`](#obj-data)
  * [`fn new()`](#fn-datanew)
* [`obj data_profile_spec`](#obj-data_profile_spec)
  * [`fn new()`](#fn-data_profile_specnew)
  * [`obj data_profile_spec.exclude_fields`](#obj-data_profile_specexclude_fields)
    * [`fn new()`](#fn-data_profile_specexclude_fieldsnew)
  * [`obj data_profile_spec.include_fields`](#obj-data_profile_specinclude_fields)
    * [`fn new()`](#fn-data_profile_specinclude_fieldsnew)
  * [`obj data_profile_spec.post_scan_actions`](#obj-data_profile_specpost_scan_actions)
    * [`fn new()`](#fn-data_profile_specpost_scan_actionsnew)
    * [`obj data_profile_spec.post_scan_actions.bigquery_export`](#obj-data_profile_specpost_scan_actionsbigquery_export)
      * [`fn new()`](#fn-data_profile_specpost_scan_actionsbigquery_exportnew)
* [`obj data_quality_spec`](#obj-data_quality_spec)
  * [`fn new()`](#fn-data_quality_specnew)
  * [`obj data_quality_spec.post_scan_actions`](#obj-data_quality_specpost_scan_actions)
    * [`fn new()`](#fn-data_quality_specpost_scan_actionsnew)
    * [`obj data_quality_spec.post_scan_actions.bigquery_export`](#obj-data_quality_specpost_scan_actionsbigquery_export)
      * [`fn new()`](#fn-data_quality_specpost_scan_actionsbigquery_exportnew)
  * [`obj data_quality_spec.rules`](#obj-data_quality_specrules)
    * [`fn new()`](#fn-data_quality_specrulesnew)
    * [`obj data_quality_spec.rules.non_null_expectation`](#obj-data_quality_specrulesnon_null_expectation)
      * [`fn new()`](#fn-data_quality_specrulesnon_null_expectationnew)
    * [`obj data_quality_spec.rules.range_expectation`](#obj-data_quality_specrulesrange_expectation)
      * [`fn new()`](#fn-data_quality_specrulesrange_expectationnew)
    * [`obj data_quality_spec.rules.regex_expectation`](#obj-data_quality_specrulesregex_expectation)
      * [`fn new()`](#fn-data_quality_specrulesregex_expectationnew)
    * [`obj data_quality_spec.rules.row_condition_expectation`](#obj-data_quality_specrulesrow_condition_expectation)
      * [`fn new()`](#fn-data_quality_specrulesrow_condition_expectationnew)
    * [`obj data_quality_spec.rules.set_expectation`](#obj-data_quality_specrulesset_expectation)
      * [`fn new()`](#fn-data_quality_specrulesset_expectationnew)
    * [`obj data_quality_spec.rules.statistic_range_expectation`](#obj-data_quality_specrulesstatistic_range_expectation)
      * [`fn new()`](#fn-data_quality_specrulesstatistic_range_expectationnew)
    * [`obj data_quality_spec.rules.table_condition_expectation`](#obj-data_quality_specrulestable_condition_expectation)
      * [`fn new()`](#fn-data_quality_specrulestable_condition_expectationnew)
    * [`obj data_quality_spec.rules.uniqueness_expectation`](#obj-data_quality_specrulesuniqueness_expectation)
      * [`fn new()`](#fn-data_quality_specrulesuniqueness_expectationnew)
* [`obj execution_spec`](#obj-execution_spec)
  * [`fn new()`](#fn-execution_specnew)
  * [`obj execution_spec.trigger`](#obj-execution_spectrigger)
    * [`fn new()`](#fn-execution_spectriggernew)
    * [`obj execution_spec.trigger.on_demand`](#obj-execution_spectriggeron_demand)
      * [`fn new()`](#fn-execution_spectriggeron_demandnew)
    * [`obj execution_spec.trigger.schedule`](#obj-execution_spectriggerschedule)
      * [`fn new()`](#fn-execution_spectriggerschedulenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dataplex_datascan.new` injects a new `google_dataplex_datascan` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataplex_datascan.new('some_id')

You can get the reference to the `id` field of the created `google.dataplex_datascan` using the reference:

    $._ref.google_dataplex_datascan.some_id.get('id')

This is the same as directly entering `"${ google_dataplex_datascan.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `data_scan_id` (`string`): DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  - `description` (`string`): Description of the scan. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the scan. A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the data scan should reside.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `data` (`list[obj]`): The data source for DataScan. When `null`, the `data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data.new](#fn-datanew) constructor.
  - `data_profile_spec` (`list[obj]`): DataProfileScan related setting. When `null`, the `data_profile_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.new](#fn-data_profile_specnew) constructor.
  - `data_quality_spec` (`list[obj]`): DataQualityScan related setting. When `null`, the `data_quality_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.new](#fn-data_quality_specnew) constructor.
  - `execution_spec` (`list[obj]`): DataScan execution settings. When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.new](#fn-execution_specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataplex_datascan.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_datascan`
Terraform resource.

Unlike [google.dataplex_datascan.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `data_scan_id` (`string`): DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  - `description` (`string`): Description of the scan. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the scan. A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the data scan should reside.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `data` (`list[obj]`): The data source for DataScan. When `null`, the `data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data.new](#fn-datanew) constructor.
  - `data_profile_spec` (`list[obj]`): DataProfileScan related setting. When `null`, the `data_profile_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.new](#fn-data_profile_specnew) constructor.
  - `data_quality_spec` (`list[obj]`): DataQualityScan related setting. When `null`, the `data_quality_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.new](#fn-data_quality_specnew) constructor.
  - `execution_spec` (`list[obj]`): DataScan execution settings. When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.new](#fn-execution_specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_datascan` resource into the root Terraform configuration.


### fn withData

```ts
withData()
```

`google.list[obj].withData` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data` field.


### fn withDataMixin

```ts
withDataMixin()
```

`google.list[obj].withDataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withData](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data` field.


### fn withDataProfileSpec

```ts
withDataProfileSpec()
```

`google.list[obj].withDataProfileSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_profile_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDataProfileSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_profile_spec` field.


### fn withDataProfileSpecMixin

```ts
withDataProfileSpecMixin()
```

`google.list[obj].withDataProfileSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_profile_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDataProfileSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_profile_spec` field.


### fn withDataQualitySpec

```ts
withDataQualitySpec()
```

`google.list[obj].withDataQualitySpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_quality_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDataQualitySpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_quality_spec` field.


### fn withDataQualitySpecMixin

```ts
withDataQualitySpecMixin()
```

`google.list[obj].withDataQualitySpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_quality_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDataQualitySpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_quality_spec` field.


### fn withDataScanId

```ts
withDataScanId()
```

`google.string.withDataScanId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_scan_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_scan_id` field.


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


### fn withExecutionSpec

```ts
withExecutionSpec()
```

`google.list[obj].withExecutionSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the execution_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExecutionSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `execution_spec` field.


### fn withExecutionSpecMixin

```ts
withExecutionSpecMixin()
```

`google.list[obj].withExecutionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the execution_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExecutionSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `execution_spec` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


## obj data



### fn data.new

```ts
new()
```


`google.dataplex_datascan.data.new` constructs a new object with attributes and blocks configured for the `data`
Terraform sub block.



**Args**:
  - `entity` (`string`): The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan. When `null`, the `entity` field will be omitted from the resulting object.
  - `resource` (`string`): The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:
(Cloud Storage bucket for DataDiscoveryScan)BigQuery table of type &#34;TABLE&#34; for DataProfileScan/DataQualityScan. When `null`, the `resource` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `data` sub block.


## obj data_profile_spec



### fn data_profile_spec.new

```ts
new()
```


`google.dataplex_datascan.data_profile_spec.new` constructs a new object with attributes and blocks configured for the `data_profile_spec`
Terraform sub block.



**Args**:
  - `row_filter` (`string`): A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10 When `null`, the `row_filter` field will be omitted from the resulting object.
  - `sampling_percent` (`number`): The percentage of the records to be selected from the dataset for DataScan.
Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
Sampling is not applied if &#39;sampling_percent&#39; is not specified, 0 or 100. When `null`, the `sampling_percent` field will be omitted from the resulting object.
  - `exclude_fields` (`list[obj]`): The fields to exclude from data profile.
If specified, the fields will be excluded from data profile, regardless of &#39;include_fields&#39; value. When `null`, the `exclude_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.exclude_fields.new](#fn-data_profile_specexclude_fieldsnew) constructor.
  - `include_fields` (`list[obj]`): The fields to include in data profile.
If not specified, all fields at the time of profile scan job execution are included, except for ones listed in &#39;exclude_fields&#39;. When `null`, the `include_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.include_fields.new](#fn-data_profile_specinclude_fieldsnew) constructor.
  - `post_scan_actions` (`list[obj]`): Actions to take upon job completion. When `null`, the `post_scan_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.post_scan_actions.new](#fn-data_profile_specpost_scan_actionsnew) constructor.

**Returns**:
  - An attribute object that represents the `data_profile_spec` sub block.


## obj data_profile_spec.exclude_fields



### fn data_profile_spec.exclude_fields.new

```ts
new()
```


`google.dataplex_datascan.data_profile_spec.exclude_fields.new` constructs a new object with attributes and blocks configured for the `exclude_fields`
Terraform sub block.



**Args**:
  - `field_names` (`list`): Expected input is a list of fully qualified names of fields as in the schema.
Only top-level field names for nested fields are supported.
For instance, if &#39;x&#39; is of nested field type, listing &#39;x&#39; is supported but &#39;x.y.z&#39; is not supported. Here &#39;y&#39; and &#39;y.z&#39; are nested fields of &#39;x&#39;. When `null`, the `field_names` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `exclude_fields` sub block.


## obj data_profile_spec.include_fields



### fn data_profile_spec.include_fields.new

```ts
new()
```


`google.dataplex_datascan.data_profile_spec.include_fields.new` constructs a new object with attributes and blocks configured for the `include_fields`
Terraform sub block.



**Args**:
  - `field_names` (`list`): Expected input is a list of fully qualified names of fields as in the schema.
Only top-level field names for nested fields are supported.
For instance, if &#39;x&#39; is of nested field type, listing &#39;x&#39; is supported but &#39;x.y.z&#39; is not supported. Here &#39;y&#39; and &#39;y.z&#39; are nested fields of &#39;x&#39;. When `null`, the `field_names` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `include_fields` sub block.


## obj data_profile_spec.post_scan_actions



### fn data_profile_spec.post_scan_actions.new

```ts
new()
```


`google.dataplex_datascan.data_profile_spec.post_scan_actions.new` constructs a new object with attributes and blocks configured for the `post_scan_actions`
Terraform sub block.



**Args**:
  - `bigquery_export` (`list[obj]`): If set, results will be exported to the provided BigQuery table. When `null`, the `bigquery_export` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_profile_spec.post_scan_actions.bigquery_export.new](#fn-data_profile_specdata_profile_specbigquery_exportnew) constructor.

**Returns**:
  - An attribute object that represents the `post_scan_actions` sub block.


## obj data_profile_spec.post_scan_actions.bigquery_export



### fn data_profile_spec.post_scan_actions.bigquery_export.new

```ts
new()
```


`google.dataplex_datascan.data_profile_spec.post_scan_actions.bigquery_export.new` constructs a new object with attributes and blocks configured for the `bigquery_export`
Terraform sub block.



**Args**:
  - `results_table` (`string`): The BigQuery table to export DataProfileScan results to.
Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID When `null`, the `results_table` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `bigquery_export` sub block.


## obj data_quality_spec



### fn data_quality_spec.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.new` constructs a new object with attributes and blocks configured for the `data_quality_spec`
Terraform sub block.



**Args**:
  - `row_filter` (`string`): A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10 When `null`, the `row_filter` field will be omitted from the resulting object.
  - `sampling_percent` (`number`): The percentage of the records to be selected from the dataset for DataScan.
Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
Sampling is not applied if &#39;sampling_percent&#39; is not specified, 0 or 100. When `null`, the `sampling_percent` field will be omitted from the resulting object.
  - `post_scan_actions` (`list[obj]`): Actions to take upon job completion. When `null`, the `post_scan_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.post_scan_actions.new](#fn-data_quality_specpost_scan_actionsnew) constructor.
  - `rules` (`list[obj]`): The list of rules to evaluate against a data source. At least one rule is required. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.new](#fn-data_quality_specrulesnew) constructor.

**Returns**:
  - An attribute object that represents the `data_quality_spec` sub block.


## obj data_quality_spec.post_scan_actions



### fn data_quality_spec.post_scan_actions.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.post_scan_actions.new` constructs a new object with attributes and blocks configured for the `post_scan_actions`
Terraform sub block.



**Args**:
  - `bigquery_export` (`list[obj]`): If set, results will be exported to the provided BigQuery table. When `null`, the `bigquery_export` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.post_scan_actions.bigquery_export.new](#fn-data_quality_specdata_quality_specbigquery_exportnew) constructor.

**Returns**:
  - An attribute object that represents the `post_scan_actions` sub block.


## obj data_quality_spec.post_scan_actions.bigquery_export



### fn data_quality_spec.post_scan_actions.bigquery_export.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.post_scan_actions.bigquery_export.new` constructs a new object with attributes and blocks configured for the `bigquery_export`
Terraform sub block.



**Args**:
  - `results_table` (`string`): The BigQuery table to export DataQualityScan results to.
Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID When `null`, the `results_table` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `bigquery_export` sub block.


## obj data_quality_spec.rules



### fn data_quality_spec.rules.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `column` (`string`): The unnested column which this rule is evaluated against. When `null`, the `column` field will be omitted from the resulting object.
  - `description` (`string`): Description of the rule.
The maximum length is 1,024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `dimension` (`string`): The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are [&#34;COMPLETENESS&#34;, &#34;ACCURACY&#34;, &#34;CONSISTENCY&#34;, &#34;VALIDITY&#34;, &#34;UNIQUENESS&#34;, &#34;INTEGRITY&#34;]
  - `ignore_null` (`bool`): Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules. When `null`, the `ignore_null` field will be omitted from the resulting object.
  - `name` (`string`): A mutable name for the rule.
The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-).
The maximum length is 63 characters.
Must start with a letter.
Must end with a number or a letter. When `null`, the `name` field will be omitted from the resulting object.
  - `threshold` (`number`): The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). When `null`, the `threshold` field will be omitted from the resulting object.
  - `non_null_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value is null. When `null`, the `non_null_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.non_null_expectation.new](#fn-data_quality_specdata_quality_specnon_null_expectationnew) constructor.
  - `range_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value lies between a specified range. When `null`, the `range_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.range_expectation.new](#fn-data_quality_specdata_quality_specrange_expectationnew) constructor.
  - `regex_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value matches a specified regex. When `null`, the `regex_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.regex_expectation.new](#fn-data_quality_specdata_quality_specregex_expectationnew) constructor.
  - `row_condition_expectation` (`list[obj]`): Table rule which evaluates whether each row passes the specified condition. When `null`, the `row_condition_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.row_condition_expectation.new](#fn-data_quality_specdata_quality_specrow_condition_expectationnew) constructor.
  - `set_expectation` (`list[obj]`): ColumnMap rule which evaluates whether each column value is contained by a specified set. When `null`, the `set_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.set_expectation.new](#fn-data_quality_specdata_quality_specset_expectationnew) constructor.
  - `statistic_range_expectation` (`list[obj]`): ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range. When `null`, the `statistic_range_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.statistic_range_expectation.new](#fn-data_quality_specdata_quality_specstatistic_range_expectationnew) constructor.
  - `table_condition_expectation` (`list[obj]`): Table rule which evaluates whether the provided expression is true. When `null`, the `table_condition_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.table_condition_expectation.new](#fn-data_quality_specdata_quality_spectable_condition_expectationnew) constructor.
  - `uniqueness_expectation` (`list[obj]`): Row-level rule which evaluates whether each column value is unique. When `null`, the `uniqueness_expectation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.data_quality_spec.rules.uniqueness_expectation.new](#fn-data_quality_specdata_quality_specuniqueness_expectationnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj data_quality_spec.rules.non_null_expectation



### fn data_quality_spec.rules.non_null_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.non_null_expectation.new` constructs a new object with attributes and blocks configured for the `non_null_expectation`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `non_null_expectation` sub block.


## obj data_quality_spec.rules.range_expectation



### fn data_quality_spec.rules.range_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.range_expectation.new` constructs a new object with attributes and blocks configured for the `range_expectation`
Terraform sub block.



**Args**:
  - `max_value` (`string`): The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided. When `null`, the `max_value` field will be omitted from the resulting object.
  - `min_value` (`string`): The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided. When `null`, the `min_value` field will be omitted from the resulting object.
  - `strict_max_enabled` (`bool`): Whether each value needs to be strictly lesser than (&#39;&lt;&#39;) the maximum, or if equality is allowed.
Only relevant if a maxValue has been defined. Default = false. When `null`, the `strict_max_enabled` field will be omitted from the resulting object.
  - `strict_min_enabled` (`bool`): Whether each value needs to be strictly greater than (&#39;&gt;&#39;) the minimum, or if equality is allowed.
Only relevant if a minValue has been defined. Default = false. When `null`, the `strict_min_enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `range_expectation` sub block.


## obj data_quality_spec.rules.regex_expectation



### fn data_quality_spec.rules.regex_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.regex_expectation.new` constructs a new object with attributes and blocks configured for the `regex_expectation`
Terraform sub block.



**Args**:
  - `regex` (`string`): A regular expression the column value is expected to match.

**Returns**:
  - An attribute object that represents the `regex_expectation` sub block.


## obj data_quality_spec.rules.row_condition_expectation



### fn data_quality_spec.rules.row_condition_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.row_condition_expectation.new` constructs a new object with attributes and blocks configured for the `row_condition_expectation`
Terraform sub block.



**Args**:
  - `sql_expression` (`string`): The SQL expression.

**Returns**:
  - An attribute object that represents the `row_condition_expectation` sub block.


## obj data_quality_spec.rules.set_expectation



### fn data_quality_spec.rules.set_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.set_expectation.new` constructs a new object with attributes and blocks configured for the `set_expectation`
Terraform sub block.



**Args**:
  - `values` (`list`): Expected values for the column value.

**Returns**:
  - An attribute object that represents the `set_expectation` sub block.


## obj data_quality_spec.rules.statistic_range_expectation



### fn data_quality_spec.rules.statistic_range_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.statistic_range_expectation.new` constructs a new object with attributes and blocks configured for the `statistic_range_expectation`
Terraform sub block.



**Args**:
  - `max_value` (`string`): The maximum column statistic value allowed for a row to pass this validation.
At least one of minValue and maxValue need to be provided. When `null`, the `max_value` field will be omitted from the resulting object.
  - `min_value` (`string`): The minimum column statistic value allowed for a row to pass this validation.
At least one of minValue and maxValue need to be provided. When `null`, the `min_value` field will be omitted from the resulting object.
  - `statistic` (`string`): column statistics. Possible values: [&#34;STATISTIC_UNDEFINED&#34;, &#34;MEAN&#34;, &#34;MIN&#34;, &#34;MAX&#34;]
  - `strict_max_enabled` (`bool`): Whether column statistic needs to be strictly lesser than (&#39;&lt;&#39;) the maximum, or if equality is allowed.
Only relevant if a maxValue has been defined. Default = false. When `null`, the `strict_max_enabled` field will be omitted from the resulting object.
  - `strict_min_enabled` (`bool`): Whether column statistic needs to be strictly greater than (&#39;&gt;&#39;) the minimum, or if equality is allowed.
Only relevant if a minValue has been defined. Default = false. When `null`, the `strict_min_enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `statistic_range_expectation` sub block.


## obj data_quality_spec.rules.table_condition_expectation



### fn data_quality_spec.rules.table_condition_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.table_condition_expectation.new` constructs a new object with attributes and blocks configured for the `table_condition_expectation`
Terraform sub block.



**Args**:
  - `sql_expression` (`string`): The SQL expression.

**Returns**:
  - An attribute object that represents the `table_condition_expectation` sub block.


## obj data_quality_spec.rules.uniqueness_expectation



### fn data_quality_spec.rules.uniqueness_expectation.new

```ts
new()
```


`google.dataplex_datascan.data_quality_spec.rules.uniqueness_expectation.new` constructs a new object with attributes and blocks configured for the `uniqueness_expectation`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `uniqueness_expectation` sub block.


## obj execution_spec



### fn execution_spec.new

```ts
new()
```


`google.dataplex_datascan.execution_spec.new` constructs a new object with attributes and blocks configured for the `execution_spec`
Terraform sub block.



**Args**:
  - `field` (`string`): The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time. If not specified, a data scan will run for all data in the table. When `null`, the `field` field will be omitted from the resulting object.
  - `trigger` (`list[obj]`): Spec related to how often and when a scan should be triggered. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.trigger.new](#fn-execution_spectriggernew) constructor.

**Returns**:
  - An attribute object that represents the `execution_spec` sub block.


## obj execution_spec.trigger



### fn execution_spec.trigger.new

```ts
new()
```


`google.dataplex_datascan.execution_spec.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`
Terraform sub block.



**Args**:
  - `on_demand` (`list[obj]`): The scan runs once via dataScans.run API. When `null`, the `on_demand` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.trigger.on_demand.new](#fn-execution_specexecution_specon_demandnew) constructor.
  - `schedule` (`list[obj]`): The scan is scheduled to run periodically. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_datascan.execution_spec.trigger.schedule.new](#fn-execution_specexecution_specschedulenew) constructor.

**Returns**:
  - An attribute object that represents the `trigger` sub block.


## obj execution_spec.trigger.on_demand



### fn execution_spec.trigger.on_demand.new

```ts
new()
```


`google.dataplex_datascan.execution_spec.trigger.on_demand.new` constructs a new object with attributes and blocks configured for the `on_demand`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `on_demand` sub block.


## obj execution_spec.trigger.schedule



### fn execution_spec.trigger.schedule.new

```ts
new()
```


`google.dataplex_datascan.execution_spec.trigger.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`
Terraform sub block.



**Args**:
  - `cron` (`string`): Cron schedule for running scans periodically. This field is required for Schedule scans.

**Returns**:
  - An attribute object that represents the `schedule` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataplex_datascan.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
