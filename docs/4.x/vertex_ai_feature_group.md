---
permalink: /vertex_ai_feature_group/
---

# vertex_ai_feature_group

`vertex_ai_feature_group` represents the `google_vertex_ai_feature_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigQuery()`](#fn-withbigquery)
* [`fn withBigQueryMixin()`](#fn-withbigquerymixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj big_query`](#obj-big_query)
  * [`fn new()`](#fn-big_querynew)
  * [`obj big_query.big_query_source`](#obj-big_querybig_query_source)
    * [`fn new()`](#fn-big_querybig_query_sourcenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_feature_group.new` injects a new `google_vertex_ai_feature_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_feature_group.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_feature_group` using the reference:

    $._ref.google_vertex_ai_feature_group.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_feature_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The description of the FeatureGroup. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels with user-defined metadata to organize your FeatureGroup.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the Feature Group. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of feature group. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `big_query` (`list[obj]`): Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source. When `null`, the `big_query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.big_query.new](#fn-big_querynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_feature_group.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_feature_group`
Terraform resource.

Unlike [google.vertex_ai_feature_group.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The description of the FeatureGroup. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels with user-defined metadata to organize your FeatureGroup.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the Feature Group. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of feature group. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `big_query` (`list[obj]`): Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source. When `null`, the `big_query` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.big_query.new](#fn-big_querynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_feature_group` resource into the root Terraform configuration.


### fn withBigQuery

```ts
withBigQuery()
```

`google.list[obj].withBigQuery` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the big_query field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBigQueryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `big_query` field.


### fn withBigQueryMixin

```ts
withBigQueryMixin()
```

`google.list[obj].withBigQueryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the big_query field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBigQuery](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `big_query` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


## obj big_query



### fn big_query.new

```ts
new()
```


`google.vertex_ai_feature_group.big_query.new` constructs a new object with attributes and blocks configured for the `big_query`
Terraform sub block.



**Args**:
  - `entity_id_columns` (`list`): Columns to construct entityId / row keys. Currently only supports 1 entity_id_column. If not provided defaults to entityId. When `null`, the `entity_id_columns` field will be omitted from the resulting object.
  - `big_query_source` (`list[obj]`): The BigQuery source URI that points to either a BigQuery Table or View. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_group.big_query.big_query_source.new](#fn-big_querybig_query_sourcenew) constructor.

**Returns**:
  - An attribute object that represents the `big_query` sub block.


## obj big_query.big_query_source



### fn big_query.big_query_source.new

```ts
new()
```


`google.vertex_ai_feature_group.big_query.big_query_source.new` constructs a new object with attributes and blocks configured for the `big_query_source`
Terraform sub block.



**Args**:
  - `input_uri` (`string`): BigQuery URI to a table, up to 2000 characters long. For example: &#39;bq://projectId.bqDatasetId.bqTableId.&#39;

**Returns**:
  - An attribute object that represents the `big_query_source` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vertex_ai_feature_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
