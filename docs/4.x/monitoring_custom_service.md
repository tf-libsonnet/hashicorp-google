---
permalink: /monitoring_custom_service/
---

# monitoring_custom_service

`monitoring_custom_service` represents the `google_monitoring_custom_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceId()`](#fn-withserviceid)
* [`fn withTelemetry()`](#fn-withtelemetry)
* [`fn withTelemetryMixin()`](#fn-withtelemetrymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserLabels()`](#fn-withuserlabels)
* [`obj telemetry`](#obj-telemetry)
  * [`fn new()`](#fn-telemetrynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_custom_service.new` injects a new `google_monitoring_custom_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_custom_service.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_custom_service` using the reference:

    $._ref.google_monitoring_custom_service.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_custom_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Name used for UI elements listing this Service. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `service_id` (`string`): An optional service ID to use. If not given, the server will generate a
service ID. When `null`, the `service_id` field will be omitted from the resulting object.
  - `user_labels` (`obj`): Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `telemetry` (`list[obj]`): Configuration for how to query telemetry on a Service. When `null`, the `telemetry` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.telemetry.new](#fn-telemetrynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_custom_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_custom_service`
Terraform resource.

Unlike [google.monitoring_custom_service.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Name used for UI elements listing this Service. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `service_id` (`string`): An optional service ID to use. If not given, the server will generate a
service ID. When `null`, the `service_id` field will be omitted from the resulting object.
  - `user_labels` (`obj`): Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `telemetry` (`list[obj]`): Configuration for how to query telemetry on a Service. When `null`, the `telemetry` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.telemetry.new](#fn-telemetrynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_custom_service` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withServiceId

```ts
withServiceId()
```

`google.string.withServiceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_id` field.


### fn withTelemetry

```ts
withTelemetry()
```

`google.list[obj].withTelemetry` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the telemetry field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTelemetryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `telemetry` field.


### fn withTelemetryMixin

```ts
withTelemetryMixin()
```

`google.list[obj].withTelemetryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the telemetry field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTelemetry](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `telemetry` field.


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


### fn withUserLabels

```ts
withUserLabels()
```

`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the user_labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `user_labels` field.


## obj telemetry



### fn telemetry.new

```ts
new()
```


`google.monitoring_custom_service.telemetry.new` constructs a new object with attributes and blocks configured for the `telemetry`
Terraform sub block.



**Args**:
  - `resource_name` (`string`): The full name of the resource that defines this service.
Formatted as described in
https://cloud.google.com/apis/design/resource_names. When `null`, the `resource_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `telemetry` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_custom_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
