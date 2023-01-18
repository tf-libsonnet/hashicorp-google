---
permalink: /datastream_stream/
---

# datastream_stream

`datastream_stream` represents the `google_datastream_stream` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackfillAll()`](#fn-withbackfillall)
* [`fn withBackfillAllMixin()`](#fn-withbackfillallmixin)
* [`fn withBackfillNone()`](#fn-withbackfillnone)
* [`fn withBackfillNoneMixin()`](#fn-withbackfillnonemixin)
* [`fn withDesiredState()`](#fn-withdesiredstate)
* [`fn withDestinationConfig()`](#fn-withdestinationconfig)
* [`fn withDestinationConfigMixin()`](#fn-withdestinationconfigmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withSourceConfig()`](#fn-withsourceconfig)
* [`fn withSourceConfigMixin()`](#fn-withsourceconfigmixin)
* [`fn withStreamId()`](#fn-withstreamid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj backfill_all`](#obj-backfill_all)
  * [`fn new()`](#fn-backfill_allnew)
  * [`obj backfill_all.mysql_excluded_objects`](#obj-backfill_allmysql_excluded_objects)
    * [`fn new()`](#fn-backfill_allmysql_excluded_objectsnew)
    * [`obj backfill_all.mysql_excluded_objects.mysql_databases`](#obj-backfill_allmysql_excluded_objectsmysql_databases)
      * [`fn new()`](#fn-backfill_allmysql_excluded_objectsmysql_databasesnew)
      * [`obj backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables`](#obj-backfill_allmysql_excluded_objectsmysql_databasesmysql_tables)
        * [`fn new()`](#fn-backfill_allmysql_excluded_objectsmysql_databasesmysql_tablesnew)
        * [`obj backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns`](#obj-backfill_allmysql_excluded_objectsmysql_databasesmysql_tablesmysql_columns)
          * [`fn new()`](#fn-backfill_allmysql_excluded_objectsmysql_databasesmysql_tablesmysql_columnsnew)
* [`obj backfill_none`](#obj-backfill_none)
  * [`fn new()`](#fn-backfill_nonenew)
* [`obj destination_config`](#obj-destination_config)
  * [`fn new()`](#fn-destination_confignew)
  * [`obj destination_config.bigquery_destination_config`](#obj-destination_configbigquery_destination_config)
    * [`fn new()`](#fn-destination_configbigquery_destination_confignew)
    * [`obj destination_config.bigquery_destination_config.single_target_dataset`](#obj-destination_configbigquery_destination_configsingle_target_dataset)
      * [`fn new()`](#fn-destination_configbigquery_destination_configsingle_target_datasetnew)
    * [`obj destination_config.bigquery_destination_config.source_hierarchy_datasets`](#obj-destination_configbigquery_destination_configsource_hierarchy_datasets)
      * [`fn new()`](#fn-destination_configbigquery_destination_configsource_hierarchy_datasetsnew)
      * [`obj destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template`](#obj-destination_configbigquery_destination_configsource_hierarchy_datasetsdataset_template)
        * [`fn new()`](#fn-destination_configbigquery_destination_configsource_hierarchy_datasetsdataset_templatenew)
  * [`obj destination_config.gcs_destination_config`](#obj-destination_configgcs_destination_config)
    * [`fn new()`](#fn-destination_configgcs_destination_confignew)
    * [`obj destination_config.gcs_destination_config.avro_file_format`](#obj-destination_configgcs_destination_configavro_file_format)
      * [`fn new()`](#fn-destination_configgcs_destination_configavro_file_formatnew)
    * [`obj destination_config.gcs_destination_config.json_file_format`](#obj-destination_configgcs_destination_configjson_file_format)
      * [`fn new()`](#fn-destination_configgcs_destination_configjson_file_formatnew)
* [`obj source_config`](#obj-source_config)
  * [`fn new()`](#fn-source_confignew)
  * [`obj source_config.mysql_source_config`](#obj-source_configmysql_source_config)
    * [`fn new()`](#fn-source_configmysql_source_confignew)
    * [`obj source_config.mysql_source_config.exclude_objects`](#obj-source_configmysql_source_configexclude_objects)
      * [`fn new()`](#fn-source_configmysql_source_configexclude_objectsnew)
      * [`obj source_config.mysql_source_config.exclude_objects.mysql_databases`](#obj-source_configmysql_source_configexclude_objectsmysql_databases)
        * [`fn new()`](#fn-source_configmysql_source_configexclude_objectsmysql_databasesnew)
        * [`obj source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables`](#obj-source_configmysql_source_configexclude_objectsmysql_databasesmysql_tables)
          * [`fn new()`](#fn-source_configmysql_source_configexclude_objectsmysql_databasesmysql_tablesnew)
          * [`obj source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns`](#obj-source_configmysql_source_configexclude_objectsmysql_databasesmysql_tablesmysql_columns)
            * [`fn new()`](#fn-source_configmysql_source_configexclude_objectsmysql_databasesmysql_tablesmysql_columnsnew)
    * [`obj source_config.mysql_source_config.include_objects`](#obj-source_configmysql_source_configinclude_objects)
      * [`fn new()`](#fn-source_configmysql_source_configinclude_objectsnew)
      * [`obj source_config.mysql_source_config.include_objects.mysql_databases`](#obj-source_configmysql_source_configinclude_objectsmysql_databases)
        * [`fn new()`](#fn-source_configmysql_source_configinclude_objectsmysql_databasesnew)
        * [`obj source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables`](#obj-source_configmysql_source_configinclude_objectsmysql_databasesmysql_tables)
          * [`fn new()`](#fn-source_configmysql_source_configinclude_objectsmysql_databasesmysql_tablesnew)
          * [`obj source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns`](#obj-source_configmysql_source_configinclude_objectsmysql_databasesmysql_tablesmysql_columns)
            * [`fn new()`](#fn-source_configmysql_source_configinclude_objectsmysql_databasesmysql_tablesmysql_columnsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.datastream_stream.new` injects a new `google_datastream_stream` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.datastream_stream.new('some_id')

You can get the reference to the `id` field of the created `google.datastream_stream` using the reference:

    $._ref.google_datastream_stream.some_id.get('id')

This is the same as directly entering `"${ google_datastream_stream.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `desired_state` (`string`): Desired state of the Stream. Set this field to &#39;RUNNING&#39; to start the stream, and &#39;PAUSED&#39; to pause the stream. When `null`, the `desired_state` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name.
  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this stream is located in.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `stream_id` (`string`): The stream identifier.
  - `backfill_all` (`list[obj]`): Backfill strategy to automatically backfill the Stream&#39;s objects. Specific objects can be excluded. When `null`, the `backfill_all` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.new](#fn-backfill_allnew) constructor.
  - `backfill_none` (`list[obj]`): Backfill strategy to disable automatic backfill for the Stream&#39;s objects. When `null`, the `backfill_none` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_none.new](#fn-backfill_nonenew) constructor.
  - `destination_config` (`list[obj]`): Destination connection profile configuration. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.new](#fn-destination_confignew) constructor.
  - `source_config` (`list[obj]`): Source connection profile configuration. When `null`, the `source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.new](#fn-source_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.datastream_stream.newAttrs` constructs a new object with attributes and blocks configured for the `datastream_stream`
Terraform resource.

Unlike [google.datastream_stream.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `desired_state` (`string`): Desired state of the Stream. Set this field to &#39;RUNNING&#39; to start the stream, and &#39;PAUSED&#39; to pause the stream. When `null`, the `desired_state` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name.
  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this stream is located in.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `stream_id` (`string`): The stream identifier.
  - `backfill_all` (`list[obj]`): Backfill strategy to automatically backfill the Stream&#39;s objects. Specific objects can be excluded. When `null`, the `backfill_all` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.new](#fn-backfill_allnew) constructor.
  - `backfill_none` (`list[obj]`): Backfill strategy to disable automatic backfill for the Stream&#39;s objects. When `null`, the `backfill_none` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_none.new](#fn-backfill_nonenew) constructor.
  - `destination_config` (`list[obj]`): Destination connection profile configuration. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.new](#fn-destination_confignew) constructor.
  - `source_config` (`list[obj]`): Source connection profile configuration. When `null`, the `source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.new](#fn-source_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastream_stream` resource into the root Terraform configuration.


### fn withBackfillAll

```ts
withBackfillAll()
```

`google.list[obj].withBackfillAll` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backfill_all field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBackfillAllMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backfill_all` field.


### fn withBackfillAllMixin

```ts
withBackfillAllMixin()
```

`google.list[obj].withBackfillAllMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backfill_all field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBackfillAll](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backfill_all` field.


### fn withBackfillNone

```ts
withBackfillNone()
```

`google.list[obj].withBackfillNone` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backfill_none field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBackfillNoneMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backfill_none` field.


### fn withBackfillNoneMixin

```ts
withBackfillNoneMixin()
```

`google.list[obj].withBackfillNoneMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the backfill_none field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBackfillNone](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `backfill_none` field.


### fn withDesiredState

```ts
withDesiredState()
```

`google.string.withDesiredState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the desired_state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `desired_state` field.


### fn withDestinationConfig

```ts
withDestinationConfig()
```

`google.list[obj].withDestinationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDestinationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination_config` field.


### fn withDestinationConfigMixin

```ts
withDestinationConfigMixin()
```

`google.list[obj].withDestinationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDestinationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination_config` field.


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


### fn withSourceConfig

```ts
withSourceConfig()
```

`google.list[obj].withSourceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_config` field.


### fn withSourceConfigMixin

```ts
withSourceConfigMixin()
```

`google.list[obj].withSourceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_config` field.


### fn withStreamId

```ts
withStreamId()
```

`google.string.withStreamId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the stream_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `stream_id` field.


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


## obj backfill_all



### fn backfill_all.new

```ts
new()
```


`google.datastream_stream.backfill_all.new` constructs a new object with attributes and blocks configured for the `backfill_all`
Terraform sub block.



**Args**:
  - `mysql_excluded_objects` (`list[obj]`): MySQL data source objects to avoid backfilling. When `null`, the `mysql_excluded_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.new](#fn-backfill_allmysql_excluded_objectsnew) constructor.

**Returns**:
  - An attribute object that represents the `backfill_all` sub block.


## obj backfill_all.mysql_excluded_objects



### fn backfill_all.mysql_excluded_objects.new

```ts
new()
```


`google.datastream_stream.backfill_all.mysql_excluded_objects.new` constructs a new object with attributes and blocks configured for the `mysql_excluded_objects`
Terraform sub block.



**Args**:
  - `mysql_databases` (`list[obj]`): MySQL databases on the server When `null`, the `mysql_databases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.new](#fn-backfill_allbackfill_allmysql_databasesnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_excluded_objects` sub block.


## obj backfill_all.mysql_excluded_objects.mysql_databases



### fn backfill_all.mysql_excluded_objects.mysql_databases.new

```ts
new()
```


`google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.new` constructs a new object with attributes and blocks configured for the `mysql_databases`
Terraform sub block.



**Args**:
  - `database` (`string`): Database name.
  - `mysql_tables` (`list[obj]`): Tables in the database. When `null`, the `mysql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.new](#fn-backfill_allbackfill_allmysql_excluded_objectsmysql_tablesnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_databases` sub block.


## obj backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables



### fn backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.new

```ts
new()
```


`google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.new` constructs a new object with attributes and blocks configured for the `mysql_tables`
Terraform sub block.



**Args**:
  - `table` (`string`): Table name.
  - `mysql_columns` (`list[obj]`): MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `mysql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns.new](#fn-backfill_allbackfill_allmysql_excluded_objectsmysql_databasesmysql_columnsnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_tables` sub block.


## obj backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns



### fn backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns.new

```ts
new()
```


`google.datastream_stream.backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns.new` constructs a new object with attributes and blocks configured for the `mysql_columns`
Terraform sub block.



**Args**:
  - `collation` (`string`): Column collation. When `null`, the `collation` field will be omitted from the resulting object.
  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.
  - `data_type` (`string`): The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html When `null`, the `data_type` field will be omitted from the resulting object.
  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.
  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.
  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `mysql_columns` sub block.


## obj backfill_none



### fn backfill_none.new

```ts
new()
```


`google.datastream_stream.backfill_none.new` constructs a new object with attributes and blocks configured for the `backfill_none`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `backfill_none` sub block.


## obj destination_config



### fn destination_config.new

```ts
new()
```


`google.datastream_stream.destination_config.new` constructs a new object with attributes and blocks configured for the `destination_config`
Terraform sub block.



**Args**:
  - `destination_connection_profile` (`string`): Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  - `bigquery_destination_config` (`list[obj]`): A configuration for how data should be loaded to Cloud Storage. When `null`, the `bigquery_destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.new](#fn-destination_configbigquery_destination_confignew) constructor.
  - `gcs_destination_config` (`list[obj]`): A configuration for how data should be loaded to Cloud Storage. When `null`, the `gcs_destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.gcs_destination_config.new](#fn-destination_configgcs_destination_confignew) constructor.

**Returns**:
  - An attribute object that represents the `destination_config` sub block.


## obj destination_config.bigquery_destination_config



### fn destination_config.bigquery_destination_config.new

```ts
new()
```


`google.datastream_stream.destination_config.bigquery_destination_config.new` constructs a new object with attributes and blocks configured for the `bigquery_destination_config`
Terraform sub block.



**Args**:
  - `data_freshness` (`string`): The guaranteed data freshness (in seconds) when querying tables created by the stream.
Editing this field will only affect new tables created in the future, but existing tables
will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. Defaults to 900s. When `null`, the `data_freshness` field will be omitted from the resulting object.
  - `single_target_dataset` (`list[obj]`): A single target dataset to which all data will be streamed. When `null`, the `single_target_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.single_target_dataset.new](#fn-destination_configdestination_configsingle_target_datasetnew) constructor.
  - `source_hierarchy_datasets` (`list[obj]`): Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy. When `null`, the `source_hierarchy_datasets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.new](#fn-destination_configdestination_configsource_hierarchy_datasetsnew) constructor.

**Returns**:
  - An attribute object that represents the `bigquery_destination_config` sub block.


## obj destination_config.bigquery_destination_config.single_target_dataset



### fn destination_config.bigquery_destination_config.single_target_dataset.new

```ts
new()
```


`google.datastream_stream.destination_config.bigquery_destination_config.single_target_dataset.new` constructs a new object with attributes and blocks configured for the `single_target_dataset`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): Dataset ID in the format projects/{project}/datasets/{dataset_id}

**Returns**:
  - An attribute object that represents the `single_target_dataset` sub block.


## obj destination_config.bigquery_destination_config.source_hierarchy_datasets



### fn destination_config.bigquery_destination_config.source_hierarchy_datasets.new

```ts
new()
```


`google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.new` constructs a new object with attributes and blocks configured for the `source_hierarchy_datasets`
Terraform sub block.



**Args**:
  - `dataset_template` (`list[obj]`): Dataset template used for dynamic dataset creation. When `null`, the `dataset_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template.new](#fn-destination_configdestination_configbigquery_destination_configdataset_templatenew) constructor.

**Returns**:
  - An attribute object that represents the `source_hierarchy_datasets` sub block.


## obj destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template



### fn destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template.new

```ts
new()
```


`google.datastream_stream.destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template.new` constructs a new object with attributes and blocks configured for the `dataset_template`
Terraform sub block.



**Args**:
  - `dataset_id_prefix` (`string`): If supplied, every created dataset will have its name prefixed by the provided value.
The prefix and name will be separated by an underscore. i.e. _. When `null`, the `dataset_id_prefix` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the dataset should reside.
See https://cloud.google.com/bigquery/docs/locations for supported locations.

**Returns**:
  - An attribute object that represents the `dataset_template` sub block.


## obj destination_config.gcs_destination_config



### fn destination_config.gcs_destination_config.new

```ts
new()
```


`google.datastream_stream.destination_config.gcs_destination_config.new` constructs a new object with attributes and blocks configured for the `gcs_destination_config`
Terraform sub block.



**Args**:
  - `file_rotation_interval` (`string`): The maximum duration for which new events are added before a file is closed and a new file is created.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. Defaults to 900s. When `null`, the `file_rotation_interval` field will be omitted from the resulting object.
  - `file_rotation_mb` (`number`): The maximum file size to be saved in the bucket. When `null`, the `file_rotation_mb` field will be omitted from the resulting object.
  - `path` (`string`): Path inside the Cloud Storage bucket to write data to. When `null`, the `path` field will be omitted from the resulting object.
  - `avro_file_format` (`list[obj]`): AVRO file format configuration. When `null`, the `avro_file_format` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.gcs_destination_config.avro_file_format.new](#fn-destination_configdestination_configavro_file_formatnew) constructor.
  - `json_file_format` (`list[obj]`): JSON file format configuration. When `null`, the `json_file_format` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.destination_config.gcs_destination_config.json_file_format.new](#fn-destination_configdestination_configjson_file_formatnew) constructor.

**Returns**:
  - An attribute object that represents the `gcs_destination_config` sub block.


## obj destination_config.gcs_destination_config.avro_file_format



### fn destination_config.gcs_destination_config.avro_file_format.new

```ts
new()
```


`google.datastream_stream.destination_config.gcs_destination_config.avro_file_format.new` constructs a new object with attributes and blocks configured for the `avro_file_format`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `avro_file_format` sub block.


## obj destination_config.gcs_destination_config.json_file_format



### fn destination_config.gcs_destination_config.json_file_format.new

```ts
new()
```


`google.datastream_stream.destination_config.gcs_destination_config.json_file_format.new` constructs a new object with attributes and blocks configured for the `json_file_format`
Terraform sub block.



**Args**:
  - `compression` (`string`): Compression of the loaded JSON file. Possible values: [&#34;NO_COMPRESSION&#34;, &#34;GZIP&#34;] When `null`, the `compression` field will be omitted from the resulting object.
  - `schema_file_format` (`string`): The schema file format along JSON data files. Possible values: [&#34;NO_SCHEMA_FILE&#34;, &#34;AVRO_SCHEMA_FILE&#34;] When `null`, the `schema_file_format` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `json_file_format` sub block.


## obj source_config



### fn source_config.new

```ts
new()
```


`google.datastream_stream.source_config.new` constructs a new object with attributes and blocks configured for the `source_config`
Terraform sub block.



**Args**:
  - `source_connection_profile` (`string`): Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  - `mysql_source_config` (`list[obj]`): MySQL data source configuration. When `null`, the `mysql_source_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.new](#fn-source_configmysql_source_confignew) constructor.

**Returns**:
  - An attribute object that represents the `source_config` sub block.


## obj source_config.mysql_source_config



### fn source_config.mysql_source_config.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.new` constructs a new object with attributes and blocks configured for the `mysql_source_config`
Terraform sub block.



**Args**:
  - `max_concurrent_cdc_tasks` (`number`): Maximum number of concurrent CDC tasks. The number should be non negative.
If not set (or set to 0), the system&#39;s default value will be used. When `null`, the `max_concurrent_cdc_tasks` field will be omitted from the resulting object.
  - `exclude_objects` (`list[obj]`): MySQL objects to exclude from the stream. When `null`, the `exclude_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.new](#fn-source_configsource_configexclude_objectsnew) constructor.
  - `include_objects` (`list[obj]`): MySQL objects to retrieve from the source. When `null`, the `include_objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.new](#fn-source_configsource_configinclude_objectsnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_source_config` sub block.


## obj source_config.mysql_source_config.exclude_objects



### fn source_config.mysql_source_config.exclude_objects.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.exclude_objects.new` constructs a new object with attributes and blocks configured for the `exclude_objects`
Terraform sub block.



**Args**:
  - `mysql_databases` (`list[obj]`): MySQL databases on the server When `null`, the `mysql_databases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.new](#fn-source_configsource_configmysql_source_configmysql_databasesnew) constructor.

**Returns**:
  - An attribute object that represents the `exclude_objects` sub block.


## obj source_config.mysql_source_config.exclude_objects.mysql_databases



### fn source_config.mysql_source_config.exclude_objects.mysql_databases.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.new` constructs a new object with attributes and blocks configured for the `mysql_databases`
Terraform sub block.



**Args**:
  - `database` (`string`): Database name.
  - `mysql_tables` (`list[obj]`): Tables in the database. When `null`, the `mysql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.new](#fn-source_configsource_configmysql_source_configexclude_objectsmysql_tablesnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_databases` sub block.


## obj source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables



### fn source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.new` constructs a new object with attributes and blocks configured for the `mysql_tables`
Terraform sub block.



**Args**:
  - `table` (`string`): Table name.
  - `mysql_columns` (`list[obj]`): MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `mysql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns.new](#fn-source_configsource_configmysql_source_configexclude_objectsmysql_databasesmysql_columnsnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_tables` sub block.


## obj source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns



### fn source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns.new` constructs a new object with attributes and blocks configured for the `mysql_columns`
Terraform sub block.



**Args**:
  - `collation` (`string`): Column collation. When `null`, the `collation` field will be omitted from the resulting object.
  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.
  - `data_type` (`string`): The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html When `null`, the `data_type` field will be omitted from the resulting object.
  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.
  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.
  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `mysql_columns` sub block.


## obj source_config.mysql_source_config.include_objects



### fn source_config.mysql_source_config.include_objects.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.include_objects.new` constructs a new object with attributes and blocks configured for the `include_objects`
Terraform sub block.



**Args**:
  - `mysql_databases` (`list[obj]`): MySQL databases on the server When `null`, the `mysql_databases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.new](#fn-source_configsource_configmysql_source_configmysql_databasesnew) constructor.

**Returns**:
  - An attribute object that represents the `include_objects` sub block.


## obj source_config.mysql_source_config.include_objects.mysql_databases



### fn source_config.mysql_source_config.include_objects.mysql_databases.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.new` constructs a new object with attributes and blocks configured for the `mysql_databases`
Terraform sub block.



**Args**:
  - `database` (`string`): Database name.
  - `mysql_tables` (`list[obj]`): Tables in the database. When `null`, the `mysql_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.new](#fn-source_configsource_configmysql_source_configinclude_objectsmysql_tablesnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_databases` sub block.


## obj source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables



### fn source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.new` constructs a new object with attributes and blocks configured for the `mysql_tables`
Terraform sub block.



**Args**:
  - `table` (`string`): Table name.
  - `mysql_columns` (`list[obj]`): MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. When `null`, the `mysql_columns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns.new](#fn-source_configsource_configmysql_source_configinclude_objectsmysql_databasesmysql_columnsnew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_tables` sub block.


## obj source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns



### fn source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns.new

```ts
new()
```


`google.datastream_stream.source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns.new` constructs a new object with attributes and blocks configured for the `mysql_columns`
Terraform sub block.



**Args**:
  - `collation` (`string`): Column collation. When `null`, the `collation` field will be omitted from the resulting object.
  - `column` (`string`): Column name. When `null`, the `column` field will be omitted from the resulting object.
  - `data_type` (`string`): The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html When `null`, the `data_type` field will be omitted from the resulting object.
  - `nullable` (`bool`): Whether or not the column can accept a null value. When `null`, the `nullable` field will be omitted from the resulting object.
  - `ordinal_position` (`number`): The ordinal position of the column in the table. When `null`, the `ordinal_position` field will be omitted from the resulting object.
  - `primary_key` (`bool`): Whether or not the column represents a primary key. When `null`, the `primary_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `mysql_columns` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.datastream_stream.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
