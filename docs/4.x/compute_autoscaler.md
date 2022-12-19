---
permalink: /compute_autoscaler/
---

# compute_autoscaler

`compute_autoscaler` represents the `google_compute_autoscaler` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoscalingPolicy()`](#fn-withautoscalingpolicy)
* [`fn withAutoscalingPolicyMixin()`](#fn-withautoscalingpolicymixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTarget()`](#fn-withtarget)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj autoscaling_policy`](#obj-autoscaling_policy)
  * [`fn new()`](#fn-autoscaling_policynew)
  * [`obj autoscaling_policy.cpu_utilization`](#obj-autoscaling_policycpu_utilization)
    * [`fn new()`](#fn-autoscaling_policycpu_utilizationnew)
  * [`obj autoscaling_policy.load_balancing_utilization`](#obj-autoscaling_policyload_balancing_utilization)
    * [`fn new()`](#fn-autoscaling_policyload_balancing_utilizationnew)
  * [`obj autoscaling_policy.metric`](#obj-autoscaling_policymetric)
    * [`fn new()`](#fn-autoscaling_policymetricnew)
  * [`obj autoscaling_policy.scale_in_control`](#obj-autoscaling_policyscale_in_control)
    * [`fn new()`](#fn-autoscaling_policyscale_in_controlnew)
    * [`obj autoscaling_policy.scale_in_control.max_scaled_in_replicas`](#obj-autoscaling_policyscale_in_controlmax_scaled_in_replicas)
      * [`fn new()`](#fn-autoscaling_policyscale_in_controlmax_scaled_in_replicasnew)
  * [`obj autoscaling_policy.scaling_schedules`](#obj-autoscaling_policyscaling_schedules)
    * [`fn new()`](#fn-autoscaling_policyscaling_schedulesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_autoscaler.new` injects a new `google_compute_autoscaler` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_autoscaler.new('some_id')

You can get the reference to the `id` field of the created `google.compute_autoscaler` using the reference:

    $._ref.google_compute_autoscaler.some_id.get('id')

This is the same as directly entering `"${ google_compute_autoscaler.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `target` (`string`): URL of the managed instance group that this autoscaler will scale.
  - `zone` (`string`): URL of the zone where the instance group resides. When `null`, the `zone` field will be omitted from the resulting object.
  - `autoscaling_policy` (`list[obj]`): The configuration parameters for the autoscaling algorithm. You can
define one or more of the policies for an autoscaler: cpuUtilization,
customMetricUtilizations, and loadBalancingUtilization.

If none of these are specified, the default will be to autoscale based
on cpuUtilization to 0.6 or 60%. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_autoscaler.newAttrs` constructs a new object with attributes and blocks configured for the `compute_autoscaler`
Terraform resource.

Unlike [google.compute_autoscaler.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `target` (`string`): URL of the managed instance group that this autoscaler will scale.
  - `zone` (`string`): URL of the zone where the instance group resides. When `null`, the `zone` field will be omitted from the resulting object.
  - `autoscaling_policy` (`list[obj]`): The configuration parameters for the autoscaling algorithm. You can
define one or more of the policies for an autoscaler: cpuUtilization,
customMetricUtilizations, and loadBalancingUtilization.

If none of these are specified, the default will be to autoscale based
on cpuUtilization to 0.6 or 60%. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_autoscaler` resource into the root Terraform configuration.


### fn withAutoscalingPolicy

```ts
withAutoscalingPolicy()
```

`google.list[obj].withAutoscalingPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoscalingPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.


### fn withAutoscalingPolicyMixin

```ts
withAutoscalingPolicyMixin()
```

`google.list[obj].withAutoscalingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscalingPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withTarget

```ts
withTarget()
```

`google.string.withTarget` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target` field.


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


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj autoscaling_policy



### fn autoscaling_policy.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.new` constructs a new object with attributes and blocks configured for the `autoscaling_policy`
Terraform sub block.



**Args**:
  - `cooldown_period` (`number`): The number of seconds that the autoscaler should wait before it
starts collecting information from a new instance. This prevents
the autoscaler from collecting information when the instance is
initializing, during which the collected usage would not be
reliable. The default time autoscaler waits is 60 seconds.

Virtual machine initialization times might vary because of
numerous factors. We recommend that you test how long an
instance may take to initialize. To do this, create an instance
and time the startup process. When `null`, the `cooldown_period` field will be omitted from the resulting object.
  - `max_replicas` (`number`): The maximum number of instances that the autoscaler can scale up
to. This is required when creating or updating an autoscaler. The
maximum number of replicas should not be lower than minimal number
of replicas.
  - `min_replicas` (`number`): The minimum number of replicas that the autoscaler can scale down
to. This cannot be less than 0. If not provided, autoscaler will
choose a default value depending on maximum number of instances
allowed.
  - `mode` (`string`): Defines operating mode for this policy. Default value: &#34;ON&#34; Possible values: [&#34;OFF&#34;, &#34;ONLY_UP&#34;, &#34;ON&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `cpu_utilization` (`list[obj]`): Defines the CPU utilization policy that allows the autoscaler to
scale based on the average CPU utilization of a managed instance
group. When `null`, the `cpu_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.cpu_utilization.new](#fn-cpu_utilizationnew) constructor.
  - `load_balancing_utilization` (`list[obj]`): Configuration parameters of autoscaling based on a load balancer. When `null`, the `load_balancing_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.load_balancing_utilization.new](#fn-load_balancing_utilizationnew) constructor.
  - `metric` (`list[obj]`): Configuration parameters of autoscaling based on a custom metric. When `null`, the `metric` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.metric.new](#fn-metricnew) constructor.
  - `scale_in_control` (`list[obj]`): Defines scale in controls to reduce the risk of response latency
and outages due to abrupt scale-in events When `null`, the `scale_in_control` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.scale_in_control.new](#fn-scale_in_controlnew) constructor.
  - `scaling_schedules` (`list[obj]`): Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap. When `null`, the `scaling_schedules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.scaling_schedules.new](#fn-scaling_schedulesnew) constructor.

**Returns**:
  - An attribute object that represents the `autoscaling_policy` sub block.


## obj autoscaling_policy.cpu_utilization



### fn autoscaling_policy.cpu_utilization.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.cpu_utilization.new` constructs a new object with attributes and blocks configured for the `cpu_utilization`
Terraform sub block.



**Args**:
  - `predictive_method` (`string`): Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:

- NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics.

- OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand. When `null`, the `predictive_method` field will be omitted from the resulting object.
  - `target` (`number`): The target CPU utilization that the autoscaler should maintain.
Must be a float value in the range (0, 1]. If not specified, the
default is 0.6.

If the CPU level is below the target utilization, the autoscaler
scales down the number of instances until it reaches the minimum
number of instances you specified or until the average CPU of
your instances reaches the target utilization.

If the average CPU is above the target utilization, the autoscaler
scales up until it reaches the maximum number of instances you
specified or until the average utilization reaches the target
utilization.

**Returns**:
  - An attribute object that represents the `cpu_utilization` sub block.


## obj autoscaling_policy.load_balancing_utilization



### fn autoscaling_policy.load_balancing_utilization.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.load_balancing_utilization.new` constructs a new object with attributes and blocks configured for the `load_balancing_utilization`
Terraform sub block.



**Args**:
  - `target` (`number`): Fraction of backend capacity utilization (set in HTTP(s) load
balancing configuration) that autoscaler should maintain. Must
be a positive float value. If not defined, the default is 0.8.

**Returns**:
  - An attribute object that represents the `load_balancing_utilization` sub block.


## obj autoscaling_policy.metric



### fn autoscaling_policy.metric.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.metric.new` constructs a new object with attributes and blocks configured for the `metric`
Terraform sub block.



**Args**:
  - `name` (`string`): The identifier (type) of the Stackdriver Monitoring metric.
The metric cannot have negative values.

The metric must have a value type of INT64 or DOUBLE.
  - `target` (`number`): The target value of the metric that autoscaler should
maintain. This must be a positive value. A utilization
metric scales number of virtual machines handling requests
to increase or decrease proportionally to the metric.

For example, a good metric to use as a utilizationTarget is
www.googleapis.com/compute/instance/network/received_bytes_count.
The autoscaler will work to keep this value constant for each
of the instances. When `null`, the `target` field will be omitted from the resulting object.
  - `type` (`string`): Defines how target utilization value is expressed for a
Stackdriver Monitoring metric. Possible values: [&#34;GAUGE&#34;, &#34;DELTA_PER_SECOND&#34;, &#34;DELTA_PER_MINUTE&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metric` sub block.


## obj autoscaling_policy.scale_in_control



### fn autoscaling_policy.scale_in_control.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.scale_in_control.new` constructs a new object with attributes and blocks configured for the `scale_in_control`
Terraform sub block.



**Args**:
  - `time_window_sec` (`number`): How long back autoscaling should look when computing recommendations
to include directives regarding slower scale down, as described above. When `null`, the `time_window_sec` field will be omitted from the resulting object.
  - `max_scaled_in_replicas` (`list[obj]`): A nested object resource When `null`, the `max_scaled_in_replicas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_autoscaler.autoscaling_policy.scale_in_control.max_scaled_in_replicas.new](#fn-autoscaling_policymax_scaled_in_replicasnew) constructor.

**Returns**:
  - An attribute object that represents the `scale_in_control` sub block.


## obj autoscaling_policy.scale_in_control.max_scaled_in_replicas



### fn autoscaling_policy.scale_in_control.max_scaled_in_replicas.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.scale_in_control.max_scaled_in_replicas.new` constructs a new object with attributes and blocks configured for the `max_scaled_in_replicas`
Terraform sub block.



**Args**:
  - `fixed` (`number`): Specifies a fixed number of VM instances. This must be a positive
integer. When `null`, the `fixed` field will be omitted from the resulting object.
  - `percent` (`number`): Specifies a percentage of instances between 0 to 100%, inclusive.
For example, specify 80 for 80%. When `null`, the `percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `max_scaled_in_replicas` sub block.


## obj autoscaling_policy.scaling_schedules



### fn autoscaling_policy.scaling_schedules.new

```ts
new()
```


`google.compute_autoscaler.autoscaling_policy.scaling_schedules.new` constructs a new object with attributes and blocks configured for the `scaling_schedules`
Terraform sub block.



**Args**:
  - `description` (`string`): A description of a scaling schedule. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect. When `null`, the `disabled` field will be omitted from the resulting object.
  - `duration_sec` (`number`): The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
  - `min_required_replicas` (`number`): Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
  - `name` (`string`): 
  - `schedule` (`string`): The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
  - `time_zone` (`string`): The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database. When `null`, the `time_zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `scaling_schedules` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_autoscaler.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
