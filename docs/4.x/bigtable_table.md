---
permalink: /bigtable_table/
---

# bigtable_table

`bigtable_table` represents the `google_bigtable_table` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withColumnFamily()`](#fn-withcolumnfamily)
* [`fn withColumnFamilyMixin()`](#fn-withcolumnfamilymixin)
* [`fn withInstanceName()`](#fn-withinstancename)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSplitKeys()`](#fn-withsplitkeys)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj column_family`](#obj-column_family)
  * [`fn new()`](#fn-column_familynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigtable_table.new` injects a new `google_bigtable_table` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigtable_table.new('some_id')

You can get the reference to the `id` field of the created `google.bigtable_table` using the reference:

    $._ref.google_bigtable_table.some_id.get('id')

This is the same as directly entering `"${ google_bigtable_table.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `instance_name` (`string`): The name of the Bigtable instance.
  - `name` (`string`): The name of the table.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `split_keys` (`list`): A list of predefined keys to split the table on. !&gt; Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. When `null`, the `split_keys` field will be omitted from the resulting object.
  - `column_family` (`list[obj]`): A group of columns within a table which share a common configuration. This can be specified multiple times. When `null`, the `column_family` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.column_family.new](#fn-bigtabletablecolumnfamilynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.timeouts.new](#fn-bigtabletabletimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigtable_table.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_table`
Terraform resource.

Unlike [google.bigtable_table.new](#fn-bigtabletablenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `instance_name` (`string`): The name of the Bigtable instance.
  - `name` (`string`): The name of the table.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `split_keys` (`list`): A list of predefined keys to split the table on. !&gt; Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. When `null`, the `split_keys` field will be omitted from the resulting object.
  - `column_family` (`list[obj]`): A group of columns within a table which share a common configuration. This can be specified multiple times. When `null`, the `column_family` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.column_family.new](#fn-bigtabletablecolumnfamilynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.timeouts.new](#fn-bigtabletabletimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_table` resource into the root Terraform configuration.


### fn withColumnFamily

```ts
withColumnFamily()
```

`google.list[obj].withColumnFamily` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the column_family field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withColumnFamilyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `column_family` field.


### fn withColumnFamilyMixin

```ts
withColumnFamilyMixin()
```

`google.list[obj].withColumnFamilyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the column_family field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withColumnFamily](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `column_family` field.


### fn withInstanceName

```ts
withInstanceName()
```

`google.string.withInstanceName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_name` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSplitKeys

```ts
withSplitKeys()
```

`google.list.withSplitKeys` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the split_keys field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `split_keys` field.


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


## obj column_family



### fn column_family.new

```ts
new()
```


`google.bigtable_table.column_family.new` constructs a new object with attributes and blocks configured for the `column_family`
Terraform sub block.



**Args**:
  - `family` (`string`): The name of the column family.

**Returns**:
  - An attribute object that represents the `column_family` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigtable_table.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.