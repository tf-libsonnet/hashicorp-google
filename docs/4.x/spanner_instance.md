---
permalink: /spanner_instance/
---

# spanner_instance

`spanner_instance` represents the `google_spanner_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
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
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): A unique identifier for the instance, which cannot be changed after
the instance is created. The name must be between 6 and 30 characters
in length.


If not provided, a random string starting with &#39;tf-&#39; will be selected. When `null`, the `name` field will be omitted from the resulting object.
  - `num_nodes` (`number`): The number of nodes allocated to this instance. Exactly one of either node_count or processing_units
must be present in terraform. When `null`, the `num_nodes` field will be omitted from the resulting object.
  - `processing_units` (`number`): The number of processing units allocated to this instance. Exactly one of processing_units 
or node_count must be present in terraform. When `null`, the `processing_units` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.timeouts.new](#fn-spannerinstancetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.spanner_instance.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_instance`
Terraform resource.

Unlike [google.spanner_instance.new](#fn-spannerinstancenew), this function will not inject the `resource`
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
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): A unique identifier for the instance, which cannot be changed after
the instance is created. The name must be between 6 and 30 characters
in length.


If not provided, a random string starting with &#39;tf-&#39; will be selected. When `null`, the `name` field will be omitted from the resulting object.
  - `num_nodes` (`number`): The number of nodes allocated to this instance. Exactly one of either node_count or processing_units
must be present in terraform. When `null`, the `num_nodes` field will be omitted from the resulting object.
  - `processing_units` (`number`): The number of processing units allocated to this instance. Exactly one of processing_units 
or node_count must be present in terraform. When `null`, the `processing_units` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.timeouts.new](#fn-spannerinstancetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `spanner_instance` resource into the root Terraform configuration.


### fn withConfig

```ts
withConfig()
```

`google.spanner_instance.withConfig` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.spanner_instance.withDisplayName` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withForceDestroy

```ts
withForceDestroy()
```

`google.spanner_instance.withForceDestroy` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the force_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `force_destroy` field.


### fn withLabels

```ts
withLabels()
```

`google.spanner_instance.withLabels` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.spanner_instance.withName` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNumNodes

```ts
withNumNodes()
```

`google.spanner_instance.withNumNodes` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the num_nodes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `num_nodes` field.


### fn withProcessingUnits

```ts
withProcessingUnits()
```

`google.spanner_instance.withProcessingUnits` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the processing_units field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `processing_units` field.


### fn withProject

```ts
withProject()
```

`google.spanner_instance.withProject` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.spanner_instance.withTimeouts` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.spanner_instance.withTimeoutsMixin` constructs a mixin object that can be merged into the `spanner_instance`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.spanner_instance.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.spanner_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
