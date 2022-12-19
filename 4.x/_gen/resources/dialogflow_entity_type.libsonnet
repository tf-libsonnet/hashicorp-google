local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_entity_type', url='', help='`dialogflow_entity_type` represents the `google_dialogflow_entity_type` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  entities:: {
    '#new':: d.fn(help='\n`google.dialogflow_entity_type.entities.new` constructs a new object with attributes and blocks configured for the `entities`\nTerraform sub block.\n\n\n\n**Args**:\n  - `synonyms` (`list`): A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym\ncould be green onions.\nFor KIND_LIST entity types:\n* This collection must contain exactly one synonym equal to value.\n  - `value` (`string`): The primary value associated with this entity entry. For example, if the entity type is vegetable, the value\ncould be scallions.\nFor KIND_MAP entity types:\n* A reference value to be used in place of synonyms.\nFor KIND_LIST entity types:\n* A string that can contain references to other entity types (with or without aliases).\n\n**Returns**:\n  - An attribute object that represents the `entities` sub block.\n', args=[]),
    new(
      synonyms,
      value
    ):: std.prune(a={
      synonyms: synonyms,
      value: value,
    }),
  },
  '#new':: d.fn(help="\n`google.dialogflow_entity_type.new` injects a new `google_dialogflow_entity_type` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_entity_type.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_entity_type` using the reference:\n\n    $._ref.google_dialogflow_entity_type.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_entity_type.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The name of this entity type to be displayed on the console.\n  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.\n  - `kind` (`string`): Indicates the kind of entity type.\n* KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.\n* KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity\ntypes can contain references to other entity types (with or without aliases).\n* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [\u0026#34;KIND_MAP\u0026#34;, \u0026#34;KIND_LIST\u0026#34;, \u0026#34;KIND_REGEXP\u0026#34;]\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.entities.new](#fn-dialogflowentitytypeentitiesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.timeouts.new](#fn-dialogflowentitytypetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    kind,
    enable_fuzzy_extraction=null,
    entities=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_entity_type',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      enable_fuzzy_extraction=enable_fuzzy_extraction,
      entities=entities,
      kind=kind,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_entity_type.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_entity_type`\nTerraform resource.\n\nUnlike [google.dialogflow_entity_type.new](#fn-dialogflowentitytypenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The name of this entity type to be displayed on the console.\n  - `enable_fuzzy_extraction` (`bool`): Enables fuzzy entity extraction during classification. When `null`, the `enable_fuzzy_extraction` field will be omitted from the resulting object.\n  - `kind` (`string`): Indicates the kind of entity type.\n* KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.\n* KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity\ntypes can contain references to other entity types (with or without aliases).\n* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [&#34;KIND_MAP&#34;, &#34;KIND_LIST&#34;, &#34;KIND_REGEXP&#34;]\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `entities` (`list[obj]`): The collection of entity entries associated with the entity type. When `null`, the `entities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.entities.new](#fn-dialogflowentitytypeentitiesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_entity_type.timeouts.new](#fn-dialogflowentitytypetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_entity_type` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    kind,
    enable_fuzzy_extraction=null,
    entities=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    enable_fuzzy_extraction: enable_fuzzy_extraction,
    entities: entities,
    kind: kind,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_entity_type.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnableFuzzyExtraction':: d.fn(help='`google.bool.withEnableFuzzyExtraction` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_fuzzy_extraction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_fuzzy_extraction` field.\n', args=[]),
  withEnableFuzzyExtraction(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          enable_fuzzy_extraction: value,
        },
      },
    },
  },
  '#withEntities':: d.fn(help='`google.list[obj].withEntities` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entities field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEntitiesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entities` field.\n', args=[]),
  withEntities(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          entities: value,
        },
      },
    },
  },
  '#withEntitiesMixin':: d.fn(help='`google.list[obj].withEntitiesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entities field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEntities](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entities` field.\n', args=[]),
  withEntitiesMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          entities+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withKind':: d.fn(help='`google.string.withKind` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kind field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kind` field.\n', args=[]),
  withKind(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          kind: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
