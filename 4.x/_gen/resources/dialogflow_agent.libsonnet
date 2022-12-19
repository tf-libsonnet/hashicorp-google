local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_agent', url='', help='`dialogflow_agent` represents the `google_dialogflow_agent` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.dialogflow_agent.new` injects a new `google_dialogflow_agent` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_agent.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_agent` using the reference:\n\n    $._ref.google_dialogflow_agent.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_agent.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `api_version` (`string`): API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query\ndifferent service endpoints for different API versions. However, bots connectors and webhook calls will follow \nthe specified API version.\n* API_VERSION_V1: Legacy V1 API.\n* API_VERSION_V2: V2 API.\n* API_VERSION_V2_BETA_1: V2beta1 API. Possible values: [\u0026#34;API_VERSION_V1\u0026#34;, \u0026#34;API_VERSION_V2\u0026#34;, \u0026#34;API_VERSION_V2_BETA_1\u0026#34;] When `null`, the `api_version` field will be omitted from the resulting object.\n  - `avatar_uri` (`string`): The URI of the agent\u0026#39;s avatar, which are used throughout the Dialogflow console. When an image URL is entered\ninto this field, the Dialogflow will save the image in the backend. The address of the backend image returned\nfrom the API will be shown in the [avatarUriBackend] field. When `null`, the `avatar_uri` field will be omitted from the resulting object.\n  - `classification_threshold` (`number`): To filter out false positive results and still get variety in matched natural language inputs for your agent,\nyou can tune the machine learning classification threshold. If the returned score value is less than the threshold\nvalue, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be \ntriggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the \ndefault of 0.3 is used. When `null`, the `classification_threshold` field will be omitted from the resulting object.\n  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language) \nfor a list of the currently supported language codes. This field cannot be updated after creation.\n  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The name of this agent.\n  - `enable_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `match_mode` (`string`): Determines how intents are detected from user queries.\n* MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates\nsyntax and composite entities.\n* MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones\nusing @sys.any or very large developer entities. Possible values: [\u0026#34;MATCH_MODE_HYBRID\u0026#34;, \u0026#34;MATCH_MODE_ML_ONLY\u0026#34;] When `null`, the `match_mode` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the defaultLanguageCode). When `null`, the `supported_language_codes` field will be omitted from the resulting object.\n  - `tier` (`string`): The agent tier. If not specified, TIER_STANDARD is assumed.\n* TIER_STANDARD: Standard tier.\n* TIER_ENTERPRISE: Enterprise tier (Essentials).\n* TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).\nNOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between \nthe Terraform state and Dialogflow if the agent tier is changed outside of Terraform. Possible values: [\u0026#34;TIER_STANDARD\u0026#34;, \u0026#34;TIER_ENTERPRISE\u0026#34;, \u0026#34;TIER_ENTERPRISE_PLUS\u0026#34;] When `null`, the `tier` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,\nEurope/Paris.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_agent.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    default_language_code,
    display_name,
    time_zone,
    api_version=null,
    avatar_uri=null,
    classification_threshold=null,
    description=null,
    enable_logging=null,
    match_mode=null,
    project=null,
    supported_language_codes=null,
    tier=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_agent',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_version=api_version,
      avatar_uri=avatar_uri,
      classification_threshold=classification_threshold,
      default_language_code=default_language_code,
      description=description,
      display_name=display_name,
      enable_logging=enable_logging,
      match_mode=match_mode,
      project=project,
      supported_language_codes=supported_language_codes,
      tier=tier,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_agent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_agent`\nTerraform resource.\n\nUnlike [google.dialogflow_agent.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `api_version` (`string`): API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query\ndifferent service endpoints for different API versions. However, bots connectors and webhook calls will follow \nthe specified API version.\n* API_VERSION_V1: Legacy V1 API.\n* API_VERSION_V2: V2 API.\n* API_VERSION_V2_BETA_1: V2beta1 API. Possible values: [&#34;API_VERSION_V1&#34;, &#34;API_VERSION_V2&#34;, &#34;API_VERSION_V2_BETA_1&#34;] When `null`, the `api_version` field will be omitted from the resulting object.\n  - `avatar_uri` (`string`): The URI of the agent&#39;s avatar, which are used throughout the Dialogflow console. When an image URL is entered\ninto this field, the Dialogflow will save the image in the backend. The address of the backend image returned\nfrom the API will be shown in the [avatarUriBackend] field. When `null`, the `avatar_uri` field will be omitted from the resulting object.\n  - `classification_threshold` (`number`): To filter out false positive results and still get variety in matched natural language inputs for your agent,\nyou can tune the machine learning classification threshold. If the returned score value is less than the threshold\nvalue, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be \ntriggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the \ndefault of 0.3 is used. When `null`, the `classification_threshold` field will be omitted from the resulting object.\n  - `default_language_code` (`string`): The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language) \nfor a list of the currently supported language codes. This field cannot be updated after creation.\n  - `description` (`string`): The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The name of this agent.\n  - `enable_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_logging` field will be omitted from the resulting object.\n  - `match_mode` (`string`): Determines how intents are detected from user queries.\n* MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates\nsyntax and composite entities.\n* MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones\nusing @sys.any or very large developer entities. Possible values: [&#34;MATCH_MODE_HYBRID&#34;, &#34;MATCH_MODE_ML_ONLY&#34;] When `null`, the `match_mode` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `supported_language_codes` (`list`): The list of all languages supported by this agent (except for the defaultLanguageCode). When `null`, the `supported_language_codes` field will be omitted from the resulting object.\n  - `tier` (`string`): The agent tier. If not specified, TIER_STANDARD is assumed.\n* TIER_STANDARD: Standard tier.\n* TIER_ENTERPRISE: Enterprise tier (Essentials).\n* TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).\nNOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between \nthe Terraform state and Dialogflow if the agent tier is changed outside of Terraform. Possible values: [&#34;TIER_STANDARD&#34;, &#34;TIER_ENTERPRISE&#34;, &#34;TIER_ENTERPRISE_PLUS&#34;] When `null`, the `tier` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,\nEurope/Paris.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_agent.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_agent` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    default_language_code,
    display_name,
    time_zone,
    api_version=null,
    avatar_uri=null,
    classification_threshold=null,
    description=null,
    enable_logging=null,
    match_mode=null,
    project=null,
    supported_language_codes=null,
    tier=null,
    timeouts=null
  ):: std.prune(a={
    api_version: api_version,
    avatar_uri: avatar_uri,
    classification_threshold: classification_threshold,
    default_language_code: default_language_code,
    description: description,
    display_name: display_name,
    enable_logging: enable_logging,
    match_mode: match_mode,
    project: project,
    supported_language_codes: supported_language_codes,
    tier: tier,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_agent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withApiVersion':: d.fn(help='`google.string.withApiVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the api_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `api_version` field.\n', args=[]),
  withApiVersion(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          api_version: value,
        },
      },
    },
  },
  '#withAvatarUri':: d.fn(help='`google.string.withAvatarUri` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the avatar_uri field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `avatar_uri` field.\n', args=[]),
  withAvatarUri(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          avatar_uri: value,
        },
      },
    },
  },
  '#withClassificationThreshold':: d.fn(help='`google.number.withClassificationThreshold` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the classification_threshold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `classification_threshold` field.\n', args=[]),
  withClassificationThreshold(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          classification_threshold: value,
        },
      },
    },
  },
  '#withDefaultLanguageCode':: d.fn(help='`google.string.withDefaultLanguageCode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the default_language_code field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `default_language_code` field.\n', args=[]),
  withDefaultLanguageCode(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          default_language_code: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnableLogging':: d.fn(help='`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_logging` field.\n', args=[]),
  withEnableLogging(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  '#withMatchMode':: d.fn(help='`google.string.withMatchMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the match_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `match_mode` field.\n', args=[]),
  withMatchMode(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          match_mode: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSupportedLanguageCodes':: d.fn(help='`google.list.withSupportedLanguageCodes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the supported_language_codes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `supported_language_codes` field.\n', args=[]),
  withSupportedLanguageCodes(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          supported_language_codes: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`google.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google.string.withTimeZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
