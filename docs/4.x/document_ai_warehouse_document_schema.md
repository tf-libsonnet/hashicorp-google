---
permalink: /document_ai_warehouse_document_schema/
---

# document_ai_warehouse_document_schema

`document_ai_warehouse_document_schema` represents the `google_document_ai_warehouse_document_schema` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withDocumentIsFolder()`](#fn-withdocumentisfolder)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProjectNumber()`](#fn-withprojectnumber)
* [`fn withPropertyDefinitions()`](#fn-withpropertydefinitions)
* [`fn withPropertyDefinitionsMixin()`](#fn-withpropertydefinitionsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj property_definitions`](#obj-property_definitions)
  * [`fn new()`](#fn-property_definitionsnew)
  * [`obj property_definitions.date_time_type_options`](#obj-property_definitionsdate_time_type_options)
    * [`fn new()`](#fn-property_definitionsdate_time_type_optionsnew)
  * [`obj property_definitions.enum_type_options`](#obj-property_definitionsenum_type_options)
    * [`fn new()`](#fn-property_definitionsenum_type_optionsnew)
  * [`obj property_definitions.float_type_options`](#obj-property_definitionsfloat_type_options)
    * [`fn new()`](#fn-property_definitionsfloat_type_optionsnew)
  * [`obj property_definitions.integer_type_options`](#obj-property_definitionsinteger_type_options)
    * [`fn new()`](#fn-property_definitionsinteger_type_optionsnew)
  * [`obj property_definitions.map_type_options`](#obj-property_definitionsmap_type_options)
    * [`fn new()`](#fn-property_definitionsmap_type_optionsnew)
  * [`obj property_definitions.property_type_options`](#obj-property_definitionsproperty_type_options)
    * [`fn new()`](#fn-property_definitionsproperty_type_optionsnew)
    * [`obj property_definitions.property_type_options.property_definitions`](#obj-property_definitionsproperty_type_optionsproperty_definitions)
      * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.date_time_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionsdate_time_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsdate_time_type_optionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.enum_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionsenum_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsenum_type_optionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.float_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionsfloat_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsfloat_type_optionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.integer_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionsinteger_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsinteger_type_optionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.map_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionsmap_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsmap_type_optionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.schema_sources`](#obj-property_definitionsproperty_type_optionsproperty_definitionsschema_sources)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionsschema_sourcesnew)
      * [`obj property_definitions.property_type_options.property_definitions.text_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionstext_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionstext_type_optionsnew)
      * [`obj property_definitions.property_type_options.property_definitions.timestamp_type_options`](#obj-property_definitionsproperty_type_optionsproperty_definitionstimestamp_type_options)
        * [`fn new()`](#fn-property_definitionsproperty_type_optionsproperty_definitionstimestamp_type_optionsnew)
  * [`obj property_definitions.schema_sources`](#obj-property_definitionsschema_sources)
    * [`fn new()`](#fn-property_definitionsschema_sourcesnew)
  * [`obj property_definitions.text_type_options`](#obj-property_definitionstext_type_options)
    * [`fn new()`](#fn-property_definitionstext_type_optionsnew)
  * [`obj property_definitions.timestamp_type_options`](#obj-property_definitionstimestamp_type_options)
    * [`fn new()`](#fn-property_definitionstimestamp_type_optionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.document_ai_warehouse_document_schema.new` injects a new `google_document_ai_warehouse_document_schema` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.document_ai_warehouse_document_schema.new('some_id')

You can get the reference to the `id` field of the created `google.document_ai_warehouse_document_schema` using the reference:

    $._ref.google_document_ai_warehouse_document_schema.some_id.get('id')

This is the same as directly entering `"${ google_document_ai_warehouse_document_schema.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Name of the schema given by the user.
  - `document_is_folder` (`bool`): Tells whether the document is a folder or a typical document. When `null`, the `document_is_folder` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `project_number` (`string`): The unique identifier of the project.
  - `property_definitions` (`list[obj]`): Defines the metadata for a schema property. When `null`, the `property_definitions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.new](#fn-property_definitionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.document_ai_warehouse_document_schema.newAttrs` constructs a new object with attributes and blocks configured for the `document_ai_warehouse_document_schema`
Terraform resource.

Unlike [google.document_ai_warehouse_document_schema.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Name of the schema given by the user.
  - `document_is_folder` (`bool`): Tells whether the document is a folder or a typical document. When `null`, the `document_is_folder` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `project_number` (`string`): The unique identifier of the project.
  - `property_definitions` (`list[obj]`): Defines the metadata for a schema property. When `null`, the `property_definitions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.new](#fn-property_definitionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `document_ai_warehouse_document_schema` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withDocumentIsFolder

```ts
withDocumentIsFolder()
```

`google.bool.withDocumentIsFolder` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the document_is_folder field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `document_is_folder` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProjectNumber

```ts
withProjectNumber()
```

`google.string.withProjectNumber` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_number field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_number` field.


### fn withPropertyDefinitions

```ts
withPropertyDefinitions()
```

`google.list[obj].withPropertyDefinitions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the property_definitions field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPropertyDefinitionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `property_definitions` field.


### fn withPropertyDefinitionsMixin

```ts
withPropertyDefinitionsMixin()
```

`google.list[obj].withPropertyDefinitionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the property_definitions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPropertyDefinitions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `property_definitions` field.


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


## obj property_definitions



### fn property_definitions.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.new` constructs a new object with attributes and blocks configured for the `property_definitions`
Terraform sub block.



**Args**:
  - `display_name` (`string`): The display-name for the property, used for front-end. When `null`, the `display_name` field will be omitted from the resulting object.
  - `is_filterable` (`bool`): Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable. When `null`, the `is_filterable` field will be omitted from the resulting object.
  - `is_metadata` (`bool`): Whether the property is user supplied metadata. When `null`, the `is_metadata` field will be omitted from the resulting object.
  - `is_repeatable` (`bool`): Whether the property can have multiple values. When `null`, the `is_repeatable` field will be omitted from the resulting object.
  - `is_required` (`bool`): Whether the property is mandatory. When `null`, the `is_required` field will be omitted from the resulting object.
  - `is_searchable` (`bool`): Indicates that the property should be included in a global search. When `null`, the `is_searchable` field will be omitted from the resulting object.
  - `name` (`string`): The name of the metadata property.
  - `retrieval_importance` (`string`): Stores the retrieval importance. Possible values: [&#34;HIGHEST&#34;, &#34;HIGHER&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;, &#34;LOWEST&#34;] When `null`, the `retrieval_importance` field will be omitted from the resulting object.
  - `date_time_type_options` (`list[obj]`): Date time property. Not supported by CMEK compliant deployment. When `null`, the `date_time_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.date_time_type_options.new](#fn-property_definitionsdate_time_type_optionsnew) constructor.
  - `enum_type_options` (`list[obj]`): Enum/categorical property. When `null`, the `enum_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.enum_type_options.new](#fn-property_definitionsenum_type_optionsnew) constructor.
  - `float_type_options` (`list[obj]`): Float property. When `null`, the `float_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.float_type_options.new](#fn-property_definitionsfloat_type_optionsnew) constructor.
  - `integer_type_options` (`list[obj]`): Integer property. When `null`, the `integer_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.integer_type_options.new](#fn-property_definitionsinteger_type_optionsnew) constructor.
  - `map_type_options` (`list[obj]`): Map property. When `null`, the `map_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.map_type_options.new](#fn-property_definitionsmap_type_optionsnew) constructor.
  - `property_type_options` (`list[obj]`): Nested structured data property. When `null`, the `property_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.new](#fn-property_definitionsproperty_type_optionsnew) constructor.
  - `schema_sources` (`list[obj]`): The schema source information. When `null`, the `schema_sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.schema_sources.new](#fn-property_definitionsschema_sourcesnew) constructor.
  - `text_type_options` (`list[obj]`): Text/string property. When `null`, the `text_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.text_type_options.new](#fn-property_definitionstext_type_optionsnew) constructor.
  - `timestamp_type_options` (`list[obj]`): Timestamp property. Not supported by CMEK compliant deployment. When `null`, the `timestamp_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.timestamp_type_options.new](#fn-property_definitionstimestamp_type_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `property_definitions` sub block.


## obj property_definitions.date_time_type_options



### fn property_definitions.date_time_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.date_time_type_options.new` constructs a new object with attributes and blocks configured for the `date_time_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `date_time_type_options` sub block.


## obj property_definitions.enum_type_options



### fn property_definitions.enum_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.enum_type_options.new` constructs a new object with attributes and blocks configured for the `enum_type_options`
Terraform sub block.



**Args**:
  - `possible_values` (`list`): List of possible enum values.
  - `validation_check_disabled` (`bool`): Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default. When `null`, the `validation_check_disabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `enum_type_options` sub block.


## obj property_definitions.float_type_options



### fn property_definitions.float_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.float_type_options.new` constructs a new object with attributes and blocks configured for the `float_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `float_type_options` sub block.


## obj property_definitions.integer_type_options



### fn property_definitions.integer_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.integer_type_options.new` constructs a new object with attributes and blocks configured for the `integer_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `integer_type_options` sub block.


## obj property_definitions.map_type_options



### fn property_definitions.map_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.map_type_options.new` constructs a new object with attributes and blocks configured for the `map_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `map_type_options` sub block.


## obj property_definitions.property_type_options



### fn property_definitions.property_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.new` constructs a new object with attributes and blocks configured for the `property_type_options`
Terraform sub block.



**Args**:
  - `property_definitions` (`list[obj]`): Defines the metadata for a schema property. When `null`, the `property_definitions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.new](#fn-property_definitionsproperty_definitionsproperty_definitionsnew) constructor.

**Returns**:
  - An attribute object that represents the `property_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions



### fn property_definitions.property_type_options.property_definitions.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.new` constructs a new object with attributes and blocks configured for the `property_definitions`
Terraform sub block.



**Args**:
  - `display_name` (`string`): The display-name for the property, used for front-end. When `null`, the `display_name` field will be omitted from the resulting object.
  - `is_filterable` (`bool`): Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable. When `null`, the `is_filterable` field will be omitted from the resulting object.
  - `is_metadata` (`bool`): Whether the property is user supplied metadata. When `null`, the `is_metadata` field will be omitted from the resulting object.
  - `is_repeatable` (`bool`): Whether the property can have multiple values. When `null`, the `is_repeatable` field will be omitted from the resulting object.
  - `is_required` (`bool`): Whether the property is mandatory. When `null`, the `is_required` field will be omitted from the resulting object.
  - `is_searchable` (`bool`): Indicates that the property should be included in a global search. When `null`, the `is_searchable` field will be omitted from the resulting object.
  - `name` (`string`): The name of the metadata property.
  - `retrieval_importance` (`string`): Stores the retrieval importance. Possible values: [&#34;HIGHEST&#34;, &#34;HIGHER&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;, &#34;LOWEST&#34;] When `null`, the `retrieval_importance` field will be omitted from the resulting object.
  - `date_time_type_options` (`list[obj]`): Date time property. Not supported by CMEK compliant deployment. When `null`, the `date_time_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.date_time_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsdate_time_type_optionsnew) constructor.
  - `enum_type_options` (`list[obj]`): Enum/categorical property. When `null`, the `enum_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.enum_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsenum_type_optionsnew) constructor.
  - `float_type_options` (`list[obj]`): Float property. When `null`, the `float_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.float_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsfloat_type_optionsnew) constructor.
  - `integer_type_options` (`list[obj]`): Integer property. When `null`, the `integer_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.integer_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsinteger_type_optionsnew) constructor.
  - `map_type_options` (`list[obj]`): Map property. When `null`, the `map_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.map_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsmap_type_optionsnew) constructor.
  - `schema_sources` (`list[obj]`): The schema source information. When `null`, the `schema_sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.schema_sources.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsschema_sourcesnew) constructor.
  - `text_type_options` (`list[obj]`): Text property. When `null`, the `text_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.text_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionstext_type_optionsnew) constructor.
  - `timestamp_type_options` (`list[obj]`): Timestamp property. Not supported by CMEK compliant deployment. When `null`, the `timestamp_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.timestamp_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionstimestamp_type_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `property_definitions` sub block.


## obj property_definitions.property_type_options.property_definitions.date_time_type_options



### fn property_definitions.property_type_options.property_definitions.date_time_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.date_time_type_options.new` constructs a new object with attributes and blocks configured for the `date_time_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `date_time_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions.enum_type_options



### fn property_definitions.property_type_options.property_definitions.enum_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.enum_type_options.new` constructs a new object with attributes and blocks configured for the `enum_type_options`
Terraform sub block.



**Args**:
  - `possible_values` (`list`): List of possible enum values.
  - `validation_check_disabled` (`bool`): Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default. When `null`, the `validation_check_disabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `enum_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions.float_type_options



### fn property_definitions.property_type_options.property_definitions.float_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.float_type_options.new` constructs a new object with attributes and blocks configured for the `float_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `float_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions.integer_type_options



### fn property_definitions.property_type_options.property_definitions.integer_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.integer_type_options.new` constructs a new object with attributes and blocks configured for the `integer_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `integer_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions.map_type_options



### fn property_definitions.property_type_options.property_definitions.map_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.map_type_options.new` constructs a new object with attributes and blocks configured for the `map_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `map_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions.schema_sources



### fn property_definitions.property_type_options.property_definitions.schema_sources.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.schema_sources.new` constructs a new object with attributes and blocks configured for the `schema_sources`
Terraform sub block.



**Args**:
  - `name` (`string`): The schema name in the source. When `null`, the `name` field will be omitted from the resulting object.
  - `processor_type` (`string`): The Doc AI processor type name. When `null`, the `processor_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schema_sources` sub block.


## obj property_definitions.property_type_options.property_definitions.text_type_options



### fn property_definitions.property_type_options.property_definitions.text_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.text_type_options.new` constructs a new object with attributes and blocks configured for the `text_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `text_type_options` sub block.


## obj property_definitions.property_type_options.property_definitions.timestamp_type_options



### fn property_definitions.property_type_options.property_definitions.timestamp_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.timestamp_type_options.new` constructs a new object with attributes and blocks configured for the `timestamp_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `timestamp_type_options` sub block.


## obj property_definitions.schema_sources



### fn property_definitions.schema_sources.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.schema_sources.new` constructs a new object with attributes and blocks configured for the `schema_sources`
Terraform sub block.



**Args**:
  - `name` (`string`): The schema name in the source. When `null`, the `name` field will be omitted from the resulting object.
  - `processor_type` (`string`): The Doc AI processor type name. When `null`, the `processor_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schema_sources` sub block.


## obj property_definitions.text_type_options



### fn property_definitions.text_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.text_type_options.new` constructs a new object with attributes and blocks configured for the `text_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `text_type_options` sub block.


## obj property_definitions.timestamp_type_options



### fn property_definitions.timestamp_type_options.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.property_definitions.timestamp_type_options.new` constructs a new object with attributes and blocks configured for the `timestamp_type_options`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `timestamp_type_options` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.document_ai_warehouse_document_schema.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
