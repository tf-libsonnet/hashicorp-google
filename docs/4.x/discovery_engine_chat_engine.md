---
permalink: /discovery_engine_chat_engine/
---

# discovery_engine_chat_engine

`discovery_engine_chat_engine` represents the `google_discovery_engine_chat_engine` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withChatEngineConfig()`](#fn-withchatengineconfig)
* [`fn withChatEngineConfigMixin()`](#fn-withchatengineconfigmixin)
* [`fn withCollectionId()`](#fn-withcollectionid)
* [`fn withCommonConfig()`](#fn-withcommonconfig)
* [`fn withCommonConfigMixin()`](#fn-withcommonconfigmixin)
* [`fn withDataStoreIds()`](#fn-withdatastoreids)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEngineId()`](#fn-withengineid)
* [`fn withIndustryVertical()`](#fn-withindustryvertical)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj chat_engine_config`](#obj-chat_engine_config)
  * [`fn new()`](#fn-chat_engine_confignew)
  * [`obj chat_engine_config.agent_creation_config`](#obj-chat_engine_configagent_creation_config)
    * [`fn new()`](#fn-chat_engine_configagent_creation_confignew)
* [`obj common_config`](#obj-common_config)
  * [`fn new()`](#fn-common_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.discovery_engine_chat_engine.new` injects a new `google_discovery_engine_chat_engine` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.discovery_engine_chat_engine.new('some_id')

You can get the reference to the `id` field of the created `google.discovery_engine_chat_engine` using the reference:

    $._ref.google_discovery_engine_chat_engine.some_id.get('id')

This is the same as directly entering `"${ google_discovery_engine_chat_engine.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `collection_id` (`string`): The collection ID.
  - `data_store_ids` (`list`): The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be &#39;SOLUTION_TYPE_CHAT&#39;. Adding or removing data stores will force recreation.
  - `display_name` (`string`): The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  - `engine_id` (`string`): The ID to use for chat engine.
  - `industry_vertical` (`string`): The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine. Default value: &#34;GENERIC&#34; Possible values: [&#34;GENERIC&#34;] When `null`, the `industry_vertical` field will be omitted from the resulting object.
  - `location` (`string`): Location.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `chat_engine_config` (`list[obj]`): Configurations for a chat Engine. When `null`, the `chat_engine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.chat_engine_config.new](#fn-chat_engine_confignew) constructor.
  - `common_config` (`list[obj]`): Common config spec that specifies the metadata of the engine. When `null`, the `common_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.common_config.new](#fn-common_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.discovery_engine_chat_engine.newAttrs` constructs a new object with attributes and blocks configured for the `discovery_engine_chat_engine`
Terraform resource.

Unlike [google.discovery_engine_chat_engine.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `collection_id` (`string`): The collection ID.
  - `data_store_ids` (`list`): The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be &#39;SOLUTION_TYPE_CHAT&#39;. Adding or removing data stores will force recreation.
  - `display_name` (`string`): The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  - `engine_id` (`string`): The ID to use for chat engine.
  - `industry_vertical` (`string`): The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine. Default value: &#34;GENERIC&#34; Possible values: [&#34;GENERIC&#34;] When `null`, the `industry_vertical` field will be omitted from the resulting object.
  - `location` (`string`): Location.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `chat_engine_config` (`list[obj]`): Configurations for a chat Engine. When `null`, the `chat_engine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.chat_engine_config.new](#fn-chat_engine_confignew) constructor.
  - `common_config` (`list[obj]`): Common config spec that specifies the metadata of the engine. When `null`, the `common_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.common_config.new](#fn-common_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `discovery_engine_chat_engine` resource into the root Terraform configuration.


### fn withChatEngineConfig

```ts
withChatEngineConfig()
```

`google.list[obj].withChatEngineConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the chat_engine_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withChatEngineConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `chat_engine_config` field.


### fn withChatEngineConfigMixin

```ts
withChatEngineConfigMixin()
```

`google.list[obj].withChatEngineConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the chat_engine_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withChatEngineConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `chat_engine_config` field.


### fn withCollectionId

```ts
withCollectionId()
```

`google.string.withCollectionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the collection_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `collection_id` field.


### fn withCommonConfig

```ts
withCommonConfig()
```

`google.list[obj].withCommonConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the common_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCommonConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `common_config` field.


### fn withCommonConfigMixin

```ts
withCommonConfigMixin()
```

`google.list[obj].withCommonConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the common_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCommonConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `common_config` field.


### fn withDataStoreIds

```ts
withDataStoreIds()
```

`google.list.withDataStoreIds` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the data_store_ids field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `data_store_ids` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEngineId

```ts
withEngineId()
```

`google.string.withEngineId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the engine_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `engine_id` field.


### fn withIndustryVertical

```ts
withIndustryVertical()
```

`google.string.withIndustryVertical` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the industry_vertical field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `industry_vertical` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


## obj chat_engine_config



### fn chat_engine_config.new

```ts
new()
```


`google.discovery_engine_chat_engine.chat_engine_config.new` constructs a new object with attributes and blocks configured for the `chat_engine_config`
Terraform sub block.



**Args**:
  - `agent_creation_config` (`list[obj]`): The configuration to generate the Dialogflow agent that is associated to this Engine. When `null`, the `agent_creation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.chat_engine_config.agent_creation_config.new](#fn-chat_engine_configagent_creation_confignew) constructor.

**Returns**:
  - An attribute object that represents the `chat_engine_config` sub block.


## obj chat_engine_config.agent_creation_config



### fn chat_engine_config.agent_creation_config.new

```ts
new()
```


`google.discovery_engine_chat_engine.chat_engine_config.agent_creation_config.new` constructs a new object with attributes and blocks configured for the `agent_creation_config`
Terraform sub block.



**Args**:
  - `business` (`string`): Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search. When `null`, the `business` field will be omitted from the resulting object.
  - `default_language_code` (`string`): The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  - `location` (`string`): Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine. When `null`, the `location` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.

**Returns**:
  - An attribute object that represents the `agent_creation_config` sub block.


## obj common_config



### fn common_config.new

```ts
new()
```


`google.discovery_engine_chat_engine.common_config.new` constructs a new object with attributes and blocks configured for the `common_config`
Terraform sub block.



**Args**:
  - `company_name` (`string`): The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features. When `null`, the `company_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `common_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.discovery_engine_chat_engine.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
