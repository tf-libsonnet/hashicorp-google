---
permalink: /pubsub_lite_subscription/
---

# pubsub_lite_subscription

`pubsub_lite_subscription` represents the `google_pubsub_lite_subscription` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeliveryConfig()`](#fn-withdeliveryconfig)
* [`fn withDeliveryConfigMixin()`](#fn-withdeliveryconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTopic()`](#fn-withtopic)
* [`fn withZone()`](#fn-withzone)
* [`obj delivery_config`](#obj-delivery_config)
  * [`fn new()`](#fn-delivery_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.pubsub_lite_subscription.new` injects a new `google_pubsub_lite_subscription` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.pubsub_lite_subscription.new('some_id')

You can get the reference to the `id` field of the created `google.pubsub_lite_subscription` using the reference:

    $._ref.google_pubsub_lite_subscription.some_id.get('id')

This is the same as directly entering `"${ google_pubsub_lite_subscription.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): Name of the subscription.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.
  - `topic` (`string`): A reference to a Topic resource.
  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.
  - `delivery_config` (`list[obj]`): The settings for this subscription&#39;s message delivery. When `null`, the `delivery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_subscription.delivery_config.new](#fn-delivery_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_subscription.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.pubsub_lite_subscription.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_lite_subscription`
Terraform resource.

Unlike [google.pubsub_lite_subscription.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): Name of the subscription.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the pubsub lite topic. When `null`, the `region` field will be omitted from the resulting object.
  - `topic` (`string`): A reference to a Topic resource.
  - `zone` (`string`): The zone of the pubsub lite topic. When `null`, the `zone` field will be omitted from the resulting object.
  - `delivery_config` (`list[obj]`): The settings for this subscription&#39;s message delivery. When `null`, the `delivery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_subscription.delivery_config.new](#fn-delivery_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_lite_subscription.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_lite_subscription` resource into the root Terraform configuration.


### fn withDeliveryConfig

```ts
withDeliveryConfig()
```

`google.list[obj].withDeliveryConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the delivery_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDeliveryConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `delivery_config` field.


### fn withDeliveryConfigMixin

```ts
withDeliveryConfigMixin()
```

`google.list[obj].withDeliveryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the delivery_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDeliveryConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `delivery_config` field.


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


### fn withTopic

```ts
withTopic()
```

`google.string.withTopic` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the topic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `topic` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj delivery_config



### fn delivery_config.new

```ts
new()
```


`google.pubsub_lite_subscription.delivery_config.new` constructs a new object with attributes and blocks configured for the `delivery_config`
Terraform sub block.



**Args**:
  - `delivery_requirement` (`string`): When this subscription should send messages to subscribers relative to messages persistence in storage. Possible values: [&#34;DELIVER_IMMEDIATELY&#34;, &#34;DELIVER_AFTER_STORED&#34;, &#34;DELIVERY_REQUIREMENT_UNSPECIFIED&#34;]

**Returns**:
  - An attribute object that represents the `delivery_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.pubsub_lite_subscription.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
