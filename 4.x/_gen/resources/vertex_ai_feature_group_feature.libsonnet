local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_feature_group_feature', url='', help='`vertex_ai_feature_group_feature` represents the `google_vertex_ai_feature_group_feature` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.vertex_ai_feature_group_feature.new` injects a new `google_vertex_ai_feature_group_feature` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_feature_group_feature.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_feature_group_feature` using the reference:\n\n    $._ref.google_vertex_ai_feature_group_feature.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_feature_group_feature.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the FeatureGroup. When `null`, the `description` field will be omitted from the resulting object.\n  - `feature_group` (`string`): The name of the Feature Group.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your FeatureGroup.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Group Feature.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region for the resource. It should be the same as the feature group\u0026#39;s region.\n  - `version_column_name` (`string`): The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId. When `null`, the `version_column_name` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    feature_group,
    name,
    region,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    version_column_name=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_feature_group_feature',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      feature_group=feature_group,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      version_column_name=version_column_name
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_feature_group_feature.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_feature_group_feature`\nTerraform resource.\n\nUnlike [google.vertex_ai_feature_group_feature.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the FeatureGroup. When `null`, the `description` field will be omitted from the resulting object.\n  - `feature_group` (`string`): The name of the Feature Group.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your FeatureGroup.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Group Feature.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region for the resource. It should be the same as the feature group&#39;s region.\n  - `version_column_name` (`string`): The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId. When `null`, the `version_column_name` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_feature_group_feature` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    feature_group,
    name,
    region,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    version_column_name=null
  ):: std.prune(a={
    description: description,
    feature_group: feature_group,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    version_column_name: version_column_name,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_feature_group_feature.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFeatureGroup':: d.fn(help='`google.string.withFeatureGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the feature_group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `feature_group` field.\n', args=[]),
  withFeatureGroup(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          feature_group: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionColumnName':: d.fn(help='`google.string.withVersionColumnName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version_column_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_column_name` field.\n', args=[]),
  withVersionColumnName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group_feature+: {
        [resourceLabel]+: {
          version_column_name: value,
        },
      },
    },
  },
}
