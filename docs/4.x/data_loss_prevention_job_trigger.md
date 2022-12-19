---
permalink: /data_loss_prevention_job_trigger/
---

# data_loss_prevention_job_trigger

`data_loss_prevention_job_trigger` represents the `google_data_loss_prevention_job_trigger` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withInspectJob()`](#fn-withinspectjob)
* [`fn withInspectJobMixin()`](#fn-withinspectjobmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withStatus()`](#fn-withstatus)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTriggers()`](#fn-withtriggers)
* [`fn withTriggersMixin()`](#fn-withtriggersmixin)
* [`obj inspect_job`](#obj-inspect_job)
  * [`fn new()`](#fn-inspect_jobnew)
  * [`obj inspect_job.actions`](#obj-inspect_jobactions)
    * [`fn new()`](#fn-inspect_jobactionsnew)
    * [`obj inspect_job.actions.pub_sub`](#obj-inspect_jobactionspub_sub)
      * [`fn new()`](#fn-inspect_jobactionspub_subnew)
    * [`obj inspect_job.actions.save_findings`](#obj-inspect_jobactionssave_findings)
      * [`fn new()`](#fn-inspect_jobactionssave_findingsnew)
      * [`obj inspect_job.actions.save_findings.output_config`](#obj-inspect_jobactionssave_findingsoutput_config)
        * [`fn new()`](#fn-inspect_jobactionssave_findingsoutput_confignew)
        * [`obj inspect_job.actions.save_findings.output_config.table`](#obj-inspect_jobactionssave_findingsoutput_configtable)
          * [`fn new()`](#fn-inspect_jobactionssave_findingsoutput_configtablenew)
  * [`obj inspect_job.storage_config`](#obj-inspect_jobstorage_config)
    * [`fn new()`](#fn-inspect_jobstorage_confignew)
    * [`obj inspect_job.storage_config.big_query_options`](#obj-inspect_jobstorage_configbig_query_options)
      * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionsnew)
      * [`obj inspect_job.storage_config.big_query_options.table_reference`](#obj-inspect_jobstorage_configbig_query_optionstable_reference)
        * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionstable_referencenew)
    * [`obj inspect_job.storage_config.cloud_storage_options`](#obj-inspect_jobstorage_configcloud_storage_options)
      * [`fn new()`](#fn-inspect_jobstorage_configcloud_storage_optionsnew)
      * [`obj inspect_job.storage_config.cloud_storage_options.file_set`](#obj-inspect_jobstorage_configcloud_storage_optionsfile_set)
        * [`fn new()`](#fn-inspect_jobstorage_configcloud_storage_optionsfile_setnew)
        * [`obj inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set`](#obj-inspect_jobstorage_configcloud_storage_optionsfile_setregex_file_set)
          * [`fn new()`](#fn-inspect_jobstorage_configcloud_storage_optionsfile_setregex_file_setnew)
    * [`obj inspect_job.storage_config.datastore_options`](#obj-inspect_jobstorage_configdatastore_options)
      * [`fn new()`](#fn-inspect_jobstorage_configdatastore_optionsnew)
      * [`obj inspect_job.storage_config.datastore_options.kind`](#obj-inspect_jobstorage_configdatastore_optionskind)
        * [`fn new()`](#fn-inspect_jobstorage_configdatastore_optionskindnew)
      * [`obj inspect_job.storage_config.datastore_options.partition_id`](#obj-inspect_jobstorage_configdatastore_optionspartition_id)
        * [`fn new()`](#fn-inspect_jobstorage_configdatastore_optionspartition_idnew)
    * [`obj inspect_job.storage_config.timespan_config`](#obj-inspect_jobstorage_configtimespan_config)
      * [`fn new()`](#fn-inspect_jobstorage_configtimespan_confignew)
      * [`obj inspect_job.storage_config.timespan_config.timestamp_field`](#obj-inspect_jobstorage_configtimespan_configtimestamp_field)
        * [`fn new()`](#fn-inspect_jobstorage_configtimespan_configtimestamp_fieldnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj triggers`](#obj-triggers)
  * [`fn new()`](#fn-triggersnew)
  * [`obj triggers.schedule`](#obj-triggersschedule)
    * [`fn new()`](#fn-triggersschedulenew)

## Fields

### fn new

```ts
new()
```


`google.data_loss_prevention_job_trigger.new` injects a new `google_data_loss_prevention_job_trigger` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_loss_prevention_job_trigger.new('some_id')

You can get the reference to the `id` field of the created `google.data_loss_prevention_job_trigger` using the reference:

    $._ref.google_data_loss_prevention_job_trigger.some_id.get('id')

This is the same as directly entering `"${ google_data_loss_prevention_job_trigger.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the trigger, either in the format &#39;projects/{{project}}&#39;
or &#39;projects/{{project}}/locations/{{location}}&#39;
  - `status` (`string`): Whether the trigger is currently active. Default value: &#34;HEALTHY&#34; Possible values: [&#34;PAUSED&#34;, &#34;HEALTHY&#34;, &#34;CANCELLED&#34;] When `null`, the `status` field will be omitted from the resulting object.
  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-inspect_jobnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-timeoutsnew) constructor.
  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-triggersnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_loss_prevention_job_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_job_trigger`
Terraform resource.

Unlike [google.data_loss_prevention_job_trigger.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the trigger, either in the format &#39;projects/{{project}}&#39;
or &#39;projects/{{project}}/locations/{{location}}&#39;
  - `status` (`string`): Whether the trigger is currently active. Default value: &#34;HEALTHY&#34; Possible values: [&#34;PAUSED&#34;, &#34;HEALTHY&#34;, &#34;CANCELLED&#34;] When `null`, the `status` field will be omitted from the resulting object.
  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-inspect_jobnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-timeoutsnew) constructor.
  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-triggersnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_job_trigger` resource into the root Terraform configuration.


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


### fn withInspectJob

```ts
withInspectJob()
```

`google.list[obj].withInspectJob` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the inspect_job field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInspectJobMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `inspect_job` field.


### fn withInspectJobMixin

```ts
withInspectJobMixin()
```

`google.list[obj].withInspectJobMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the inspect_job field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInspectJob](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `inspect_job` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withStatus

```ts
withStatus()
```

`google.string.withStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `status` field.


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


### fn withTriggers

```ts
withTriggers()
```

`google.list[obj].withTriggers` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the triggers field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTriggersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `triggers` field.


### fn withTriggersMixin

```ts
withTriggersMixin()
```

`google.list[obj].withTriggersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the triggers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTriggers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `triggers` field.


## obj inspect_job



### fn inspect_job.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.new` constructs a new object with attributes and blocks configured for the `inspect_job`
Terraform sub block.



**Args**:
  - `inspect_template_name` (`string`): The name of the template to run when this job is triggered.
  - `actions` (`list[obj]`): A task to execute on the completion of a job. When `null`, the `actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.new](#fn-data_loss_prevention_job_triggeractionsnew) constructor.
  - `storage_config` (`list[obj]`): Information on where to inspect When `null`, the `storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.new](#fn-data_loss_prevention_job_triggerstorage_confignew) constructor.

**Returns**:
  - An attribute object that represents the `inspect_job` sub block.


## obj inspect_job.actions



### fn inspect_job.actions.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.new` constructs a new object with attributes and blocks configured for the `actions`
Terraform sub block.



**Args**:
  - `pub_sub` (`list[obj]`): Publish a message into a given Pub/Sub topic when the job completes. When `null`, the `pub_sub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new](#fn-data_loss_prevention_job_triggerinspect_jobpub_subnew) constructor.
  - `save_findings` (`list[obj]`): Schedule for triggered jobs When `null`, the `save_findings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new](#fn-data_loss_prevention_job_triggerinspect_jobsave_findingsnew) constructor.

**Returns**:
  - An attribute object that represents the `actions` sub block.


## obj inspect_job.actions.pub_sub



### fn inspect_job.actions.pub_sub.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new` constructs a new object with attributes and blocks configured for the `pub_sub`
Terraform sub block.



**Args**:
  - `topic` (`string`): Cloud Pub/Sub topic to send notifications to.

**Returns**:
  - An attribute object that represents the `pub_sub` sub block.


## obj inspect_job.actions.save_findings



### fn inspect_job.actions.save_findings.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new` constructs a new object with attributes and blocks configured for the `save_findings`
Terraform sub block.



**Args**:
  - `output_config` (`list[obj]`): Information on where to store output When `null`, the `output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new](#fn-data_loss_prevention_job_triggerinspect_jobactionsoutput_confignew) constructor.

**Returns**:
  - An attribute object that represents the `save_findings` sub block.


## obj inspect_job.actions.save_findings.output_config



### fn inspect_job.actions.save_findings.output_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new` constructs a new object with attributes and blocks configured for the `output_config`
Terraform sub block.



**Args**:
  - `output_schema` (`string`): Schema used for writing the findings for Inspect jobs. This field is only used for
Inspect and must be unspecified for Risk jobs. Columns are derived from the Finding
object. If appending to an existing table, any columns from the predefined schema
that are missing will be added. No columns in the existing table will be deleted.

If unspecified, then all available columns will be used for a new table or an (existing)
table with no schema, and no changes will be made to an existing table that has a schema.
Only for use with external storage. Possible values: [&#34;BASIC_COLUMNS&#34;, &#34;GCS_COLUMNS&#34;, &#34;DATASTORE_COLUMNS&#34;, &#34;BIG_QUERY_COLUMNS&#34;, &#34;ALL_COLUMNS&#34;] When `null`, the `output_schema` field will be omitted from the resulting object.
  - `table` (`list[obj]`): Information on the location of the target BigQuery Table. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new](#fn-data_loss_prevention_job_triggerinspect_jobactionssave_findingstablenew) constructor.

**Returns**:
  - An attribute object that represents the `output_config` sub block.


## obj inspect_job.actions.save_findings.output_config.table



### fn inspect_job.actions.save_findings.output_config.table.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new` constructs a new object with attributes and blocks configured for the `table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): Dataset ID of the table.
  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.
  - `table_id` (`string`): Name of the table. If is not set a new one will be generated for you with the following format:
&#39;dlp_googleapis_yyyy_mm_dd_[dlp_job_id]&#39;. Pacific timezone will be used for generating the date details. When `null`, the `table_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `table` sub block.


## obj inspect_job.storage_config



### fn inspect_job.storage_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.new` constructs a new object with attributes and blocks configured for the `storage_config`
Terraform sub block.



**Args**:
  - `big_query_options` (`list[obj]`): Options defining BigQuery table and row identifiers. When `null`, the `big_query_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new](#fn-data_loss_prevention_job_triggerinspect_jobbig_query_optionsnew) constructor.
  - `cloud_storage_options` (`list[obj]`): Options defining a file or a set of files within a Google Cloud Storage bucket. When `null`, the `cloud_storage_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new](#fn-data_loss_prevention_job_triggerinspect_jobcloud_storage_optionsnew) constructor.
  - `datastore_options` (`list[obj]`): Options defining a data set within Google Cloud Datastore. When `null`, the `datastore_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new](#fn-data_loss_prevention_job_triggerinspect_jobdatastore_optionsnew) constructor.
  - `timespan_config` (`list[obj]`): Information on where to inspect When `null`, the `timespan_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new](#fn-data_loss_prevention_job_triggerinspect_jobtimespan_confignew) constructor.

**Returns**:
  - An attribute object that represents the `storage_config` sub block.


## obj inspect_job.storage_config.big_query_options



### fn inspect_job.storage_config.big_query_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new` constructs a new object with attributes and blocks configured for the `big_query_options`
Terraform sub block.



**Args**:
  - `rows_limit` (`number`): Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. 
If not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be 
specified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit` field will be omitted from the resulting object.
  - `rows_limit_percent` (`number`): Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. 
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of 
rowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit_percent` field will be omitted from the resulting object.
  - `sample_method` (`string`): How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either 
rowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them. Default value: &#34;TOP&#34; Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.
  - `table_reference` (`list[obj]`): Set of files to scan. When `null`, the `table_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new](#fn-data_loss_prevention_job_triggerinspect_jobstorage_configtable_referencenew) constructor.

**Returns**:
  - An attribute object that represents the `big_query_options` sub block.


## obj inspect_job.storage_config.big_query_options.table_reference



### fn inspect_job.storage_config.big_query_options.table_reference.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new` constructs a new object with attributes and blocks configured for the `table_reference`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The dataset ID of the table.
  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.
  - `table_id` (`string`): The name of the table.

**Returns**:
  - An attribute object that represents the `table_reference` sub block.


## obj inspect_job.storage_config.cloud_storage_options



### fn inspect_job.storage_config.cloud_storage_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new` constructs a new object with attributes and blocks configured for the `cloud_storage_options`
Terraform sub block.



**Args**:
  - `bytes_limit_per_file` (`number`): Max number of bytes to scan from a file. If a scanned file&#39;s size is bigger than this value
then the rest of the bytes are omitted. When `null`, the `bytes_limit_per_file` field will be omitted from the resulting object.
  - `bytes_limit_per_file_percent` (`number`): Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `bytes_limit_per_file_percent` field will be omitted from the resulting object.
  - `file_types` (`list`): List of file type groups to include in the scan. If empty, all files are scanned and available data
format processors are applied. In addition, the binary content of the selected files is always scanned as well.
Images are scanned only as binary if the specified region does not support image inspection and no fileTypes were specified. Possible values: [&#34;BINARY_FILE&#34;, &#34;TEXT_FILE&#34;, &#34;IMAGE&#34;, &#34;WORD&#34;, &#34;PDF&#34;, &#34;AVRO&#34;, &#34;CSV&#34;, &#34;TSV&#34;] When `null`, the `file_types` field will be omitted from the resulting object.
  - `files_limit_percent` (`number`): Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `files_limit_percent` field will be omitted from the resulting object.
  - `sample_method` (`string`): How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.
If not specified, scanning would start from the top. Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.
  - `file_set` (`list[obj]`): Set of files to scan. When `null`, the `file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new](#fn-data_loss_prevention_job_triggerinspect_jobstorage_configfile_setnew) constructor.

**Returns**:
  - An attribute object that represents the `cloud_storage_options` sub block.


## obj inspect_job.storage_config.cloud_storage_options.file_set



### fn inspect_job.storage_config.cloud_storage_options.file_set.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new` constructs a new object with attributes and blocks configured for the `file_set`
Terraform sub block.



**Args**:
  - `url` (`string`): The Cloud Storage url of the file(s) to scan, in the format &#39;gs://&lt;bucket&gt;/&lt;path&gt;&#39;. Trailing wildcard
in the path is allowed.

If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned
non-recursively (content in sub-directories will not be scanned). This means that &#39;gs://mybucket/&#39; is
equivalent to &#39;gs://mybucket/*&#39;, and &#39;gs://mybucket/directory/&#39; is equivalent to &#39;gs://mybucket/directory/*&#39;. When `null`, the `url` field will be omitted from the resulting object.
  - `regex_file_set` (`list[obj]`): The regex-filtered set of files to scan. When `null`, the `regex_file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new](#fn-data_loss_prevention_job_triggerinspect_jobstorage_configcloud_storage_optionsregex_file_setnew) constructor.

**Returns**:
  - An attribute object that represents the `file_set` sub block.


## obj inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set



### fn inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new` constructs a new object with attributes and blocks configured for the `regex_file_set`
Terraform sub block.



**Args**:
  - `bucket_name` (`string`): The name of a Cloud Storage bucket.
  - `exclude_regex` (`list`): A list of regular expressions matching file paths to exclude. All files in the bucket that match at
least one of these regular expressions will be excluded from the scan. When `null`, the `exclude_regex` field will be omitted from the resulting object.
  - `include_regex` (`list`): A list of regular expressions matching file paths to include. All files in the bucket
that match at least one of these regular expressions will be included in the set of files,
except for those that also match an item in excludeRegex. Leaving this field empty will
match all files by default (this is equivalent to including .* in the list) When `null`, the `include_regex` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `regex_file_set` sub block.


## obj inspect_job.storage_config.datastore_options



### fn inspect_job.storage_config.datastore_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new` constructs a new object with attributes and blocks configured for the `datastore_options`
Terraform sub block.



**Args**:
  - `kind` (`list[obj]`): A representation of a Datastore kind. When `null`, the `kind` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new](#fn-data_loss_prevention_job_triggerinspect_jobstorage_configkindnew) constructor.
  - `partition_id` (`list[obj]`): Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
is always by project and namespace, however the namespace ID may be empty. When `null`, the `partition_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new](#fn-data_loss_prevention_job_triggerinspect_jobstorage_configpartition_idnew) constructor.

**Returns**:
  - An attribute object that represents the `datastore_options` sub block.


## obj inspect_job.storage_config.datastore_options.kind



### fn inspect_job.storage_config.datastore_options.kind.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new` constructs a new object with attributes and blocks configured for the `kind`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of the Datastore kind.

**Returns**:
  - An attribute object that represents the `kind` sub block.


## obj inspect_job.storage_config.datastore_options.partition_id



### fn inspect_job.storage_config.datastore_options.partition_id.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new` constructs a new object with attributes and blocks configured for the `partition_id`
Terraform sub block.



**Args**:
  - `namespace_id` (`string`): If not empty, the ID of the namespace to which the entities belong. When `null`, the `namespace_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project to which the entities belong.

**Returns**:
  - An attribute object that represents the `partition_id` sub block.


## obj inspect_job.storage_config.timespan_config



### fn inspect_job.storage_config.timespan_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new` constructs a new object with attributes and blocks configured for the `timespan_config`
Terraform sub block.



**Args**:
  - `enable_auto_population_of_timespan_config` (`bool`): When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid
scanning files that have not been modified since the last time the JobTrigger executed. This will
be based on the time of the execution of the last run of the JobTrigger. When `null`, the `enable_auto_population_of_timespan_config` field will be omitted from the resulting object.
  - `end_time` (`string`): Exclude files or rows newer than this value. If set to zero, no upper time limit is applied. When `null`, the `end_time` field will be omitted from the resulting object.
  - `start_time` (`string`): Exclude files or rows older than this value. When `null`, the `start_time` field will be omitted from the resulting object.
  - `timestamp_field` (`list[obj]`): Information on where to inspect When `null`, the `timestamp_field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new](#fn-data_loss_prevention_job_triggerinspect_jobstorage_configtimestamp_fieldnew) constructor.

**Returns**:
  - An attribute object that represents the `timespan_config` sub block.


## obj inspect_job.storage_config.timespan_config.timestamp_field



### fn inspect_job.storage_config.timespan_config.timestamp_field.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new` constructs a new object with attributes and blocks configured for the `timestamp_field`
Terraform sub block.



**Args**:
  - `name` (`string`): Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery.

For BigQuery: Required to filter out rows based on the given start and end times. If not specified and the table was
modified between the given start and end times, the entire table will be scanned. The valid data types of the timestamp
field are: INTEGER, DATE, TIMESTAMP, or DATETIME BigQuery column.

For Datastore. Valid data types of the timestamp field are: TIMESTAMP. Datastore entity will be scanned if the
timestamp property does not exist or its value is empty or invalid.

**Returns**:
  - An attribute object that represents the `timestamp_field` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj triggers



### fn triggers.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.triggers.new` constructs a new object with attributes and blocks configured for the `triggers`
Terraform sub block.



**Args**:
  - `schedule` (`list[obj]`): Schedule for triggered jobs When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.schedule.new](#fn-data_loss_prevention_job_triggerschedulenew) constructor.

**Returns**:
  - An attribute object that represents the `triggers` sub block.


## obj triggers.schedule



### fn triggers.schedule.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.triggers.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`
Terraform sub block.



**Args**:
  - `recurrence_period_duration` (`string`): With this option a job is started a regular periodic basis. For example: every day (86400 seconds).

A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs.

This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `recurrence_period_duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schedule` sub block.
