local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_index', url='', help='`vertex_ai_index` represents the `google_vertex_ai_index` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metadata:: {
    config:: {
      algorithm_config:: {
        brute_force_config:: {
          '#new':: d.fn(help='\n`google.vertex_ai_index.metadata.config.algorithm_config.brute_force_config.new` constructs a new object with attributes and blocks configured for the `brute_force_config`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `brute_force_config` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
        '#new':: d.fn(help='\n`google.vertex_ai_index.metadata.config.algorithm_config.new` constructs a new object with attributes and blocks configured for the `algorithm_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `brute_force_config` (`list[obj]`): Configuration options for using brute force search, which simply implements the\nstandard linear search in the database for each query. When `null`, the `brute_force_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.algorithm_config.brute_force_config.new](#fn-metadatametadataconfigbrute_force_confignew) constructor.\n  - `tree_ah_config` (`list[obj]`): Configuration options for using the tree-AH algorithm (Shallow tree &#43; Asymmetric Hashing).\nPlease refer to this paper for more details: https://arxiv.org/abs/1908.10396 When `null`, the `tree_ah_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.algorithm_config.tree_ah_config.new](#fn-metadatametadataconfigtree_ah_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `algorithm_config` sub block.\n', args=[]),
        new(
          brute_force_config=null,
          tree_ah_config=null
        ):: std.prune(a={
          brute_force_config: brute_force_config,
          tree_ah_config: tree_ah_config,
        }),
        tree_ah_config:: {
          '#new':: d.fn(help='\n`google.vertex_ai_index.metadata.config.algorithm_config.tree_ah_config.new` constructs a new object with attributes and blocks configured for the `tree_ah_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `leaf_node_embedding_count` (`number`): Number of embeddings on each leaf node. The default value is 1000 if not set. When `null`, the `leaf_node_embedding_count` field will be omitted from the resulting object.\n  - `leaf_nodes_to_search_percent` (`number`): The default percentage of leaf nodes that any query may be searched. Must be in\nrange 1-100, inclusive. The default value is 10 (means 10%) if not set. When `null`, the `leaf_nodes_to_search_percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `tree_ah_config` sub block.\n', args=[]),
          new(
            leaf_node_embedding_count=null,
            leaf_nodes_to_search_percent=null
          ):: std.prune(a={
            leaf_node_embedding_count: leaf_node_embedding_count,
            leaf_nodes_to_search_percent: leaf_nodes_to_search_percent,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.vertex_ai_index.metadata.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `approximate_neighbors_count` (`number`): The default number of neighbors to find via approximate search before exact reordering is\nperformed. Exact reordering is a procedure where results returned by an\napproximate search algorithm are reordered via a more expensive distance computation.\nRequired if tree-AH algorithm is used. When `null`, the `approximate_neighbors_count` field will be omitted from the resulting object.\n  - `dimensions` (`number`): The number of dimensions of the input vectors.\n  - `distance_measure_type` (`string`): The distance measure used in nearest neighbor search. The value must be one of the followings:\n* SQUARED_L2_DISTANCE: Euclidean (L_2) Distance\n* L1_DISTANCE: Manhattan (L_1) Distance\n* COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine similarity.\n* DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a negative of the dot product When `null`, the `distance_measure_type` field will be omitted from the resulting object.\n  - `feature_norm_type` (`string`): Type of normalization to be carried out on each vector. The value must be one of the followings:\n* UNIT_L2_NORM: Unit L2 normalization type\n* NONE: No normalization type is specified. When `null`, the `feature_norm_type` field will be omitted from the resulting object.\n  - `shard_size` (`string`): Index data is split into equal parts to be processed. These are called &#34;shards&#34;.\nThe shard size must be specified when creating an index. The value must be one of the followings:\n* SHARD_SIZE_SMALL: Small (2GB)\n* SHARD_SIZE_MEDIUM: Medium (20GB)\n* SHARD_SIZE_LARGE: Large (50GB) When `null`, the `shard_size` field will be omitted from the resulting object.\n  - `algorithm_config` (`list[obj]`): The configuration with regard to the algorithms used for efficient search. When `null`, the `algorithm_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.algorithm_config.new](#fn-metadatametadataalgorithm_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
      new(
        dimensions,
        algorithm_config=null,
        approximate_neighbors_count=null,
        distance_measure_type=null,
        feature_norm_type=null,
        shard_size=null
      ):: std.prune(a={
        algorithm_config: algorithm_config,
        approximate_neighbors_count: approximate_neighbors_count,
        dimensions: dimensions,
        distance_measure_type: distance_measure_type,
        feature_norm_type: feature_norm_type,
        shard_size: shard_size,
      }),
    },
    '#new':: d.fn(help='\n`google.vertex_ai_index.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `contents_delta_uri` (`string`): Allows inserting, updating  or deleting the contents of the Matching Engine Index.\nThe string must be a valid Cloud Storage directory path. If this\nfield is set when calling IndexService.UpdateIndex, then no other\nIndex field can be also updated as part of the same call.\nThe expected structure and format of the files this URI points to is\ndescribed at https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format\n  - `is_complete_overwrite` (`bool`): If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,\nthen existing content of the Index will be replaced by the data from the contentsDeltaUri. When `null`, the `is_complete_overwrite` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The configuration of the Matching Engine Index. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.new](#fn-metadataconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metadata` sub block.\n', args=[]),
    new(
      contents_delta_uri,
      config=null,
      is_complete_overwrite=null
    ):: std.prune(a={
      config: config,
      contents_delta_uri: contents_delta_uri,
      is_complete_overwrite: is_complete_overwrite,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_index.new` injects a new `google_vertex_ai_index` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_index.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_index` using the reference:\n\n    $._ref.google_vertex_ai_index.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_index.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.\n  - `index_update_method` (`string`): The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.\n* BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.\n* STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time. When `null`, the `index_update_method` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the index. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `metadata` (`list[obj]`): An additional information about the Index When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.new](#fn-metadatanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    description=null,
    index_update_method=null,
    labels=null,
    metadata=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_index',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      index_update_method=index_update_method,
      labels=labels,
      metadata=metadata,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_index.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_index`\nTerraform resource.\n\nUnlike [google.vertex_ai_index.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.\n  - `index_update_method` (`string`): The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.\n* BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.\n* STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time. When `null`, the `index_update_method` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the index. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `metadata` (`list[obj]`): An additional information about the Index When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.new](#fn-metadatanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_index` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    description=null,
    index_update_method=null,
    labels=null,
    metadata=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    index_update_method: index_update_method,
    labels: labels,
    metadata: metadata,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_index.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withIndexUpdateMethod':: d.fn(help='`google.string.withIndexUpdateMethod` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the index_update_method field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `index_update_method` field.\n', args=[]),
  withIndexUpdateMethod(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          index_update_method: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataMixin':: d.fn(help='`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadataMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
