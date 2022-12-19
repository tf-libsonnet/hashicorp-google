---
permalink: /bigtable_app_profile/
---

# bigtable_app_profile

`bigtable_app_profile` represents the `google_bigtable_app_profile` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppProfileId()`](#fn-withappprofileid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIgnoreWarnings()`](#fn-withignorewarnings)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withMultiClusterRoutingClusterIds()`](#fn-withmulticlusterroutingclusterids)
* [`fn withMultiClusterRoutingUseAny()`](#fn-withmulticlusterroutinguseany)
* [`fn withProject()`](#fn-withproject)
* [`fn withSingleClusterRouting()`](#fn-withsingleclusterrouting)
* [`fn withSingleClusterRoutingMixin()`](#fn-withsingleclusterroutingmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj single_cluster_routing`](#obj-single_cluster_routing)
  * [`fn new()`](#fn-single_cluster_routingnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigtable_app_profile.new` injects a new `google_bigtable_app_profile` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigtable_app_profile.new('some_id')

You can get the reference to the `id` field of the created `google.bigtable_app_profile` using the reference:

    $._ref.google_bigtable_app_profile.some_id.get('id')

This is the same as directly entering `"${ google_bigtable_app_profile.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `app_profile_id` (`string`): The unique name of the app profile in the form &#39;[_a-zA-Z0-9][-_.a-zA-Z0-9]*&#39;.
  - `description` (`string`): Long form description of the use case for this app profile. When `null`, the `description` field will be omitted from the resulting object.
  - `ignore_warnings` (`bool`): If true, ignore safety checks when deleting/updating the app profile. When `null`, the `ignore_warnings` field will be omitted from the resulting object.
  - `instance` (`string`): The name of the instance to create the app profile within. When `null`, the `instance` field will be omitted from the resulting object.
  - `multi_cluster_routing_cluster_ids` (`list`): The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible. When `null`, the `multi_cluster_routing_cluster_ids` field will be omitted from the resulting object.
  - `multi_cluster_routing_use_any` (`bool`): If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
consistency to improve availability. When `null`, the `multi_cluster_routing_use_any` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `single_cluster_routing` (`list[obj]`): Use a single-cluster routing policy. When `null`, the `single_cluster_routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.single_cluster_routing.new](#fn-bigtableappprofilesingleclusterroutingnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.timeouts.new](#fn-bigtableappprofiletimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigtable_app_profile.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_app_profile`
Terraform resource.

Unlike [google.bigtable_app_profile.new](#fn-bigtableappprofilenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `app_profile_id` (`string`): The unique name of the app profile in the form &#39;[_a-zA-Z0-9][-_.a-zA-Z0-9]*&#39;.
  - `description` (`string`): Long form description of the use case for this app profile. When `null`, the `description` field will be omitted from the resulting object.
  - `ignore_warnings` (`bool`): If true, ignore safety checks when deleting/updating the app profile. When `null`, the `ignore_warnings` field will be omitted from the resulting object.
  - `instance` (`string`): The name of the instance to create the app profile within. When `null`, the `instance` field will be omitted from the resulting object.
  - `multi_cluster_routing_cluster_ids` (`list`): The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible. When `null`, the `multi_cluster_routing_cluster_ids` field will be omitted from the resulting object.
  - `multi_cluster_routing_use_any` (`bool`): If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
consistency to improve availability. When `null`, the `multi_cluster_routing_use_any` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `single_cluster_routing` (`list[obj]`): Use a single-cluster routing policy. When `null`, the `single_cluster_routing` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.single_cluster_routing.new](#fn-bigtableappprofilesingleclusterroutingnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_app_profile.timeouts.new](#fn-bigtableappprofiletimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_app_profile` resource into the root Terraform configuration.


### fn withAppProfileId

```ts
withAppProfileId()
```

`google.string.withAppProfileId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the app_profile_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `app_profile_id` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIgnoreWarnings

```ts
withIgnoreWarnings()
```

`google.bool.withIgnoreWarnings` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the ignore_warnings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `ignore_warnings` field.


### fn withInstance

```ts
withInstance()
```

`google.string.withInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance` field.


### fn withMultiClusterRoutingClusterIds

```ts
withMultiClusterRoutingClusterIds()
```

`google.list.withMultiClusterRoutingClusterIds` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the multi_cluster_routing_cluster_ids field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `multi_cluster_routing_cluster_ids` field.


### fn withMultiClusterRoutingUseAny

```ts
withMultiClusterRoutingUseAny()
```

`google.bool.withMultiClusterRoutingUseAny` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the multi_cluster_routing_use_any field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `multi_cluster_routing_use_any` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSingleClusterRouting

```ts
withSingleClusterRouting()
```

`google.list[obj].withSingleClusterRouting` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the single_cluster_routing field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSingleClusterRoutingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `single_cluster_routing` field.


### fn withSingleClusterRoutingMixin

```ts
withSingleClusterRoutingMixin()
```

`google.list[obj].withSingleClusterRoutingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the single_cluster_routing field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSingleClusterRouting](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `single_cluster_routing` field.


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


## obj single_cluster_routing



### fn single_cluster_routing.new

```ts
new()
```


`google.bigtable_app_profile.single_cluster_routing.new` constructs a new object with attributes and blocks configured for the `single_cluster_routing`
Terraform sub block.



**Args**:
  - `allow_transactional_writes` (`bool`): If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.
It is unsafe to send these requests to the same table/row/column in multiple clusters. When `null`, the `allow_transactional_writes` field will be omitted from the resulting object.
  - `cluster_id` (`string`): The cluster to which read/write requests should be routed.

**Returns**:
  - An attribute object that represents the `single_cluster_routing` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigtable_app_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
