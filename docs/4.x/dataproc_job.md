---
permalink: /dataproc_job/
---

# dataproc_job

`dataproc_job` represents the `google_dataproc_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withForceDelete()`](#fn-withforcedelete)
* [`fn withHadoopConfig()`](#fn-withhadoopconfig)
* [`fn withHadoopConfigMixin()`](#fn-withhadoopconfigmixin)
* [`fn withHiveConfig()`](#fn-withhiveconfig)
* [`fn withHiveConfigMixin()`](#fn-withhiveconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withPigConfig()`](#fn-withpigconfig)
* [`fn withPigConfigMixin()`](#fn-withpigconfigmixin)
* [`fn withPlacement()`](#fn-withplacement)
* [`fn withPlacementMixin()`](#fn-withplacementmixin)
* [`fn withPrestoConfig()`](#fn-withprestoconfig)
* [`fn withPrestoConfigMixin()`](#fn-withprestoconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withPysparkConfig()`](#fn-withpysparkconfig)
* [`fn withPysparkConfigMixin()`](#fn-withpysparkconfigmixin)
* [`fn withReference()`](#fn-withreference)
* [`fn withReferenceMixin()`](#fn-withreferencemixin)
* [`fn withRegion()`](#fn-withregion)
* [`fn withScheduling()`](#fn-withscheduling)
* [`fn withSchedulingMixin()`](#fn-withschedulingmixin)
* [`fn withSparkConfig()`](#fn-withsparkconfig)
* [`fn withSparkConfigMixin()`](#fn-withsparkconfigmixin)
* [`fn withSparksqlConfig()`](#fn-withsparksqlconfig)
* [`fn withSparksqlConfigMixin()`](#fn-withsparksqlconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj hadoop_config`](#obj-hadoop_config)
  * [`fn new()`](#fn-hadoop_confignew)
  * [`obj hadoop_config.logging_config`](#obj-hadoop_configlogging_config)
    * [`fn new()`](#fn-hadoop_configlogging_confignew)
* [`obj hive_config`](#obj-hive_config)
  * [`fn new()`](#fn-hive_confignew)
* [`obj pig_config`](#obj-pig_config)
  * [`fn new()`](#fn-pig_confignew)
  * [`obj pig_config.logging_config`](#obj-pig_configlogging_config)
    * [`fn new()`](#fn-pig_configlogging_confignew)
* [`obj placement`](#obj-placement)
  * [`fn new()`](#fn-placementnew)
* [`obj presto_config`](#obj-presto_config)
  * [`fn new()`](#fn-presto_confignew)
  * [`obj presto_config.logging_config`](#obj-presto_configlogging_config)
    * [`fn new()`](#fn-presto_configlogging_confignew)
* [`obj pyspark_config`](#obj-pyspark_config)
  * [`fn new()`](#fn-pyspark_confignew)
  * [`obj pyspark_config.logging_config`](#obj-pyspark_configlogging_config)
    * [`fn new()`](#fn-pyspark_configlogging_confignew)
* [`obj reference`](#obj-reference)
  * [`fn new()`](#fn-referencenew)
* [`obj scheduling`](#obj-scheduling)
  * [`fn new()`](#fn-schedulingnew)
* [`obj spark_config`](#obj-spark_config)
  * [`fn new()`](#fn-spark_confignew)
  * [`obj spark_config.logging_config`](#obj-spark_configlogging_config)
    * [`fn new()`](#fn-spark_configlogging_confignew)
* [`obj sparksql_config`](#obj-sparksql_config)
  * [`fn new()`](#fn-sparksql_confignew)
  * [`obj sparksql_config.logging_config`](#obj-sparksql_configlogging_config)
    * [`fn new()`](#fn-sparksql_configlogging_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dataproc_job.new` injects a new `google_dataproc_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataproc_job.new('some_id')

You can get the reference to the `id` field of the created `google.dataproc_job` using the reference:

    $._ref.google_dataproc_job.some_id.get('id')

This is the same as directly entering `"${ google_dataproc_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `force_delete` (`bool`): By default, you can only delete inactive jobs within Dataproc. Setting this to true, and calling destroy, will ensure that the job is first cancelled before issuing the delete. When `null`, the `force_delete` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. The labels to associate with this job. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): The project in which the cluster can be found and jobs subsequently run against. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Cloud Dataproc region. This essentially determines which clusters are available for this job to be submitted to. If not specified, defaults to global. When `null`, the `region` field will be omitted from the resulting object.
  - `hadoop_config` (`list[obj]`): The config of Hadoop job When `null`, the `hadoop_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hadoop_config.new](#fn-dataprocjobhadoopconfignew) constructor.
  - `hive_config` (`list[obj]`): The config of hive job When `null`, the `hive_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hive_config.new](#fn-dataprocjobhiveconfignew) constructor.
  - `pig_config` (`list[obj]`): The config of pag job. When `null`, the `pig_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pig_config.new](#fn-dataprocjobpigconfignew) constructor.
  - `placement` (`list[obj]`): The config of job placement. When `null`, the `placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.placement.new](#fn-dataprocjobplacementnew) constructor.
  - `presto_config` (`list[obj]`): The config of presto job When `null`, the `presto_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.presto_config.new](#fn-dataprocjobprestoconfignew) constructor.
  - `pyspark_config` (`list[obj]`): The config of pySpark job. When `null`, the `pyspark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pyspark_config.new](#fn-dataprocjobpysparkconfignew) constructor.
  - `reference` (`list[obj]`): The reference of the job When `null`, the `reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.reference.new](#fn-dataprocjobreferencenew) constructor.
  - `scheduling` (`list[obj]`): Optional. Job scheduling configuration. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.scheduling.new](#fn-dataprocjobschedulingnew) constructor.
  - `spark_config` (`list[obj]`): The config of the Spark job. When `null`, the `spark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.spark_config.new](#fn-dataprocjobsparkconfignew) constructor.
  - `sparksql_config` (`list[obj]`): The config of SparkSql job When `null`, the `sparksql_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.sparksql_config.new](#fn-dataprocjobsparksqlconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.timeouts.new](#fn-dataprocjobtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataproc_job.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_job`
Terraform resource.

Unlike [google.dataproc_job.new](#fn-dataprocjobnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `force_delete` (`bool`): By default, you can only delete inactive jobs within Dataproc. Setting this to true, and calling destroy, will ensure that the job is first cancelled before issuing the delete. When `null`, the `force_delete` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. The labels to associate with this job. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): The project in which the cluster can be found and jobs subsequently run against. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Cloud Dataproc region. This essentially determines which clusters are available for this job to be submitted to. If not specified, defaults to global. When `null`, the `region` field will be omitted from the resulting object.
  - `hadoop_config` (`list[obj]`): The config of Hadoop job When `null`, the `hadoop_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hadoop_config.new](#fn-dataprocjobhadoopconfignew) constructor.
  - `hive_config` (`list[obj]`): The config of hive job When `null`, the `hive_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hive_config.new](#fn-dataprocjobhiveconfignew) constructor.
  - `pig_config` (`list[obj]`): The config of pag job. When `null`, the `pig_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pig_config.new](#fn-dataprocjobpigconfignew) constructor.
  - `placement` (`list[obj]`): The config of job placement. When `null`, the `placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.placement.new](#fn-dataprocjobplacementnew) constructor.
  - `presto_config` (`list[obj]`): The config of presto job When `null`, the `presto_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.presto_config.new](#fn-dataprocjobprestoconfignew) constructor.
  - `pyspark_config` (`list[obj]`): The config of pySpark job. When `null`, the `pyspark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pyspark_config.new](#fn-dataprocjobpysparkconfignew) constructor.
  - `reference` (`list[obj]`): The reference of the job When `null`, the `reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.reference.new](#fn-dataprocjobreferencenew) constructor.
  - `scheduling` (`list[obj]`): Optional. Job scheduling configuration. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.scheduling.new](#fn-dataprocjobschedulingnew) constructor.
  - `spark_config` (`list[obj]`): The config of the Spark job. When `null`, the `spark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.spark_config.new](#fn-dataprocjobsparkconfignew) constructor.
  - `sparksql_config` (`list[obj]`): The config of SparkSql job When `null`, the `sparksql_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.sparksql_config.new](#fn-dataprocjobsparksqlconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.timeouts.new](#fn-dataprocjobtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_job` resource into the root Terraform configuration.


### fn withForceDelete

```ts
withForceDelete()
```

`google.bool.withForceDelete` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_delete field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_delete` field.


### fn withHadoopConfig

```ts
withHadoopConfig()
```

`google.list[obj].withHadoopConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hadoop_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHadoopConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hadoop_config` field.


### fn withHadoopConfigMixin

```ts
withHadoopConfigMixin()
```

`google.list[obj].withHadoopConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hadoop_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHadoopConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hadoop_config` field.


### fn withHiveConfig

```ts
withHiveConfig()
```

`google.list[obj].withHiveConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHiveConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_config` field.


### fn withHiveConfigMixin

```ts
withHiveConfigMixin()
```

`google.list[obj].withHiveConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the hive_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHiveConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `hive_config` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withPigConfig

```ts
withPigConfig()
```

`google.list[obj].withPigConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pig_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPigConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pig_config` field.


### fn withPigConfigMixin

```ts
withPigConfigMixin()
```

`google.list[obj].withPigConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pig_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPigConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pig_config` field.


### fn withPlacement

```ts
withPlacement()
```

`google.list[obj].withPlacement` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the placement field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPlacementMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `placement` field.


### fn withPlacementMixin

```ts
withPlacementMixin()
```

`google.list[obj].withPlacementMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the placement field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPlacement](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `placement` field.


### fn withPrestoConfig

```ts
withPrestoConfig()
```

`google.list[obj].withPrestoConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the presto_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPrestoConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `presto_config` field.


### fn withPrestoConfigMixin

```ts
withPrestoConfigMixin()
```

`google.list[obj].withPrestoConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the presto_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPrestoConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `presto_config` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPysparkConfig

```ts
withPysparkConfig()
```

`google.list[obj].withPysparkConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pyspark_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPysparkConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pyspark_config` field.


### fn withPysparkConfigMixin

```ts
withPysparkConfigMixin()
```

`google.list[obj].withPysparkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pyspark_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPysparkConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pyspark_config` field.


### fn withReference

```ts
withReference()
```

`google.list[obj].withReference` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the reference field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withReferenceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `reference` field.


### fn withReferenceMixin

```ts
withReferenceMixin()
```

`google.list[obj].withReferenceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the reference field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withReference](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `reference` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withScheduling

```ts
withScheduling()
```

`google.list[obj].withScheduling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSchedulingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling` field.


### fn withSchedulingMixin

```ts
withSchedulingMixin()
```

`google.list[obj].withSchedulingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withScheduling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling` field.


### fn withSparkConfig

```ts
withSparkConfig()
```

`google.list[obj].withSparkConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spark_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSparkConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spark_config` field.


### fn withSparkConfigMixin

```ts
withSparkConfigMixin()
```

`google.list[obj].withSparkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spark_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSparkConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spark_config` field.


### fn withSparksqlConfig

```ts
withSparksqlConfig()
```

`google.list[obj].withSparksqlConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sparksql_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSparksqlConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sparksql_config` field.


### fn withSparksqlConfigMixin

```ts
withSparksqlConfigMixin()
```

`google.list[obj].withSparksqlConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sparksql_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSparksqlConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sparksql_config` field.


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


## obj hadoop_config



### fn hadoop_config.new

```ts
new()
```


`google.dataproc_job.hadoop_config.new` constructs a new object with attributes and blocks configured for the `hadoop_config`
Terraform sub block.



**Args**:
  - `archive_uris` (`list`): HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.
  - `args` (`list`): The arguments to pass to the driver. When `null`, the `args` field will be omitted from the resulting object.
  - `file_uris` (`list`): HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.
  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.
  - `main_class` (`string`): The class containing the main method of the driver. Must be in a provided jar or jar that is already on the classpath. Conflicts with main_jar_file_uri When `null`, the `main_class` field will be omitted from the resulting object.
  - `main_jar_file_uri` (`string`): The HCFS URI of jar file containing the driver jar. Conflicts with main_class When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.
  - `properties` (`obj`): A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.
  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hadoop_config.logging_config.new](#fn-hadoopconfigloggingconfignew) constructor.

**Returns**:
  - An attribute object that represents the `hadoop_config` sub block.


## obj hadoop_config.logging_config



### fn hadoop_config.logging_config.new

```ts
new()
```


`google.dataproc_job.hadoop_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj hive_config



### fn hive_config.new

```ts
new()
```


`google.dataproc_job.hive_config.new` constructs a new object with attributes and blocks configured for the `hive_config`
Terraform sub block.



**Args**:
  - `continue_on_failure` (`bool`): Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false. When `null`, the `continue_on_failure` field will be omitted from the resulting object.
  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs. When `null`, the `jar_file_uris` field will be omitted from the resulting object.
  - `properties` (`obj`): A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.
  - `query_file_uri` (`string`): HCFS URI of file containing Hive script to execute as the job. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.
  - `query_list` (`list`): The list of Hive queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.
  - `script_variables` (`obj`): Mapping of query variable names to values (equivalent to the Hive command: SET name=&#34;value&#34;;). When `null`, the `script_variables` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `hive_config` sub block.


## obj pig_config



### fn pig_config.new

```ts
new()
```


`google.dataproc_job.pig_config.new` constructs a new object with attributes and blocks configured for the `pig_config`
Terraform sub block.



**Args**:
  - `continue_on_failure` (`bool`): Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false. When `null`, the `continue_on_failure` field will be omitted from the resulting object.
  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs. When `null`, the `jar_file_uris` field will be omitted from the resulting object.
  - `properties` (`obj`): A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.
  - `query_file_uri` (`string`): HCFS URI of file containing Hive script to execute as the job. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.
  - `query_list` (`list`): The list of Hive queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.
  - `script_variables` (`obj`): Mapping of query variable names to values (equivalent to the Pig command: name=[value]). When `null`, the `script_variables` field will be omitted from the resulting object.
  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pig_config.logging_config.new](#fn-pigconfigloggingconfignew) constructor.

**Returns**:
  - An attribute object that represents the `pig_config` sub block.


## obj pig_config.logging_config



### fn pig_config.logging_config.new

```ts
new()
```


`google.dataproc_job.pig_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj placement



### fn placement.new

```ts
new()
```


`google.dataproc_job.placement.new` constructs a new object with attributes and blocks configured for the `placement`
Terraform sub block.



**Args**:
  - `cluster_name` (`string`): The name of the cluster where the job will be submitted

**Returns**:
  - An attribute object that represents the `placement` sub block.


## obj presto_config



### fn presto_config.new

```ts
new()
```


`google.dataproc_job.presto_config.new` constructs a new object with attributes and blocks configured for the `presto_config`
Terraform sub block.



**Args**:
  - `client_tags` (`list`): Presto client tags to attach to this query. When `null`, the `client_tags` field will be omitted from the resulting object.
  - `continue_on_failure` (`bool`): Whether to continue executing queries if a query fails. Setting to true can be useful when executing independent parallel queries. Defaults to false. When `null`, the `continue_on_failure` field will be omitted from the resulting object.
  - `output_format` (`string`): The format in which query output will be displayed. See the Presto documentation for supported output formats. When `null`, the `output_format` field will be omitted from the resulting object.
  - `properties` (`obj`): A mapping of property names to values. Used to set Presto session properties Equivalent to using the --session flag in the Presto CLI. When `null`, the `properties` field will be omitted from the resulting object.
  - `query_file_uri` (`string`): The HCFS URI of the script that contains SQL queries. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.
  - `query_list` (`list`): The list of SQL queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.
  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.presto_config.logging_config.new](#fn-prestoconfigloggingconfignew) constructor.

**Returns**:
  - An attribute object that represents the `presto_config` sub block.


## obj presto_config.logging_config



### fn presto_config.logging_config.new

```ts
new()
```


`google.dataproc_job.presto_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj pyspark_config



### fn pyspark_config.new

```ts
new()
```


`google.dataproc_job.pyspark_config.new` constructs a new object with attributes and blocks configured for the `pyspark_config`
Terraform sub block.



**Args**:
  - `archive_uris` (`list`): Optional. HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip When `null`, the `archive_uris` field will be omitted from the resulting object.
  - `args` (`list`): Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission When `null`, the `args` field will be omitted from the resulting object.
  - `file_uris` (`list`): Optional. HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks When `null`, the `file_uris` field will be omitted from the resulting object.
  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks When `null`, the `jar_file_uris` field will be omitted from the resulting object.
  - `main_python_file_uri` (`string`): Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file
  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code When `null`, the `properties` field will be omitted from the resulting object.
  - `python_file_uris` (`list`): Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip When `null`, the `python_file_uris` field will be omitted from the resulting object.
  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pyspark_config.logging_config.new](#fn-pysparkconfigloggingconfignew) constructor.

**Returns**:
  - An attribute object that represents the `pyspark_config` sub block.


## obj pyspark_config.logging_config



### fn pyspark_config.logging_config.new

```ts
new()
```


`google.dataproc_job.pyspark_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj reference



### fn reference.new

```ts
new()
```


`google.dataproc_job.reference.new` constructs a new object with attributes and blocks configured for the `reference`
Terraform sub block.



**Args**:
  - `job_id` (`string`): The job ID, which must be unique within the project. The job ID is generated by the server upon job submission or provided by the user as a means to perform retries without creating duplicate jobs When `null`, the `job_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reference` sub block.


## obj scheduling



### fn scheduling.new

```ts
new()
```


`google.dataproc_job.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`
Terraform sub block.



**Args**:
  - `max_failures_per_hour` (`number`): Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  - `max_failures_total` (`number`): Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.

**Returns**:
  - An attribute object that represents the `scheduling` sub block.


## obj spark_config



### fn spark_config.new

```ts
new()
```


`google.dataproc_job.spark_config.new` constructs a new object with attributes and blocks configured for the `spark_config`
Terraform sub block.



**Args**:
  - `archive_uris` (`list`): HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.
  - `args` (`list`): The arguments to pass to the driver. When `null`, the `args` field will be omitted from the resulting object.
  - `file_uris` (`list`): HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.
  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.
  - `main_class` (`string`): The class containing the main method of the driver. Must be in a provided jar or jar that is already on the classpath. Conflicts with main_jar_file_uri When `null`, the `main_class` field will be omitted from the resulting object.
  - `main_jar_file_uri` (`string`): The HCFS URI of jar file containing the driver jar. Conflicts with main_class When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.
  - `properties` (`obj`): A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.
  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.spark_config.logging_config.new](#fn-sparkconfigloggingconfignew) constructor.

**Returns**:
  - An attribute object that represents the `spark_config` sub block.


## obj spark_config.logging_config



### fn spark_config.logging_config.new

```ts
new()
```


`google.dataproc_job.spark_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj sparksql_config



### fn sparksql_config.new

```ts
new()
```


`google.dataproc_job.sparksql_config.new` constructs a new object with attributes and blocks configured for the `sparksql_config`
Terraform sub block.



**Args**:
  - `jar_file_uris` (`list`): HCFS URIs of jar files to be added to the Spark CLASSPATH. When `null`, the `jar_file_uris` field will be omitted from the resulting object.
  - `properties` (`obj`): A mapping of property names to values, used to configure Spark SQL&#39;s SparkConf. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. When `null`, the `properties` field will be omitted from the resulting object.
  - `query_file_uri` (`string`): The HCFS URI of the script that contains SQL queries. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.
  - `query_list` (`list`): The list of SQL queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.
  - `script_variables` (`obj`): Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=&#34;value&#34;;). When `null`, the `script_variables` field will be omitted from the resulting object.
  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.sparksql_config.logging_config.new](#fn-sparksqlconfigloggingconfignew) constructor.

**Returns**:
  - An attribute object that represents the `sparksql_config` sub block.


## obj sparksql_config.logging_config



### fn sparksql_config.logging_config.new

```ts
new()
```


`google.dataproc_job.sparksql_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataproc_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
