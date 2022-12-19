---
permalink: /monitoring_service/
---

# monitoring_service

`monitoring_service` represents the `google_monitoring_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBasicService()`](#fn-withbasicservice)
* [`fn withBasicServiceMixin()`](#fn-withbasicservicemixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceId()`](#fn-withserviceid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserLabels()`](#fn-withuserlabels)
* [`obj basic_service`](#obj-basic_service)
  * [`fn new()`](#fn-basic_servicenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.monitoring_service.new` injects a new `google_monitoring_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.monitoring_service.new('some_id')

You can get the reference to the `id` field of the created `google.monitoring_service` using the reference:

    $._ref.google_monitoring_service.some_id.get('id')

This is the same as directly entering `"${ google_monitoring_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Name used for UI elements listing this Service. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_id` (`string`): An optional service ID to use. If not given, the server will generate a
service ID.
  - `user_labels` (`obj`): Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `basic_service` (`list[obj]`): A well-known service type, defined by its service type and service labels.
Valid values are described at
https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli When `null`, the `basic_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_service.basic_service.new](#fn-monitoringservicebasicservicenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_service.timeouts.new](#fn-monitoringservicetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.monitoring_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_service`
Terraform resource.

Unlike [google.monitoring_service.new](#fn-monitoringservicenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Name used for UI elements listing this Service. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_id` (`string`): An optional service ID to use. If not given, the server will generate a
service ID.
  - `user_labels` (`obj`): Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. When `null`, the `user_labels` field will be omitted from the resulting object.
  - `basic_service` (`list[obj]`): A well-known service type, defined by its service type and service labels.
Valid values are described at
https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli When `null`, the `basic_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_service.basic_service.new](#fn-monitoringservicebasicservicenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_service.timeouts.new](#fn-monitoringservicetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_service` resource into the root Terraform configuration.


### fn withBasicService

```ts
withBasicService()
```

`google.list[obj].withBasicService` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_service field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBasicServiceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_service` field.


### fn withBasicServiceMixin

```ts
withBasicServiceMixin()
```

`google.list[obj].withBasicServiceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_service field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBasicService](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_service` field.


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


## obj basic_service



### fn basic_service.new

```ts
new()
```


`google.monitoring_service.basic_service.new` constructs a new object with attributes and blocks configured for the `basic_service`
Terraform sub block.



**Args**:
  - `service_labels` (`obj`): Labels that specify the resource that emits the monitoring data 
which is used for SLO reporting of this &#39;Service&#39;. When `null`, the `service_labels` field will be omitted from the resulting object.
  - `service_type` (`string`): The type of service that this basic service defines, e.g. 
APP_ENGINE service type When `null`, the `service_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `basic_service` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.monitoring_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
