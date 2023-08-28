---
permalink: /bigquery_bi_reservation/
---

# bigquery_bi_reservation

`bigquery_bi_reservation` represents the `google_bigquery_bi_reservation` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPreferredTables()`](#fn-withpreferredtables)
* [`fn withPreferredTablesMixin()`](#fn-withpreferredtablesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withSize()`](#fn-withsize)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj preferred_tables`](#obj-preferred_tables)
  * [`fn new()`](#fn-preferred_tablesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_bi_reservation.new` injects a new `google_bigquery_bi_reservation` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_bi_reservation.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_bi_reservation` using the reference:

    $._ref.google_bigquery_bi_reservation.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_bi_reservation.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `location` (`string`): LOCATION_DESCRIPTION
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `size` (`number`): Size of a reservation, in bytes. When `null`, the `size` field will be omitted from the resulting object.
  - `preferred_tables` (`list[obj]`): Preferred tables to use BI capacity for. When `null`, the `preferred_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.preferred_tables.new](#fn-preferred_tablesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_bi_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_bi_reservation`
Terraform resource.

Unlike [google.bigquery_bi_reservation.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): LOCATION_DESCRIPTION
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `size` (`number`): Size of a reservation, in bytes. When `null`, the `size` field will be omitted from the resulting object.
  - `preferred_tables` (`list[obj]`): Preferred tables to use BI capacity for. When `null`, the `preferred_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.preferred_tables.new](#fn-preferred_tablesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_bi_reservation` resource into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPreferredTables

```ts
withPreferredTables()
```

`google.list[obj].withPreferredTables` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the preferred_tables field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPreferredTablesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `preferred_tables` field.


### fn withPreferredTablesMixin

```ts
withPreferredTablesMixin()
```

`google.list[obj].withPreferredTablesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the preferred_tables field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPreferredTables](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `preferred_tables` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSize

```ts
withSize()
```

`google.number.withSize` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `size` field.


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


## obj preferred_tables



### fn preferred_tables.new

```ts
new()
```


`google.bigquery_bi_reservation.preferred_tables.new` constructs a new object with attributes and blocks configured for the `preferred_tables`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset in the above project. When `null`, the `dataset_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The assigned project ID of the project. When `null`, the `project_id` field will be omitted from the resulting object.
  - `table_id` (`string`): The ID of the table in the above dataset. When `null`, the `table_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `preferred_tables` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_bi_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
