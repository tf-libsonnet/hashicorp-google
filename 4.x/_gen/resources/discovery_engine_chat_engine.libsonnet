local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='discovery_engine_chat_engine', url='', help='`discovery_engine_chat_engine` represents the `google_discovery_engine_chat_engine` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  chat_engine_config:: {
    agent_creation_config:: {
      '#new':: d.fn(help='\n`google.discovery_engine_chat_engine.chat_engine_config.agent_creation_config.new` constructs a new object with attributes and blocks configured for the `agent_creation_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `business` (`string`): Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search. When `null`, the `business` field will be omitted from the resulting object.\n  - `default_language_code` (`string`): The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.\n  - `location` (`string`): Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine. When `null`, the `location` field will be omitted from the resulting object.\n  - `time_zone` (`string`): The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.\n\n**Returns**:\n  - An attribute object that represents the `agent_creation_config` sub block.\n', args=[]),
      new(
        default_language_code,
        time_zone,
        business=null,
        location=null
      ):: std.prune(a={
        business: business,
        default_language_code: default_language_code,
        location: location,
        time_zone: time_zone,
      }),
    },
    '#new':: d.fn(help='\n`google.discovery_engine_chat_engine.chat_engine_config.new` constructs a new object with attributes and blocks configured for the `chat_engine_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `agent_creation_config` (`list[obj]`): The configuration to generate the Dialogflow agent that is associated to this Engine. When `null`, the `agent_creation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.chat_engine_config.agent_creation_config.new](#fn-chat_engine_configagent_creation_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `chat_engine_config` sub block.\n', args=[]),
    new(
      agent_creation_config=null
    ):: std.prune(a={
      agent_creation_config: agent_creation_config,
    }),
  },
  common_config:: {
    '#new':: d.fn(help='\n`google.discovery_engine_chat_engine.common_config.new` constructs a new object with attributes and blocks configured for the `common_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `company_name` (`string`): The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features. When `null`, the `company_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `common_config` sub block.\n', args=[]),
    new(
      company_name=null
    ):: std.prune(a={
      company_name: company_name,
    }),
  },
  '#new':: d.fn(help="\n`google.discovery_engine_chat_engine.new` injects a new `google_discovery_engine_chat_engine` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.discovery_engine_chat_engine.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.discovery_engine_chat_engine` using the reference:\n\n    $._ref.google_discovery_engine_chat_engine.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_discovery_engine_chat_engine.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `collection_id` (`string`): The collection ID.\n  - `data_store_ids` (`list`): The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be \u0026#39;SOLUTION_TYPE_CHAT\u0026#39;. Adding or removing data stores will force recreation.\n  - `display_name` (`string`): The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.\n  - `engine_id` (`string`): The ID to use for chat engine.\n  - `industry_vertical` (`string`): The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine. Default value: \u0026#34;GENERIC\u0026#34; Possible values: [\u0026#34;GENERIC\u0026#34;] When `null`, the `industry_vertical` field will be omitted from the resulting object.\n  - `location` (`string`): Location.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `chat_engine_config` (`list[obj]`): Configurations for a chat Engine. When `null`, the `chat_engine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.chat_engine_config.new](#fn-chat_engine_confignew) constructor.\n  - `common_config` (`list[obj]`): Common config spec that specifies the metadata of the engine. When `null`, the `common_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.common_config.new](#fn-common_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    collection_id,
    data_store_ids,
    display_name,
    engine_id,
    location,
    chat_engine_config=null,
    common_config=null,
    industry_vertical=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_discovery_engine_chat_engine',
    label=resourceLabel,
    attrs=self.newAttrs(
      chat_engine_config=chat_engine_config,
      collection_id=collection_id,
      common_config=common_config,
      data_store_ids=data_store_ids,
      display_name=display_name,
      engine_id=engine_id,
      industry_vertical=industry_vertical,
      location=location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.discovery_engine_chat_engine.newAttrs` constructs a new object with attributes and blocks configured for the `discovery_engine_chat_engine`\nTerraform resource.\n\nUnlike [google.discovery_engine_chat_engine.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `collection_id` (`string`): The collection ID.\n  - `data_store_ids` (`list`): The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be &#39;SOLUTION_TYPE_CHAT&#39;. Adding or removing data stores will force recreation.\n  - `display_name` (`string`): The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.\n  - `engine_id` (`string`): The ID to use for chat engine.\n  - `industry_vertical` (`string`): The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine. Default value: &#34;GENERIC&#34; Possible values: [&#34;GENERIC&#34;] When `null`, the `industry_vertical` field will be omitted from the resulting object.\n  - `location` (`string`): Location.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `chat_engine_config` (`list[obj]`): Configurations for a chat Engine. When `null`, the `chat_engine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.chat_engine_config.new](#fn-chat_engine_confignew) constructor.\n  - `common_config` (`list[obj]`): Common config spec that specifies the metadata of the engine. When `null`, the `common_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.common_config.new](#fn-common_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_chat_engine.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `discovery_engine_chat_engine` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    collection_id,
    data_store_ids,
    display_name,
    engine_id,
    location,
    chat_engine_config=null,
    common_config=null,
    industry_vertical=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    chat_engine_config: chat_engine_config,
    collection_id: collection_id,
    common_config: common_config,
    data_store_ids: data_store_ids,
    display_name: display_name,
    engine_id: engine_id,
    industry_vertical: industry_vertical,
    location: location,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.discovery_engine_chat_engine.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withChatEngineConfig':: d.fn(help='`google.list[obj].withChatEngineConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the chat_engine_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withChatEngineConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `chat_engine_config` field.\n', args=[]),
  withChatEngineConfig(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          chat_engine_config: value,
        },
      },
    },
  },
  '#withChatEngineConfigMixin':: d.fn(help='`google.list[obj].withChatEngineConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the chat_engine_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withChatEngineConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `chat_engine_config` field.\n', args=[]),
  withChatEngineConfigMixin(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          chat_engine_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCollectionId':: d.fn(help='`google.string.withCollectionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the collection_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `collection_id` field.\n', args=[]),
  withCollectionId(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          collection_id: value,
        },
      },
    },
  },
  '#withCommonConfig':: d.fn(help='`google.list[obj].withCommonConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the common_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCommonConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `common_config` field.\n', args=[]),
  withCommonConfig(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          common_config: value,
        },
      },
    },
  },
  '#withCommonConfigMixin':: d.fn(help='`google.list[obj].withCommonConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the common_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCommonConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `common_config` field.\n', args=[]),
  withCommonConfigMixin(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          common_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataStoreIds':: d.fn(help='`google.list.withDataStoreIds` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the data_store_ids field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `data_store_ids` field.\n', args=[]),
  withDataStoreIds(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          data_store_ids: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEngineId':: d.fn(help='`google.string.withEngineId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the engine_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `engine_id` field.\n', args=[]),
  withEngineId(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          engine_id: value,
        },
      },
    },
  },
  '#withIndustryVertical':: d.fn(help='`google.string.withIndustryVertical` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the industry_vertical field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `industry_vertical` field.\n', args=[]),
  withIndustryVertical(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          industry_vertical: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_discovery_engine_chat_engine+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
