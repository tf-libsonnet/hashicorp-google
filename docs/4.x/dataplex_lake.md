---
permalink: /dataplex_lake/
---

# dataplex_lake

`dataplex_lake` represents the `google_dataplex_lake` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMetastore()`](#fn-withmetastore)
* [`fn withMetastoreMixin()`](#fn-withmetastoremixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj metastore`](#obj-metastore)
  * [`fn new()`](#fn-metastorenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dataplex_lake.new` injects a new `google_dataplex_lake` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataplex_lake.new('some_id')

You can get the reference to the `id` field of the created `google.dataplex_lake` using the reference:

    $._ref.google_dataplex_lake.some_id.get('id')

This is the same as directly entering `"${ google_dataplex_lake.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Optional. Description of the lake. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. User-defined labels for the lake. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of the lake.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `metastore` (`list[obj]`): Optional. Settings to manage lake and Dataproc Metastore service instance association. When `null`, the `metastore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.metastore.new](#fn-metastorenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataplex_lake.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_lake`
Terraform resource.

Unlike [google.dataplex_lake.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Optional. Description of the lake. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. User-defined labels for the lake. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of the lake.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `metastore` (`list[obj]`): Optional. Settings to manage lake and Dataproc Metastore service instance association. When `null`, the `metastore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.metastore.new](#fn-metastorenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_lake.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_lake` resource into the root Terraform configuration.


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


### fn withMetastore

```ts
withMetastore()
```

`google.list[obj].withMetastore` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metastore field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetastoreMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metastore` field.


### fn withMetastoreMixin

```ts
withMetastoreMixin()
```

`google.list[obj].withMetastoreMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metastore field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetastore](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metastore` field.


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


## obj metastore



### fn metastore.new

```ts
new()
```


`google.dataplex_lake.metastore.new` constructs a new object with attributes and blocks configured for the `metastore`
Terraform sub block.



**Args**:
  - `service` (`string`): Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: `projects/{project_id}/locations/{location_id}/services/{service_id}` When `null`, the `service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metastore` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataplex_lake.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
