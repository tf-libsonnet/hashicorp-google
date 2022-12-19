---
permalink: /dialogflow_cx_entity_type/
---

# dialogflow_cx_entity_type

`dialogflow_cx_entity_type` represents the `google_dialogflow_cx_entity_type` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoExpansionMode()`](#fn-withautoexpansionmode)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableFuzzyExtraction()`](#fn-withenablefuzzyextraction)
* [`fn withEntities()`](#fn-withentities)
* [`fn withEntitiesMixin()`](#fn-withentitiesmixin)
* [`fn withExcludedPhrases()`](#fn-withexcludedphrases)
* [`fn withExcludedPhrasesMixin()`](#fn-withexcludedphrasesmixin)
* [`fn withKind()`](#fn-withkind)
* [`fn withLanguageCode()`](#fn-withlanguagecode)
* [`fn withParent()`](#fn-withparent)
* [`fn withRedact()`](#fn-withredact)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj entities`](#obj-entities)
  * [`fn new()`](#fn-entitiesnew)
* [`obj excluded_phrases`](#obj-excluded_phrases)
  * [`fn new()`](#fn-excluded_phrasesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_entity_type.new` injects a new `google_dialogflow_cx_entity_type` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_entity_type.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_entity_type` using the reference:

    $._ref.google_dialogflow_cx_entity_type.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_entity_type.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `auto_expansion_mode` (`string`): Represents kinds of entities.
* AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
* AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity. Possible values: [&#34;AUTO_EXPANSION_MODE_DEFAULT&#34;, &#34;AUTO_EXPANSION_MODE_UNSPECIFIED&#34;] When `null`, the `auto_expansion_mode` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the entity type, unique within the agent.
  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.
  - `kind` (`string`): Indicates whether the entity type can be automatically expanded.
* KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
* KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [&#34;KIND_MAP&#34;, &#34;KIND_LIST&#34;, &#34;KIND_REGEXP&#34;]
  - `language_code` (`string`): The language of the following fields in entityType:
EntityType.entities.value
EntityType.entities.synonyms
EntityType.excluded_phrases.value
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create a entity type for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `redact` (`bool`): Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging. When `null`, the `redact` field will be omitted from the resulting object.
  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.entities.new](#fn-dialogflow_cx_entity_typeentitiesnew) constructor.
  - `excluded_phrases` (`list[obj]`): Collection of exceptional words and phrases that shouldn&#39;t be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive. When `null`, the `excluded_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.excluded_phrases.new](#fn-dialogflow_cx_entity_typeexcluded_phrasesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.timeouts.new](#fn-dialogflow_cx_entity_typetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_entity_type.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_entity_type`
Terraform resource.

Unlike [google.dialogflow_cx_entity_type.new](#fn-dialogflow_cx_entity_typenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `auto_expansion_mode` (`string`): Represents kinds of entities.
* AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
* AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity. Possible values: [&#34;AUTO_EXPANSION_MODE_DEFAULT&#34;, &#34;AUTO_EXPANSION_MODE_UNSPECIFIED&#34;] When `null`, the `auto_expansion_mode` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the entity type, unique within the agent.
  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.
  - `kind` (`string`): Indicates whether the entity type can be automatically expanded.
* KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
* KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [&#34;KIND_MAP&#34;, &#34;KIND_LIST&#34;, &#34;KIND_REGEXP&#34;]
  - `language_code` (`string`): The language of the following fields in entityType:
EntityType.entities.value
EntityType.entities.synonyms
EntityType.excluded_phrases.value
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create a entity type for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `redact` (`bool`): Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging. When `null`, the `redact` field will be omitted from the resulting object.
  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.entities.new](#fn-dialogflow_cx_entity_typeentitiesnew) constructor.
  - `excluded_phrases` (`list[obj]`): Collection of exceptional words and phrases that shouldn&#39;t be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive. When `null`, the `excluded_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.excluded_phrases.new](#fn-dialogflow_cx_entity_typeexcluded_phrasesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.timeouts.new](#fn-dialogflow_cx_entity_typetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_entity_type` resource into the root Terraform configuration.


### fn withAutoExpansionMode

```ts
withAutoExpansionMode()
```

`google.string.withAutoExpansionMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the auto_expansion_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `auto_expansion_mode` field.


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


### fn withExcludedPhrases

```ts
withExcludedPhrases()
```

`google.list[obj].withExcludedPhrases` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the excluded_phrases field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExcludedPhrasesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `excluded_phrases` field.


### fn withExcludedPhrasesMixin

```ts
withExcludedPhrasesMixin()
```

`google.list[obj].withExcludedPhrasesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the excluded_phrases field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExcludedPhrases](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `excluded_phrases` field.


### fn withKind

```ts
withKind()
```

`google.string.withKind` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kind field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kind` field.


### fn withLanguageCode

```ts
withLanguageCode()
```

`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the language_code field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `language_code` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withRedact

```ts
withRedact()
```

`google.bool.withRedact` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the redact field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `redact` field.


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


`google.dialogflow_cx_entity_type.entities.new` constructs a new object with attributes and blocks configured for the `entities`
Terraform sub block.



**Args**:
  - `synonyms` (`list`): A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym could be green onions.
For KIND_LIST entity types: This collection must contain exactly one synonym equal to value. When `null`, the `synonyms` field will be omitted from the resulting object.
  - `value` (`string`): The primary value associated with this entity entry. For example, if the entity type is vegetable, the value could be scallions.
For KIND_MAP entity types: A canonical value to be used in place of synonyms.
For KIND_LIST entity types: A string that can contain references to other entity types (with or without aliases). When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `entities` sub block.


## obj excluded_phrases



### fn excluded_phrases.new

```ts
new()
```


`google.dialogflow_cx_entity_type.excluded_phrases.new` constructs a new object with attributes and blocks configured for the `excluded_phrases`
Terraform sub block.



**Args**:
  - `value` (`string`): The word or phrase to be excluded. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `excluded_phrases` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_entity_type.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
