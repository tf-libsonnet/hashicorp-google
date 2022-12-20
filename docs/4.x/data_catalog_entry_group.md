---
permalink: /data_catalog_entry_group/
---

# data_catalog_entry_group

`data_catalog_entry_group` represents the `google_data_catalog_entry_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEntryGroupId()`](#fn-withentrygroupid)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_catalog_entry_group.new` injects a new `google_data_catalog_entry_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_catalog_entry_group.new('some_id')

You can get the reference to the `id` field of the created `google.data_catalog_entry_group` using the reference:

    $._ref.google_data_catalog_entry_group.some_id.get('id')

This is the same as directly entering `"${ google_data_catalog_entry_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): A short name to identify the entry group, for example, &#34;analytics data - jan 2011&#34;. When `null`, the `display_name` field will be omitted from the resulting object.
  - `entry_group_id` (`string`): The id of the entry group to create. The id must begin with a letter or underscore,
contain only English letters, numbers and underscores, and be at most 64 characters.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): EntryGroup location region. When `null`, the `region` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry_group.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_catalog_entry_group.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_entry_group`
Terraform resource.

Unlike [google.data_catalog_entry_group.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): A short name to identify the entry group, for example, &#34;analytics data - jan 2011&#34;. When `null`, the `display_name` field will be omitted from the resulting object.
  - `entry_group_id` (`string`): The id of the entry group to create. The id must begin with a letter or underscore,
contain only English letters, numbers and underscores, and be at most 64 characters.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): EntryGroup location region. When `null`, the `region` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry_group.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_entry_group` resource into the root Terraform configuration.


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


### fn withEntryGroupId

```ts
withEntryGroupId()
```

`google.string.withEntryGroupId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the entry_group_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `entry_group_id` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_catalog_entry_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
