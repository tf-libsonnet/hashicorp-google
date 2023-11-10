---
permalink: /dialogflow_cx_security_settings/
---

# dialogflow_cx_security_settings

`dialogflow_cx_security_settings` represents the `google_dialogflow_cx_security_settings` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAudioExportSettings()`](#fn-withaudioexportsettings)
* [`fn withAudioExportSettingsMixin()`](#fn-withaudioexportsettingsmixin)
* [`fn withDeidentifyTemplate()`](#fn-withdeidentifytemplate)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withInsightsExportSettings()`](#fn-withinsightsexportsettings)
* [`fn withInsightsExportSettingsMixin()`](#fn-withinsightsexportsettingsmixin)
* [`fn withInspectTemplate()`](#fn-withinspecttemplate)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withPurgeDataTypes()`](#fn-withpurgedatatypes)
* [`fn withRedactionScope()`](#fn-withredactionscope)
* [`fn withRedactionStrategy()`](#fn-withredactionstrategy)
* [`fn withRetentionStrategy()`](#fn-withretentionstrategy)
* [`fn withRetentionWindowDays()`](#fn-withretentionwindowdays)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj audio_export_settings`](#obj-audio_export_settings)
  * [`fn new()`](#fn-audio_export_settingsnew)
* [`obj insights_export_settings`](#obj-insights_export_settings)
  * [`fn new()`](#fn-insights_export_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_security_settings.new` injects a new `google_dialogflow_cx_security_settings` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_security_settings.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_security_settings` using the reference:

    $._ref.google_dialogflow_cx_security_settings.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_security_settings.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `deidentify_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; When `null`, the `deidentify_template` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the security settings, unique within the location.
  - `inspect_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
Note: inspectTemplate must be located in the same region as the SecuritySettings.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; When `null`, the `inspect_template` field will be omitted from the resulting object.
  - `location` (`string`): The location these settings are located in. Settings can only be applied to an agent in the same location.
See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `purge_data_types` (`list`): List of types of data to remove when retention settings triggers purge. Possible values: [&#34;DIALOGFLOW_HISTORY&#34;] When `null`, the `purge_data_types` field will be omitted from the resulting object.
  - `redaction_scope` (`string`): Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
* REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk. Possible values: [&#34;REDACT_DISK_STORAGE&#34;] When `null`, the `redaction_scope` field will be omitted from the resulting object.
  - `redaction_strategy` (`string`): Defines how we redact data. If not set, defaults to not redacting.
* REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted. Possible values: [&#34;REDACT_WITH_SERVICE&#34;] When `null`, the `redaction_strategy` field will be omitted from the resulting object.
  - `retention_strategy` (`string`): Defines how long we retain persisted data that contains sensitive info. Only one of &#39;retention_window_days&#39; and &#39;retention_strategy&#39; may be set.
* REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends. Possible values: [&#34;REMOVE_AFTER_CONVERSATION&#34;] When `null`, the `retention_strategy` field will be omitted from the resulting object.
  - `retention_window_days` (`number`): Retains the data for the specified number of days. User must set a value lower than Dialogflow&#39;s default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
Only one of &#39;retention_window_days&#39; and &#39;retention_strategy&#39; may be set. When `null`, the `retention_window_days` field will be omitted from the resulting object.
  - `audio_export_settings` (`list[obj]`): Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
If retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.
If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
This setting won&#39;t effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent). When `null`, the `audio_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.audio_export_settings.new](#fn-audio_export_settingsnew) constructor.
  - `insights_export_settings` (`list[obj]`): Controls conversation exporting settings to Insights after conversation is completed.
If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here. When `null`, the `insights_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.insights_export_settings.new](#fn-insights_export_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_security_settings.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_security_settings`
Terraform resource.

Unlike [google.dialogflow_cx_security_settings.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deidentify_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; When `null`, the `deidentify_template` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the security settings, unique within the location.
  - `inspect_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
Note: inspectTemplate must be located in the same region as the SecuritySettings.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; When `null`, the `inspect_template` field will be omitted from the resulting object.
  - `location` (`string`): The location these settings are located in. Settings can only be applied to an agent in the same location.
See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `purge_data_types` (`list`): List of types of data to remove when retention settings triggers purge. Possible values: [&#34;DIALOGFLOW_HISTORY&#34;] When `null`, the `purge_data_types` field will be omitted from the resulting object.
  - `redaction_scope` (`string`): Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
* REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk. Possible values: [&#34;REDACT_DISK_STORAGE&#34;] When `null`, the `redaction_scope` field will be omitted from the resulting object.
  - `redaction_strategy` (`string`): Defines how we redact data. If not set, defaults to not redacting.
* REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted. Possible values: [&#34;REDACT_WITH_SERVICE&#34;] When `null`, the `redaction_strategy` field will be omitted from the resulting object.
  - `retention_strategy` (`string`): Defines how long we retain persisted data that contains sensitive info. Only one of &#39;retention_window_days&#39; and &#39;retention_strategy&#39; may be set.
* REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends. Possible values: [&#34;REMOVE_AFTER_CONVERSATION&#34;] When `null`, the `retention_strategy` field will be omitted from the resulting object.
  - `retention_window_days` (`number`): Retains the data for the specified number of days. User must set a value lower than Dialogflow&#39;s default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
Only one of &#39;retention_window_days&#39; and &#39;retention_strategy&#39; may be set. When `null`, the `retention_window_days` field will be omitted from the resulting object.
  - `audio_export_settings` (`list[obj]`): Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
If retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.
If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
This setting won&#39;t effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent). When `null`, the `audio_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.audio_export_settings.new](#fn-audio_export_settingsnew) constructor.
  - `insights_export_settings` (`list[obj]`): Controls conversation exporting settings to Insights after conversation is completed.
If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here. When `null`, the `insights_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.insights_export_settings.new](#fn-insights_export_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_security_settings` resource into the root Terraform configuration.


### fn withAudioExportSettings

```ts
withAudioExportSettings()
```

`google.list[obj].withAudioExportSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the audio_export_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAudioExportSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audio_export_settings` field.


### fn withAudioExportSettingsMixin

```ts
withAudioExportSettingsMixin()
```

`google.list[obj].withAudioExportSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the audio_export_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAudioExportSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audio_export_settings` field.


### fn withDeidentifyTemplate

```ts
withDeidentifyTemplate()
```

`google.string.withDeidentifyTemplate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deidentify_template field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deidentify_template` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withInsightsExportSettings

```ts
withInsightsExportSettings()
```

`google.list[obj].withInsightsExportSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the insights_export_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInsightsExportSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `insights_export_settings` field.


### fn withInsightsExportSettingsMixin

```ts
withInsightsExportSettingsMixin()
```

`google.list[obj].withInsightsExportSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the insights_export_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInsightsExportSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `insights_export_settings` field.


### fn withInspectTemplate

```ts
withInspectTemplate()
```

`google.string.withInspectTemplate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the inspect_template field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `inspect_template` field.


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


### fn withPurgeDataTypes

```ts
withPurgeDataTypes()
```

`google.list.withPurgeDataTypes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the purge_data_types field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `purge_data_types` field.


### fn withRedactionScope

```ts
withRedactionScope()
```

`google.string.withRedactionScope` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the redaction_scope field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `redaction_scope` field.


### fn withRedactionStrategy

```ts
withRedactionStrategy()
```

`google.string.withRedactionStrategy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the redaction_strategy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `redaction_strategy` field.


### fn withRetentionStrategy

```ts
withRetentionStrategy()
```

`google.string.withRetentionStrategy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the retention_strategy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `retention_strategy` field.


### fn withRetentionWindowDays

```ts
withRetentionWindowDays()
```

`google.number.withRetentionWindowDays` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the retention_window_days field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `retention_window_days` field.


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


## obj audio_export_settings



### fn audio_export_settings.new

```ts
new()
```


`google.dialogflow_cx_security_settings.audio_export_settings.new` constructs a new object with attributes and blocks configured for the `audio_export_settings`
Terraform sub block.



**Args**:
  - `audio_export_pattern` (`string`): Filename pattern for exported audio. When `null`, the `audio_export_pattern` field will be omitted from the resulting object.
  - `audio_format` (`string`): File format for exported audio file. Currently only in telephony recordings.
* MULAW: G.711 mu-law PCM with 8kHz sample rate.
* MP3: MP3 file format.
* OGG: OGG Vorbis. Possible values: [&#34;MULAW&#34;, &#34;MP3&#34;, &#34;OGG&#34;] When `null`, the `audio_format` field will be omitted from the resulting object.
  - `enable_audio_redaction` (`bool`): Enable audio redaction if it is true. When `null`, the `enable_audio_redaction` field will be omitted from the resulting object.
  - `gcs_bucket` (`string`): Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy. When `null`, the `gcs_bucket` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `audio_export_settings` sub block.


## obj insights_export_settings



### fn insights_export_settings.new

```ts
new()
```


`google.dialogflow_cx_security_settings.insights_export_settings.new` constructs a new object with attributes and blocks configured for the `insights_export_settings`
Terraform sub block.



**Args**:
  - `enable_insights_export` (`bool`): If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.

**Returns**:
  - An attribute object that represents the `insights_export_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_security_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
