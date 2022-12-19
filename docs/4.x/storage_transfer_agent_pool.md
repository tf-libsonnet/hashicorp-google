---
permalink: /storage_transfer_agent_pool/
---

# storage_transfer_agent_pool

`storage_transfer_agent_pool` represents the `google_storage_transfer_agent_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBandwidthLimit()`](#fn-withbandwidthlimit)
* [`fn withBandwidthLimitMixin()`](#fn-withbandwidthlimitmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj bandwidth_limit`](#obj-bandwidth_limit)
  * [`fn new()`](#fn-bandwidth_limitnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.storage_transfer_agent_pool.new` injects a new `google_storage_transfer_agent_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_transfer_agent_pool.new('some_id')

You can get the reference to the `id` field of the created `google.storage_transfer_agent_pool` using the reference:

    $._ref.google_storage_transfer_agent_pool.some_id.get('id')

This is the same as directly entering `"${ google_storage_transfer_agent_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Specifies the client-specified AgentPool description. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the agent pool to create.

The agentPoolId must meet the following requirements:
* Length of 128 characters or less.
* Not start with the string goog.
* Start with a lowercase ASCII character, followed by:
  * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  * One or more numerals or lowercase ASCII characters.

As expressed by the regular expression: ^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `bandwidth_limit` (`list[obj]`): Specifies the bandwidth limit details. If this field is unspecified, the default value is set as &#39;No Limit&#39;. When `null`, the `bandwidth_limit` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.bandwidth_limit.new](#fn-bandwidth_limitnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_transfer_agent_pool.newAttrs` constructs a new object with attributes and blocks configured for the `storage_transfer_agent_pool`
Terraform resource.

Unlike [google.storage_transfer_agent_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Specifies the client-specified AgentPool description. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the agent pool to create.

The agentPoolId must meet the following requirements:
* Length of 128 characters or less.
* Not start with the string goog.
* Start with a lowercase ASCII character, followed by:
  * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  * One or more numerals or lowercase ASCII characters.

As expressed by the regular expression: ^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `bandwidth_limit` (`list[obj]`): Specifies the bandwidth limit details. If this field is unspecified, the default value is set as &#39;No Limit&#39;. When `null`, the `bandwidth_limit` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.bandwidth_limit.new](#fn-bandwidth_limitnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_transfer_agent_pool` resource into the root Terraform configuration.


### fn withBandwidthLimit

```ts
withBandwidthLimit()
```

`google.list[obj].withBandwidthLimit` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bandwidth_limit field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBandwidthLimitMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bandwidth_limit` field.


### fn withBandwidthLimitMixin

```ts
withBandwidthLimitMixin()
```

`google.list[obj].withBandwidthLimitMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bandwidth_limit field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBandwidthLimit](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bandwidth_limit` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


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


## obj bandwidth_limit



### fn bandwidth_limit.new

```ts
new()
```


`google.storage_transfer_agent_pool.bandwidth_limit.new` constructs a new object with attributes and blocks configured for the `bandwidth_limit`
Terraform sub block.



**Args**:
  - `limit_mbps` (`string`): Bandwidth rate in megabytes per second, distributed across all the agents in the pool.

**Returns**:
  - An attribute object that represents the `bandwidth_limit` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.storage_transfer_agent_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
