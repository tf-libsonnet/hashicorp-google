---
permalink: /data_catalog_tag/
---

# data_catalog_tag

`data_catalog_tag` represents the `google_data_catalog_tag` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withColumn()`](#fn-withcolumn)
* [`fn withFields()`](#fn-withfields)
* [`fn withFieldsMixin()`](#fn-withfieldsmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withTemplate()`](#fn-withtemplate)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj fields`](#obj-fields)
  * [`fn new()`](#fn-fieldsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_catalog_tag.new` injects a new `google_data_catalog_tag` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_catalog_tag.new('some_id')

You can get the reference to the `id` field of the created `google.data_catalog_tag` using the reference:

    $._ref.google_data_catalog_tag.some_id.get('id')

This is the same as directly entering `"${ google_data_catalog_tag.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `column` (`string`): Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
individual column based on that schema.

For attaching a tag to a nested column, use &#39;.&#39; to separate the column names. Example:
&#39;outer_column.inner_column&#39; When `null`, the `column` field will be omitted from the resulting object.
  - `parent` (`string`): The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
all entries in that group. When `null`, the `parent` field will be omitted from the resulting object.
  - `template` (`string`): The resource name of the tag template that this tag uses. Example:
projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
This field cannot be modified after creation.
  - `fields` (`list[obj]`): This maps the ID of a tag field to the value of and additional information about that field.
Valid field IDs are defined by the tag&#39;s template. A tag must have at least 1 field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.fields.new](#fn-datacatalogtagfieldsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.timeouts.new](#fn-datacatalogtagtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_catalog_tag.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_tag`
Terraform resource.

Unlike [google.data_catalog_tag.new](#fn-datacatalogtagnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `column` (`string`): Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
individual column based on that schema.

For attaching a tag to a nested column, use &#39;.&#39; to separate the column names. Example:
&#39;outer_column.inner_column&#39; When `null`, the `column` field will be omitted from the resulting object.
  - `parent` (`string`): The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
all entries in that group. When `null`, the `parent` field will be omitted from the resulting object.
  - `template` (`string`): The resource name of the tag template that this tag uses. Example:
projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
This field cannot be modified after creation.
  - `fields` (`list[obj]`): This maps the ID of a tag field to the value of and additional information about that field.
Valid field IDs are defined by the tag&#39;s template. A tag must have at least 1 field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.fields.new](#fn-datacatalogtagfieldsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag.timeouts.new](#fn-datacatalogtagtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_tag` resource into the root Terraform configuration.


### fn withColumn

```ts
withColumn()
```

`google.string.withColumn` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the column field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `column` field.


### fn withFields

```ts
withFields()
```

`google.list[obj].withFields` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fields field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFieldsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fields` field.


### fn withFieldsMixin

```ts
withFieldsMixin()
```

`google.list[obj].withFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fields field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFields](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fields` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withTemplate

```ts
withTemplate()
```

`google.string.withTemplate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the template field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `template` field.


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


## obj fields



### fn fields.new

```ts
new()
```


`google.data_catalog_tag.fields.new` constructs a new object with attributes and blocks configured for the `fields`
Terraform sub block.



**Args**:
  - `bool_value` (`bool`): Holds the value for a tag field with boolean type. When `null`, the `bool_value` field will be omitted from the resulting object.
  - `double_value` (`number`): Holds the value for a tag field with double type. When `null`, the `double_value` field will be omitted from the resulting object.
  - `enum_value` (`string`): The display name of the enum value. When `null`, the `enum_value` field will be omitted from the resulting object.
  - `field_name` (`string`): 
  - `string_value` (`string`): Holds the value for a tag field with string type. When `null`, the `string_value` field will be omitted from the resulting object.
  - `timestamp_value` (`string`): Holds the value for a tag field with timestamp type. When `null`, the `timestamp_value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fields` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_catalog_tag.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
