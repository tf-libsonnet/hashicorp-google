---
permalink: /dialogflow_cx_agent/
---

# dialogflow_cx_agent

`dialogflow_cx_agent` represents the `google_dialogflow_cx_agent` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdvancedSettings()`](#fn-withadvancedsettings)
* [`fn withAdvancedSettingsMixin()`](#fn-withadvancedsettingsmixin)
* [`fn withAvatarUri()`](#fn-withavataruri)
* [`fn withDefaultLanguageCode()`](#fn-withdefaultlanguagecode)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableSpellCorrection()`](#fn-withenablespellcorrection)
* [`fn withEnableStackdriverLogging()`](#fn-withenablestackdriverlogging)
* [`fn withGitIntegrationSettings()`](#fn-withgitintegrationsettings)
* [`fn withGitIntegrationSettingsMixin()`](#fn-withgitintegrationsettingsmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withSecuritySettings()`](#fn-withsecuritysettings)
* [`fn withSpeechToTextSettings()`](#fn-withspeechtotextsettings)
* [`fn withSpeechToTextSettingsMixin()`](#fn-withspeechtotextsettingsmixin)
* [`fn withSupportedLanguageCodes()`](#fn-withsupportedlanguagecodes)
* [`fn withTextToSpeechSettings()`](#fn-withtexttospeechsettings)
* [`fn withTextToSpeechSettingsMixin()`](#fn-withtexttospeechsettingsmixin)
* [`fn withTimeZone()`](#fn-withtimezone)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj advanced_settings`](#obj-advanced_settings)
  * [`fn new()`](#fn-advanced_settingsnew)
  * [`obj advanced_settings.audio_export_gcs_destination`](#obj-advanced_settingsaudio_export_gcs_destination)
    * [`fn new()`](#fn-advanced_settingsaudio_export_gcs_destinationnew)
  * [`obj advanced_settings.dtmf_settings`](#obj-advanced_settingsdtmf_settings)
    * [`fn new()`](#fn-advanced_settingsdtmf_settingsnew)
* [`obj git_integration_settings`](#obj-git_integration_settings)
  * [`fn new()`](#fn-git_integration_settingsnew)
  * [`obj git_integration_settings.github_settings`](#obj-git_integration_settingsgithub_settings)
    * [`fn new()`](#fn-git_integration_settingsgithub_settingsnew)
* [`obj speech_to_text_settings`](#obj-speech_to_text_settings)
  * [`fn new()`](#fn-speech_to_text_settingsnew)
* [`obj text_to_speech_settings`](#obj-text_to_speech_settings)
  * [`fn new()`](#fn-text_to_speech_settingsnew)
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
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.
  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the default_language_code). When `null`, the `supported_language_codes` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris.
  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.new](#fn-advanced_settingsnew) constructor.
  - `git_integration_settings` (`list[obj]`): Git integration settings for this agent. When `null`, the `git_integration_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.git_integration_settings.new](#fn-git_integration_settingsnew) constructor.
  - `speech_to_text_settings` (`list[obj]`): Settings related to speech recognition. When `null`, the `speech_to_text_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.speech_to_text_settings.new](#fn-speech_to_text_settingsnew) constructor.
  - `text_to_speech_settings` (`list[obj]`): Settings related to speech synthesizing. When `null`, the `text_to_speech_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.text_to_speech_settings.new](#fn-text_to_speech_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_agent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_agent`
Terraform resource.

Unlike [google.dialogflow_cx_agent.new](#fn-new), this function will not inject the `resource`
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
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.
  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the default_language_code). When `null`, the `supported_language_codes` field will be omitted from the resulting object.
  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris.
  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.new](#fn-advanced_settingsnew) constructor.
  - `git_integration_settings` (`list[obj]`): Git integration settings for this agent. When `null`, the `git_integration_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.git_integration_settings.new](#fn-git_integration_settingsnew) constructor.
  - `speech_to_text_settings` (`list[obj]`): Settings related to speech recognition. When `null`, the `speech_to_text_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.speech_to_text_settings.new](#fn-speech_to_text_settingsnew) constructor.
  - `text_to_speech_settings` (`list[obj]`): Settings related to speech synthesizing. When `null`, the `text_to_speech_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.text_to_speech_settings.new](#fn-text_to_speech_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_agent` resource into the root Terraform configuration.


### fn withAdvancedSettings

```ts
withAdvancedSettings()
```

`google.list[obj].withAdvancedSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advanced_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdvancedSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.


### fn withAdvancedSettingsMixin

```ts
withAdvancedSettingsMixin()
```

`google.list[obj].withAdvancedSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advanced_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.


### fn withAvatarUri

```ts
withAvatarUri()
```

`google.string.withAvatarUri` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the avatar_uri field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `avatar_uri` field.


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


### fn withEnableSpellCorrection

```ts
withEnableSpellCorrection()
```

`google.bool.withEnableSpellCorrection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_spell_correction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_spell_correction` field.


### fn withEnableStackdriverLogging

```ts
withEnableStackdriverLogging()
```

`google.bool.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_stackdriver_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_stackdriver_logging` field.


### fn withGitIntegrationSettings

```ts
withGitIntegrationSettings()
```

`google.list[obj].withGitIntegrationSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the git_integration_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGitIntegrationSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `git_integration_settings` field.


### fn withGitIntegrationSettingsMixin

```ts
withGitIntegrationSettingsMixin()
```

`google.list[obj].withGitIntegrationSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the git_integration_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGitIntegrationSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `git_integration_settings` field.


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


### fn withSecuritySettings

```ts
withSecuritySettings()
```

`google.string.withSecuritySettings` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the security_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `security_settings` field.


### fn withSpeechToTextSettings

```ts
withSpeechToTextSettings()
```

`google.list[obj].withSpeechToTextSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the speech_to_text_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSpeechToTextSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `speech_to_text_settings` field.


### fn withSpeechToTextSettingsMixin

```ts
withSpeechToTextSettingsMixin()
```

`google.list[obj].withSpeechToTextSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the speech_to_text_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpeechToTextSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `speech_to_text_settings` field.


### fn withSupportedLanguageCodes

```ts
withSupportedLanguageCodes()
```

`google.list.withSupportedLanguageCodes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the supported_language_codes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `supported_language_codes` field.


### fn withTextToSpeechSettings

```ts
withTextToSpeechSettings()
```

`google.list[obj].withTextToSpeechSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the text_to_speech_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTextToSpeechSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `text_to_speech_settings` field.


### fn withTextToSpeechSettingsMixin

```ts
withTextToSpeechSettingsMixin()
```

`google.list[obj].withTextToSpeechSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the text_to_speech_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTextToSpeechSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `text_to_speech_settings` field.


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


## obj advanced_settings



### fn advanced_settings.new

```ts
new()
```


`google.dialogflow_cx_agent.advanced_settings.new` constructs a new object with attributes and blocks configured for the `advanced_settings`
Terraform sub block.



**Args**:
  - `audio_export_gcs_destination` (`list[obj]`): If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
* Agent level
* Flow level When `null`, the `audio_export_gcs_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.audio_export_gcs_destination.new](#fn-advanced_settingsaudio_export_gcs_destinationnew) constructor.
  - `dtmf_settings` (`list[obj]`): Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
* Agent level
* Flow level
* Page level
* Parameter level When `null`, the `dtmf_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.dtmf_settings.new](#fn-advanced_settingsdtmf_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `advanced_settings` sub block.


## obj advanced_settings.audio_export_gcs_destination



### fn advanced_settings.audio_export_gcs_destination.new

```ts
new()
```


`google.dialogflow_cx_agent.advanced_settings.audio_export_gcs_destination.new` constructs a new object with attributes and blocks configured for the `audio_export_gcs_destination`
Terraform sub block.



**Args**:
  - `uri` (`string`): The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
Format: gs://bucket/object-name-or-prefix When `null`, the `uri` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `audio_export_gcs_destination` sub block.


## obj advanced_settings.dtmf_settings



### fn advanced_settings.dtmf_settings.new

```ts
new()
```


`google.dialogflow_cx_agent.advanced_settings.dtmf_settings.new` constructs a new object with attributes and blocks configured for the `dtmf_settings`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a &#34;3&#34; was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). When `null`, the `enabled` field will be omitted from the resulting object.
  - `finish_digit` (`string`): The digit that terminates a DTMF digit sequence. When `null`, the `finish_digit` field will be omitted from the resulting object.
  - `max_digits` (`number`): Max length of DTMF digits. When `null`, the `max_digits` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `dtmf_settings` sub block.


## obj git_integration_settings



### fn git_integration_settings.new

```ts
new()
```


`google.dialogflow_cx_agent.git_integration_settings.new` constructs a new object with attributes and blocks configured for the `git_integration_settings`
Terraform sub block.



**Args**:
  - `github_settings` (`list[obj]`): Settings of integration with GitHub. When `null`, the `github_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.git_integration_settings.github_settings.new](#fn-git_integration_settingsgithub_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `git_integration_settings` sub block.


## obj git_integration_settings.github_settings



### fn git_integration_settings.github_settings.new

```ts
new()
```


`google.dialogflow_cx_agent.git_integration_settings.github_settings.new` constructs a new object with attributes and blocks configured for the `github_settings`
Terraform sub block.



**Args**:
  - `access_token` (`string`): The access token used to authenticate the access to the GitHub repository. When `null`, the `access_token` field will be omitted from the resulting object.
  - `branches` (`list`): A list of branches configured to be used from Dialogflow. When `null`, the `branches` field will be omitted from the resulting object.
  - `display_name` (`string`): The unique repository display name for the GitHub repository. When `null`, the `display_name` field will be omitted from the resulting object.
  - `repository_uri` (`string`): The GitHub repository URI related to the agent. When `null`, the `repository_uri` field will be omitted from the resulting object.
  - `tracking_branch` (`string`): The branch of the GitHub repository tracked for this agent. When `null`, the `tracking_branch` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `github_settings` sub block.


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


## obj text_to_speech_settings



### fn text_to_speech_settings.new

```ts
new()
```


`google.dialogflow_cx_agent.text_to_speech_settings.new` constructs a new object with attributes and blocks configured for the `text_to_speech_settings`
Terraform sub block.



**Args**:
  - `synthesize_speech_configs` (`string`): Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
These settings affect:
* The phone gateway synthesize configuration set via Agent.text_to_speech_settings.
* How speech is synthesized when invoking session APIs. &#39;Agent.text_to_speech_settings&#39; only applies if &#39;OutputAudioConfig.synthesize_speech_config&#39; is not specified. When `null`, the `synthesize_speech_configs` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text_to_speech_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_agent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
