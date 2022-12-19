local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_featurestore_entitytype_feature', url='', help='`vertex_ai_featurestore_entitytype_feature` represents the `google_vertex_ai_featurestore_entitytype_feature` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.vertex_ai_featurestore_entitytype_feature.new` injects a new `google_vertex_ai_featurestore_entitytype_feature` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_featurestore_entitytype_feature.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_featurestore_entitytype_feature` using the reference:\n\n    $._ref.google_vertex_ai_featurestore_entitytype_feature.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_featurestore_entitytype_feature.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of the feature. When `null`, the `description` field will be omitted from the resulting object.\n  - `entitytype` (`string`): The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the feature. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type. When `null`, the `name` field will be omitted from the resulting object.\n  - `value_type` (`string`): Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    entitytype,
    value_type,
    description=null,
    labels=null,
    name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype_feature',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      entitytype=entitytype,
      labels=labels,
      name=name,
      timeouts=timeouts,
      value_type=value_type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_featurestore_entitytype_feature.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_featurestore_entitytype_feature`\nTerraform resource.\n\nUnlike [google.vertex_ai_featurestore_entitytype_feature.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of the feature. When `null`, the `description` field will be omitted from the resulting object.\n  - `entitytype` (`string`): The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the feature. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type. When `null`, the `name` field will be omitted from the resulting object.\n  - `value_type` (`string`): Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_featurestore_entitytype_feature` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    entitytype,
    value_type,
    description=null,
    labels=null,
    name=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    entitytype: entitytype,
    labels: labels,
    name: name,
    timeouts: timeouts,
    value_type: value_type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_featurestore_entitytype_feature.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEntitytype':: d.fn(help='`google.string.withEntitytype` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the entitytype field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `entitytype` field.\n', args=[]),
  withEntitytype(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          entitytype: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withValueType':: d.fn(help='`google.string.withValueType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the value_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `value_type` field.\n', args=[]),
  withValueType(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          value_type: value,
        },
      },
    },
  },
}
