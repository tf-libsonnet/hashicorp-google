---
permalink: /vertex_ai_feature_online_store_featureview/
---

# vertex_ai_feature_online_store_featureview

`vertex_ai_feature_online_store_featureview` represents the `google_vertex_ai_feature_online_store_featureview` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigQuerySource()`](#fn-withbigquerysource)
* [`fn withBigQuerySourceMixin()`](#fn-withbigquerysourcemixin)
* [`fn withFeatureOnlineStore()`](#fn-withfeatureonlinestore)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSyncConfig()`](#fn-withsyncconfig)
* [`fn withSyncConfigMixin()`](#fn-withsyncconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj big_query_source`](#obj-big_query_source)
  * [`fn new()`](#fn-big_query_sourcenew)
* [`obj sync_config`](#obj-sync_config)
  * [`fn new()`](#fn-sync_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_feature_online_store_featureview.new` injects a new `google_vertex_ai_feature_online_store_featureview` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_feature_online_store_featureview.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_feature_online_store_featureview` using the reference:

    $._ref.google_vertex_ai_feature_online_store_featureview.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_feature_online_store_featureview.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.
  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.
  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.
  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_feature_online_store_featureview.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_feature_online_store_featureview`
Terraform resource.

Unlike [google.vertex_ai_feature_online_store_featureview.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.
  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.
  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.
  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_feature_online_store_featureview` resource into the root Terraform configuration.


### fn withBigQuerySource

```ts
withBigQuerySource()
```

`google.list[obj].withBigQuerySource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the big_query_source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBigQuerySourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `big_query_source` field.


### fn withBigQuerySourceMixin

```ts
withBigQuerySourceMixin()
```

`google.list[obj].withBigQuerySourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the big_query_source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBigQuerySource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `big_query_source` field.


### fn withFeatureOnlineStore

```ts
withFeatureOnlineStore()
```

`google.string.withFeatureOnlineStore` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the feature_online_store field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `feature_online_store` field.


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


### fn withSyncConfig

```ts
withSyncConfig()
```

`google.list[obj].withSyncConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sync_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSyncConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sync_config` field.


### fn withSyncConfigMixin

```ts
withSyncConfigMixin()
```

`google.list[obj].withSyncConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sync_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSyncConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sync_config` field.


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


## obj big_query_source



### fn big_query_source.new

```ts
new()
```


`google.vertex_ai_feature_online_store_featureview.big_query_source.new` constructs a new object with attributes and blocks configured for the `big_query_source`
Terraform sub block.



**Args**:
  - `entity_id_columns` (`list`): Columns to construct entityId / row keys. Start by supporting 1 only.
  - `uri` (`string`): The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.

**Returns**:
  - An attribute object that represents the `big_query_source` sub block.


## obj sync_config



### fn sync_config.new

```ts
new()
```


`google.vertex_ai_feature_online_store_featureview.sync_config.new` constructs a new object with attributes and blocks configured for the `sync_config`
Terraform sub block.



**Args**:
  - `cron` (`string`): Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#34;CRON_TZ=${IANA_TIME_ZONE}&#34; or &#34;TZ=${IANA_TIME_ZONE}&#34;. When `null`, the `cron` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sync_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vertex_ai_feature_online_store_featureview.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
