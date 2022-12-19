---
permalink: /cloudiot_registry/
---

# cloudiot_registry

`cloudiot_registry` represents the `google_cloudiot_registry` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCredentials()`](#fn-withcredentials)
* [`fn withCredentialsMixin()`](#fn-withcredentialsmixin)
* [`fn withEventNotificationConfigs()`](#fn-witheventnotificationconfigs)
* [`fn withEventNotificationConfigsMixin()`](#fn-witheventnotificationconfigsmixin)
* [`fn withHttpConfig()`](#fn-withhttpconfig)
* [`fn withLogLevel()`](#fn-withloglevel)
* [`fn withMqttConfig()`](#fn-withmqttconfig)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withStateNotificationConfig()`](#fn-withstatenotificationconfig)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj credentials`](#obj-credentials)
  * [`fn new()`](#fn-credentialsnew)
* [`obj event_notification_configs`](#obj-event_notification_configs)
  * [`fn new()`](#fn-event_notification_configsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloudiot_registry.new` injects a new `google_cloudiot_registry` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudiot_registry.new('some_id')

You can get the reference to the `id` field of the created `google.cloudiot_registry` using the reference:

    $._ref.google_cloudiot_registry.some_id.get('id')

This is the same as directly entering `"${ google_cloudiot_registry.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `http_config` (`obj`): Activate or deactivate HTTP. When `null`, the `http_config` field will be omitted from the resulting object.
  - `log_level` (`string`): The default logging verbosity for activity from devices in this
registry. Specifies which events should be written to logs. For
example, if the LogLevel is ERROR, only events that terminate in
errors will be logged. LogLevel is inclusive; enabling INFO logging
will also enable ERROR logging. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ERROR&#34;, &#34;INFO&#34;, &#34;DEBUG&#34;] When `null`, the `log_level` field will be omitted from the resulting object.
  - `mqtt_config` (`obj`): Activate or deactivate MQTT. When `null`, the `mqtt_config` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource, required by device registry.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created registry should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `state_notification_config` (`obj`): A PubSub topic to publish device state updates. When `null`, the `state_notification_config` field will be omitted from the resulting object.
  - `credentials` (`list[obj]`): List of public key certificates to authenticate devices. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.credentials.new](#fn-cloudiotregistrycredentialsnew) constructor.
  - `event_notification_configs` (`list[obj]`): List of configurations for event notifications, such as PubSub topics
to publish device events to. When `null`, the `event_notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.event_notification_configs.new](#fn-cloudiotregistryeventnotificationconfigsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.timeouts.new](#fn-cloudiotregistrytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudiot_registry.newAttrs` constructs a new object with attributes and blocks configured for the `cloudiot_registry`
Terraform resource.

Unlike [google.cloudiot_registry.new](#fn-cloudiotregistrynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `http_config` (`obj`): Activate or deactivate HTTP. When `null`, the `http_config` field will be omitted from the resulting object.
  - `log_level` (`string`): The default logging verbosity for activity from devices in this
registry. Specifies which events should be written to logs. For
example, if the LogLevel is ERROR, only events that terminate in
errors will be logged. LogLevel is inclusive; enabling INFO logging
will also enable ERROR logging. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ERROR&#34;, &#34;INFO&#34;, &#34;DEBUG&#34;] When `null`, the `log_level` field will be omitted from the resulting object.
  - `mqtt_config` (`obj`): Activate or deactivate MQTT. When `null`, the `mqtt_config` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource, required by device registry.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created registry should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `state_notification_config` (`obj`): A PubSub topic to publish device state updates. When `null`, the `state_notification_config` field will be omitted from the resulting object.
  - `credentials` (`list[obj]`): List of public key certificates to authenticate devices. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.credentials.new](#fn-cloudiotregistrycredentialsnew) constructor.
  - `event_notification_configs` (`list[obj]`): List of configurations for event notifications, such as PubSub topics
to publish device events to. When `null`, the `event_notification_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.event_notification_configs.new](#fn-cloudiotregistryeventnotificationconfigsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_registry.timeouts.new](#fn-cloudiotregistrytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudiot_registry` resource into the root Terraform configuration.


### fn withCredentials

```ts
withCredentials()
```

`google.list[obj].withCredentials` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the credentials field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCredentialsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `credentials` field.


### fn withCredentialsMixin

```ts
withCredentialsMixin()
```

`google.list[obj].withCredentialsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the credentials field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCredentials](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `credentials` field.


### fn withEventNotificationConfigs

```ts
withEventNotificationConfigs()
```

`google.list[obj].withEventNotificationConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_notification_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEventNotificationConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_notification_configs` field.


### fn withEventNotificationConfigsMixin

```ts
withEventNotificationConfigsMixin()
```

`google.list[obj].withEventNotificationConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_notification_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEventNotificationConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_notification_configs` field.


### fn withHttpConfig

```ts
withHttpConfig()
```

`google.obj.withHttpConfig` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the http_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `http_config` field.


### fn withLogLevel

```ts
withLogLevel()
```

`google.string.withLogLevel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the log_level field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `log_level` field.


### fn withMqttConfig

```ts
withMqttConfig()
```

`google.obj.withMqttConfig` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the mqtt_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `mqtt_config` field.


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


### fn withStateNotificationConfig

```ts
withStateNotificationConfig()
```

`google.obj.withStateNotificationConfig` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the state_notification_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `state_notification_config` field.


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


## obj credentials



### fn credentials.new

```ts
new()
```


`google.cloudiot_registry.credentials.new` constructs a new object with attributes and blocks configured for the `credentials`
Terraform sub block.



**Args**:
  - `public_key_certificate` (`obj`): A public key certificate format and data.

**Returns**:
  - An attribute object that represents the `credentials` sub block.


## obj event_notification_configs



### fn event_notification_configs.new

```ts
new()
```


`google.cloudiot_registry.event_notification_configs.new` constructs a new object with attributes and blocks configured for the `event_notification_configs`
Terraform sub block.



**Args**:
  - `pubsub_topic_name` (`string`): PubSub topic name to publish device events.
  - `subfolder_matches` (`string`): If the subfolder name matches this string exactly, this
configuration will be used. The string must not include the
leading &#39;/&#39; character. If empty, all strings are matched. Empty
value can only be used for the last &#39;event_notification_configs&#39;
item. When `null`, the `subfolder_matches` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `event_notification_configs` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudiot_registry.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
