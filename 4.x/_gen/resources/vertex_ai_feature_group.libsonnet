local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_feature_group', url='', help='`vertex_ai_feature_group` represents the `google_vertex_ai_feature_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  big_query:: {
    big_query_source:: {
      '#new':: d.fn(help='\n`google.vertex_ai_feature_group.big_query.big_query_source.new` constructs a new object with attributes and blocks configured for the `big_query_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `input_uri` (`string`): BigQuery URI to a table, up to 2000 characters long. For example: &#39;bq://projectId.bqDatasetId.bqTableId.&#39;\n\n**Returns**:\n  - An attribute object that represents the `big_query_source` sub block.\n', args=[]),
      new(
        input_uri
      ):: std.prune(a={
        input_uri: input_uri,
      }),
    },
    '#new':: d.fn(help='\n`google.vertex_ai_feature_group.big_query.new` constructs a new object with attributes and blocks configured for the `big_query`\nTerraform sub block.\n\n\n\n**Args**:\n  - `entity_id_columns` (`list`): Columns to construct entityId / row keys. Currently only supports 1 entity_id_column. If not provided defaults to entityId. When `null`, the `entity_id_columns` field will be omitted from the resulting object.\n  - `big_query_source` (`list[obj]`): The BigQuery source URI that points to either a BigQuery Table or View. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.big_query.big_query_source.new](#fn-big_querybig_query_sourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `big_query` sub block.\n', args=[]),
    new(
      big_query_source=null,
      entity_id_columns=null
    ):: std.prune(a={
      big_query_source: big_query_source,
      entity_id_columns: entity_id_columns,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_feature_group.new` injects a new `google_vertex_ai_feature_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_feature_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_feature_group` using the reference:\n\n    $._ref.google_vertex_ai_feature_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_feature_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the FeatureGroup. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your FeatureGroup.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Group. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of feature group. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `big_query` (`list[obj]`): Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source. When `null`, the `big_query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.big_query.new](#fn-big_querynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    big_query=null,
    description=null,
    labels=null,
    name=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_feature_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      big_query=big_query,
      description=description,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_feature_group.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_feature_group`\nTerraform resource.\n\nUnlike [google.vertex_ai_feature_group.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the FeatureGroup. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your FeatureGroup.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Group. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of feature group. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `big_query` (`list[obj]`): Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source. When `null`, the `big_query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.big_query.new](#fn-big_querynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_feature_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    big_query=null,
    description=null,
    labels=null,
    name=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    big_query: big_query,
    description: description,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_feature_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBigQuery':: d.fn(help='`google.list[obj].withBigQuery` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the big_query field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBigQueryMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `big_query` field.\n', args=[]),
  withBigQuery(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          big_query: value,
        },
      },
    },
  },
  '#withBigQueryMixin':: d.fn(help='`google.list[obj].withBigQueryMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the big_query field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBigQuery](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `big_query` field.\n', args=[]),
  withBigQueryMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          big_query+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
