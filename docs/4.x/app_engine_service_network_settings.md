---
permalink: /app_engine_service_network_settings/
---

# app_engine_service_network_settings

`app_engine_service_network_settings` represents the `google_app_engine_service_network_settings` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withNetworkSettings()`](#fn-withnetworksettings)
* [`fn withNetworkSettingsMixin()`](#fn-withnetworksettingsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withService()`](#fn-withservice)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj network_settings`](#obj-network_settings)
  * [`fn new()`](#fn-network_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_service_network_settings.new` injects a new `google_app_engine_service_network_settings` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_service_network_settings.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_service_network_settings` using the reference:

    $._ref.google_app_engine_service_network_settings.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_service_network_settings.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service these settings apply to.
  - `network_settings` (`list[obj]`): Ingress settings for this service. Will apply to all versions. When `null`, the `network_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.network_settings.new](#fn-appengineservicenetworksettingsnetworksettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.timeouts.new](#fn-appengineservicenetworksettingstimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_service_network_settings.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_service_network_settings`
Terraform resource.

Unlike [google.app_engine_service_network_settings.new](#fn-appengineservicenetworksettingsnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service these settings apply to.
  - `network_settings` (`list[obj]`): Ingress settings for this service. Will apply to all versions. When `null`, the `network_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.network_settings.new](#fn-appengineservicenetworksettingsnetworksettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.timeouts.new](#fn-appengineservicenetworksettingstimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_service_network_settings` resource into the root Terraform configuration.


### fn withNetworkSettings

```ts
withNetworkSettings()
```

`google.list[obj].withNetworkSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_settings` field.


### fn withNetworkSettingsMixin

```ts
withNetworkSettingsMixin()
```

`google.list[obj].withNetworkSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_settings` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withService

```ts
withService()
```

`google.string.withService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


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


## obj network_settings



### fn network_settings.new

```ts
new()
```


`google.app_engine_service_network_settings.network_settings.new` constructs a new object with attributes and blocks configured for the `network_settings`
Terraform sub block.



**Args**:
  - `ingress_traffic_allowed` (`string`): The ingress settings for version or service. Default value: &#34;INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED&#34; Possible values: [&#34;INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED&#34;, &#34;INGRESS_TRAFFIC_ALLOWED_ALL&#34;, &#34;INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY&#34;, &#34;INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB&#34;] When `null`, the `ingress_traffic_allowed` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_service_network_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
