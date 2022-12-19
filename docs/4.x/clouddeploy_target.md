---
permalink: /clouddeploy_target/
---

# clouddeploy_target

`clouddeploy_target` represents the `google_clouddeploy_target` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAnthosCluster()`](#fn-withanthoscluster)
* [`fn withAnthosClusterMixin()`](#fn-withanthosclustermixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withExecutionConfigs()`](#fn-withexecutionconfigs)
* [`fn withExecutionConfigsMixin()`](#fn-withexecutionconfigsmixin)
* [`fn withGke()`](#fn-withgke)
* [`fn withGkeMixin()`](#fn-withgkemixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRequireApproval()`](#fn-withrequireapproval)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj anthos_cluster`](#obj-anthos_cluster)
  * [`fn new()`](#fn-anthos_clusternew)
* [`obj execution_configs`](#obj-execution_configs)
  * [`fn new()`](#fn-execution_configsnew)
* [`obj gke`](#obj-gke)
  * [`fn new()`](#fn-gkenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.clouddeploy_target.new` injects a new `google_clouddeploy_target` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.clouddeploy_target.new('some_id')

You can get the reference to the `id` field of the created `google.clouddeploy_target` using the reference:

    $._ref.google_clouddeploy_target.some_id.get('id')

This is the same as directly entering `"${ google_clouddeploy_target.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): Optional. Description of the `Target`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the `Target`. Format is [a-z][a-z0-9\-]{0,62}.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `require_approval` (`bool`): Optional. Whether or not the `Target` requires approval. When `null`, the `require_approval` field will be omitted from the resulting object.
  - `anthos_cluster` (`list[obj]`): Information specifying an Anthos Cluster. When `null`, the `anthos_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.anthos_cluster.new](#fn-clouddeploy_targetanthos_clusternew) constructor.
  - `execution_configs` (`list[obj]`): Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`. When `null`, the `execution_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.execution_configs.new](#fn-clouddeploy_targetexecution_configsnew) constructor.
  - `gke` (`list[obj]`): Information specifying a GKE Cluster. When `null`, the `gke` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.gke.new](#fn-clouddeploy_targetgkenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.timeouts.new](#fn-clouddeploy_targettimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.clouddeploy_target.newAttrs` constructs a new object with attributes and blocks configured for the `clouddeploy_target`
Terraform resource.

Unlike [google.clouddeploy_target.new](#fn-clouddeploy_targetnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): Optional. Description of the `Target`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the `Target`. Format is [a-z][a-z0-9\-]{0,62}.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `require_approval` (`bool`): Optional. Whether or not the `Target` requires approval. When `null`, the `require_approval` field will be omitted from the resulting object.
  - `anthos_cluster` (`list[obj]`): Information specifying an Anthos Cluster. When `null`, the `anthos_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.anthos_cluster.new](#fn-clouddeploy_targetanthos_clusternew) constructor.
  - `execution_configs` (`list[obj]`): Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`. When `null`, the `execution_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.execution_configs.new](#fn-clouddeploy_targetexecution_configsnew) constructor.
  - `gke` (`list[obj]`): Information specifying a GKE Cluster. When `null`, the `gke` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.gke.new](#fn-clouddeploy_targetgkenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.timeouts.new](#fn-clouddeploy_targettimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `clouddeploy_target` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAnthosCluster

```ts
withAnthosCluster()
```

`google.list[obj].withAnthosCluster` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the anthos_cluster field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAnthosClusterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `anthos_cluster` field.


### fn withAnthosClusterMixin

```ts
withAnthosClusterMixin()
```

`google.list[obj].withAnthosClusterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the anthos_cluster field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAnthosCluster](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `anthos_cluster` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withExecutionConfigs

```ts
withExecutionConfigs()
```

`google.list[obj].withExecutionConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the execution_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExecutionConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `execution_configs` field.


### fn withExecutionConfigsMixin

```ts
withExecutionConfigsMixin()
```

`google.list[obj].withExecutionConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the execution_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExecutionConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `execution_configs` field.


### fn withGke

```ts
withGke()
```

`google.list[obj].withGke` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gke field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGkeMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gke` field.


### fn withGkeMixin

```ts
withGkeMixin()
```

`google.list[obj].withGkeMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gke field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGke](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gke` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


### fn withRequireApproval

```ts
withRequireApproval()
```

`google.bool.withRequireApproval` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the require_approval field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `require_approval` field.


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


## obj anthos_cluster



### fn anthos_cluster.new

```ts
new()
```


`google.clouddeploy_target.anthos_cluster.new` constructs a new object with attributes and blocks configured for the `anthos_cluster`
Terraform sub block.



**Args**:
  - `membership` (`string`): Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`. When `null`, the `membership` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `anthos_cluster` sub block.


## obj execution_configs



### fn execution_configs.new

```ts
new()
```


`google.clouddeploy_target.execution_configs.new` constructs a new object with attributes and blocks configured for the `execution_configs`
Terraform sub block.



**Args**:
  - `artifact_storage` (`string`): Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket (&#34;gs://my-bucket&#34;) or a path within a bucket (&#34;gs://my-bucket/my-dir&#34;). If unspecified, a default bucket located in the same region will be used. When `null`, the `artifact_storage` field will be omitted from the resulting object.
  - `execution_timeout` (`string`): Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used. When `null`, the `execution_timeout` field will be omitted from the resulting object.
  - `service_account` (`string`): Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used. When `null`, the `service_account` field will be omitted from the resulting object.
  - `usages` (`list`): Required. Usages when this configuration should be applied.
  - `worker_pool` (`string`): Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used. When `null`, the `worker_pool` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `execution_configs` sub block.


## obj gke



### fn gke.new

```ts
new()
```


`google.clouddeploy_target.gke.new` constructs a new object with attributes and blocks configured for the `gke`
Terraform sub block.



**Args**:
  - `cluster` (`string`): Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}. When `null`, the `cluster` field will be omitted from the resulting object.
  - `internal_ip` (`bool`): Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept). When `null`, the `internal_ip` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gke` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.clouddeploy_target.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
