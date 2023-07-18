---
permalink: /bigquery_table/
---

# bigquery_table

`bigquery_table` represents the `google_bigquery_table` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClustering()`](#fn-withclustering)
* [`fn withDatasetId()`](#fn-withdatasetid)
* [`fn withDeletionProtection()`](#fn-withdeletionprotection)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEncryptionConfiguration()`](#fn-withencryptionconfiguration)
* [`fn withEncryptionConfigurationMixin()`](#fn-withencryptionconfigurationmixin)
* [`fn withExpirationTime()`](#fn-withexpirationtime)
* [`fn withExternalDataConfiguration()`](#fn-withexternaldataconfiguration)
* [`fn withExternalDataConfigurationMixin()`](#fn-withexternaldataconfigurationmixin)
* [`fn withFriendlyName()`](#fn-withfriendlyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMaterializedView()`](#fn-withmaterializedview)
* [`fn withMaterializedViewMixin()`](#fn-withmaterializedviewmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRangePartitioning()`](#fn-withrangepartitioning)
* [`fn withRangePartitioningMixin()`](#fn-withrangepartitioningmixin)
* [`fn withSchema()`](#fn-withschema)
* [`fn withTableId()`](#fn-withtableid)
* [`fn withTimePartitioning()`](#fn-withtimepartitioning)
* [`fn withTimePartitioningMixin()`](#fn-withtimepartitioningmixin)
* [`fn withView()`](#fn-withview)
* [`fn withViewMixin()`](#fn-withviewmixin)
* [`obj encryption_configuration`](#obj-encryption_configuration)
  * [`fn new()`](#fn-encryption_configurationnew)
* [`obj external_data_configuration`](#obj-external_data_configuration)
  * [`fn new()`](#fn-external_data_configurationnew)
  * [`obj external_data_configuration.avro_options`](#obj-external_data_configurationavro_options)
    * [`fn new()`](#fn-external_data_configurationavro_optionsnew)
  * [`obj external_data_configuration.csv_options`](#obj-external_data_configurationcsv_options)
    * [`fn new()`](#fn-external_data_configurationcsv_optionsnew)
  * [`obj external_data_configuration.google_sheets_options`](#obj-external_data_configurationgoogle_sheets_options)
    * [`fn new()`](#fn-external_data_configurationgoogle_sheets_optionsnew)
  * [`obj external_data_configuration.hive_partitioning_options`](#obj-external_data_configurationhive_partitioning_options)
    * [`fn new()`](#fn-external_data_configurationhive_partitioning_optionsnew)
* [`obj materialized_view`](#obj-materialized_view)
  * [`fn new()`](#fn-materialized_viewnew)
* [`obj range_partitioning`](#obj-range_partitioning)
  * [`fn new()`](#fn-range_partitioningnew)
  * [`obj range_partitioning.range`](#obj-range_partitioningrange)
    * [`fn new()`](#fn-range_partitioningrangenew)
* [`obj time_partitioning`](#obj-time_partitioning)
  * [`fn new()`](#fn-time_partitioningnew)
* [`obj view`](#obj-view)
  * [`fn new()`](#fn-viewnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_table.new` injects a new `google_bigquery_table` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_table.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_table` using the reference:

    $._ref.google_bigquery_table.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_table.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `clustering` (`list`): Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order. When `null`, the `clustering` field will be omitted from the resulting object.
  - `dataset_id` (`string`): The dataset ID to create the table in. Changing this forces a new resource to be created.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `description` (`string`): The field description. When `null`, the `description` field will be omitted from the resulting object.
  - `expiration_time` (`number`): The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `friendly_name` (`string`): A descriptive name for the table. When `null`, the `friendly_name` field will be omitted from the resulting object.
  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.
  - `schema` (`string`): A JSON schema for the table. When `null`, the `schema` field will be omitted from the resulting object.
  - `table_id` (`string`): A unique ID for the resource. Changing this forces a new resource to be created.
  - `encryption_configuration` (`list[obj]`): Specifies how the table should be encrypted. If left blank, the table will be encrypted with a Google-managed key; that process is transparent to the user. When `null`, the `encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.encryption_configuration.new](#fn-encryption_configurationnew) constructor.
  - `external_data_configuration` (`list[obj]`): Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. When `null`, the `external_data_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.new](#fn-external_data_configurationnew) constructor.
  - `materialized_view` (`list[obj]`): If specified, configures this table as a materialized view. When `null`, the `materialized_view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.materialized_view.new](#fn-materialized_viewnew) constructor.
  - `range_partitioning` (`list[obj]`): If specified, configures range-based partitioning for this table. When `null`, the `range_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.range_partitioning.new](#fn-range_partitioningnew) constructor.
  - `time_partitioning` (`list[obj]`): If specified, configures time-based partitioning for this table. When `null`, the `time_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.time_partitioning.new](#fn-time_partitioningnew) constructor.
  - `view` (`list[obj]`): If specified, configures this table as a view. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.view.new](#fn-viewnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_table.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_table`
Terraform resource.

Unlike [google.bigquery_table.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `clustering` (`list`): Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order. When `null`, the `clustering` field will be omitted from the resulting object.
  - `dataset_id` (`string`): The dataset ID to create the table in. Changing this forces a new resource to be created.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `description` (`string`): The field description. When `null`, the `description` field will be omitted from the resulting object.
  - `expiration_time` (`number`): The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `friendly_name` (`string`): A descriptive name for the table. When `null`, the `friendly_name` field will be omitted from the resulting object.
  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.
  - `schema` (`string`): A JSON schema for the table. When `null`, the `schema` field will be omitted from the resulting object.
  - `table_id` (`string`): A unique ID for the resource. Changing this forces a new resource to be created.
  - `encryption_configuration` (`list[obj]`): Specifies how the table should be encrypted. If left blank, the table will be encrypted with a Google-managed key; that process is transparent to the user. When `null`, the `encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.encryption_configuration.new](#fn-encryption_configurationnew) constructor.
  - `external_data_configuration` (`list[obj]`): Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. When `null`, the `external_data_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.new](#fn-external_data_configurationnew) constructor.
  - `materialized_view` (`list[obj]`): If specified, configures this table as a materialized view. When `null`, the `materialized_view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.materialized_view.new](#fn-materialized_viewnew) constructor.
  - `range_partitioning` (`list[obj]`): If specified, configures range-based partitioning for this table. When `null`, the `range_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.range_partitioning.new](#fn-range_partitioningnew) constructor.
  - `time_partitioning` (`list[obj]`): If specified, configures time-based partitioning for this table. When `null`, the `time_partitioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.time_partitioning.new](#fn-time_partitioningnew) constructor.
  - `view` (`list[obj]`): If specified, configures this table as a view. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.view.new](#fn-viewnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_table` resource into the root Terraform configuration.


### fn withClustering

```ts
withClustering()
```

`google.list.withClustering` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the clustering field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `clustering` field.


### fn withDatasetId

```ts
withDatasetId()
```

`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset_id` field.


### fn withDeletionProtection

```ts
withDeletionProtection()
```

`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the deletion_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `deletion_protection` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEncryptionConfiguration

```ts
withEncryptionConfiguration()
```

`google.list[obj].withEncryptionConfiguration` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_configuration field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionConfigurationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_configuration` field.


### fn withEncryptionConfigurationMixin

```ts
withEncryptionConfigurationMixin()
```

`google.list[obj].withEncryptionConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_configuration field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfiguration](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_configuration` field.


### fn withExpirationTime

```ts
withExpirationTime()
```

`google.number.withExpirationTime` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the expiration_time field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `expiration_time` field.


### fn withExternalDataConfiguration

```ts
withExternalDataConfiguration()
```

`google.list[obj].withExternalDataConfiguration` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the external_data_configuration field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExternalDataConfigurationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `external_data_configuration` field.


### fn withExternalDataConfigurationMixin

```ts
withExternalDataConfigurationMixin()
```

`google.list[obj].withExternalDataConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the external_data_configuration field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExternalDataConfiguration](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `external_data_configuration` field.


### fn withFriendlyName

```ts
withFriendlyName()
```

`google.string.withFriendlyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the friendly_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `friendly_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMaterializedView

```ts
withMaterializedView()
```

`google.list[obj].withMaterializedView` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the materialized_view field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaterializedViewMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `materialized_view` field.


### fn withMaterializedViewMixin

```ts
withMaterializedViewMixin()
```

`google.list[obj].withMaterializedViewMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the materialized_view field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaterializedView](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `materialized_view` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRangePartitioning

```ts
withRangePartitioning()
```

`google.list[obj].withRangePartitioning` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the range_partitioning field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRangePartitioningMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `range_partitioning` field.


### fn withRangePartitioningMixin

```ts
withRangePartitioningMixin()
```

`google.list[obj].withRangePartitioningMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the range_partitioning field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRangePartitioning](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `range_partitioning` field.


### fn withSchema

```ts
withSchema()
```

`google.string.withSchema` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the schema field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `schema` field.


### fn withTableId

```ts
withTableId()
```

`google.string.withTableId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the table_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `table_id` field.


### fn withTimePartitioning

```ts
withTimePartitioning()
```

`google.list[obj].withTimePartitioning` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the time_partitioning field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTimePartitioningMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `time_partitioning` field.


### fn withTimePartitioningMixin

```ts
withTimePartitioningMixin()
```

`google.list[obj].withTimePartitioningMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the time_partitioning field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTimePartitioning](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `time_partitioning` field.


### fn withView

```ts
withView()
```

`google.list[obj].withView` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the view field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withViewMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `view` field.


### fn withViewMixin

```ts
withViewMixin()
```

`google.list[obj].withViewMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the view field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withView](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `view` field.


## obj encryption_configuration



### fn encryption_configuration.new

```ts
new()
```


`google.bigquery_table.encryption_configuration.new` constructs a new object with attributes and blocks configured for the `encryption_configuration`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the google_bigquery_default_service_account datasource and the google_kms_crypto_key_iam_binding resource.

**Returns**:
  - An attribute object that represents the `encryption_configuration` sub block.


## obj external_data_configuration



### fn external_data_configuration.new

```ts
new()
```


`google.bigquery_table.external_data_configuration.new` constructs a new object with attributes and blocks configured for the `external_data_configuration`
Terraform sub block.



**Args**:
  - `autodetect` (`bool`): Let BigQuery try to autodetect the schema and format of the table.
  - `compression` (`string`): The compression type of the data source. Valid values are &#34;NONE&#34; or &#34;GZIP&#34;. When `null`, the `compression` field will be omitted from the resulting object.
  - `connection_id` (`string`): The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form &#34;{{project}}.{{location}}.{{connection_id}}&#34; or &#34;projects/{{project}}/locations/{{location}}/connections/{{connection_id}}&#34;. When `null`, the `connection_id` field will be omitted from the resulting object.
  - `ignore_unknown_values` (`bool`): Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. When `null`, the `ignore_unknown_values` field will be omitted from the resulting object.
  - `max_bad_records` (`number`): The maximum number of bad records that BigQuery can ignore when reading data. When `null`, the `max_bad_records` field will be omitted from the resulting object.
  - `metadata_cache_mode` (`string`): Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. When `null`, the `metadata_cache_mode` field will be omitted from the resulting object.
  - `object_metadata` (`string`): Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted. When `null`, the `object_metadata` field will be omitted from the resulting object.
  - `reference_file_schema_uri` (`string`): When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC. When `null`, the `reference_file_schema_uri` field will be omitted from the resulting object.
  - `schema` (`string`): A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables. When `null`, the `schema` field will be omitted from the resulting object.
  - `source_format` (`string`):  Please see sourceFormat under ExternalDataConfiguration in Bigquery&#39;s public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use &#34;GOOGLE_SHEETS&#34; the scopes must include &#34;googleapis.com/auth/drive.readonly&#34;. When `null`, the `source_format` field will be omitted from the resulting object.
  - `source_uris` (`list`): A list of the fully-qualified URIs that point to your data in Google Cloud.
  - `avro_options` (`list[obj]`): Additional options if source_format is set to &#34;AVRO&#34; When `null`, the `avro_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.avro_options.new](#fn-external_data_configurationavro_optionsnew) constructor.
  - `csv_options` (`list[obj]`): Additional properties to set if source_format is set to &#34;CSV&#34;. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.csv_options.new](#fn-external_data_configurationcsv_optionsnew) constructor.
  - `google_sheets_options` (`list[obj]`): Additional options if source_format is set to &#34;GOOGLE_SHEETS&#34;. When `null`, the `google_sheets_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.google_sheets_options.new](#fn-external_data_configurationgoogle_sheets_optionsnew) constructor.
  - `hive_partitioning_options` (`list[obj]`): When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification. When `null`, the `hive_partitioning_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.external_data_configuration.hive_partitioning_options.new](#fn-external_data_configurationhive_partitioning_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `external_data_configuration` sub block.


## obj external_data_configuration.avro_options



### fn external_data_configuration.avro_options.new

```ts
new()
```


`google.bigquery_table.external_data_configuration.avro_options.new` constructs a new object with attributes and blocks configured for the `avro_options`
Terraform sub block.



**Args**:
  - `use_avro_logical_types` (`bool`): If sourceFormat is set to &#34;AVRO&#34;, indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).

**Returns**:
  - An attribute object that represents the `avro_options` sub block.


## obj external_data_configuration.csv_options



### fn external_data_configuration.csv_options.new

```ts
new()
```


`google.bigquery_table.external_data_configuration.csv_options.new` constructs a new object with attributes and blocks configured for the `csv_options`
Terraform sub block.



**Args**:
  - `allow_jagged_rows` (`bool`): Indicates if BigQuery should accept rows that are missing trailing optional columns. When `null`, the `allow_jagged_rows` field will be omitted from the resulting object.
  - `allow_quoted_newlines` (`bool`): Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. When `null`, the `allow_quoted_newlines` field will be omitted from the resulting object.
  - `encoding` (`string`): The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. When `null`, the `encoding` field will be omitted from the resulting object.
  - `field_delimiter` (`string`): The separator for fields in a CSV file. When `null`, the `field_delimiter` field will be omitted from the resulting object.
  - `quote` (`string`): The value that is used to quote data sections in a CSV file. If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allow_quoted_newlines property to true. The API-side default is &#34;, specified in Terraform escaped as \&#34;. Due to limitations with Terraform default values, this value is required to be explicitly set.
  - `skip_leading_rows` (`number`): The number of rows at the top of a CSV file that BigQuery will skip when reading the data. When `null`, the `skip_leading_rows` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `csv_options` sub block.


## obj external_data_configuration.google_sheets_options



### fn external_data_configuration.google_sheets_options.new

```ts
new()
```


`google.bigquery_table.external_data_configuration.google_sheets_options.new` constructs a new object with attributes and blocks configured for the `google_sheets_options`
Terraform sub block.



**Args**:
  - `range` (`string`): Range of a sheet to query from. Only used when non-empty. At least one of range or skip_leading_rows must be set. Typical format: &#34;sheet_name!top_left_cell_id:bottom_right_cell_id&#34; For example: &#34;sheet1!A1:B20&#34; When `null`, the `range` field will be omitted from the resulting object.
  - `skip_leading_rows` (`number`): The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or skip_leading_rows must be set. When `null`, the `skip_leading_rows` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `google_sheets_options` sub block.


## obj external_data_configuration.hive_partitioning_options



### fn external_data_configuration.hive_partitioning_options.new

```ts
new()
```


`google.bigquery_table.external_data_configuration.hive_partitioning_options.new` constructs a new object with attributes and blocks configured for the `hive_partitioning_options`
Terraform sub block.



**Args**:
  - `mode` (`string`): When set, what mode of hive partitioning to use when reading data. When `null`, the `mode` field will be omitted from the resulting object.
  - `require_partition_filter` (`bool`): If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. When `null`, the `require_partition_filter` field will be omitted from the resulting object.
  - `source_uri_prefix` (`string`): When hive partition detection is requested, a common for all source uris must be required. The prefix must end immediately before the partition key encoding begins. When `null`, the `source_uri_prefix` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `hive_partitioning_options` sub block.


## obj materialized_view



### fn materialized_view.new

```ts
new()
```


`google.bigquery_table.materialized_view.new` constructs a new object with attributes and blocks configured for the `materialized_view`
Terraform sub block.



**Args**:
  - `enable_refresh` (`bool`): Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true. When `null`, the `enable_refresh` field will be omitted from the resulting object.
  - `query` (`string`): A query whose result is persisted.
  - `refresh_interval_ms` (`number`): Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000 When `null`, the `refresh_interval_ms` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `materialized_view` sub block.


## obj range_partitioning



### fn range_partitioning.new

```ts
new()
```


`google.bigquery_table.range_partitioning.new` constructs a new object with attributes and blocks configured for the `range_partitioning`
Terraform sub block.



**Args**:
  - `field` (`string`): The field used to determine how to create a range-based partition.
  - `range` (`list[obj]`): Information required to partition based on ranges. Structure is documented below. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_table.range_partitioning.range.new](#fn-range_partitioningrangenew) constructor.

**Returns**:
  - An attribute object that represents the `range_partitioning` sub block.


## obj range_partitioning.range



### fn range_partitioning.range.new

```ts
new()
```


`google.bigquery_table.range_partitioning.range.new` constructs a new object with attributes and blocks configured for the `range`
Terraform sub block.



**Args**:
  - `end` (`number`): End of the range partitioning, exclusive.
  - `interval` (`number`): The width of each range within the partition.
  - `start` (`number`): Start of the range partitioning, inclusive.

**Returns**:
  - An attribute object that represents the `range` sub block.


## obj time_partitioning



### fn time_partitioning.new

```ts
new()
```


`google.bigquery_table.time_partitioning.new` constructs a new object with attributes and blocks configured for the `time_partitioning`
Terraform sub block.



**Args**:
  - `expiration_ms` (`number`): Number of milliseconds for which to keep the storage for a partition. When `null`, the `expiration_ms` field will be omitted from the resulting object.
  - `field` (`string`): The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time. When `null`, the `field` field will be omitted from the resulting object.
  - `require_partition_filter` (`bool`): If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. When `null`, the `require_partition_filter` field will be omitted from the resulting object.
  - `type` (`string`): The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.

**Returns**:
  - An attribute object that represents the `time_partitioning` sub block.


## obj view



### fn view.new

```ts
new()
```


`google.bigquery_table.view.new` constructs a new object with attributes and blocks configured for the `view`
Terraform sub block.



**Args**:
  - `query` (`string`): A query that BigQuery executes when the view is referenced.
  - `use_legacy_sql` (`bool`): Specifies whether to use BigQuery&#39;s legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery&#39;s standard SQL When `null`, the `use_legacy_sql` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `view` sub block.
