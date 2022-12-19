---
permalink: /monitoring_group/
---

# monitoring_group

`monitoring_group` represents the `google_monitoring_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withIsCluster()`](#fn-withiscluster)
* [`fn withParentName()`](#fn-withparentname)
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


`google.monitoring_group.new` injects a new `google_monitoring_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_group.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_group` using the reference:

    $._ref.google_monitoring_group.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): A user-assigned name for this group, used only for display
purposes.
  - `filter` (`string`): The filter used to determine which monitored resources
belong to this group.
  - `is_cluster` (`bool`): If true, the members of this group are considered to be a
cluster. The system can perform additional analysis on
groups that are clusters. When `null`, the `is_cluster` field will be omitted from the resulting object.
  - `parent_name` (`string`): The name of the group&#39;s parent, if it has one. The format is
&#34;projects/{project_id_or_number}/groups/{group_id}&#34;. For
groups with no parent, parentName is the empty string, &#34;&#34;. When `null`, the `parent_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_group.timeouts.new](#fn-monitoringgrouptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_group.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_group`
Terraform resource.

Unlike [google.monitoring_group.new](#fn-monitoringgroupnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): A user-assigned name for this group, used only for display
purposes.
  - `filter` (`string`): The filter used to determine which monitored resources
belong to this group.
  - `is_cluster` (`bool`): If true, the members of this group are considered to be a
cluster. The system can perform additional analysis on
groups that are clusters. When `null`, the `is_cluster` field will be omitted from the resulting object.
  - `parent_name` (`string`): The name of the group&#39;s parent, if it has one. The format is
&#34;projects/{project_id_or_number}/groups/{group_id}&#34;. For
groups with no parent, parentName is the empty string, &#34;&#34;. When `null`, the `parent_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_group.timeouts.new](#fn-monitoringgrouptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_group` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.monitoring_group.withDisplayName` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withFilter

```ts
withFilter()
```

`google.monitoring_group.withFilter` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `filter` field.


### fn withIsCluster

```ts
withIsCluster()
```

`google.monitoring_group.withIsCluster` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the is_cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `is_cluster` field.


### fn withParentName

```ts
withParentName()
```

`google.monitoring_group.withParentName` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the parent_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `parent_name` field.


### fn withProject

```ts
withProject()
```

`google.monitoring_group.withProject` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.monitoring_group.withTimeouts` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.monitoring_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `monitoring_group`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.monitoring_group.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
