---
permalink: /vertex_ai_index/
---

# vertex_ai_index

`vertex_ai_index` represents the `google_vertex_ai_index` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withIndexUpdateMethod()`](#fn-withindexupdatemethod)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withMetadataMixin()`](#fn-withmetadatamixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj metadata`](#obj-metadata)
  * [`fn new()`](#fn-metadatanew)
  * [`obj metadata.config`](#obj-metadataconfig)
    * [`fn new()`](#fn-metadataconfignew)
    * [`obj metadata.config.algorithm_config`](#obj-metadataconfigalgorithm_config)
      * [`fn new()`](#fn-metadataconfigalgorithm_confignew)
      * [`obj metadata.config.algorithm_config.brute_force_config`](#obj-metadataconfigalgorithm_configbrute_force_config)
        * [`fn new()`](#fn-metadataconfigalgorithm_configbrute_force_confignew)
      * [`obj metadata.config.algorithm_config.tree_ah_config`](#obj-metadataconfigalgorithm_configtree_ah_config)
        * [`fn new()`](#fn-metadataconfigalgorithm_configtree_ah_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_index.new` injects a new `google_vertex_ai_index` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_index.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_index` using the reference:

    $._ref.google_vertex_ai_index.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_index.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  - `index_update_method` (`string`): The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
* BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
* STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time. When `null`, the `index_update_method` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the index. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `metadata` (`list[obj]`): An additional information about the Index When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.new](#fn-metadatanew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_index.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_index`
Terraform resource.

Unlike [google.vertex_ai_index.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  - `index_update_method` (`string`): The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
* BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
* STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time. When `null`, the `index_update_method` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the index. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `metadata` (`list[obj]`): An additional information about the Index When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.new](#fn-metadatanew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_index` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withIndexUpdateMethod

```ts
withIndexUpdateMethod()
```

`google.string.withIndexUpdateMethod` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the index_update_method field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `index_update_method` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMetadata

```ts
withMetadata()
```

`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


### fn withMetadataMixin

```ts
withMetadataMixin()
```

`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj metadata



### fn metadata.new

```ts
new()
```


`google.vertex_ai_index.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`
Terraform sub block.



**Args**:
  - `contents_delta_uri` (`string`): Allows inserting, updating  or deleting the contents of the Matching Engine Index.
The string must be a valid Cloud Storage directory path. If this
field is set when calling IndexService.UpdateIndex, then no other
Index field can be also updated as part of the same call.
The expected structure and format of the files this URI points to is
described at https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format When `null`, the `contents_delta_uri` field will be omitted from the resulting object.
  - `is_complete_overwrite` (`bool`): If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,
then existing content of the Index will be replaced by the data from the contentsDeltaUri. When `null`, the `is_complete_overwrite` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The configuration of the Matching Engine Index. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.new](#fn-metadataconfignew) constructor.

**Returns**:
  - An attribute object that represents the `metadata` sub block.


## obj metadata.config



### fn metadata.config.new

```ts
new()
```


`google.vertex_ai_index.metadata.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `approximate_neighbors_count` (`number`): The default number of neighbors to find via approximate search before exact reordering is
performed. Exact reordering is a procedure where results returned by an
approximate search algorithm are reordered via a more expensive distance computation.
Required if tree-AH algorithm is used. When `null`, the `approximate_neighbors_count` field will be omitted from the resulting object.
  - `dimensions` (`number`): The number of dimensions of the input vectors.
  - `distance_measure_type` (`string`): The distance measure used in nearest neighbor search. The value must be one of the followings:
* SQUARED_L2_DISTANCE: Euclidean (L_2) Distance
* L1_DISTANCE: Manhattan (L_1) Distance
* COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine similarity.
* DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a negative of the dot product When `null`, the `distance_measure_type` field will be omitted from the resulting object.
  - `feature_norm_type` (`string`): Type of normalization to be carried out on each vector. The value must be one of the followings:
* UNIT_L2_NORM: Unit L2 normalization type
* NONE: No normalization type is specified. When `null`, the `feature_norm_type` field will be omitted from the resulting object.
  - `shard_size` (`string`): Index data is split into equal parts to be processed. These are called &#34;shards&#34;.
The shard size must be specified when creating an index. The value must be one of the followings:
* SHARD_SIZE_SMALL: Small (2GB)
* SHARD_SIZE_MEDIUM: Medium (20GB)
* SHARD_SIZE_LARGE: Large (50GB) When `null`, the `shard_size` field will be omitted from the resulting object.
  - `algorithm_config` (`list[obj]`): The configuration with regard to the algorithms used for efficient search. When `null`, the `algorithm_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.algorithm_config.new](#fn-metadatametadataalgorithm_confignew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj metadata.config.algorithm_config



### fn metadata.config.algorithm_config.new

```ts
new()
```


`google.vertex_ai_index.metadata.config.algorithm_config.new` constructs a new object with attributes and blocks configured for the `algorithm_config`
Terraform sub block.



**Args**:
  - `brute_force_config` (`list[obj]`): Configuration options for using brute force search, which simply implements the
standard linear search in the database for each query. When `null`, the `brute_force_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.algorithm_config.brute_force_config.new](#fn-metadatametadataconfigbrute_force_confignew) constructor.
  - `tree_ah_config` (`list[obj]`): Configuration options for using the tree-AH algorithm (Shallow tree &#43; Asymmetric Hashing).
Please refer to this paper for more details: https://arxiv.org/abs/1908.10396 When `null`, the `tree_ah_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index.metadata.config.algorithm_config.tree_ah_config.new](#fn-metadatametadataconfigtree_ah_confignew) constructor.

**Returns**:
  - An attribute object that represents the `algorithm_config` sub block.


## obj metadata.config.algorithm_config.brute_force_config



### fn metadata.config.algorithm_config.brute_force_config.new

```ts
new()
```


`google.vertex_ai_index.metadata.config.algorithm_config.brute_force_config.new` constructs a new object with attributes and blocks configured for the `brute_force_config`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `brute_force_config` sub block.


## obj metadata.config.algorithm_config.tree_ah_config



### fn metadata.config.algorithm_config.tree_ah_config.new

```ts
new()
```


`google.vertex_ai_index.metadata.config.algorithm_config.tree_ah_config.new` constructs a new object with attributes and blocks configured for the `tree_ah_config`
Terraform sub block.



**Args**:
  - `leaf_node_embedding_count` (`number`): Number of embeddings on each leaf node. The default value is 1000 if not set. When `null`, the `leaf_node_embedding_count` field will be omitted from the resulting object.
  - `leaf_nodes_to_search_percent` (`number`): The default percentage of leaf nodes that any query may be searched. Must be in
range 1-100, inclusive. The default value is 10 (means 10%) if not set. When `null`, the `leaf_nodes_to_search_percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `tree_ah_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vertex_ai_index.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
