---
permalink: /dialogflow_agent/
---

# dialogflow_agent

`dialogflow_agent` represents the `google_dialogflow_agent` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiVersion()`](#fn-withapiversion)
* [`fn withAvatarUri()`](#fn-withavataruri)
* [`fn withClassificationThreshold()`](#fn-withclassificationthreshold)
* [`fn withDefaultLanguageCode()`](#fn-withdefaultlanguagecode)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableLogging()`](#fn-withenablelogging)
* [`fn withMatchMode()`](#fn-withmatchmode)
* [`fn withProject()`](#fn-withproject)
* [`fn withSupportedLanguageCodes()`](#fn-withsupportedlanguagecodes)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeZone()`](#fn-withtimezone)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_agent.new` injects a new `google_dialogflow_agent` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_agent.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_agent` using the reference:

    $._ref.google_dialogflow_agent.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_agent.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api_version` (`string`): API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
different service endpoints for different API versions. However, bots connectors and webhook calls will follow 
the specified API version.
* API_VERSION_V1: Legacy V1 API.
* API_VERSION_V2: V2 API.
* API_VERSION_V2_BETA_1: V2beta1 API. Possible values: [&#34;API_VERSION_V1&#34;, &#34;API_VERSION_V2&#34;, &#34;API_VERSION_V2_BETA_1&#34;] When `null`, the `api_version` field will be omitted from the resulting object.
  - `avatar_uri` (`string`): The URI of the agent&#39;s avatar, which are used throughout the Dialogflow console. When an image URL is entered
into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
from the API will be shown in the [avatarUriBackend] field. When `null`, the `avatar_uri` field will be omitted from the resulting object.
  - `classification_threshold` (`number`): To filter out false positive results and still get variety in matched natural language inputs for your agent,
you can tune the machine learning classification threshold. If the returned score value is less than the threshold
value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be 
triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the 
default of 0.3 is used. When `null`, the `classification_threshold` field will be omitted from the resulting object.
  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language) 
for a list of the currently supported language codes. This field cannot be updated after creation.
  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The name of this agent.
  - `enable_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `match_mode` (`string`): Determines how intents are detected from user queries.
* MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
syntax and composite entities.
* MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
using @sys.any or very large developer entities. Possible values: [&#34;MATCH_MODE_HYBRID&#34;, &#34;MATCH_MODE_ML_ONLY&#34;] When `null`, the `match_mode` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the defaultLanguageCode). When `null`, the `supported_language_codes` field will be omitted from the resulting object.
  - `tier` (`string`): The agent tier. If not specified, TIER_STANDARD is assumed.
* TIER_STANDARD: Standard tier.
* TIER_ENTERPRISE: Enterprise tier (Essentials).
* TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between 
the Terraform state and Dialogflow if the agent tier is changed outside of Terraform. Possible values: [&#34;TIER_STANDARD&#34;, &#34;TIER_ENTERPRISE&#34;, &#34;TIER_ENTERPRISE_PLUS&#34;] When `null`, the `tier` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_agent.timeouts.new](#fn-dialogflow_agenttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_agent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_agent`
Terraform resource.

Unlike [google.dialogflow_agent.new](#fn-dialogflow_agentnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api_version` (`string`): API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
different service endpoints for different API versions. However, bots connectors and webhook calls will follow 
the specified API version.
* API_VERSION_V1: Legacy V1 API.
* API_VERSION_V2: V2 API.
* API_VERSION_V2_BETA_1: V2beta1 API. Possible values: [&#34;API_VERSION_V1&#34;, &#34;API_VERSION_V2&#34;, &#34;API_VERSION_V2_BETA_1&#34;] When `null`, the `api_version` field will be omitted from the resulting object.
  - `avatar_uri` (`string`): The URI of the agent&#39;s avatar, which are used throughout the Dialogflow console. When an image URL is entered
into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
from the API will be shown in the [avatarUriBackend] field. When `null`, the `avatar_uri` field will be omitted from the resulting object.
  - `classification_threshold` (`number`): To filter out false positive results and still get variety in matched natural language inputs for your agent,
you can tune the machine learning classification threshold. If the returned score value is less than the threshold
value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be 
triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the 
default of 0.3 is used. When `null`, the `classification_threshold` field will be omitted from the resulting object.
  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language) 
for a list of the currently supported language codes. This field cannot be updated after creation.
  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The name of this agent.
  - `enable_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `match_mode` (`string`): Determines how intents are detected from user queries.
* MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
syntax and composite entities.
* MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
using @sys.any or very large developer entities. Possible values: [&#34;MATCH_MODE_HYBRID&#34;, &#34;MATCH_MODE_ML_ONLY&#34;] When `null`, the `match_mode` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the defaultLanguageCode). When `null`, the `supported_language_codes` field will be omitted from the resulting object.
  - `tier` (`string`): The agent tier. If not specified, TIER_STANDARD is assumed.
* TIER_STANDARD: Standard tier.
* TIER_ENTERPRISE: Enterprise tier (Essentials).
* TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between 
the Terraform state and Dialogflow if the agent tier is changed outside of Terraform. Possible values: [&#34;TIER_STANDARD&#34;, &#34;TIER_ENTERPRISE&#34;, &#34;TIER_ENTERPRISE_PLUS&#34;] When `null`, the `tier` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_agent.timeouts.new](#fn-dialogflow_agenttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_agent` resource into the root Terraform configuration.


### fn withApiVersion

```ts
withApiVersion()
```

`google.string.withApiVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_version` field.


### fn withAvatarUri

```ts
withAvatarUri()
```

`google.string.withAvatarUri` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the avatar_uri field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `avatar_uri` field.


### fn withClassificationThreshold

```ts
withClassificationThreshold()
```

`google.number.withClassificationThreshold` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the classification_threshold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `classification_threshold` field.


### fn withDefaultLanguageCode

```ts
withDefaultLanguageCode()
```

`google.string.withDefaultLanguageCode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the default_language_code field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `default_language_code` field.


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


### fn withEnableLogging

```ts
withEnableLogging()
```

`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_logging` field.


### fn withMatchMode

```ts
withMatchMode()
```

`google.string.withMatchMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the match_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `match_mode` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSupportedLanguageCodes

```ts
withSupportedLanguageCodes()
```

`google.list.withSupportedLanguageCodes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the supported_language_codes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `supported_language_codes` field.


### fn withTier

```ts
withTier()
```

`google.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


### fn withTimeZone

```ts
withTimeZone()
```

`google.string.withTimeZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the time_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `time_zone` field.


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


`google.dialogflow_agent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
