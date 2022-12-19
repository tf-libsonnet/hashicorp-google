---
permalink: /data_catalog_tag_template/
---

# data_catalog_tag_template

`data_catalog_tag_template` represents the `google_data_catalog_tag_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withFields()`](#fn-withfields)
* [`fn withFieldsMixin()`](#fn-withfieldsmixin)
* [`fn withForceDelete()`](#fn-withforcedelete)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTagTemplateId()`](#fn-withtagtemplateid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj fields`](#obj-fields)
  * [`fn new()`](#fn-fieldsnew)
  * [`obj fields.type`](#obj-fieldstype)
    * [`fn new()`](#fn-fieldstypenew)
    * [`obj fields.type.enum_type`](#obj-fieldstypeenum_type)
      * [`fn new()`](#fn-fieldstypeenum_typenew)
      * [`obj fields.type.enum_type.allowed_values`](#obj-fieldstypeenum_typeallowed_values)
        * [`fn new()`](#fn-fieldstypeenum_typeallowed_valuesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_catalog_tag_template.new` injects a new `google_data_catalog_tag_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_catalog_tag_template.new('some_id')

You can get the reference to the `id` field of the created `google.data_catalog_tag_template` using the reference:

    $._ref.google_data_catalog_tag_template.some_id.get('id')

This is the same as directly entering `"${ google_data_catalog_tag_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The display name for this template. When `null`, the `display_name` field will be omitted from the resulting object.
  - `force_delete` (`bool`): This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template. When `null`, the `force_delete` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Template location region. When `null`, the `region` field will be omitted from the resulting object.
  - `tag_template_id` (`string`): The id of the tag template to create.
  - `fields` (`list[obj]`): Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.new](#fn-datacatalogtagtemplatefieldsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.timeouts.new](#fn-datacatalogtagtemplatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_catalog_tag_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_tag_template`
Terraform resource.

Unlike [google.data_catalog_tag_template.new](#fn-datacatalogtagtemplatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The display name for this template. When `null`, the `display_name` field will be omitted from the resulting object.
  - `force_delete` (`bool`): This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template. When `null`, the `force_delete` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Template location region. When `null`, the `region` field will be omitted from the resulting object.
  - `tag_template_id` (`string`): The id of the tag template to create.
  - `fields` (`list[obj]`): Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.new](#fn-datacatalogtagtemplatefieldsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.timeouts.new](#fn-datacatalogtagtemplatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_tag_template` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.data_catalog_tag_template.withDisplayName` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withFields

```ts
withFields()
```

`google.data_catalog_tag_template.withFields` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the fields field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `fields` field.


### fn withFieldsMixin

```ts
withFieldsMixin()
```

`google.data_catalog_tag_template.withFieldsMixin` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the fields field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.data_catalog_tag_template.withFields](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `fields` field.


### fn withForceDelete

```ts
withForceDelete()
```

`google.data_catalog_tag_template.withForceDelete` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the force_delete field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `force_delete` field.


### fn withProject

```ts
withProject()
```

`google.data_catalog_tag_template.withProject` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.data_catalog_tag_template.withRegion` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withTagTemplateId

```ts
withTagTemplateId()
```

`google.data_catalog_tag_template.withTagTemplateId` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the tag_template_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `tag_template_id` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.data_catalog_tag_template.withTimeouts` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.data_catalog_tag_template.withTimeoutsMixin` constructs a mixin object that can be merged into the `data_catalog_tag_template`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.data_catalog_tag_template.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj fields



### fn fields.new

```ts
new()
```


`google.data_catalog_tag_template.fields.new` constructs a new object with attributes and blocks configured for the `fields`
Terraform sub block.



**Args**:
  - `description` (`string`): A description for this field. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name for this field. When `null`, the `display_name` field will be omitted from the resulting object.
  - `field_id` (`string`): 
  - `is_required` (`bool`): Whether this is a required field. Defaults to false. When `null`, the `is_required` field will be omitted from the resulting object.
  - `order` (`number`): The order of this field with respect to other fields in this tag template.
A higher value indicates a more important field. The value can be negative.
Multiple fields can have the same order, and field orders within a tag do not have to be sequential. When `null`, the `order` field will be omitted from the resulting object.
  - `type` (`list[obj]`): The type of value this tag field can contain. When `null`, the `type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.type.new](#fn-fieldstypenew) constructor.

**Returns**:
  - An attribute object that represents the `fields` sub block.


## obj fields.type



### fn fields.type.new

```ts
new()
```


`google.data_catalog_tag_template.fields.type.new` constructs a new object with attributes and blocks configured for the `type`
Terraform sub block.



**Args**:
  - `primitive_type` (`string`): Represents primitive types - string, bool etc.
 Exactly one of &#39;primitive_type&#39; or &#39;enum_type&#39; must be set Possible values: [&#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;BOOL&#34;, &#34;TIMESTAMP&#34;] When `null`, the `primitive_type` field will be omitted from the resulting object.
  - `enum_type` (`list[obj]`): Represents an enum type.
 Exactly one of &#39;primitive_type&#39; or &#39;enum_type&#39; must be set When `null`, the `enum_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.type.enum_type.new](#fn-typeenumtypenew) constructor.

**Returns**:
  - An attribute object that represents the `type` sub block.


## obj fields.type.enum_type



### fn fields.type.enum_type.new

```ts
new()
```


`google.data_catalog_tag_template.fields.type.enum_type.new` constructs a new object with attributes and blocks configured for the `enum_type`
Terraform sub block.



**Args**:
  - `allowed_values` (`list[obj]`): The set of allowed values for this enum. The display names of the
values must be case-insensitively unique within this set. Currently,
enum values can only be added to the list of allowed values. Deletion
and renaming of enum values are not supported.
Can have up to 500 allowed values. When `null`, the `allowed_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_tag_template.fields.type.enum_type.allowed_values.new](#fn-enumtypeallowedvaluesnew) constructor.

**Returns**:
  - An attribute object that represents the `enum_type` sub block.


## obj fields.type.enum_type.allowed_values



### fn fields.type.enum_type.allowed_values.new

```ts
new()
```


`google.data_catalog_tag_template.fields.type.enum_type.allowed_values.new` constructs a new object with attributes and blocks configured for the `allowed_values`
Terraform sub block.



**Args**:
  - `display_name` (`string`): The display name of the enum value.

**Returns**:
  - An attribute object that represents the `allowed_values` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_catalog_tag_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
