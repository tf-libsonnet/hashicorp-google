---
permalink: /bigquery_job/
---

# bigquery_job

`bigquery_job` represents the `google_bigquery_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCopy()`](#fn-withcopy)
* [`fn withCopyMixin()`](#fn-withcopymixin)
* [`fn withExtract()`](#fn-withextract)
* [`fn withExtractMixin()`](#fn-withextractmixin)
* [`fn withJobId()`](#fn-withjobid)
* [`fn withJobTimeoutMs()`](#fn-withjobtimeoutms)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLoad()`](#fn-withload)
* [`fn withLoadMixin()`](#fn-withloadmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withQuery()`](#fn-withquery)
* [`fn withQueryMixin()`](#fn-withquerymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj copy`](#obj-copy)
  * [`fn new()`](#fn-copynew)
  * [`obj copy.destination_encryption_configuration`](#obj-copydestination_encryption_configuration)
    * [`fn new()`](#fn-copydestination_encryption_configurationnew)
  * [`obj copy.destination_table`](#obj-copydestination_table)
    * [`fn new()`](#fn-copydestination_tablenew)
  * [`obj copy.source_tables`](#obj-copysource_tables)
    * [`fn new()`](#fn-copysource_tablesnew)
* [`obj extract`](#obj-extract)
  * [`fn new()`](#fn-extractnew)
  * [`obj extract.source_model`](#obj-extractsource_model)
    * [`fn new()`](#fn-extractsource_modelnew)
  * [`obj extract.source_table`](#obj-extractsource_table)
    * [`fn new()`](#fn-extractsource_tablenew)
* [`obj load`](#obj-load)
  * [`fn new()`](#fn-loadnew)
  * [`obj load.destination_encryption_configuration`](#obj-loaddestination_encryption_configuration)
    * [`fn new()`](#fn-loaddestination_encryption_configurationnew)
  * [`obj load.destination_table`](#obj-loaddestination_table)
    * [`fn new()`](#fn-loaddestination_tablenew)
  * [`obj load.time_partitioning`](#obj-loadtime_partitioning)
    * [`fn new()`](#fn-loadtime_partitioningnew)
* [`obj query`](#obj-query)
  * [`fn new()`](#fn-querynew)
  * [`obj query.default_dataset`](#obj-querydefault_dataset)
    * [`fn new()`](#fn-querydefault_datasetnew)
  * [`obj query.destination_encryption_configuration`](#obj-querydestination_encryption_configuration)
    * [`fn new()`](#fn-querydestination_encryption_configurationnew)
  * [`obj query.destination_table`](#obj-querydestination_table)
    * [`fn new()`](#fn-querydestination_tablenew)
  * [`obj query.script_options`](#obj-queryscript_options)
    * [`fn new()`](#fn-queryscript_optionsnew)
  * [`obj query.user_defined_function_resources`](#obj-queryuser_defined_function_resources)
    * [`fn new()`](#fn-queryuser_defined_function_resourcesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_job.new` injects a new `google_bigquery_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_job.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_job` using the reference:

    $._ref.google_bigquery_job.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `job_id` (`string`): The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  - `job_timeout_ms` (`string`): Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job. When `null`, the `job_timeout_ms` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this job. You can use these to organize and group your jobs. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location of the job. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `copy` (`list[obj]`): Copies a table. When `null`, the `copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.new](#fn-copynew) constructor.
  - `extract` (`list[obj]`): Configures an extract job. When `null`, the `extract` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.new](#fn-extractnew) constructor.
  - `load` (`list[obj]`): Configures a load job. When `null`, the `load` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.new](#fn-loadnew) constructor.
  - `query` (`list[obj]`): Configures a query job. When `null`, the `query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.new](#fn-querynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_job.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_job`
Terraform resource.

Unlike [google.bigquery_job.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `job_id` (`string`): The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  - `job_timeout_ms` (`string`): Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job. When `null`, the `job_timeout_ms` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this job. You can use these to organize and group your jobs. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location of the job. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `copy` (`list[obj]`): Copies a table. When `null`, the `copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.new](#fn-copynew) constructor.
  - `extract` (`list[obj]`): Configures an extract job. When `null`, the `extract` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.new](#fn-extractnew) constructor.
  - `load` (`list[obj]`): Configures a load job. When `null`, the `load` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.new](#fn-loadnew) constructor.
  - `query` (`list[obj]`): Configures a query job. When `null`, the `query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.new](#fn-querynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_job` resource into the root Terraform configuration.


### fn withCopy

```ts
withCopy()
```

`google.list[obj].withCopy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the copy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCopyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `copy` field.


### fn withCopyMixin

```ts
withCopyMixin()
```

`google.list[obj].withCopyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the copy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCopy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `copy` field.


### fn withExtract

```ts
withExtract()
```

`google.list[obj].withExtract` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the extract field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExtractMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `extract` field.


### fn withExtractMixin

```ts
withExtractMixin()
```

`google.list[obj].withExtractMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the extract field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExtract](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `extract` field.


### fn withJobId

```ts
withJobId()
```

`google.string.withJobId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the job_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `job_id` field.


### fn withJobTimeoutMs

```ts
withJobTimeoutMs()
```

`google.string.withJobTimeoutMs` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the job_timeout_ms field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `job_timeout_ms` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLoad

```ts
withLoad()
```

`google.list[obj].withLoad` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the load field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLoadMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `load` field.


### fn withLoadMixin

```ts
withLoadMixin()
```

`google.list[obj].withLoadMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the load field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLoad](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `load` field.


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


### fn withQuery

```ts
withQuery()
```

`google.list[obj].withQuery` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the query field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withQueryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `query` field.


### fn withQueryMixin

```ts
withQueryMixin()
```

`google.list[obj].withQueryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the query field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withQuery](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `query` field.


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


## obj copy



### fn copy.new

```ts
new()
```


`google.bigquery_job.copy.new` constructs a new object with attributes and blocks configured for the `copy`
Terraform sub block.



**Args**:
  - `create_disposition` (`string`): Specifies whether the job is allowed to create new tables. The following values are supported:
CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
CREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result.
Creation, truncation and append actions occur as one atomic update upon job completion Default value: &#34;CREATE_IF_NEEDED&#34; Possible values: [&#34;CREATE_IF_NEEDED&#34;, &#34;CREATE_NEVER&#34;] When `null`, the `create_disposition` field will be omitted from the resulting object.
  - `write_disposition` (`string`): Specifies the action that occurs if the destination table already exists. The following values are supported:
WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
WRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result.
Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
Creation, truncation and append actions occur as one atomic update upon job completion. Default value: &#34;WRITE_EMPTY&#34; Possible values: [&#34;WRITE_TRUNCATE&#34;, &#34;WRITE_APPEND&#34;, &#34;WRITE_EMPTY&#34;] When `null`, the `write_disposition` field will be omitted from the resulting object.
  - `destination_encryption_configuration` (`list[obj]`): Custom encryption configuration (e.g., Cloud KMS keys) When `null`, the `destination_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.destination_encryption_configuration.new](#fn-bigquery_jobdestination_encryption_configurationnew) constructor.
  - `destination_table` (`list[obj]`): The destination table. When `null`, the `destination_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.destination_table.new](#fn-bigquery_jobdestination_tablenew) constructor.
  - `source_tables` (`list[obj]`): Source tables to copy. When `null`, the `source_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.copy.source_tables.new](#fn-bigquery_jobsource_tablesnew) constructor.

**Returns**:
  - An attribute object that represents the `copy` sub block.


## obj copy.destination_encryption_configuration



### fn copy.destination_encryption_configuration.new

```ts
new()
```


`google.bigquery_job.copy.destination_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `destination_encryption_configuration`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
The BigQuery Service Account associated with your project requires access to this encryption key.

**Returns**:
  - An attribute object that represents the `destination_encryption_configuration` sub block.


## obj copy.destination_table



### fn copy.destination_table.new

```ts
new()
```


`google.bigquery_job.copy.destination_table.new` constructs a new object with attributes and blocks configured for the `destination_table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.
  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,
or of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.

**Returns**:
  - An attribute object that represents the `destination_table` sub block.


## obj copy.source_tables



### fn copy.source_tables.new

```ts
new()
```


`google.bigquery_job.copy.source_tables.new` constructs a new object with attributes and blocks configured for the `source_tables`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.
  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,
or of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.

**Returns**:
  - An attribute object that represents the `source_tables` sub block.


## obj extract



### fn extract.new

```ts
new()
```


`google.bigquery_job.extract.new` constructs a new object with attributes and blocks configured for the `extract`
Terraform sub block.



**Args**:
  - `compression` (`string`): The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.
The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. When `null`, the `compression` field will be omitted from the resulting object.
  - `destination_format` (`string`): The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.
The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV.
The default value for models is SAVED_MODEL. When `null`, the `destination_format` field will be omitted from the resulting object.
  - `destination_uris` (`list`): A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  - `field_delimiter` (`string`): When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.
Default is &#39;,&#39; When `null`, the `field_delimiter` field will be omitted from the resulting object.
  - `print_header` (`bool`): Whether to print out a header row in the results. Default is true. When `null`, the `print_header` field will be omitted from the resulting object.
  - `use_avro_logical_types` (`bool`): Whether to use logical types when extracting to AVRO format. When `null`, the `use_avro_logical_types` field will be omitted from the resulting object.
  - `source_model` (`list[obj]`): A reference to the model being exported. When `null`, the `source_model` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.source_model.new](#fn-bigquery_jobsource_modelnew) constructor.
  - `source_table` (`list[obj]`): A reference to the table being exported. When `null`, the `source_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.extract.source_table.new](#fn-bigquery_jobsource_tablenew) constructor.

**Returns**:
  - An attribute object that represents the `extract` sub block.


## obj extract.source_model



### fn extract.source_model.new

```ts
new()
```


`google.bigquery_job.extract.source_model.new` constructs a new object with attributes and blocks configured for the `source_model`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this model.
  - `model_id` (`string`): The ID of the model.
  - `project_id` (`string`): The ID of the project containing this model.

**Returns**:
  - An attribute object that represents the `source_model` sub block.


## obj extract.source_table



### fn extract.source_table.new

```ts
new()
```


`google.bigquery_job.extract.source_table.new` constructs a new object with attributes and blocks configured for the `source_table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.
  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,
or of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.

**Returns**:
  - An attribute object that represents the `source_table` sub block.


## obj load



### fn load.new

```ts
new()
```


`google.bigquery_job.load.new` constructs a new object with attributes and blocks configured for the `load`
Terraform sub block.



**Args**:
  - `allow_jagged_rows` (`bool`): Accept rows that are missing trailing optional columns. The missing values are treated as nulls.
If false, records with missing trailing columns are treated as bad records, and if there are too many bad records,
an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats. When `null`, the `allow_jagged_rows` field will be omitted from the resulting object.
  - `allow_quoted_newlines` (`bool`): Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file.
The default value is false. When `null`, the `allow_quoted_newlines` field will be omitted from the resulting object.
  - `autodetect` (`bool`): Indicates if we should automatically infer the options and schema for CSV and JSON sources. When `null`, the `autodetect` field will be omitted from the resulting object.
  - `create_disposition` (`string`): Specifies whether the job is allowed to create new tables. The following values are supported:
CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
CREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result.
Creation, truncation and append actions occur as one atomic update upon job completion Default value: &#34;CREATE_IF_NEEDED&#34; Possible values: [&#34;CREATE_IF_NEEDED&#34;, &#34;CREATE_NEVER&#34;] When `null`, the `create_disposition` field will be omitted from the resulting object.
  - `encoding` (`string`): The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
The default value is UTF-8. BigQuery decodes the data after the raw, binary data
has been split using the values of the quote and fieldDelimiter properties. When `null`, the `encoding` field will be omitted from the resulting object.
  - `field_delimiter` (`string`): The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character.
To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts
the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the
data in its raw, binary state. BigQuery also supports the escape sequence &#34;\t&#34; to specify a tab separator.
The default value is a comma (&#39;,&#39;). When `null`, the `field_delimiter` field will be omitted from the resulting object.
  - `ignore_unknown_values` (`bool`): Indicates if BigQuery should allow extra values that are not represented in the table schema.
If true, the extra values are ignored. If false, records with extra columns are treated as bad records,
and if there are too many bad records, an invalid error is returned in the job result.
The default value is false. The sourceFormat property determines what BigQuery treats as an extra value:
CSV: Trailing columns
JSON: Named values that don&#39;t match any column names When `null`, the `ignore_unknown_values` field will be omitted from the resulting object.
  - `json_extension` (`string`): If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON.
For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited
GeoJSON: set to GEOJSON. When `null`, the `json_extension` field will be omitted from the resulting object.
  - `max_bad_records` (`number`): The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value,
an invalid error is returned in the job result. The default value is 0, which requires that all records are valid. When `null`, the `max_bad_records` field will be omitted from the resulting object.
  - `null_marker` (`string`): Specifies a string that represents a null value in a CSV file. For example, if you specify &#34;\N&#34;, BigQuery interprets &#34;\N&#34; as a null value
when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an
empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as
an empty value. When `null`, the `null_marker` field will be omitted from the resulting object.
  - `projection_fields` (`list`): If sourceFormat is set to &#34;DATASTORE_BACKUP&#34;, indicates which entity properties to load into BigQuery from a Cloud Datastore backup.
Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties.
If any named property isn&#39;t found in the Cloud Datastore backup, an invalid error is returned in the job result. When `null`, the `projection_fields` field will be omitted from the resulting object.
  - `quote` (`string`): The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding,
and then uses the first byte of the encoded string to split the data in its raw, binary state.
The default value is a double-quote (&#39;&#34;&#39;). If your data does not contain quoted sections, set the property value to an empty string.
If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. When `null`, the `quote` field will be omitted from the resulting object.
  - `schema_update_options` (`list`): Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or
supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators.
For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified:
ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. When `null`, the `schema_update_options` field will be omitted from the resulting object.
  - `skip_leading_rows` (`number`): The number of rows at the top of a CSV file that BigQuery will skip when loading the data.
The default value is 0. This property is useful if you have header rows in the file that should be skipped.
When autodetect is on, the behavior is the following:
skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected,
the row is read as data. Otherwise data is read starting from the second row.
skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row.
skipLeadingRows = N &gt; 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected,
row N is just skipped. Otherwise row N is used to extract column names for the detected schema. When `null`, the `skip_leading_rows` field will be omitted from the resulting object.
  - `source_format` (`string`): The format of the data files. For CSV files, specify &#34;CSV&#34;. For datastore backups, specify &#34;DATASTORE_BACKUP&#34;.
For newline-delimited JSON, specify &#34;NEWLINE_DELIMITED_JSON&#34;. For Avro, specify &#34;AVRO&#34;. For parquet, specify &#34;PARQUET&#34;.
For orc, specify &#34;ORC&#34;. [Beta] For Bigtable, specify &#34;BIGTABLE&#34;.
The default value is CSV. When `null`, the `source_format` field will be omitted from the resulting object.
  - `source_uris` (`list`): The fully-qualified URIs that point to your data in Google Cloud.
For Google Cloud Storage URIs: Each URI can contain one &#39;\*&#39; wildcard character
and it must come after the &#39;bucket&#39; name. Size limits related to load jobs apply
to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be
specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table.
For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the &#39;\*&#39; wildcard character is not allowed.
  - `write_disposition` (`string`): Specifies the action that occurs if the destination table already exists. The following values are supported:
WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
WRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result.
Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
Creation, truncation and append actions occur as one atomic update upon job completion. Default value: &#34;WRITE_EMPTY&#34; Possible values: [&#34;WRITE_TRUNCATE&#34;, &#34;WRITE_APPEND&#34;, &#34;WRITE_EMPTY&#34;] When `null`, the `write_disposition` field will be omitted from the resulting object.
  - `destination_encryption_configuration` (`list[obj]`): Custom encryption configuration (e.g., Cloud KMS keys) When `null`, the `destination_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.destination_encryption_configuration.new](#fn-bigquery_jobdestination_encryption_configurationnew) constructor.
  - `destination_table` (`list[obj]`): The destination table to load the data into. When `null`, the `destination_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.destination_table.new](#fn-bigquery_jobdestination_tablenew) constructor.
  - `time_partitioning` (`list[obj]`): Time-based partitioning specification for the destination table. When `null`, the `time_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.load.time_partitioning.new](#fn-bigquery_jobtime_partitioningnew) constructor.

**Returns**:
  - An attribute object that represents the `load` sub block.


## obj load.destination_encryption_configuration



### fn load.destination_encryption_configuration.new

```ts
new()
```


`google.bigquery_job.load.destination_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `destination_encryption_configuration`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
The BigQuery Service Account associated with your project requires access to this encryption key.

**Returns**:
  - An attribute object that represents the `destination_encryption_configuration` sub block.


## obj load.destination_table



### fn load.destination_table.new

```ts
new()
```


`google.bigquery_job.load.destination_table.new` constructs a new object with attributes and blocks configured for the `destination_table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.
  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,
or of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.

**Returns**:
  - An attribute object that represents the `destination_table` sub block.


## obj load.time_partitioning



### fn load.time_partitioning.new

```ts
new()
```


`google.bigquery_job.load.time_partitioning.new` constructs a new object with attributes and blocks configured for the `time_partitioning`
Terraform sub block.



**Args**:
  - `expiration_ms` (`string`): Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value. When `null`, the `expiration_ms` field will be omitted from the resulting object.
  - `field` (`string`): If not set, the table is partitioned by pseudo column &#39;_PARTITIONTIME&#39;; if set, the table is partitioned by this field.
The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
A wrapper is used here because an empty string is an invalid value. When `null`, the `field` field will be omitted from the resulting object.
  - `type` (`string`): The only type supported is DAY, which will generate one partition per day. Providing an empty string used to cause an error,
but in OnePlatform the field will be treated as unset.

**Returns**:
  - An attribute object that represents the `time_partitioning` sub block.


## obj query



### fn query.new

```ts
new()
```


`google.bigquery_job.query.new` constructs a new object with attributes and blocks configured for the `query`
Terraform sub block.



**Args**:
  - `allow_large_results` (`bool`): If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.
Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed.
However, you must still set destinationTable when result size exceeds the allowed maximum response size. When `null`, the `allow_large_results` field will be omitted from the resulting object.
  - `create_disposition` (`string`): Specifies whether the job is allowed to create new tables. The following values are supported:
CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
CREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result.
Creation, truncation and append actions occur as one atomic update upon job completion Default value: &#34;CREATE_IF_NEEDED&#34; Possible values: [&#34;CREATE_IF_NEEDED&#34;, &#34;CREATE_NEVER&#34;] When `null`, the `create_disposition` field will be omitted from the resulting object.
  - `flatten_results` (`bool`): If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.
allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened. When `null`, the `flatten_results` field will be omitted from the resulting object.
  - `maximum_billing_tier` (`number`): Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).
If unspecified, this will be set to your project default. When `null`, the `maximum_billing_tier` field will be omitted from the resulting object.
  - `maximum_bytes_billed` (`string`): Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).
If unspecified, this will be set to your project default. When `null`, the `maximum_bytes_billed` field will be omitted from the resulting object.
  - `parameter_mode` (`string`): Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query. When `null`, the `parameter_mode` field will be omitted from the resulting object.
  - `priority` (`string`): Specifies a priority for the query. Default value: &#34;INTERACTIVE&#34; Possible values: [&#34;INTERACTIVE&#34;, &#34;BATCH&#34;] When `null`, the `priority` field will be omitted from the resulting object.
  - `query` (`string`): SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
*NOTE*: queries containing [DML language](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language)
(&#39;DELETE&#39;, &#39;UPDATE&#39;, &#39;MERGE&#39;, &#39;INSERT&#39;) must specify &#39;create_disposition = &#34;&#34;&#39; and &#39;write_disposition = &#34;&#34;&#39;.
  - `schema_update_options` (`list`): Allows the schema of the destination table to be updated as a side effect of the query job.
Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table,
specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema.
One or more of the following values are specified:
ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. When `null`, the `schema_update_options` field will be omitted from the resulting object.
  - `use_legacy_sql` (`bool`): Specifies whether to use BigQuery&#39;s legacy SQL dialect for this query. The default value is true.
If set to false, the query will use BigQuery&#39;s standard SQL. When `null`, the `use_legacy_sql` field will be omitted from the resulting object.
  - `use_query_cache` (`bool`): Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever
tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified.
The default value is true. When `null`, the `use_query_cache` field will be omitted from the resulting object.
  - `write_disposition` (`string`): Specifies the action that occurs if the destination table already exists. The following values are supported:
WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
WRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result.
Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
Creation, truncation and append actions occur as one atomic update upon job completion. Default value: &#34;WRITE_EMPTY&#34; Possible values: [&#34;WRITE_TRUNCATE&#34;, &#34;WRITE_APPEND&#34;, &#34;WRITE_EMPTY&#34;] When `null`, the `write_disposition` field will be omitted from the resulting object.
  - `default_dataset` (`list[obj]`): Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names. When `null`, the `default_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.default_dataset.new](#fn-bigquery_jobdefault_datasetnew) constructor.
  - `destination_encryption_configuration` (`list[obj]`): Custom encryption configuration (e.g., Cloud KMS keys) When `null`, the `destination_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.destination_encryption_configuration.new](#fn-bigquery_jobdestination_encryption_configurationnew) constructor.
  - `destination_table` (`list[obj]`): Describes the table where the query results should be stored.
This property must be set for large results that exceed the maximum response size.
For queries that produce anonymous (cached) results, this field will be populated by BigQuery. When `null`, the `destination_table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.destination_table.new](#fn-bigquery_jobdestination_tablenew) constructor.
  - `script_options` (`list[obj]`): Options controlling the execution of scripts. When `null`, the `script_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.script_options.new](#fn-bigquery_jobscript_optionsnew) constructor.
  - `user_defined_function_resources` (`list[obj]`): Describes user-defined function resources used in the query. When `null`, the `user_defined_function_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_job.query.user_defined_function_resources.new](#fn-bigquery_jobuser_defined_function_resourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `query` sub block.


## obj query.default_dataset



### fn query.default_dataset.new

```ts
new()
```


`google.bigquery_job.query.default_dataset.new` constructs a new object with attributes and blocks configured for the `default_dataset`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The dataset. Can be specified &#39;{{dataset_id}}&#39; if &#39;project_id&#39; is also set,
or of the form &#39;projects/{{project}}/datasets/{{dataset_id}}&#39; if not.
  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `default_dataset` sub block.


## obj query.destination_encryption_configuration



### fn query.destination_encryption_configuration.new

```ts
new()
```


`google.bigquery_job.query.destination_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `destination_encryption_configuration`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
The BigQuery Service Account associated with your project requires access to this encryption key.

**Returns**:
  - An attribute object that represents the `destination_encryption_configuration` sub block.


## obj query.destination_table



### fn query.destination_table.new

```ts
new()
```


`google.bigquery_job.query.destination_table.new` constructs a new object with attributes and blocks configured for the `destination_table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table. When `null`, the `dataset_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project containing this table. When `null`, the `project_id` field will be omitted from the resulting object.
  - `table_id` (`string`): The table. Can be specified &#39;{{table_id}}&#39; if &#39;project_id&#39; and &#39;dataset_id&#39; are also set,
or of the form &#39;projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}&#39; if not.

**Returns**:
  - An attribute object that represents the `destination_table` sub block.


## obj query.script_options



### fn query.script_options.new

```ts
new()
```


`google.bigquery_job.query.script_options.new` constructs a new object with attributes and blocks configured for the `script_options`
Terraform sub block.



**Args**:
  - `key_result_statement` (`string`): Determines which statement in the script represents the &#34;key result&#34;,
used to populate the schema and query results of the script job. Possible values: [&#34;LAST&#34;, &#34;FIRST_SELECT&#34;] When `null`, the `key_result_statement` field will be omitted from the resulting object.
  - `statement_byte_budget` (`string`): Limit on the number of bytes billed per statement. Exceeding this budget results in an error. When `null`, the `statement_byte_budget` field will be omitted from the resulting object.
  - `statement_timeout_ms` (`string`): Timeout period for each statement in a script. When `null`, the `statement_timeout_ms` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `script_options` sub block.


## obj query.user_defined_function_resources



### fn query.user_defined_function_resources.new

```ts
new()
```


`google.bigquery_job.query.user_defined_function_resources.new` constructs a new object with attributes and blocks configured for the `user_defined_function_resources`
Terraform sub block.



**Args**:
  - `inline_code` (`string`): An inline resource that contains code for a user-defined function (UDF).
Providing a inline code resource is equivalent to providing a URI for a file containing the same code. When `null`, the `inline_code` field will be omitted from the resulting object.
  - `resource_uri` (`string`): A code resource to load from a Google Cloud Storage URI (gs://bucket/path). When `null`, the `resource_uri` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `user_defined_function_resources` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
