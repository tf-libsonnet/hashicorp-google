---
permalink: /dialogflow_entity_type/
---

# dialogflow_entity_type

`dialogflow_entity_type` represents the `google_dialogflow_entity_type` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableFuzzyExtraction()`](#fn-withenablefuzzyextraction)
* [`fn withEntities()`](#fn-withentities)
* [`fn withEntitiesMixin()`](#fn-withentitiesmixin)
* [`fn withKind()`](#fn-withkind)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj entities`](#obj-entities)
  * [`fn new()`](#fn-entitiesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_entity_type.new` injects a new `google_dialogflow_entity_type` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_entity_type.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_entity_type` using the reference:

    $._ref.google_dialogflow_entity_type.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_entity_type.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The name of this entity type to be displayed on the console.
  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.
  - `kind` (`string`): Indicates the kind of entity type.
* KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
* KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
types can contain references to other entity types (with or without aliases).
* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [&#34;KIND_MAP&#34;, &#34;KIND_LIST&#34;, &#34;KIND_REGEXP&#34;]
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.entities.new](#fn-entitiesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_entity_type.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_entity_type`
Terraform resource.

Unlike [google.dialogflow_entity_type.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The name of this entity type to be displayed on the console.
  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.
  - `kind` (`string`): Indicates the kind of entity type.
* KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
* KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
types can contain references to other entity types (with or without aliases).
* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [&#34;KIND_MAP&#34;, &#34;KIND_LIST&#34;, &#34;KIND_REGEXP&#34;]
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.entities.new](#fn-entitiesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_entity_type` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnableFuzzyExtraction

```ts
withEnableFuzzyExtraction()
```

`google.bool.withEnableFuzzyExtraction` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_fuzzy_extraction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_fuzzy_extraction` field.


### fn withEntities

```ts
withEntities()
```

`google.list[obj].withEntities` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the entities field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEntitiesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `entities` field.


### fn withEntitiesMixin

```ts
withEntitiesMixin()
```

`google.list[obj].withEntitiesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the entities field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEntities](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `entities` field.


### fn withKind

```ts
withKind()
```

`google.string.withKind` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kind field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kind` field.


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


## obj entities



### fn entities.new

```ts
new()
```


`google.dialogflow_entity_type.entities.new` constructs a new object with attributes and blocks configured for the `entities`
Terraform sub block.



**Args**:
  - `synonyms` (`list`): A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym
could be green onions.
For KIND_LIST entity types:
* This collection must contain exactly one synonym equal to value.
  - `value` (`string`): The primary value associated with this entity entry. For example, if the entity type is vegetable, the value
could be scallions.
For KIND_MAP entity types:
* A reference value to be used in place of synonyms.
For KIND_LIST entity types:
* A string that can contain references to other entity types (with or without aliases).

**Returns**:
  - An attribute object that represents the `entities` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_entity_type.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
