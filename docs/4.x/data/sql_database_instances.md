---
permalink: /data/sql_database_instances/
---

# data.sql_database_instances

`sql_database_instances` represents the `google_sql_database_instances` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDatabaseVersion()`](#fn-withdatabaseversion)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withState()`](#fn-withstate)
* [`fn withTier()`](#fn-withtier)
* [`fn withZone()`](#fn-withzone)

## Fields

### fn new

```ts
new()
```


`google.data.sql_database_instances.new` injects a new `data_google_sql_database_instances` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.sql_database_instances.new('some_id')

You can get the reference to the `id` field of the created `google.data.sql_database_instances` using the reference:

    $._ref.data_google_sql_database_instances.some_id.get('id')

This is the same as directly entering `"${ data_google_sql_database_instances.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `database_version` (`string`): To filter out the database instances which are of the specified database version. When `null`, the `database_version` field will be omitted from the resulting object.
  - `project` (`string`): Project ID of the project that contains the instances. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): To filter out the database instances which are located in this specified region. When `null`, the `region` field will be omitted from the resulting object.
  - `state` (`string`): To filter out the database instances based on the current state of the database instance, valid values include : &#34;SQL_INSTANCE_STATE_UNSPECIFIED&#34;, &#34;RUNNABLE&#34;, &#34;SUSPENDED&#34;, &#34;PENDING_DELETE&#34;, &#34;PENDING_CREATE&#34;, &#34;MAINTENANCE&#34; and &#34;FAILED&#34;. When `null`, the `state` field will be omitted from the resulting object.
  - `tier` (`string`): To filter out the database instances based on the machine type. When `null`, the `tier` field will be omitted from the resulting object.
  - `zone` (`string`): To filter out the database instances which are located in this specified zone. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.sql_database_instances.newAttrs` constructs a new object with attributes and blocks configured for the `sql_database_instances`
Terraform data source.

Unlike [google.data.sql_database_instances.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `database_version` (`string`): To filter out the database instances which are of the specified database version. When `null`, the `database_version` field will be omitted from the resulting object.
  - `project` (`string`): Project ID of the project that contains the instances. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): To filter out the database instances which are located in this specified region. When `null`, the `region` field will be omitted from the resulting object.
  - `state` (`string`): To filter out the database instances based on the current state of the database instance, valid values include : &#34;SQL_INSTANCE_STATE_UNSPECIFIED&#34;, &#34;RUNNABLE&#34;, &#34;SUSPENDED&#34;, &#34;PENDING_DELETE&#34;, &#34;PENDING_CREATE&#34;, &#34;MAINTENANCE&#34; and &#34;FAILED&#34;. When `null`, the `state` field will be omitted from the resulting object.
  - `tier` (`string`): To filter out the database instances based on the machine type. When `null`, the `tier` field will be omitted from the resulting object.
  - `zone` (`string`): To filter out the database instances which are located in this specified zone. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `sql_database_instances` data source into the root Terraform configuration.


### fn withDatabaseVersion

```ts
withDatabaseVersion()
```

`google.string.withDatabaseVersion` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the database_version field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_version` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the region field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withState

```ts
withState()
```

`google.string.withState` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the state field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `state` field.


### fn withTier

```ts
withTier()
```

`google.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the tier field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the zone field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.
