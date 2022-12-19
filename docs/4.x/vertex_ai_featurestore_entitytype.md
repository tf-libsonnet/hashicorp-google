---
permalink: /vertex_ai_featurestore_entitytype/
---

# vertex_ai_featurestore_entitytype

`vertex_ai_featurestore_entitytype` represents the `google_vertex_ai_featurestore_entitytype` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withFeaturestore()`](#fn-withfeaturestore)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMonitoringConfig()`](#fn-withmonitoringconfig)
* [`fn withMonitoringConfigMixin()`](#fn-withmonitoringconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj monitoring_config`](#obj-monitoring_config)
  * [`fn new()`](#fn-monitoring_confignew)
  * [`obj monitoring_config.categorical_threshold_config`](#obj-monitoring_configcategorical_threshold_config)
    * [`fn new()`](#fn-monitoring_configcategorical_threshold_confignew)
  * [`obj monitoring_config.import_features_analysis`](#obj-monitoring_configimport_features_analysis)
    * [`fn new()`](#fn-monitoring_configimport_features_analysisnew)
  * [`obj monitoring_config.numerical_threshold_config`](#obj-monitoring_confignumerical_threshold_config)
    * [`fn new()`](#fn-monitoring_confignumerical_threshold_confignew)
  * [`obj monitoring_config.snapshot_analysis`](#obj-monitoring_configsnapshot_analysis)
    * [`fn new()`](#fn-monitoring_configsnapshot_analysisnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.new` injects a new `google_vertex_ai_featurestore_entitytype` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_featurestore_entitytype.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_featurestore_entitytype` using the reference:

    $._ref.google_vertex_ai_featurestore_entitytype.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_featurestore_entitytype.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `featurestore` (`string`): The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  - `labels` (`obj`): A set of key/value label pairs to assign to this EntityType. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `monitoring_config` (`list[obj]`): The default monitoring configuration for all Features under this EntityType.

If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.monitoring_config.new](#fn-monitoring_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_featurestore_entitytype.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_featurestore_entitytype`
Terraform resource.

Unlike [google.vertex_ai_featurestore_entitytype.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `featurestore` (`string`): The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  - `labels` (`obj`): A set of key/value label pairs to assign to this EntityType. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `monitoring_config` (`list[obj]`): The default monitoring configuration for all Features under this EntityType.

If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.monitoring_config.new](#fn-monitoring_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_featurestore_entitytype` resource into the root Terraform configuration.


### fn withFeaturestore

```ts
withFeaturestore()
```

`google.string.withFeaturestore` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the featurestore field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `featurestore` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMonitoringConfig

```ts
withMonitoringConfig()
```

`google.list[obj].withMonitoringConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitoring_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMonitoringConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.


### fn withMonitoringConfigMixin

```ts
withMonitoringConfigMixin()
```

`google.list[obj].withMonitoringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitoring_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoringConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


## obj monitoring_config



### fn monitoring_config.new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.monitoring_config.new` constructs a new object with attributes and blocks configured for the `monitoring_config`
Terraform sub block.



**Args**:
  - `categorical_threshold_config` (`list[obj]`): Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING). When `null`, the `categorical_threshold_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.monitoring_config.categorical_threshold_config.new](#fn-monitoring_configcategorical_threshold_confignew) constructor.
  - `import_features_analysis` (`list[obj]`): The config for ImportFeatures Analysis Based Feature Monitoring. When `null`, the `import_features_analysis` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.monitoring_config.import_features_analysis.new](#fn-monitoring_configimport_features_analysisnew) constructor.
  - `numerical_threshold_config` (`list[obj]`): Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64). When `null`, the `numerical_threshold_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.monitoring_config.numerical_threshold_config.new](#fn-monitoring_confignumerical_threshold_confignew) constructor.
  - `snapshot_analysis` (`list[obj]`): The config for Snapshot Analysis Based Feature Monitoring. When `null`, the `snapshot_analysis` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore_entitytype.monitoring_config.snapshot_analysis.new](#fn-monitoring_configsnapshot_analysisnew) constructor.

**Returns**:
  - An attribute object that represents the `monitoring_config` sub block.


## obj monitoring_config.categorical_threshold_config



### fn monitoring_config.categorical_threshold_config.new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.monitoring_config.categorical_threshold_config.new` constructs a new object with attributes and blocks configured for the `categorical_threshold_config`
Terraform sub block.



**Args**:
  - `value` (`number`): Specify a threshold value that can trigger the alert. For categorical feature, the distribution distance is calculated by L-inifinity norm. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.

**Returns**:
  - An attribute object that represents the `categorical_threshold_config` sub block.


## obj monitoring_config.import_features_analysis



### fn monitoring_config.import_features_analysis.new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.monitoring_config.import_features_analysis.new` constructs a new object with attributes and blocks configured for the `import_features_analysis`
Terraform sub block.



**Args**:
  - `anomaly_detection_baseline` (`string`): Defines the baseline to do anomaly detection for feature values imported by each [entityTypes.importFeatureValues][] operation. The value must be one of the values below:
* LATEST_STATS: Choose the later one statistics generated by either most recent snapshot analysis or previous import features analysis. If non of them exists, skip anomaly detection and only generate a statistics.
* MOST_RECENT_SNAPSHOT_STATS: Use the statistics generated by the most recent snapshot analysis if exists.
* PREVIOUS_IMPORT_FEATURES_STATS: Use the statistics generated by the previous import features analysis if exists. When `null`, the `anomaly_detection_baseline` field will be omitted from the resulting object.
  - `state` (`string`): Whether to enable / disable / inherite default hebavior for import features analysis. The value must be one of the values below:
* DEFAULT: The default behavior of whether to enable the monitoring. EntityType-level config: disabled.
* ENABLED: Explicitly enables import features analysis. EntityType-level config: by default enables import features analysis for all Features under it.
* DISABLED: Explicitly disables import features analysis. EntityType-level config: by default disables import features analysis for all Features under it. When `null`, the `state` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `import_features_analysis` sub block.


## obj monitoring_config.numerical_threshold_config



### fn monitoring_config.numerical_threshold_config.new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.monitoring_config.numerical_threshold_config.new` constructs a new object with attributes and blocks configured for the `numerical_threshold_config`
Terraform sub block.



**Args**:
  - `value` (`number`): Specify a threshold value that can trigger the alert. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.

**Returns**:
  - An attribute object that represents the `numerical_threshold_config` sub block.


## obj monitoring_config.snapshot_analysis



### fn monitoring_config.snapshot_analysis.new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.monitoring_config.snapshot_analysis.new` constructs a new object with attributes and blocks configured for the `snapshot_analysis`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoringInterval for Features under it. When `null`, the `disabled` field will be omitted from the resulting object.
  - `monitoring_interval_days` (`number`): Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days. The default value is 1.
If both FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days and [FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval][] are set when creating/updating EntityTypes/Features, FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days will be used. When `null`, the `monitoring_interval_days` field will be omitted from the resulting object.
  - `staleness_days` (`number`): Customized export features time window for snapshot analysis. Unit is one day. The default value is 21 days. Minimum value is 1 day. Maximum value is 4000 days. When `null`, the `staleness_days` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `snapshot_analysis` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vertex_ai_featurestore_entitytype.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
