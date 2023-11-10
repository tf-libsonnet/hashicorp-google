local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_agent', url='', help='`dialogflow_cx_agent` represents the `google_dialogflow_cx_agent` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  advanced_settings:: {
    audio_export_gcs_destination:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_agent.advanced_settings.audio_export_gcs_destination.new` constructs a new object with attributes and blocks configured for the `audio_export_gcs_destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `uri` (`string`): The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.\nFormat: gs://bucket/object-name-or-prefix When `null`, the `uri` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `audio_export_gcs_destination` sub block.\n', args=[]),
      new(
        uri=null
      ):: std.prune(a={
        uri: uri,
      }),
    },
    dtmf_settings:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_agent.advanced_settings.dtmf_settings.new` constructs a new object with attributes and blocks configured for the `dtmf_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a &#34;3&#34; was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). When `null`, the `enabled` field will be omitted from the resulting object.\n  - `finish_digit` (`string`): The digit that terminates a DTMF digit sequence. When `null`, the `finish_digit` field will be omitted from the resulting object.\n  - `max_digits` (`number`): Max length of DTMF digits. When `null`, the `max_digits` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dtmf_settings` sub block.\n', args=[]),
      new(
        enabled=null,
        finish_digit=null,
        max_digits=null
      ):: std.prune(a={
        enabled: enabled,
        finish_digit: finish_digit,
        max_digits: max_digits,
      }),
    },
    '#new':: d.fn(help='\n`google.dialogflow_cx_agent.advanced_settings.new` constructs a new object with attributes and blocks configured for the `advanced_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_export_gcs_destination` (`list[obj]`): If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:\n* Agent level\n* Flow level When `null`, the `audio_export_gcs_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.audio_export_gcs_destination.new](#fn-advanced_settingsaudio_export_gcs_destinationnew) constructor.\n  - `dtmf_settings` (`list[obj]`): Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:\n* Agent level\n* Flow level\n* Page level\n* Parameter level When `null`, the `dtmf_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.dtmf_settings.new](#fn-advanced_settingsdtmf_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `advanced_settings` sub block.\n', args=[]),
    new(
      audio_export_gcs_destination=null,
      dtmf_settings=null
    ):: std.prune(a={
      audio_export_gcs_destination: audio_export_gcs_destination,
      dtmf_settings: dtmf_settings,
    }),
  },
  git_integration_settings:: {
    github_settings:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_agent.git_integration_settings.github_settings.new` constructs a new object with attributes and blocks configured for the `github_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_token` (`string`): The access token used to authenticate the access to the GitHub repository. When `null`, the `access_token` field will be omitted from the resulting object.\n  - `branches` (`list`): A list of branches configured to be used from Dialogflow. When `null`, the `branches` field will be omitted from the resulting object.\n  - `display_name` (`string`): The unique repository display name for the GitHub repository. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `repository_uri` (`string`): The GitHub repository URI related to the agent. When `null`, the `repository_uri` field will be omitted from the resulting object.\n  - `tracking_branch` (`string`): The branch of the GitHub repository tracked for this agent. When `null`, the `tracking_branch` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `github_settings` sub block.\n', args=[]),
      new(
        access_token=null,
        branches=null,
        display_name=null,
        repository_uri=null,
        tracking_branch=null
      ):: std.prune(a={
        access_token: access_token,
        branches: branches,
        display_name: display_name,
        repository_uri: repository_uri,
        tracking_branch: tracking_branch,
      }),
    },
    '#new':: d.fn(help='\n`google.dialogflow_cx_agent.git_integration_settings.new` constructs a new object with attributes and blocks configured for the `git_integration_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `github_settings` (`list[obj]`): Settings of integration with GitHub. When `null`, the `github_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.git_integration_settings.github_settings.new](#fn-git_integration_settingsgithub_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `git_integration_settings` sub block.\n', args=[]),
    new(
      github_settings=null
    ):: std.prune(a={
      github_settings: github_settings,
    }),
  },
  '#new':: d.fn(help="\n`google.dialogflow_cx_agent.new` injects a new `google_dialogflow_cx_agent` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_agent.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_agent` using the reference:\n\n    $._ref.google_dialogflow_cx_agent.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_agent.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `avatar_uri` (`string`): The URI of the agent\u0026#39;s avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration. When `null`, the `avatar_uri` field will be omitted from the resulting object.\n  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)\nfor a list of the currently supported language codes. This field cannot be updated after creation.\n  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the agent, unique within the location.\n  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.\n  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this agent is located in.\n\n~\u0026gt; **Note:** The first time you are deploying an Agent in your project you must configure location settings.\n This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.\n Another options is to use global location so you don\u0026#39;t need to manually configure location settings.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/securitySettings/\u0026lt;Security Settings ID\u0026gt;. When `null`, the `security_settings` field will be omitted from the resulting object.\n  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the default_language_code). When `null`, the `supported_language_codes` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,\nEurope/Paris.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-\u0026gt;Flow-\u0026gt;Page-\u0026gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.new](#fn-advanced_settingsnew) constructor.\n  - `git_integration_settings` (`list[obj]`): Git integration settings for this agent. When `null`, the `git_integration_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.git_integration_settings.new](#fn-git_integration_settingsnew) constructor.\n  - `speech_to_text_settings` (`list[obj]`): Settings related to speech recognition. When `null`, the `speech_to_text_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.speech_to_text_settings.new](#fn-speech_to_text_settingsnew) constructor.\n  - `text_to_speech_settings` (`list[obj]`): Settings related to speech synthesizing. When `null`, the `text_to_speech_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.text_to_speech_settings.new](#fn-text_to_speech_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    default_language_code,
    display_name,
    location,
    time_zone,
    advanced_settings=null,
    avatar_uri=null,
    description=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    git_integration_settings=null,
    project=null,
    security_settings=null,
    speech_to_text_settings=null,
    supported_language_codes=null,
    text_to_speech_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_agent',
    label=resourceLabel,
    attrs=self.newAttrs(
      advanced_settings=advanced_settings,
      avatar_uri=avatar_uri,
      default_language_code=default_language_code,
      description=description,
      display_name=display_name,
      enable_spell_correction=enable_spell_correction,
      enable_stackdriver_logging=enable_stackdriver_logging,
      git_integration_settings=git_integration_settings,
      location=location,
      project=project,
      security_settings=security_settings,
      speech_to_text_settings=speech_to_text_settings,
      supported_language_codes=supported_language_codes,
      text_to_speech_settings=text_to_speech_settings,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_agent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_agent`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_agent.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `avatar_uri` (`string`): The URI of the agent&#39;s avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration. When `null`, the `avatar_uri` field will be omitted from the resulting object.\n  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)\nfor a list of the currently supported language codes. This field cannot be updated after creation.\n  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the agent, unique within the location.\n  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.\n  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this agent is located in.\n\n~&gt; **Note:** The first time you are deploying an Agent in your project you must configure location settings.\n This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.\n Another options is to use global location so you don&#39;t need to manually configure location settings.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.\n  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the default_language_code). When `null`, the `supported_language_codes` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,\nEurope/Paris.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.advanced_settings.new](#fn-advanced_settingsnew) constructor.\n  - `git_integration_settings` (`list[obj]`): Git integration settings for this agent. When `null`, the `git_integration_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.git_integration_settings.new](#fn-git_integration_settingsnew) constructor.\n  - `speech_to_text_settings` (`list[obj]`): Settings related to speech recognition. When `null`, the `speech_to_text_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.speech_to_text_settings.new](#fn-speech_to_text_settingsnew) constructor.\n  - `text_to_speech_settings` (`list[obj]`): Settings related to speech synthesizing. When `null`, the `text_to_speech_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.text_to_speech_settings.new](#fn-text_to_speech_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_agent.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_agent` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    default_language_code,
    display_name,
    location,
    time_zone,
    advanced_settings=null,
    avatar_uri=null,
    description=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    git_integration_settings=null,
    project=null,
    security_settings=null,
    speech_to_text_settings=null,
    supported_language_codes=null,
    text_to_speech_settings=null,
    timeouts=null
  ):: std.prune(a={
    advanced_settings: advanced_settings,
    avatar_uri: avatar_uri,
    default_language_code: default_language_code,
    description: description,
    display_name: display_name,
    enable_spell_correction: enable_spell_correction,
    enable_stackdriver_logging: enable_stackdriver_logging,
    git_integration_settings: git_integration_settings,
    location: location,
    project: project,
    security_settings: security_settings,
    speech_to_text_settings: speech_to_text_settings,
    supported_language_codes: supported_language_codes,
    text_to_speech_settings: text_to_speech_settings,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  speech_to_text_settings:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_agent.speech_to_text_settings.new` constructs a new object with attributes and blocks configured for the `speech_to_text_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_speech_adaptation` (`bool`): Whether to use speech adaptation for speech recognition. When `null`, the `enable_speech_adaptation` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `speech_to_text_settings` sub block.\n', args=[]),
    new(
      enable_speech_adaptation=null
    ):: std.prune(a={
      enable_speech_adaptation: enable_speech_adaptation,
    }),
  },
  text_to_speech_settings:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_agent.text_to_speech_settings.new` constructs a new object with attributes and blocks configured for the `text_to_speech_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `synthesize_speech_configs` (`string`): Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).\nThese settings affect:\n* The phone gateway synthesize configuration set via Agent.text_to_speech_settings.\n* How speech is synthesized when invoking session APIs. &#39;Agent.text_to_speech_settings&#39; only applies if &#39;OutputAudioConfig.synthesize_speech_config&#39; is not specified. When `null`, the `synthesize_speech_configs` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text_to_speech_settings` sub block.\n', args=[]),
    new(
      synthesize_speech_configs=null
    ):: std.prune(a={
      synthesize_speech_configs: synthesize_speech_configs,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_agent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAdvancedSettings':: d.fn(help='`google.list[obj].withAdvancedSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAdvancedSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.\n', args=[]),
  withAdvancedSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          advanced_settings: value,
        },
      },
    },
  },
  '#withAdvancedSettingsMixin':: d.fn(help='`google.list[obj].withAdvancedSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.\n', args=[]),
  withAdvancedSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          advanced_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAvatarUri':: d.fn(help='`google.string.withAvatarUri` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the avatar_uri field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `avatar_uri` field.\n', args=[]),
  withAvatarUri(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          avatar_uri: value,
        },
      },
    },
  },
  '#withDefaultLanguageCode':: d.fn(help='`google.string.withDefaultLanguageCode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the default_language_code field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `default_language_code` field.\n', args=[]),
  withDefaultLanguageCode(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          default_language_code: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnableSpellCorrection':: d.fn(help='`google.bool.withEnableSpellCorrection` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_spell_correction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_spell_correction` field.\n', args=[]),
  withEnableSpellCorrection(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          enable_spell_correction: value,
        },
      },
    },
  },
  '#withEnableStackdriverLogging':: d.fn(help='`google.bool.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_stackdriver_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_stackdriver_logging` field.\n', args=[]),
  withEnableStackdriverLogging(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          enable_stackdriver_logging: value,
        },
      },
    },
  },
  '#withGitIntegrationSettings':: d.fn(help='`google.list[obj].withGitIntegrationSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the git_integration_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGitIntegrationSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `git_integration_settings` field.\n', args=[]),
  withGitIntegrationSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          git_integration_settings: value,
        },
      },
    },
  },
  '#withGitIntegrationSettingsMixin':: d.fn(help='`google.list[obj].withGitIntegrationSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the git_integration_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGitIntegrationSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `git_integration_settings` field.\n', args=[]),
  withGitIntegrationSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          git_integration_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSecuritySettings':: d.fn(help='`google.string.withSecuritySettings` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the security_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `security_settings` field.\n', args=[]),
  withSecuritySettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          security_settings: value,
        },
      },
    },
  },
  '#withSpeechToTextSettings':: d.fn(help='`google.list[obj].withSpeechToTextSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the speech_to_text_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSpeechToTextSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `speech_to_text_settings` field.\n', args=[]),
  withSpeechToTextSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          speech_to_text_settings: value,
        },
      },
    },
  },
  '#withSpeechToTextSettingsMixin':: d.fn(help='`google.list[obj].withSpeechToTextSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the speech_to_text_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSpeechToTextSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `speech_to_text_settings` field.\n', args=[]),
  withSpeechToTextSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          speech_to_text_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSupportedLanguageCodes':: d.fn(help='`google.list.withSupportedLanguageCodes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the supported_language_codes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `supported_language_codes` field.\n', args=[]),
  withSupportedLanguageCodes(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          supported_language_codes: value,
        },
      },
    },
  },
  '#withTextToSpeechSettings':: d.fn(help='`google.list[obj].withTextToSpeechSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the text_to_speech_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTextToSpeechSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `text_to_speech_settings` field.\n', args=[]),
  withTextToSpeechSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          text_to_speech_settings: value,
        },
      },
    },
  },
  '#withTextToSpeechSettingsMixin':: d.fn(help='`google.list[obj].withTextToSpeechSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the text_to_speech_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTextToSpeechSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `text_to_speech_settings` field.\n', args=[]),
  withTextToSpeechSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          text_to_speech_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google.string.withTimeZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
