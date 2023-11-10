local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_security_settings', url='', help='`dialogflow_cx_security_settings` represents the `google_dialogflow_cx_security_settings` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  audio_export_settings:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_security_settings.audio_export_settings.new` constructs a new object with attributes and blocks configured for the `audio_export_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_export_pattern` (`string`): Filename pattern for exported audio. When `null`, the `audio_export_pattern` field will be omitted from the resulting object.\n  - `audio_format` (`string`): File format for exported audio file. Currently only in telephony recordings.\n* MULAW: G.711 mu-law PCM with 8kHz sample rate.\n* MP3: MP3 file format.\n* OGG: OGG Vorbis. Possible values: [&#34;MULAW&#34;, &#34;MP3&#34;, &#34;OGG&#34;] When `null`, the `audio_format` field will be omitted from the resulting object.\n  - `enable_audio_redaction` (`bool`): Enable audio redaction if it is true. When `null`, the `enable_audio_redaction` field will be omitted from the resulting object.\n  - `gcs_bucket` (`string`): Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy. When `null`, the `gcs_bucket` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `audio_export_settings` sub block.\n', args=[]),
    new(
      audio_export_pattern=null,
      audio_format=null,
      enable_audio_redaction=null,
      gcs_bucket=null
    ):: std.prune(a={
      audio_export_pattern: audio_export_pattern,
      audio_format: audio_format,
      enable_audio_redaction: enable_audio_redaction,
      gcs_bucket: gcs_bucket,
    }),
  },
  insights_export_settings:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_security_settings.insights_export_settings.new` constructs a new object with attributes and blocks configured for the `insights_export_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_insights_export` (`bool`): If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.\n\n**Returns**:\n  - An attribute object that represents the `insights_export_settings` sub block.\n', args=[]),
    new(
      enable_insights_export
    ):: std.prune(a={
      enable_insights_export: enable_insights_export,
    }),
  },
  '#new':: d.fn(help="\n`google.dialogflow_cx_security_settings.new` injects a new `google_dialogflow_cx_security_settings` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_security_settings.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_security_settings` using the reference:\n\n    $._ref.google_dialogflow_cx_security_settings.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_security_settings.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deidentify_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.\nNote: deidentifyTemplate must be located in the same region as the SecuritySettings.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/deidentifyTemplates/\u0026lt;Template ID\u0026gt; OR organizations/\u0026lt;Organization ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/deidentifyTemplates/\u0026lt;Template ID\u0026gt; When `null`, the `deidentify_template` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the security settings, unique within the location.\n  - `inspect_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.\nNote: inspectTemplate must be located in the same region as the SecuritySettings.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/inspectTemplates/\u0026lt;Template ID\u0026gt; OR organizations/\u0026lt;Organization ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/inspectTemplates/\u0026lt;Template ID\u0026gt; When `null`, the `inspect_template` field will be omitted from the resulting object.\n  - `location` (`string`): The location these settings are located in. Settings can only be applied to an agent in the same location.\nSee [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `purge_data_types` (`list`): List of types of data to remove when retention settings triggers purge. Possible values: [\u0026#34;DIALOGFLOW_HISTORY\u0026#34;] When `null`, the `purge_data_types` field will be omitted from the resulting object.\n  - `redaction_scope` (`string`): Defines what types of data to redact. If not set, defaults to not redacting any kind of data.\n* REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk. Possible values: [\u0026#34;REDACT_DISK_STORAGE\u0026#34;] When `null`, the `redaction_scope` field will be omitted from the resulting object.\n  - `redaction_strategy` (`string`): Defines how we redact data. If not set, defaults to not redacting.\n* REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted. Possible values: [\u0026#34;REDACT_WITH_SERVICE\u0026#34;] When `null`, the `redaction_strategy` field will be omitted from the resulting object.\n  - `retention_strategy` (`string`): Defines how long we retain persisted data that contains sensitive info. Only one of \u0026#39;retention_window_days\u0026#39; and \u0026#39;retention_strategy\u0026#39; may be set.\n* REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends. Possible values: [\u0026#34;REMOVE_AFTER_CONVERSATION\u0026#34;] When `null`, the `retention_strategy` field will be omitted from the resulting object.\n  - `retention_window_days` (`number`): Retains the data for the specified number of days. User must set a value lower than Dialogflow\u0026#39;s default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.\nOnly one of \u0026#39;retention_window_days\u0026#39; and \u0026#39;retention_strategy\u0026#39; may be set. When `null`, the `retention_window_days` field will be omitted from the resulting object.\n  - `audio_export_settings` (`list[obj]`): Controls audio export settings for post-conversation analytics when ingesting audio to conversations.\nIf retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.\nIf audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.\nThis setting won\u0026#39;t effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent). When `null`, the `audio_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.audio_export_settings.new](#fn-audio_export_settingsnew) constructor.\n  - `insights_export_settings` (`list[obj]`): Controls conversation exporting settings to Insights after conversation is completed.\nIf retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here. When `null`, the `insights_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.insights_export_settings.new](#fn-insights_export_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    location,
    audio_export_settings=null,
    deidentify_template=null,
    insights_export_settings=null,
    inspect_template=null,
    project=null,
    purge_data_types=null,
    redaction_scope=null,
    redaction_strategy=null,
    retention_strategy=null,
    retention_window_days=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_security_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      audio_export_settings=audio_export_settings,
      deidentify_template=deidentify_template,
      display_name=display_name,
      insights_export_settings=insights_export_settings,
      inspect_template=inspect_template,
      location=location,
      project=project,
      purge_data_types=purge_data_types,
      redaction_scope=redaction_scope,
      redaction_strategy=redaction_strategy,
      retention_strategy=retention_strategy,
      retention_window_days=retention_window_days,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_security_settings.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_security_settings`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_security_settings.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deidentify_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.\nNote: deidentifyTemplate must be located in the same region as the SecuritySettings.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; When `null`, the `deidentify_template` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the security settings, unique within the location.\n  - `inspect_template` (`string`): [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.\nNote: inspectTemplate must be located in the same region as the SecuritySettings.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; When `null`, the `inspect_template` field will be omitted from the resulting object.\n  - `location` (`string`): The location these settings are located in. Settings can only be applied to an agent in the same location.\nSee [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `purge_data_types` (`list`): List of types of data to remove when retention settings triggers purge. Possible values: [&#34;DIALOGFLOW_HISTORY&#34;] When `null`, the `purge_data_types` field will be omitted from the resulting object.\n  - `redaction_scope` (`string`): Defines what types of data to redact. If not set, defaults to not redacting any kind of data.\n* REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk. Possible values: [&#34;REDACT_DISK_STORAGE&#34;] When `null`, the `redaction_scope` field will be omitted from the resulting object.\n  - `redaction_strategy` (`string`): Defines how we redact data. If not set, defaults to not redacting.\n* REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted. Possible values: [&#34;REDACT_WITH_SERVICE&#34;] When `null`, the `redaction_strategy` field will be omitted from the resulting object.\n  - `retention_strategy` (`string`): Defines how long we retain persisted data that contains sensitive info. Only one of &#39;retention_window_days&#39; and &#39;retention_strategy&#39; may be set.\n* REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends. Possible values: [&#34;REMOVE_AFTER_CONVERSATION&#34;] When `null`, the `retention_strategy` field will be omitted from the resulting object.\n  - `retention_window_days` (`number`): Retains the data for the specified number of days. User must set a value lower than Dialogflow&#39;s default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.\nOnly one of &#39;retention_window_days&#39; and &#39;retention_strategy&#39; may be set. When `null`, the `retention_window_days` field will be omitted from the resulting object.\n  - `audio_export_settings` (`list[obj]`): Controls audio export settings for post-conversation analytics when ingesting audio to conversations.\nIf retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.\nIf audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.\nThis setting won&#39;t effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent). When `null`, the `audio_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.audio_export_settings.new](#fn-audio_export_settingsnew) constructor.\n  - `insights_export_settings` (`list[obj]`): Controls conversation exporting settings to Insights after conversation is completed.\nIf retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here. When `null`, the `insights_export_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.insights_export_settings.new](#fn-insights_export_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_security_settings.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_security_settings` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    location,
    audio_export_settings=null,
    deidentify_template=null,
    insights_export_settings=null,
    inspect_template=null,
    project=null,
    purge_data_types=null,
    redaction_scope=null,
    redaction_strategy=null,
    retention_strategy=null,
    retention_window_days=null,
    timeouts=null
  ):: std.prune(a={
    audio_export_settings: audio_export_settings,
    deidentify_template: deidentify_template,
    display_name: display_name,
    insights_export_settings: insights_export_settings,
    inspect_template: inspect_template,
    location: location,
    project: project,
    purge_data_types: purge_data_types,
    redaction_scope: redaction_scope,
    redaction_strategy: redaction_strategy,
    retention_strategy: retention_strategy,
    retention_window_days: retention_window_days,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_security_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withAudioExportSettings':: d.fn(help='`google.list[obj].withAudioExportSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the audio_export_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAudioExportSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audio_export_settings` field.\n', args=[]),
  withAudioExportSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          audio_export_settings: value,
        },
      },
    },
  },
  '#withAudioExportSettingsMixin':: d.fn(help='`google.list[obj].withAudioExportSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the audio_export_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAudioExportSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audio_export_settings` field.\n', args=[]),
  withAudioExportSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          audio_export_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeidentifyTemplate':: d.fn(help='`google.string.withDeidentifyTemplate` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deidentify_template field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deidentify_template` field.\n', args=[]),
  withDeidentifyTemplate(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          deidentify_template: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withInsightsExportSettings':: d.fn(help='`google.list[obj].withInsightsExportSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the insights_export_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInsightsExportSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `insights_export_settings` field.\n', args=[]),
  withInsightsExportSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          insights_export_settings: value,
        },
      },
    },
  },
  '#withInsightsExportSettingsMixin':: d.fn(help='`google.list[obj].withInsightsExportSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the insights_export_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInsightsExportSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `insights_export_settings` field.\n', args=[]),
  withInsightsExportSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          insights_export_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInspectTemplate':: d.fn(help='`google.string.withInspectTemplate` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the inspect_template field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `inspect_template` field.\n', args=[]),
  withInspectTemplate(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          inspect_template: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPurgeDataTypes':: d.fn(help='`google.list.withPurgeDataTypes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the purge_data_types field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `purge_data_types` field.\n', args=[]),
  withPurgeDataTypes(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          purge_data_types: value,
        },
      },
    },
  },
  '#withRedactionScope':: d.fn(help='`google.string.withRedactionScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the redaction_scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `redaction_scope` field.\n', args=[]),
  withRedactionScope(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          redaction_scope: value,
        },
      },
    },
  },
  '#withRedactionStrategy':: d.fn(help='`google.string.withRedactionStrategy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the redaction_strategy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `redaction_strategy` field.\n', args=[]),
  withRedactionStrategy(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          redaction_strategy: value,
        },
      },
    },
  },
  '#withRetentionStrategy':: d.fn(help='`google.string.withRetentionStrategy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the retention_strategy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `retention_strategy` field.\n', args=[]),
  withRetentionStrategy(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          retention_strategy: value,
        },
      },
    },
  },
  '#withRetentionWindowDays':: d.fn(help='`google.number.withRetentionWindowDays` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the retention_window_days field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `retention_window_days` field.\n', args=[]),
  withRetentionWindowDays(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          retention_window_days: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_security_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
