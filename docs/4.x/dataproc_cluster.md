---
permalink: /dataproc_cluster/
---

# dataproc_cluster

`dataproc_cluster` represents the `google_dataproc_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterConfig()`](#fn-withclusterconfig)
* [`fn withClusterConfigMixin()`](#fn-withclusterconfigmixin)
* [`fn withGracefulDecommissionTimeout()`](#fn-withgracefuldecommissiontimeout)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVirtualClusterConfig()`](#fn-withvirtualclusterconfig)
* [`fn withVirtualClusterConfigMixin()`](#fn-withvirtualclusterconfigmixin)
* [`obj cluster_config`](#obj-cluster_config)
  * [`fn new()`](#fn-cluster_confignew)
  * [`obj cluster_config.autoscaling_config`](#obj-cluster_configautoscaling_config)
    * [`fn new()`](#fn-cluster_configautoscaling_confignew)
  * [`obj cluster_config.dataproc_metric_config`](#obj-cluster_configdataproc_metric_config)
    * [`fn new()`](#fn-cluster_configdataproc_metric_confignew)
    * [`obj cluster_config.dataproc_metric_config.metrics`](#obj-cluster_configdataproc_metric_configmetrics)
      * [`fn new()`](#fn-cluster_configdataproc_metric_configmetricsnew)
  * [`obj cluster_config.encryption_config`](#obj-cluster_configencryption_config)
    * [`fn new()`](#fn-cluster_configencryption_confignew)
  * [`obj cluster_config.endpoint_config`](#obj-cluster_configendpoint_config)
    * [`fn new()`](#fn-cluster_configendpoint_confignew)
  * [`obj cluster_config.gce_cluster_config`](#obj-cluster_configgce_cluster_config)
    * [`fn new()`](#fn-cluster_configgce_cluster_confignew)
    * [`obj cluster_config.gce_cluster_config.node_group_affinity`](#obj-cluster_configgce_cluster_confignode_group_affinity)
      * [`fn new()`](#fn-cluster_configgce_cluster_confignode_group_affinitynew)
    * [`obj cluster_config.gce_cluster_config.reservation_affinity`](#obj-cluster_configgce_cluster_configreservation_affinity)
      * [`fn new()`](#fn-cluster_configgce_cluster_configreservation_affinitynew)
    * [`obj cluster_config.gce_cluster_config.shielded_instance_config`](#obj-cluster_configgce_cluster_configshielded_instance_config)
      * [`fn new()`](#fn-cluster_configgce_cluster_configshielded_instance_confignew)
  * [`obj cluster_config.initialization_action`](#obj-cluster_configinitialization_action)
    * [`fn new()`](#fn-cluster_configinitialization_actionnew)
  * [`obj cluster_config.lifecycle_config`](#obj-cluster_configlifecycle_config)
    * [`fn new()`](#fn-cluster_configlifecycle_confignew)
  * [`obj cluster_config.master_config`](#obj-cluster_configmaster_config)
    * [`fn new()`](#fn-cluster_configmaster_confignew)
    * [`obj cluster_config.master_config.accelerators`](#obj-cluster_configmaster_configaccelerators)
      * [`fn new()`](#fn-cluster_configmaster_configacceleratorsnew)
    * [`obj cluster_config.master_config.disk_config`](#obj-cluster_configmaster_configdisk_config)
      * [`fn new()`](#fn-cluster_configmaster_configdisk_confignew)
  * [`obj cluster_config.metastore_config`](#obj-cluster_configmetastore_config)
    * [`fn new()`](#fn-cluster_configmetastore_confignew)
  * [`obj cluster_config.preemptible_worker_config`](#obj-cluster_configpreemptible_worker_config)
    * [`fn new()`](#fn-cluster_configpreemptible_worker_confignew)
    * [`obj cluster_config.preemptible_worker_config.disk_config`](#obj-cluster_configpreemptible_worker_configdisk_config)
      * [`fn new()`](#fn-cluster_configpreemptible_worker_configdisk_confignew)
  * [`obj cluster_config.security_config`](#obj-cluster_configsecurity_config)
    * [`fn new()`](#fn-cluster_configsecurity_confignew)
    * [`obj cluster_config.security_config.kerberos_config`](#obj-cluster_configsecurity_configkerberos_config)
      * [`fn new()`](#fn-cluster_configsecurity_configkerberos_confignew)
  * [`obj cluster_config.software_config`](#obj-cluster_configsoftware_config)
    * [`fn new()`](#fn-cluster_configsoftware_confignew)
  * [`obj cluster_config.worker_config`](#obj-cluster_configworker_config)
    * [`fn new()`](#fn-cluster_configworker_confignew)
    * [`obj cluster_config.worker_config.accelerators`](#obj-cluster_configworker_configaccelerators)
      * [`fn new()`](#fn-cluster_configworker_configacceleratorsnew)
    * [`obj cluster_config.worker_config.disk_config`](#obj-cluster_configworker_configdisk_config)
      * [`fn new()`](#fn-cluster_configworker_configdisk_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj virtual_cluster_config`](#obj-virtual_cluster_config)
  * [`fn new()`](#fn-virtual_cluster_confignew)
  * [`obj virtual_cluster_config.auxiliary_services_config`](#obj-virtual_cluster_configauxiliary_services_config)
    * [`fn new()`](#fn-virtual_cluster_configauxiliary_services_confignew)
    * [`obj virtual_cluster_config.auxiliary_services_config.metastore_config`](#obj-virtual_cluster_configauxiliary_services_configmetastore_config)
      * [`fn new()`](#fn-virtual_cluster_configauxiliary_services_configmetastore_confignew)
    * [`obj virtual_cluster_config.auxiliary_services_config.spark_history_server_config`](#obj-virtual_cluster_configauxiliary_services_configspark_history_server_config)
      * [`fn new()`](#fn-virtual_cluster_configauxiliary_services_configspark_history_server_confignew)
  * [`obj virtual_cluster_config.kubernetes_cluster_config`](#obj-virtual_cluster_configkubernetes_cluster_config)
    * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_confignew)
    * [`obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config`](#obj-virtual_cluster_configkubernetes_cluster_configgke_cluster_config)
      * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignew)
      * [`obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target`](#obj-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_target)
        * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnew)
        * [`obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config`](#obj-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnode_pool_config)
          * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnode_pool_confignew)
          * [`obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling`](#obj-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnode_pool_configautoscaling)
            * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnode_pool_configautoscalingnew)
          * [`obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config`](#obj-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnode_pool_configconfig)
            * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetnode_pool_configconfignew)
    * [`obj virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config`](#obj-virtual_cluster_configkubernetes_cluster_configkubernetes_software_config)
      * [`fn new()`](#fn-virtual_cluster_configkubernetes_cluster_configkubernetes_software_confignew)

## Fields

### fn new

```ts
new()
```


`google.dataproc_cluster.new` injects a new `google_dataproc_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataproc_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.dataproc_cluster` using the reference:

    $._ref.google_dataproc_cluster.some_id.get('id')

This is the same as directly entering `"${ google_dataproc_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `graceful_decommission_timeout` (`string`): The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply When `null`, the `graceful_decommission_timeout` field will be omitted from the resulting object.
  - `labels` (`obj`): The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the cluster, unique within the project and zone.
  - `project` (`string`): The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the cluster and associated nodes will be created in. Defaults to global. When `null`, the `region` field will be omitted from the resulting object.
  - `cluster_config` (`list[obj]`): Allows you to configure various aspects of the cluster. When `null`, the `cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.new](#fn-cluster_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_cluster_config` (`list[obj]`): The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster. Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtualClusterConfig must be specified. When `null`, the `virtual_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.new](#fn-virtual_cluster_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataproc_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_cluster`
Terraform resource.

Unlike [google.dataproc_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `graceful_decommission_timeout` (`string`): The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply When `null`, the `graceful_decommission_timeout` field will be omitted from the resulting object.
  - `labels` (`obj`): The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the cluster, unique within the project and zone.
  - `project` (`string`): The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the cluster and associated nodes will be created in. Defaults to global. When `null`, the `region` field will be omitted from the resulting object.
  - `cluster_config` (`list[obj]`): Allows you to configure various aspects of the cluster. When `null`, the `cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.new](#fn-cluster_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_cluster_config` (`list[obj]`): The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster. Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtualClusterConfig must be specified. When `null`, the `virtual_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.new](#fn-virtual_cluster_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_cluster` resource into the root Terraform configuration.


### fn withClusterConfig

```ts
withClusterConfig()
```

`google.list[obj].withClusterConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withClusterConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_config` field.


### fn withClusterConfigMixin

```ts
withClusterConfigMixin()
```

`google.list[obj].withClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withClusterConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_config` field.


### fn withGracefulDecommissionTimeout

```ts
withGracefulDecommissionTimeout()
```

`google.string.withGracefulDecommissionTimeout` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the graceful_decommission_timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `graceful_decommission_timeout` field.


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


### fn withVirtualClusterConfig

```ts
withVirtualClusterConfig()
```

`google.list[obj].withVirtualClusterConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_cluster_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVirtualClusterConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_cluster_config` field.


### fn withVirtualClusterConfigMixin

```ts
withVirtualClusterConfigMixin()
```

`google.list[obj].withVirtualClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_cluster_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualClusterConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_cluster_config` field.


## obj cluster_config



### fn cluster_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.new` constructs a new object with attributes and blocks configured for the `cluster_config`
Terraform sub block.



**Args**:
  - `staging_bucket` (`string`): The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster. Note: If you don&#39;t explicitly specify a staging_bucket then GCP will auto create / assign one for you. However, you are not guaranteed an auto generated bucket which is solely dedicated to your cluster; it may be shared with other clusters in the same region/zone also choosing to use the auto generation option. When `null`, the `staging_bucket` field will be omitted from the resulting object.
  - `temp_bucket` (`string`): The Cloud Storage temp bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. Note: If you don&#39;t explicitly specify a temp_bucket then GCP will auto create / assign one for you. When `null`, the `temp_bucket` field will be omitted from the resulting object.
  - `autoscaling_config` (`list[obj]`): The autoscaling policy config associated with the cluster. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.autoscaling_config.new](#fn-cluster_configautoscaling_confignew) constructor.
  - `dataproc_metric_config` (`list[obj]`): The config for Dataproc metrics. When `null`, the `dataproc_metric_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.dataproc_metric_config.new](#fn-cluster_configdataproc_metric_confignew) constructor.
  - `encryption_config` (`list[obj]`): The Customer managed encryption keys settings for the cluster. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.encryption_config.new](#fn-cluster_configencryption_confignew) constructor.
  - `endpoint_config` (`list[obj]`): The config settings for port access on the cluster. Structure defined below. When `null`, the `endpoint_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.endpoint_config.new](#fn-cluster_configendpoint_confignew) constructor.
  - `gce_cluster_config` (`list[obj]`): Common config settings for resources of Google Compute Engine cluster instances, applicable to all instances in the cluster. When `null`, the `gce_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.gce_cluster_config.new](#fn-cluster_configgce_cluster_confignew) constructor.
  - `initialization_action` (`list[obj]`): Commands to execute on each node after config is completed. You can specify multiple versions of these. When `null`, the `initialization_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.initialization_action.new](#fn-cluster_configinitialization_actionnew) constructor.
  - `lifecycle_config` (`list[obj]`): The settings for auto deletion cluster schedule. When `null`, the `lifecycle_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.lifecycle_config.new](#fn-cluster_configlifecycle_confignew) constructor.
  - `master_config` (`list[obj]`): The Google Compute Engine config settings for the master/worker instances in a cluster. When `null`, the `master_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.master_config.new](#fn-cluster_configmaster_confignew) constructor.
  - `metastore_config` (`list[obj]`): Specifies a Metastore configuration. When `null`, the `metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.metastore_config.new](#fn-cluster_configmetastore_confignew) constructor.
  - `preemptible_worker_config` (`list[obj]`): The Google Compute Engine config settings for the additional (aka preemptible) instances in a cluster. When `null`, the `preemptible_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.preemptible_worker_config.new](#fn-cluster_configpreemptible_worker_confignew) constructor.
  - `security_config` (`list[obj]`): Security related configuration. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.security_config.new](#fn-cluster_configsecurity_confignew) constructor.
  - `software_config` (`list[obj]`): The config settings for software inside the cluster. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.software_config.new](#fn-cluster_configsoftware_confignew) constructor.
  - `worker_config` (`list[obj]`): The Google Compute Engine config settings for the master/worker instances in a cluster. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.worker_config.new](#fn-cluster_configworker_confignew) constructor.

**Returns**:
  - An attribute object that represents the `cluster_config` sub block.


## obj cluster_config.autoscaling_config



### fn cluster_config.autoscaling_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`
Terraform sub block.



**Args**:
  - `policy_uri` (`string`): The autoscaling policy used by the cluster.

**Returns**:
  - An attribute object that represents the `autoscaling_config` sub block.


## obj cluster_config.dataproc_metric_config



### fn cluster_config.dataproc_metric_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.dataproc_metric_config.new` constructs a new object with attributes and blocks configured for the `dataproc_metric_config`
Terraform sub block.



**Args**:
  - `metrics` (`list[obj]`): Metrics sources to enable. When `null`, the `metrics` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.dataproc_metric_config.metrics.new](#fn-cluster_configcluster_configmetricsnew) constructor.

**Returns**:
  - An attribute object that represents the `dataproc_metric_config` sub block.


## obj cluster_config.dataproc_metric_config.metrics



### fn cluster_config.dataproc_metric_config.metrics.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.dataproc_metric_config.metrics.new` constructs a new object with attributes and blocks configured for the `metrics`
Terraform sub block.



**Args**:
  - `metric_overrides` (`list`): Specify one or more [available OSS metrics] (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect. When `null`, the `metric_overrides` field will be omitted from the resulting object.
  - `metric_source` (`string`): A source for the collection of Dataproc OSS metrics (see [available OSS metrics] (https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)).

**Returns**:
  - An attribute object that represents the `metrics` sub block.


## obj cluster_config.encryption_config



### fn cluster_config.encryption_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj cluster_config.endpoint_config



### fn cluster_config.endpoint_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.endpoint_config.new` constructs a new object with attributes and blocks configured for the `endpoint_config`
Terraform sub block.



**Args**:
  - `enable_http_port_access` (`bool`): The flag to enable http access to specific ports on the cluster from external sources (aka Component Gateway). Defaults to false.

**Returns**:
  - An attribute object that represents the `endpoint_config` sub block.


## obj cluster_config.gce_cluster_config



### fn cluster_config.gce_cluster_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.gce_cluster_config.new` constructs a new object with attributes and blocks configured for the `gce_cluster_config`
Terraform sub block.



**Args**:
  - `internal_ip_only` (`bool`): By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. If set to true, all instances in the cluster will only have internal IP addresses. Note: Private Google Access (also known as privateIpGoogleAccess) must be enabled on the subnetwork that the cluster will be launched in. When `null`, the `internal_ip_only` field will be omitted from the resulting object.
  - `metadata` (`obj`): A map of the Compute Engine metadata entries to add to all instances When `null`, the `metadata` field will be omitted from the resulting object.
  - `network` (`string`): The name or self_link of the Google Compute Engine network to the cluster will be part of. Conflicts with subnetwork. If neither is specified, this defaults to the &#34;default&#34; network. When `null`, the `network` field will be omitted from the resulting object.
  - `service_account` (`string`): The service account to be used by the Node VMs. If not specified, the &#34;default&#34; service account is used. When `null`, the `service_account` field will be omitted from the resulting object.
  - `service_account_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs under the service_account specified. These can be either FQDNs, or scope aliases. When `null`, the `service_account_scopes` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork the cluster will be part of. Conflicts with network. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `tags` (`list`): The list of instance tags applied to instances in the cluster. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The GCP zone where your data is stored and used (i.e. where the master and the worker nodes will be created in). If region is set to &#39;global&#39; (default) then zone is mandatory, otherwise GCP is able to make use of Auto Zone Placement to determine this automatically for you. Note: This setting additionally determines and restricts which computing resources are available for use with other configs such as cluster_config.master_config.machine_type and cluster_config.worker_config.machine_type. When `null`, the `zone` field will be omitted from the resulting object.
  - `node_group_affinity` (`list[obj]`): Node Group Affinity for sole-tenant clusters. When `null`, the `node_group_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.gce_cluster_config.node_group_affinity.new](#fn-cluster_configcluster_confignode_group_affinitynew) constructor.
  - `reservation_affinity` (`list[obj]`): Reservation Affinity for consuming Zonal reservation. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.gce_cluster_config.reservation_affinity.new](#fn-cluster_configcluster_configreservation_affinitynew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance Config for clusters using Compute Engine Shielded VMs. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.gce_cluster_config.shielded_instance_config.new](#fn-cluster_configcluster_configshielded_instance_confignew) constructor.

**Returns**:
  - An attribute object that represents the `gce_cluster_config` sub block.


## obj cluster_config.gce_cluster_config.node_group_affinity



### fn cluster_config.gce_cluster_config.node_group_affinity.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.gce_cluster_config.node_group_affinity.new` constructs a new object with attributes and blocks configured for the `node_group_affinity`
Terraform sub block.



**Args**:
  - `node_group_uri` (`string`): The URI of a sole-tenant that the cluster will be created on.

**Returns**:
  - An attribute object that represents the `node_group_affinity` sub block.


## obj cluster_config.gce_cluster_config.reservation_affinity



### fn cluster_config.gce_cluster_config.reservation_affinity.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.gce_cluster_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `consume_reservation_type` (`string`): Type of reservation to consume. When `null`, the `consume_reservation_type` field will be omitted from the resulting object.
  - `key` (`string`): Corresponds to the label key of reservation resource. When `null`, the `key` field will be omitted from the resulting object.
  - `values` (`list`): Corresponds to the label values of reservation resource. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj cluster_config.gce_cluster_config.shielded_instance_config



### fn cluster_config.gce_cluster_config.shielded_instance_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.gce_cluster_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether instances have integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether instances have Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Defines whether instances have the vTPM enabled. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj cluster_config.initialization_action



### fn cluster_config.initialization_action.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.initialization_action.new` constructs a new object with attributes and blocks configured for the `initialization_action`
Terraform sub block.



**Args**:
  - `script` (`string`): The script to be executed during initialization of the cluster. The script must be a GCS file with a gs:// prefix.
  - `timeout_sec` (`number`): The maximum duration (in seconds) which script is allowed to take to execute its action. GCP will default to a predetermined computed value if not set (currently 300). When `null`, the `timeout_sec` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `initialization_action` sub block.


## obj cluster_config.lifecycle_config



### fn cluster_config.lifecycle_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.lifecycle_config.new` constructs a new object with attributes and blocks configured for the `lifecycle_config`
Terraform sub block.



**Args**:
  - `auto_delete_time` (`string`): The time when cluster will be auto-deleted. A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `auto_delete_time` field will be omitted from the resulting object.
  - `idle_delete_ttl` (`string`): The duration to keep the cluster alive while idling (no jobs running). After this TTL, the cluster will be deleted. Valid range: [10m, 14d]. When `null`, the `idle_delete_ttl` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `lifecycle_config` sub block.


## obj cluster_config.master_config



### fn cluster_config.master_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.master_config.new` constructs a new object with attributes and blocks configured for the `master_config`
Terraform sub block.



**Args**:
  - `image_uri` (`string`): The URI for the image to use for this master/worker When `null`, the `image_uri` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type to create for the master/worker When `null`, the `machine_type` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `num_instances` (`number`): Specifies the number of master/worker nodes to create. If not specified, GCP will default to a predetermined computed value. When `null`, the `num_instances` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.master_config.accelerators.new](#fn-cluster_configcluster_configacceleratorsnew) constructor.
  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.master_config.disk_config.new](#fn-cluster_configcluster_configdisk_confignew) constructor.

**Returns**:
  - An attribute object that represents the `master_config` sub block.


## obj cluster_config.master_config.accelerators



### fn cluster_config.master_config.accelerators.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.master_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`
Terraform sub block.



**Args**:
  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8.
  - `accelerator_type` (`string`): The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80.

**Returns**:
  - An attribute object that represents the `accelerators` sub block.


## obj cluster_config.master_config.disk_config



### fn cluster_config.master_config.disk_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.master_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_config` sub block.


## obj cluster_config.metastore_config



### fn cluster_config.metastore_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.metastore_config.new` constructs a new object with attributes and blocks configured for the `metastore_config`
Terraform sub block.



**Args**:
  - `dataproc_metastore_service` (`string`): Resource name of an existing Dataproc Metastore service.

**Returns**:
  - An attribute object that represents the `metastore_config` sub block.


## obj cluster_config.preemptible_worker_config



### fn cluster_config.preemptible_worker_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.preemptible_worker_config.new` constructs a new object with attributes and blocks configured for the `preemptible_worker_config`
Terraform sub block.



**Args**:
  - `num_instances` (`number`): Specifies the number of preemptible nodes to create. Defaults to 0. When `null`, the `num_instances` field will be omitted from the resulting object.
  - `preemptibility` (`string`): Specifies the preemptibility of the secondary nodes. Defaults to PREEMPTIBLE. When `null`, the `preemptibility` field will be omitted from the resulting object.
  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.preemptible_worker_config.disk_config.new](#fn-cluster_configcluster_configdisk_confignew) constructor.

**Returns**:
  - An attribute object that represents the `preemptible_worker_config` sub block.


## obj cluster_config.preemptible_worker_config.disk_config



### fn cluster_config.preemptible_worker_config.disk_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.preemptible_worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each preemptible worker node, specified in GB. The smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each preemptible worker node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each preemptible worker node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_config` sub block.


## obj cluster_config.security_config



### fn cluster_config.security_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.security_config.new` constructs a new object with attributes and blocks configured for the `security_config`
Terraform sub block.



**Args**:
  - `kerberos_config` (`list[obj]`): Kerberos related configuration When `null`, the `kerberos_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.security_config.kerberos_config.new](#fn-cluster_configcluster_configkerberos_confignew) constructor.

**Returns**:
  - An attribute object that represents the `security_config` sub block.


## obj cluster_config.security_config.kerberos_config



### fn cluster_config.security_config.kerberos_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.security_config.kerberos_config.new` constructs a new object with attributes and blocks configured for the `kerberos_config`
Terraform sub block.



**Args**:
  - `cross_realm_trust_admin_server` (`string`): The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_admin_server` field will be omitted from the resulting object.
  - `cross_realm_trust_kdc` (`string`): The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_kdc` field will be omitted from the resulting object.
  - `cross_realm_trust_realm` (`string`): The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. When `null`, the `cross_realm_trust_realm` field will be omitted from the resulting object.
  - `cross_realm_trust_shared_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster
Kerberos realm and the remote trusted realm, in a cross realm trust relationship. When `null`, the `cross_realm_trust_shared_password_uri` field will be omitted from the resulting object.
  - `enable_kerberos` (`bool`): Flag to indicate whether to Kerberize the cluster. When `null`, the `enable_kerberos` field will be omitted from the resulting object.
  - `kdc_db_key_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. When `null`, the `kdc_db_key_uri` field will be omitted from the resulting object.
  - `key_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `key_password_uri` field will be omitted from the resulting object.
  - `keystore_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing
the password to the user provided keystore. For the self-signed certificate, this password is generated
by Dataproc When `null`, the `keystore_password_uri` field will be omitted from the resulting object.
  - `keystore_uri` (`string`): The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `keystore_uri` field will be omitted from the resulting object.
  - `kms_key_uri` (`string`): The uri of the KMS key used to encrypt various sensitive files.
  - `realm` (`string`): The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm. When `null`, the `realm` field will be omitted from the resulting object.
  - `root_principal_password_uri` (`string`): The cloud Storage URI of a KMS encrypted file containing the root principal password.
  - `tgt_lifetime_hours` (`number`): The lifetime of the ticket granting ticket, in hours. When `null`, the `tgt_lifetime_hours` field will be omitted from the resulting object.
  - `truststore_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `truststore_password_uri` field will be omitted from the resulting object.
  - `truststore_uri` (`string`): The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `truststore_uri` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `kerberos_config` sub block.


## obj cluster_config.software_config



### fn cluster_config.software_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`
Terraform sub block.



**Args**:
  - `image_version` (`string`): The Cloud Dataproc image version to use for the cluster - this controls the sets of software versions installed onto the nodes when you create clusters. If not specified, defaults to the latest version. When `null`, the `image_version` field will be omitted from the resulting object.
  - `optional_components` (`list`): The set of optional components to activate on the cluster. When `null`, the `optional_components` field will be omitted from the resulting object.
  - `override_properties` (`obj`): A list of override and additional properties (key/value pairs) used to modify various aspects of the common configuration files used when creating a cluster. When `null`, the `override_properties` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `software_config` sub block.


## obj cluster_config.worker_config



### fn cluster_config.worker_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`
Terraform sub block.



**Args**:
  - `image_uri` (`string`): The URI for the image to use for this master/worker When `null`, the `image_uri` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type to create for the master/worker When `null`, the `machine_type` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `num_instances` (`number`): Specifies the number of master/worker nodes to create. If not specified, GCP will default to a predetermined computed value. When `null`, the `num_instances` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.worker_config.accelerators.new](#fn-cluster_configcluster_configacceleratorsnew) constructor.
  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.worker_config.disk_config.new](#fn-cluster_configcluster_configdisk_confignew) constructor.

**Returns**:
  - An attribute object that represents the `worker_config` sub block.


## obj cluster_config.worker_config.accelerators



### fn cluster_config.worker_config.accelerators.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.worker_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`
Terraform sub block.



**Args**:
  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8.
  - `accelerator_type` (`string`): The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80.

**Returns**:
  - An attribute object that represents the `accelerators` sub block.


## obj cluster_config.worker_config.disk_config



### fn cluster_config.worker_config.disk_config.new

```ts
new()
```


`google.dataproc_cluster.cluster_config.worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataproc_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj virtual_cluster_config



### fn virtual_cluster_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.new` constructs a new object with attributes and blocks configured for the `virtual_cluster_config`
Terraform sub block.



**Args**:
  - `staging_bucket` (`string`): A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster&#39;s staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. When `null`, the `staging_bucket` field will be omitted from the resulting object.
  - `auxiliary_services_config` (`list[obj]`): Auxiliary services configuration for a Cluster. When `null`, the `auxiliary_services_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.new](#fn-virtual_cluster_configauxiliary_services_confignew) constructor.
  - `kubernetes_cluster_config` (`list[obj]`): The configuration for running the Dataproc cluster on Kubernetes. When `null`, the `kubernetes_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.new](#fn-virtual_cluster_configkubernetes_cluster_confignew) constructor.

**Returns**:
  - An attribute object that represents the `virtual_cluster_config` sub block.


## obj virtual_cluster_config.auxiliary_services_config



### fn virtual_cluster_config.auxiliary_services_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.new` constructs a new object with attributes and blocks configured for the `auxiliary_services_config`
Terraform sub block.



**Args**:
  - `metastore_config` (`list[obj]`): The Hive Metastore configuration for this workload. When `null`, the `metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.metastore_config.new](#fn-virtual_cluster_configvirtual_cluster_configmetastore_confignew) constructor.
  - `spark_history_server_config` (`list[obj]`): The Spark History Server configuration for the workload. When `null`, the `spark_history_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.spark_history_server_config.new](#fn-virtual_cluster_configvirtual_cluster_configspark_history_server_confignew) constructor.

**Returns**:
  - An attribute object that represents the `auxiliary_services_config` sub block.


## obj virtual_cluster_config.auxiliary_services_config.metastore_config



### fn virtual_cluster_config.auxiliary_services_config.metastore_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.metastore_config.new` constructs a new object with attributes and blocks configured for the `metastore_config`
Terraform sub block.



**Args**:
  - `dataproc_metastore_service` (`string`): The Hive Metastore configuration for this workload. When `null`, the `dataproc_metastore_service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metastore_config` sub block.


## obj virtual_cluster_config.auxiliary_services_config.spark_history_server_config



### fn virtual_cluster_config.auxiliary_services_config.spark_history_server_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.spark_history_server_config.new` constructs a new object with attributes and blocks configured for the `spark_history_server_config`
Terraform sub block.



**Args**:
  - `dataproc_cluster` (`string`): Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload. When `null`, the `dataproc_cluster` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `spark_history_server_config` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config



### fn virtual_cluster_config.kubernetes_cluster_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.new` constructs a new object with attributes and blocks configured for the `kubernetes_cluster_config`
Terraform sub block.



**Args**:
  - `kubernetes_namespace` (`string`): A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used. When `null`, the `kubernetes_namespace` field will be omitted from the resulting object.
  - `gke_cluster_config` (`list[obj]`): The configuration for running the Dataproc cluster on GKE. When `null`, the `gke_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.new](#fn-virtual_cluster_configvirtual_cluster_configgke_cluster_confignew) constructor.
  - `kubernetes_software_config` (`list[obj]`): The software configuration for this Dataproc cluster running on Kubernetes. When `null`, the `kubernetes_software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config.new](#fn-virtual_cluster_configvirtual_cluster_configkubernetes_software_confignew) constructor.

**Returns**:
  - An attribute object that represents the `kubernetes_cluster_config` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config



### fn virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.new` constructs a new object with attributes and blocks configured for the `gke_cluster_config`
Terraform sub block.



**Args**:
  - `gke_cluster_target` (`string`): A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: &#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39; When `null`, the `gke_cluster_target` field will be omitted from the resulting object.
  - `node_pool_target` (`list[obj]`): GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. When `null`, the `node_pool_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.new](#fn-virtual_cluster_configvirtual_cluster_configkubernetes_cluster_confignode_pool_targetnew) constructor.

**Returns**:
  - An attribute object that represents the `gke_cluster_config` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target



### fn virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.new` constructs a new object with attributes and blocks configured for the `node_pool_target`
Terraform sub block.



**Args**:
  - `node_pool` (`string`): The target GKE node pool. Format: &#39;projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{nodePool}&#39;
  - `roles` (`list`): The roles associated with the GKE node pool.
  - `node_pool_config` (`list[obj]`): Input only. The configuration for the GKE node pool. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.new](#fn-virtual_cluster_configvirtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_confignew) constructor.

**Returns**:
  - An attribute object that represents the `node_pool_target` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config



### fn virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`
Terraform sub block.



**Args**:
  - `locations` (`list`): The list of Compute Engine zones where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.
  - `autoscaling` (`list[obj]`): The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling.new](#fn-virtual_cluster_configvirtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetautoscalingnew) constructor.
  - `config` (`list[obj]`): The node pool configuration. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config.new](#fn-virtual_cluster_configvirtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetconfignew) constructor.

**Returns**:
  - An attribute object that represents the `node_pool_config` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling



### fn virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`
Terraform sub block.



**Args**:
  - `max_node_count` (`number`): The maximum number of nodes in the node pool. Must be &gt;= minNodeCount, and must be &gt; 0. When `null`, the `max_node_count` field will be omitted from the resulting object.
  - `min_node_count` (`number`): The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= maxNodeCount. When `null`, the `min_node_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config



### fn virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `local_ssd_count` (`number`): The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= maxNodeCount. When `null`, the `local_ssd_count` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as &#34;Intel Haswell&#34; or &#34;Intel Sandy Bridge&#34;. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. Preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role). When `null`, the `preemptible` field will be omitted from the resulting object.
  - `spot` (`bool`): Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag. When `null`, the `spot` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config



### fn virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config.new

```ts
new()
```


`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config.new` constructs a new object with attributes and blocks configured for the `kubernetes_software_config`
Terraform sub block.



**Args**:
  - `component_version` (`obj`): The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed.
  - `properties` (`obj`): The properties to set on daemon config files. Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. When `null`, the `properties` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `kubernetes_software_config` sub block.
