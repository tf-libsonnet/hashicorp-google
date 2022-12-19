---
permalink: /dataproc_autoscaling_policy/
---

# dataproc_autoscaling_policy

`dataproc_autoscaling_policy` represents the `google_dataproc_autoscaling_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBasicAlgorithm()`](#fn-withbasicalgorithm)
* [`fn withBasicAlgorithmMixin()`](#fn-withbasicalgorithmmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPolicyId()`](#fn-withpolicyid)
* [`fn withProject()`](#fn-withproject)
* [`fn withSecondaryWorkerConfig()`](#fn-withsecondaryworkerconfig)
* [`fn withSecondaryWorkerConfigMixin()`](#fn-withsecondaryworkerconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkerConfig()`](#fn-withworkerconfig)
* [`fn withWorkerConfigMixin()`](#fn-withworkerconfigmixin)
* [`obj basic_algorithm`](#obj-basic_algorithm)
  * [`fn new()`](#fn-basic_algorithmnew)
  * [`obj basic_algorithm.yarn_config`](#obj-basic_algorithmyarn_config)
    * [`fn new()`](#fn-basic_algorithmyarn_confignew)
* [`obj secondary_worker_config`](#obj-secondary_worker_config)
  * [`fn new()`](#fn-secondary_worker_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj worker_config`](#obj-worker_config)
  * [`fn new()`](#fn-worker_confignew)

## Fields

### fn new

```ts
new()
```


`google.dataproc_autoscaling_policy.new` injects a new `google_dataproc_autoscaling_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataproc_autoscaling_policy.new('some_id')

You can get the reference to the `id` field of the created `google.dataproc_autoscaling_policy` using the reference:

    $._ref.google_dataproc_autoscaling_policy.some_id.get('id')

This is the same as directly entering `"${ google_dataproc_autoscaling_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `location` (`string`): The  location where the autoscaling policy should reside.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `policy_id` (`string`): The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 50 characters.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `basic_algorithm` (`list[obj]`): Basic algorithm for autoscaling. When `null`, the `basic_algorithm` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.basic_algorithm.new](#fn-basic_algorithmnew) constructor.
  - `secondary_worker_config` (`list[obj]`): Describes how the autoscaler will operate for secondary workers. When `null`, the `secondary_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.secondary_worker_config.new](#fn-secondary_worker_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.timeouts.new](#fn-timeoutsnew) constructor.
  - `worker_config` (`list[obj]`): Describes how the autoscaler will operate for primary workers. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.worker_config.new](#fn-worker_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataproc_autoscaling_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_autoscaling_policy`
Terraform resource.

Unlike [google.dataproc_autoscaling_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The  location where the autoscaling policy should reside.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `policy_id` (`string`): The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 50 characters.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `basic_algorithm` (`list[obj]`): Basic algorithm for autoscaling. When `null`, the `basic_algorithm` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.basic_algorithm.new](#fn-basic_algorithmnew) constructor.
  - `secondary_worker_config` (`list[obj]`): Describes how the autoscaler will operate for secondary workers. When `null`, the `secondary_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.secondary_worker_config.new](#fn-secondary_worker_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.timeouts.new](#fn-timeoutsnew) constructor.
  - `worker_config` (`list[obj]`): Describes how the autoscaler will operate for primary workers. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.worker_config.new](#fn-worker_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_autoscaling_policy` resource into the root Terraform configuration.


### fn withBasicAlgorithm

```ts
withBasicAlgorithm()
```

`google.list[obj].withBasicAlgorithm` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_algorithm field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBasicAlgorithmMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_algorithm` field.


### fn withBasicAlgorithmMixin

```ts
withBasicAlgorithmMixin()
```

`google.list[obj].withBasicAlgorithmMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_algorithm field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBasicAlgorithm](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_algorithm` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPolicyId

```ts
withPolicyId()
```

`google.string.withPolicyId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the policy_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `policy_id` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSecondaryWorkerConfig

```ts
withSecondaryWorkerConfig()
```

`google.list[obj].withSecondaryWorkerConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secondary_worker_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSecondaryWorkerConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secondary_worker_config` field.


### fn withSecondaryWorkerConfigMixin

```ts
withSecondaryWorkerConfigMixin()
```

`google.list[obj].withSecondaryWorkerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secondary_worker_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSecondaryWorkerConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secondary_worker_config` field.


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


### fn withWorkerConfig

```ts
withWorkerConfig()
```

`google.list[obj].withWorkerConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the worker_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWorkerConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `worker_config` field.


### fn withWorkerConfigMixin

```ts
withWorkerConfigMixin()
```

`google.list[obj].withWorkerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the worker_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWorkerConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `worker_config` field.


## obj basic_algorithm



### fn basic_algorithm.new

```ts
new()
```


`google.dataproc_autoscaling_policy.basic_algorithm.new` constructs a new object with attributes and blocks configured for the `basic_algorithm`
Terraform sub block.



**Args**:
  - `cooldown_period` (`string`): Duration between scaling events. A scaling period starts after the
update operation from the previous event has completed.

Bounds: [2m, 1d]. Default: 2m. When `null`, the `cooldown_period` field will be omitted from the resulting object.
  - `yarn_config` (`list[obj]`): YARN autoscaling configuration. When `null`, the `yarn_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.basic_algorithm.yarn_config.new](#fn-dataproc_autoscaling_policyyarn_confignew) constructor.

**Returns**:
  - An attribute object that represents the `basic_algorithm` sub block.


## obj basic_algorithm.yarn_config



### fn basic_algorithm.yarn_config.new

```ts
new()
```


`google.dataproc_autoscaling_policy.basic_algorithm.yarn_config.new` constructs a new object with attributes and blocks configured for the `yarn_config`
Terraform sub block.



**Args**:
  - `graceful_decommission_timeout` (`string`): Timeout for YARN graceful decommissioning of Node Managers. Specifies the
duration to wait for jobs to complete before forcefully removing workers
(and potentially interrupting jobs). Only applicable to downscaling operations.

Bounds: [0s, 1d].
  - `scale_down_factor` (`number`): Fraction of average pending memory in the last cooldown period for which to
remove workers. A scale-down factor of 1 will result in scaling down so that there
is no available memory remaining after the update (more aggressive scaling).
A scale-down factor of 0 disables removing workers, which can be beneficial for
autoscaling a single job.

Bounds: [0.0, 1.0].
  - `scale_down_min_worker_fraction` (`number`): Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.
For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must
recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0
means the autoscaler will scale down on any recommended change.

Bounds: [0.0, 1.0]. Default: 0.0. When `null`, the `scale_down_min_worker_fraction` field will be omitted from the resulting object.
  - `scale_up_factor` (`number`): Fraction of average pending memory in the last cooldown period for which to
add workers. A scale-up factor of 1.0 will result in scaling up so that there
is no pending memory remaining after the update (more aggressive scaling).
A scale-up factor closer to 0 will result in a smaller magnitude of scaling up
(less aggressive scaling).

Bounds: [0.0, 1.0].
  - `scale_up_min_worker_fraction` (`number`): Minimum scale-up threshold as a fraction of total cluster size before scaling
occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler
must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of
0 means the autoscaler will scale up on any recommended change.

Bounds: [0.0, 1.0]. Default: 0.0. When `null`, the `scale_up_min_worker_fraction` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `yarn_config` sub block.


## obj secondary_worker_config



### fn secondary_worker_config.new

```ts
new()
```


`google.dataproc_autoscaling_policy.secondary_worker_config.new` constructs a new object with attributes and blocks configured for the `secondary_worker_config`
Terraform sub block.



**Args**:
  - `max_instances` (`number`): Maximum number of instances for this group. Note that by default, clusters will not use
secondary workers. Required for secondary workers if the minimum secondary instances is set.
Bounds: [minInstances, ). Defaults to 0. When `null`, the `max_instances` field will be omitted from the resulting object.
  - `min_instances` (`number`): Minimum number of instances for this group. Bounds: [0, maxInstances]. Defaults to 0. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `weight` (`number`): Weight for the instance group, which is used to determine the fraction of total workers
in the cluster from this instance group. For example, if primary workers have weight 2,
and secondary workers have weight 1, the cluster will have approximately 2 primary workers
for each secondary worker.

The cluster may not reach the specified balance if constrained by min/max bounds or other
autoscaling settings. For example, if maxInstances for secondary workers is 0, then only
primary workers will be added. The cluster can also be out of balance when created.

If weight is not set on any instance group, the cluster will default to equal weight for
all groups: the cluster will attempt to maintain an equal number of workers in each group
within the configured size bounds for each group. If weight is set for one group only,
the cluster will default to zero weight on the unset group. For example if weight is set
only on primary workers, the cluster will use primary workers only and no secondary workers. When `null`, the `weight` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `secondary_worker_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataproc_autoscaling_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj worker_config



### fn worker_config.new

```ts
new()
```


`google.dataproc_autoscaling_policy.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`
Terraform sub block.



**Args**:
  - `max_instances` (`number`): Maximum number of instances for this group.
  - `min_instances` (`number`): Minimum number of instances for this group. Bounds: [2, maxInstances]. Defaults to 2. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `weight` (`number`): Weight for the instance group, which is used to determine the fraction of total workers
in the cluster from this instance group. For example, if primary workers have weight 2,
and secondary workers have weight 1, the cluster will have approximately 2 primary workers
for each secondary worker.

The cluster may not reach the specified balance if constrained by min/max bounds or other
autoscaling settings. For example, if maxInstances for secondary workers is 0, then only
primary workers will be added. The cluster can also be out of balance when created.

If weight is not set on any instance group, the cluster will default to equal weight for
all groups: the cluster will attempt to maintain an equal number of workers in each group
within the configured size bounds for each group. If weight is set for one group only,
the cluster will default to zero weight on the unset group. For example if weight is set
only on primary workers, the cluster will use primary workers only and no secondary workers. When `null`, the `weight` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `worker_config` sub block.
