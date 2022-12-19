---
permalink: /app_engine_service_split_traffic/
---

# app_engine_service_split_traffic

`app_engine_service_split_traffic` represents the `google_app_engine_service_split_traffic` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withMigrateTraffic()`](#fn-withmigratetraffic)
* [`fn withProject()`](#fn-withproject)
* [`fn withService()`](#fn-withservice)
* [`fn withSplit()`](#fn-withsplit)
* [`fn withSplitMixin()`](#fn-withsplitmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj split`](#obj-split)
  * [`fn new()`](#fn-splitnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_service_split_traffic.new` injects a new `google_app_engine_service_split_traffic` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_service_split_traffic.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_service_split_traffic` using the reference:

    $._ref.google_app_engine_service_split_traffic.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_service_split_traffic.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `migrate_traffic` (`bool`): If set to true traffic will be migrated to this version. When `null`, the `migrate_traffic` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service these settings apply to.
  - `split` (`list[obj]`): Mapping that defines fractional HTTP traffic diversion to different versions within the service. When `null`, the `split` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.split.new](#fn-appengineservicesplittrafficsplitnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.timeouts.new](#fn-appengineservicesplittraffictimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_service_split_traffic.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_service_split_traffic`
Terraform resource.

Unlike [google.app_engine_service_split_traffic.new](#fn-appengineservicesplittrafficnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `migrate_traffic` (`bool`): If set to true traffic will be migrated to this version. When `null`, the `migrate_traffic` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service these settings apply to.
  - `split` (`list[obj]`): Mapping that defines fractional HTTP traffic diversion to different versions within the service. When `null`, the `split` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.split.new](#fn-appengineservicesplittrafficsplitnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_split_traffic.timeouts.new](#fn-appengineservicesplittraffictimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_service_split_traffic` resource into the root Terraform configuration.


### fn withMigrateTraffic

```ts
withMigrateTraffic()
```

`google.app_engine_service_split_traffic.withMigrateTraffic` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the migrate_traffic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `migrate_traffic` field.


### fn withProject

```ts
withProject()
```

`google.app_engine_service_split_traffic.withProject` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withService

```ts
withService()
```

`google.app_engine_service_split_traffic.withService` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service` field.


### fn withSplit

```ts
withSplit()
```

`google.app_engine_service_split_traffic.withSplit` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the split field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `split` field.


### fn withSplitMixin

```ts
withSplitMixin()
```

`google.app_engine_service_split_traffic.withSplitMixin` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the split field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_service_split_traffic.withSplit](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `split` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.app_engine_service_split_traffic.withTimeouts` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.app_engine_service_split_traffic.withTimeoutsMixin` constructs a mixin object that can be merged into the `app_engine_service_split_traffic`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.app_engine_service_split_traffic.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj split



### fn split.new

```ts
new()
```


`google.app_engine_service_split_traffic.split.new` constructs a new object with attributes and blocks configured for the `split`
Terraform sub block.



**Args**:
  - `allocations` (`obj`): Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.
  - `shard_by` (`string`): Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed. Possible values: [&#34;UNSPECIFIED&#34;, &#34;COOKIE&#34;, &#34;IP&#34;, &#34;RANDOM&#34;] When `null`, the `shard_by` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `split` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_service_split_traffic.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
