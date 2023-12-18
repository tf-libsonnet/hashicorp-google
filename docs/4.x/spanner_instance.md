---
permalink: /spanner_instance/
---

# spanner_instance

`spanner_instance` represents the `google_spanner_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoscalingConfig()`](#fn-withautoscalingconfig)
* [`fn withAutoscalingConfigMixin()`](#fn-withautoscalingconfigmixin)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withForceDestroy()`](#fn-withforcedestroy)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNumNodes()`](#fn-withnumnodes)
* [`fn withProcessingUnits()`](#fn-withprocessingunits)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj autoscaling_config`](#obj-autoscaling_config)
  * [`fn new()`](#fn-autoscaling_confignew)
  * [`obj autoscaling_config.autoscaling_limits`](#obj-autoscaling_configautoscaling_limits)
    * [`fn new()`](#fn-autoscaling_configautoscaling_limitsnew)
  * [`obj autoscaling_config.autoscaling_targets`](#obj-autoscaling_configautoscaling_targets)
    * [`fn new()`](#fn-autoscaling_configautoscaling_targetsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.spanner_instance.new` injects a new `google_spanner_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.spanner_instance.new('some_id')

You can get the reference to the `id` field of the created `google.spanner_instance` using the reference:

    $._ref.google_spanner_instance.some_id.get('id')

This is the same as directly entering `"${ google_spanner_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `config` (`string`): The name of the instance&#39;s configuration (similar but not
quite the same as a region) which defines the geographic placement and
replication of your databases in this instance. It determines where your data
is stored. Values are typically of the form &#39;regional-europe-west1&#39; , &#39;us-central&#39; etc.
In order to obtain a valid list please consult the
[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be
unique per project and between 4 and 30 characters in length.
  - `force_destroy` (`bool`): When deleting a spanner instance, this boolean option will delete all backups of this instance.
This must be set to true if you created a backup manually in the console. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): A unique identifier for the instance, which cannot be changed after
the instance is created. The name must be between 6 and 30 characters
in length.


If not provided, a random string starting with &#39;tf-&#39; will be selected. When `null`, the `name` field will be omitted from the resulting object.
  - `num_nodes` (`number`): The number of nodes allocated to this instance. Exactly one of either node_count or processing_units
must be present in terraform. When `null`, the `num_nodes` field will be omitted from the resulting object.
  - `processing_units` (`number`): The number of processing units allocated to this instance. Exactly one of processing_units
or node_count must be present in terraform. When `null`, the `processing_units` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `autoscaling_config` (`list[obj]`): The autoscaling configuration. Autoscaling is enabled if this field is set.
When autoscaling is enabled, num_nodes and processing_units are treated as,
OUTPUT_ONLY fields and reflect the current compute capacity allocated to
the instance. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.new](#fn-autoscaling_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.spanner_instance.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_instance`
Terraform resource.

Unlike [google.spanner_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config` (`string`): The name of the instance&#39;s configuration (similar but not
quite the same as a region) which defines the geographic placement and
replication of your databases in this instance. It determines where your data
is stored. Values are typically of the form &#39;regional-europe-west1&#39; , &#39;us-central&#39; etc.
In order to obtain a valid list please consult the
[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be
unique per project and between 4 and 30 characters in length.
  - `force_destroy` (`bool`): When deleting a spanner instance, this boolean option will delete all backups of this instance.
This must be set to true if you created a backup manually in the console. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): A unique identifier for the instance, which cannot be changed after
the instance is created. The name must be between 6 and 30 characters
in length.


If not provided, a random string starting with &#39;tf-&#39; will be selected. When `null`, the `name` field will be omitted from the resulting object.
  - `num_nodes` (`number`): The number of nodes allocated to this instance. Exactly one of either node_count or processing_units
must be present in terraform. When `null`, the `num_nodes` field will be omitted from the resulting object.
  - `processing_units` (`number`): The number of processing units allocated to this instance. Exactly one of processing_units
or node_count must be present in terraform. When `null`, the `processing_units` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `autoscaling_config` (`list[obj]`): The autoscaling configuration. Autoscaling is enabled if this field is set.
When autoscaling is enabled, num_nodes and processing_units are treated as,
OUTPUT_ONLY fields and reflect the current compute capacity allocated to
the instance. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.new](#fn-autoscaling_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `spanner_instance` resource into the root Terraform configuration.


### fn withAutoscalingConfig

```ts
withAutoscalingConfig()
```

`google.list[obj].withAutoscalingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoscalingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling_config` field.


### fn withAutoscalingConfigMixin

```ts
withAutoscalingConfigMixin()
```

`google.list[obj].withAutoscalingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscalingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling_config` field.


### fn withConfig

```ts
withConfig()
```

`google.string.withConfig` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withForceDestroy

```ts
withForceDestroy()
```

`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_destroy` field.


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


### fn withNumNodes

```ts
withNumNodes()
```

`google.number.withNumNodes` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the num_nodes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `num_nodes` field.


### fn withProcessingUnits

```ts
withProcessingUnits()
```

`google.number.withProcessingUnits` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the processing_units field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `processing_units` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj autoscaling_config



### fn autoscaling_config.new

```ts
new()
```


`google.spanner_instance.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`
Terraform sub block.



**Args**:
  - `autoscaling_limits` (`list[obj]`): Defines scale in controls to reduce the risk of response latency
and outages due to abrupt scale-in events. Users can define the minimum and
maximum compute capacity allocated to the instance, and the autoscaler will
only scale within that range. Users can either use nodes or processing
units to specify the limits, but should use the same unit to set both the
min_limit and max_limit. When `null`, the `autoscaling_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.autoscaling_limits.new](#fn-autoscaling_configautoscaling_limitsnew) constructor.
  - `autoscaling_targets` (`list[obj]`): Defines scale in controls to reduce the risk of response latency
and outages due to abrupt scale-in events When `null`, the `autoscaling_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.autoscaling_targets.new](#fn-autoscaling_configautoscaling_targetsnew) constructor.

**Returns**:
  - An attribute object that represents the `autoscaling_config` sub block.


## obj autoscaling_config.autoscaling_limits



### fn autoscaling_config.autoscaling_limits.new

```ts
new()
```


`google.spanner_instance.autoscaling_config.autoscaling_limits.new` constructs a new object with attributes and blocks configured for the `autoscaling_limits`
Terraform sub block.



**Args**:
  - `max_nodes` (`number`): Specifies maximum number of nodes allocated to the instance. If set, this number
should be greater than or equal to min_nodes. When `null`, the `max_nodes` field will be omitted from the resulting object.
  - `max_processing_units` (`number`): Specifies maximum number of processing units allocated to the instance.
If set, this number should be multiples of 1000 and be greater than or equal to
min_processing_units. When `null`, the `max_processing_units` field will be omitted from the resulting object.
  - `min_nodes` (`number`): Specifies number of nodes allocated to the instance. If set, this number
should be greater than or equal to 1. When `null`, the `min_nodes` field will be omitted from the resulting object.
  - `min_processing_units` (`number`): Specifies minimum number of processing units allocated to the instance.
If set, this number should be multiples of 1000. When `null`, the `min_processing_units` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling_limits` sub block.


## obj autoscaling_config.autoscaling_targets



### fn autoscaling_config.autoscaling_targets.new

```ts
new()
```


`google.spanner_instance.autoscaling_config.autoscaling_targets.new` constructs a new object with attributes and blocks configured for the `autoscaling_targets`
Terraform sub block.



**Args**:
  - `high_priority_cpu_utilization_percent` (`number`): Specifies the target high priority cpu utilization percentage that the autoscaler
should be trying to achieve for the instance.
This number is on a scale from 0 (no utilization) to 100 (full utilization).. When `null`, the `high_priority_cpu_utilization_percent` field will be omitted from the resulting object.
  - `storage_utilization_percent` (`number`): Specifies the target storage utilization percentage that the autoscaler
should be trying to achieve for the instance.
This number is on a scale from 0 (no utilization) to 100 (full utilization). When `null`, the `storage_utilization_percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling_targets` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.spanner_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
