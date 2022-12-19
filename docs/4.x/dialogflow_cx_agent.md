---
permalink: /dialogflow_cx_agent/
---

# dialogflow_cx_agent

`dialogflow_cx_agent` represents the `google_dialogflow_cx_agent` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAvatarUri()`](#fn-withavataruri)
* [`fn withDefaultLanguageCode()`](#fn-withdefaultlanguagecode)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableSpellCorrection()`](#fn-withenablespellcorrection)
* [`fn withEnableStackdriverLogging()`](#fn-withenablestackdriverlogging)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withSecuritySettings()`](#fn-withsecuritysettings)
* [`fn withSpeechToTextSettings()`](#fn-withspeechtotextsettings)
* [`fn withSpeechToTextSettingsMixin()`](#fn-withspeechtotextsettingsmixin)
* [`fn withSupportedLanguageCodes()`](#fn-withsupportedlanguagecodes)
* [`fn withTimeZone()`](#fn-withtimezone)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj speech_to_text_settings`](#obj-speech_to_text_settings)
  * [`fn new()`](#fn-speech_to_text_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_agent.new` injects a new `google_dialogflow_cx_agent` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_agent.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_agent` using the reference:

    $._ref.google_dialogflow_cx_agent.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_agent.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `avatar_uri` (`string`): The URI of the agent&#39;s avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration. When `null`, the `avatar_uri` field will be omitted from the resulting object.
  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
for a list of the currently supported language codes. This field cannot be updated after creation.
  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the agent, unique within the location.
  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.
  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this agent is located in.

~&gt; **Note:** The first time you are deploying an Agent in your project you must configure location settings.
 This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
 Another options is to use global location so you don&#39;t need to manually configure location settings.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.
  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the default_language_code). When `null`, the `supported_language_codes` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris.
  - `speech_to_text_settings` (`list[obj]`): Settings related to speech recognition. When `null`, the `speech_to_text_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.speech_to_text_settings.new](#fn-dialogflowcxagentspeechtotextsettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.timeouts.new](#fn-dialogflowcxagenttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_agent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_agent`
Terraform resource.

Unlike [google.dialogflow_cx_agent.new](#fn-dialogflowcxagentnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `avatar_uri` (`string`): The URI of the agent&#39;s avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration. When `null`, the `avatar_uri` field will be omitted from the resulting object.
  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
for a list of the currently supported language codes. This field cannot be updated after creation.
  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the agent, unique within the location.
  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.
  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this agent is located in.

~&gt; **Note:** The first time you are deploying an Agent in your project you must configure location settings.
 This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
 Another options is to use global location so you don&#39;t need to manually configure location settings.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.
  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the default_language_code). When `null`, the `supported_language_codes` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris.
  - `speech_to_text_settings` (`list[obj]`): Settings related to speech recognition. When `null`, the `speech_to_text_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.speech_to_text_settings.new](#fn-dialogflowcxagentspeechtotextsettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.timeouts.new](#fn-dialogflowcxagenttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_agent` resource into the root Terraform configuration.


### fn withAvatarUri

```ts
withAvatarUri()
```

`google.dialogflow_cx_agent.withAvatarUri` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the avatar_uri field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `avatar_uri` field.


### fn withDefaultLanguageCode

```ts
withDefaultLanguageCode()
```

`google.dialogflow_cx_agent.withDefaultLanguageCode` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the default_language_code field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `default_language_code` field.


### fn withDescription

```ts
withDescription()
```

`google.dialogflow_cx_agent.withDescription` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.dialogflow_cx_agent.withDisplayName` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withEnableSpellCorrection

```ts
withEnableSpellCorrection()
```

`google.dialogflow_cx_agent.withEnableSpellCorrection` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the enable_spell_correction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `enable_spell_correction` field.


### fn withEnableStackdriverLogging

```ts
withEnableStackdriverLogging()
```

`google.dialogflow_cx_agent.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the enable_stackdriver_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `enable_stackdriver_logging` field.


### fn withLocation

```ts
withLocation()
```

`google.dialogflow_cx_agent.withLocation` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.dialogflow_cx_agent.withProject` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withSecuritySettings

```ts
withSecuritySettings()
```

`google.dialogflow_cx_agent.withSecuritySettings` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the security_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `security_settings` field.


### fn withSpeechToTextSettings

```ts
withSpeechToTextSettings()
```

`google.dialogflow_cx_agent.withSpeechToTextSettings` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the speech_to_text_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `speech_to_text_settings` field.


### fn withSpeechToTextSettingsMixin

```ts
withSpeechToTextSettingsMixin()
```

`google.dialogflow_cx_agent.withSpeechToTextSettingsMixin` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the speech_to_text_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.dialogflow_cx_agent.withSpeechToTextSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `speech_to_text_settings` field.


### fn withSupportedLanguageCodes

```ts
withSupportedLanguageCodes()
```

`google.dialogflow_cx_agent.withSupportedLanguageCodes` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the supported_language_codes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `supported_language_codes` field.


### fn withTimeZone

```ts
withTimeZone()
```

`google.dialogflow_cx_agent.withTimeZone` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the time_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `time_zone` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.dialogflow_cx_agent.withTimeouts` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.dialogflow_cx_agent.withTimeoutsMixin` constructs a mixin object that can be merged into the `dialogflow_cx_agent`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.dialogflow_cx_agent.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj speech_to_text_settings



### fn speech_to_text_settings.new

```ts
new()
```


`google.dialogflow_cx_agent.speech_to_text_settings.new` constructs a new object with attributes and blocks configured for the `speech_to_text_settings`
Terraform sub block.



**Args**:
  - `enable_speech_adaptation` (`bool`): Whether to use speech adaptation for speech recognition. When `null`, the `enable_speech_adaptation` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `speech_to_text_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_agent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
