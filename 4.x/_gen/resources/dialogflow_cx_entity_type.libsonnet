local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_entity_type', url='', help='`dialogflow_cx_entity_type` represents the `google_dialogflow_cx_entity_type` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  entities:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_entity_type.entities.new` constructs a new object with attributes and blocks configured for the `entities`\nTerraform sub block.\n\n\n\n**Args**:\n  - `synonyms` (`list`): A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym could be green onions.\nFor KIND_LIST entity types: This collection must contain exactly one synonym equal to value. When `null`, the `synonyms` field will be omitted from the resulting object.\n  - `value` (`string`): The primary value associated with this entity entry. For example, if the entity type is vegetable, the value could be scallions.\nFor KIND_MAP entity types: A canonical value to be used in place of synonyms.\nFor KIND_LIST entity types: A string that can contain references to other entity types (with or without aliases). When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `entities` sub block.\n', args=[]),
    new(
      synonyms=null,
      value=null
    ):: std.prune(a={
      synonyms: synonyms,
      value: value,
    }),
  },
  excluded_phrases:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_entity_type.excluded_phrases.new` constructs a new object with attributes and blocks configured for the `excluded_phrases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `value` (`string`): The word or phrase to be excluded. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `excluded_phrases` sub block.\n', args=[]),
    new(
      value=null
    ):: std.prune(a={
      value: value,
    }),
  },
  '#new':: d.fn(help="\n`google.dialogflow_cx_entity_type.new` injects a new `google_dialogflow_cx_entity_type` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_entity_type.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_entity_type` using the reference:\n\n    $._ref.google_dialogflow_cx_entity_type.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_entity_type.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auto_expansion_mode` (`string`): Represents kinds of entities.\n* AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.\n* AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity. Possible values: [\u0026#34;AUTO_EXPANSION_MODE_DEFAULT\u0026#34;, \u0026#34;AUTO_EXPANSION_MODE_UNSPECIFIED\u0026#34;] When `null`, the `auto_expansion_mode` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the entity type, unique within the agent.\n  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.\n  - `kind` (`string`): Indicates whether the entity type can be automatically expanded.\n* KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.\n* KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).\n* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [\u0026#34;KIND_MAP\u0026#34;, \u0026#34;KIND_LIST\u0026#34;, \u0026#34;KIND_REGEXP\u0026#34;]\n  - `language_code` (`string`): The language of the following fields in entityType:\nEntityType.entities.value\nEntityType.entities.synonyms\nEntityType.excluded_phrases.value\nIf not specified, the agent\u0026#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a entity type for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `redact` (`bool`): Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging. When `null`, the `redact` field will be omitted from the resulting object.\n  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.entities.new](#fn-dialogflowcxentitytypeentitiesnew) constructor.\n  - `excluded_phrases` (`list[obj]`): Collection of exceptional words and phrases that shouldn\u0026#39;t be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.\nIf the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive. When `null`, the `excluded_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.excluded_phrases.new](#fn-dialogflowcxentitytypeexcludedphrasesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.timeouts.new](#fn-dialogflowcxentitytypetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    kind,
    auto_expansion_mode=null,
    enable_fuzzy_extraction=null,
    entities=null,
    excluded_phrases=null,
    language_code=null,
    parent=null,
    redact=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_entity_type',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_expansion_mode=auto_expansion_mode,
      display_name=display_name,
      enable_fuzzy_extraction=enable_fuzzy_extraction,
      entities=entities,
      excluded_phrases=excluded_phrases,
      kind=kind,
      language_code=language_code,
      parent=parent,
      redact=redact,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_entity_type.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_entity_type`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_entity_type.new](#fn-dialogflowcxentitytypenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auto_expansion_mode` (`string`): Represents kinds of entities.\n* AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.\n* AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity. Possible values: [&#34;AUTO_EXPANSION_MODE_DEFAULT&#34;, &#34;AUTO_EXPANSION_MODE_UNSPECIFIED&#34;] When `null`, the `auto_expansion_mode` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the entity type, unique within the agent.\n  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.\n  - `kind` (`string`): Indicates whether the entity type can be automatically expanded.\n* KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.\n* KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).\n* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [&#34;KIND_MAP&#34;, &#34;KIND_LIST&#34;, &#34;KIND_REGEXP&#34;]\n  - `language_code` (`string`): The language of the following fields in entityType:\nEntityType.entities.value\nEntityType.entities.synonyms\nEntityType.excluded_phrases.value\nIf not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a entity type for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `redact` (`bool`): Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging. When `null`, the `redact` field will be omitted from the resulting object.\n  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.entities.new](#fn-dialogflowcxentitytypeentitiesnew) constructor.\n  - `excluded_phrases` (`list[obj]`): Collection of exceptional words and phrases that shouldn&#39;t be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.\nIf the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive. When `null`, the `excluded_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.excluded_phrases.new](#fn-dialogflowcxentitytypeexcludedphrasesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_entity_type.timeouts.new](#fn-dialogflowcxentitytypetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_entity_type` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    kind,
    auto_expansion_mode=null,
    enable_fuzzy_extraction=null,
    entities=null,
    excluded_phrases=null,
    language_code=null,
    parent=null,
    redact=null,
    timeouts=null
  ):: std.prune(a={
    auto_expansion_mode: auto_expansion_mode,
    display_name: display_name,
    enable_fuzzy_extraction: enable_fuzzy_extraction,
    entities: entities,
    excluded_phrases: excluded_phrases,
    kind: kind,
    language_code: language_code,
    parent: parent,
    redact: redact,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_entity_type.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoExpansionMode':: d.fn(help='`google.dialogflow_cx_entity_type.withAutoExpansionMode` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the auto_expansion_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `auto_expansion_mode` field.\n', args=[]),
  withAutoExpansionMode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          auto_expansion_mode: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.dialogflow_cx_entity_type.withDisplayName` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnableFuzzyExtraction':: d.fn(help='`google.dialogflow_cx_entity_type.withEnableFuzzyExtraction` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the enable_fuzzy_extraction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enable_fuzzy_extraction` field.\n', args=[]),
  withEnableFuzzyExtraction(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          enable_fuzzy_extraction: value,
        },
      },
    },
  },
  '#withEntities':: d.fn(help='`google.dialogflow_cx_entity_type.withEntities` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the entities field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `entities` field.\n', args=[]),
  withEntities(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          entities: value,
        },
      },
    },
  },
  '#withEntitiesMixin':: d.fn(help='`google.dialogflow_cx_entity_type.withEntitiesMixin` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the entities field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dialogflow_cx_entity_type.withEntities](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `entities` field.\n', args=[]),
  withEntitiesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          entities+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withExcludedPhrases':: d.fn(help='`google.dialogflow_cx_entity_type.withExcludedPhrases` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the excluded_phrases field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `excluded_phrases` field.\n', args=[]),
  withExcludedPhrases(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          excluded_phrases: value,
        },
      },
    },
  },
  '#withExcludedPhrasesMixin':: d.fn(help='`google.dialogflow_cx_entity_type.withExcludedPhrasesMixin` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the excluded_phrases field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dialogflow_cx_entity_type.withExcludedPhrases](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `excluded_phrases` field.\n', args=[]),
  withExcludedPhrasesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          excluded_phrases+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withKind':: d.fn(help='`google.dialogflow_cx_entity_type.withKind` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the kind field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `kind` field.\n', args=[]),
  withKind(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          kind: value,
        },
      },
    },
  },
  '#withLanguageCode':: d.fn(help='`google.dialogflow_cx_entity_type.withLanguageCode` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the language_code field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `language_code` field.\n', args=[]),
  withLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.dialogflow_cx_entity_type.withParent` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withRedact':: d.fn(help='`google.dialogflow_cx_entity_type.withRedact` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the redact field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `redact` field.\n', args=[]),
  withRedact(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          redact: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.dialogflow_cx_entity_type.withTimeouts` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.dialogflow_cx_entity_type.withTimeoutsMixin` constructs a mixin object that can be merged into the `dialogflow_cx_entity_type`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.dialogflow_cx_entity_type.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
