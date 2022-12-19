---
permalink: /data/sql_backup_run/
---

# data.sql_backup_run

`sql_backup_run` represents the `google_sql_backup_run` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackupId()`](#fn-withbackupid)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withMostRecent()`](#fn-withmostrecent)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.sql_backup_run.new` injects a new `data_google_sql_backup_run` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.sql_backup_run.new('some_id')

You can get the reference to the `id` field of the created `google.data.sql_backup_run` using the reference:

    $._ref.data_google_sql_backup_run.some_id.get('id')

This is the same as directly entering `"${ data_google_sql_backup_run.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `backup_id` (`number`): The identifier for this backup run. Unique only for a specific Cloud SQL instance. If left empty and multiple backups exist for the instance, most_recent must be set to true. When `null`, the `backup_id` field will be omitted from the resulting object.
  - `instance` (`string`): Name of the database instance.
  - `most_recent` (`bool`): Toggles use of the most recent backup run if multiple backups exist for a Cloud SQL instance. When `null`, the `most_recent` field will be omitted from the resulting object.
  - `project` (`string`): Project ID of the project that contains the instance. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.sql_backup_run.newAttrs` constructs a new object with attributes and blocks configured for the `sql_backup_run`
Terraform data source.

Unlike [google.data.sql_backup_run.new](#fn-sql_backup_runnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `backup_id` (`number`): The identifier for this backup run. Unique only for a specific Cloud SQL instance. If left empty and multiple backups exist for the instance, most_recent must be set to true. When `null`, the `backup_id` field will be omitted from the resulting object.
  - `instance` (`string`): Name of the database instance.
  - `most_recent` (`bool`): Toggles use of the most recent backup run if multiple backups exist for a Cloud SQL instance. When `null`, the `most_recent` field will be omitted from the resulting object.
  - `project` (`string`): Project ID of the project that contains the instance. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `sql_backup_run` data source into the root Terraform configuration.


### fn withBackupId

```ts
withBackupId()
```

`google.number.withBackupId` constructs a mixin object that can be merged into the `number`
Terraform data source block to set or update the backup_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `backup_id` field.


### fn withInstance

```ts
withInstance()
```

`google.string.withInstance` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the instance field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance` field.


### fn withMostRecent

```ts
withMostRecent()
```

`google.bool.withMostRecent` constructs a mixin object that can be merged into the `bool`
Terraform data source block to set or update the most_recent field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `most_recent` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
