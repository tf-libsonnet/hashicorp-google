---
permalink: /biglake_table/
---

# biglake_table

`biglake_table` represents the `google_biglake_table` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDatabase()`](#fn-withdatabase)
* [`fn withHiveOptions()`](#fn-withhiveoptions)
* [`fn withHiveOptionsMixin()`](#fn-withhiveoptionsmixin)
* [`fn withName()`](#fn-withname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj hive_options`](#obj-hive_options)
  * [`fn new()`](#fn-hive_optionsnew)
  * [`obj hive_options.storage_descriptor`](#obj-hive_optionsstorage_descriptor)
    * [`fn new()`](#fn-hive_optionsstorage_descriptornew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.biglake_table.new` injects a new `google_biglake_table` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.biglake_table.new('some_id')

You can get the reference to the `id` field of the created `google.biglake_table` using the reference:

    $._ref.google_biglake_table.some_id.get('id')

This is the same as directly entering `"${ google_biglake_table.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `database` (`string`): The id of the parent database. When `null`, the `database` field will be omitted from the resulting object.
  - `name` (`string`): Output only. The name of the Table. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  - `type` (`string`): The database type. Possible values: [&#34;HIVE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `hive_options` (`list[obj]`): Options of a Hive table. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.hive_options.new](#fn-hive_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.biglake_table.newAttrs` constructs a new object with attributes and blocks configured for the `biglake_table`
Terraform resource.

Unlike [google.biglake_table.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `database` (`string`): The id of the parent database. When `null`, the `database` field will be omitted from the resulting object.
  - `name` (`string`): Output only. The name of the Table. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  - `type` (`string`): The database type. Possible values: [&#34;HIVE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `hive_options` (`list[obj]`): Options of a Hive table. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.hive_options.new](#fn-hive_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `biglake_table` resource into the root Terraform configuration.


### fn withDatabase

```ts
withDatabase()
```

`google.string.withDatabase` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database` field.


### fn withHiveOptions

```ts
withHiveOptions()
```

`google.list[obj].withHiveOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHiveOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_options` field.


### fn withHiveOptionsMixin

```ts
withHiveOptionsMixin()
```

`google.list[obj].withHiveOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHiveOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_options` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


## obj hive_options



### fn hive_options.new

```ts
new()
```


`google.biglake_table.hive_options.new` constructs a new object with attributes and blocks configured for the `hive_options`
Terraform sub block.



**Args**:
  - `parameters` (`obj`): Stores user supplied Hive table parameters. An object containing a
list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `parameters` field will be omitted from the resulting object.
  - `table_type` (`string`): Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE. When `null`, the `table_type` field will be omitted from the resulting object.
  - `storage_descriptor` (`list[obj]`): Stores physical storage information on the data. When `null`, the `storage_descriptor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.hive_options.storage_descriptor.new](#fn-hive_optionsstorage_descriptornew) constructor.

**Returns**:
  - An attribute object that represents the `hive_options` sub block.


## obj hive_options.storage_descriptor



### fn hive_options.storage_descriptor.new

```ts
new()
```


`google.biglake_table.hive_options.storage_descriptor.new` constructs a new object with attributes and blocks configured for the `storage_descriptor`
Terraform sub block.



**Args**:
  - `input_format` (`string`): The fully qualified Java class name of the input format. When `null`, the `input_format` field will be omitted from the resulting object.
  - `location_uri` (`string`): Cloud Storage folder URI where the table data is stored, starting with &#34;gs://&#34;. When `null`, the `location_uri` field will be omitted from the resulting object.
  - `output_format` (`string`): The fully qualified Java class name of the output format. When `null`, the `output_format` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `storage_descriptor` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.biglake_table.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
