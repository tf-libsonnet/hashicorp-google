---
permalink: /beyondcorp_app_connector/
---

# beyondcorp_app_connector

`beyondcorp_app_connector` represents the `google_beyondcorp_app_connector` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withPrincipalInfo()`](#fn-withprincipalinfo)
* [`fn withPrincipalInfoMixin()`](#fn-withprincipalinfomixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj principal_info`](#obj-principal_info)
  * [`fn new()`](#fn-principal_infonew)
  * [`obj principal_info.service_account`](#obj-principal_infoservice_account)
    * [`fn new()`](#fn-principal_infoservice_accountnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.beyondcorp_app_connector.new` injects a new `google_beyondcorp_app_connector` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.beyondcorp_app_connector.new('some_id')

You can get the reference to the `id` field of the created `google.beyondcorp_app_connector` using the reference:

    $._ref.google_beyondcorp_app_connector.some_id.get('id')

This is the same as directly entering `"${ google_beyondcorp_app_connector.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): An arbitrary user-provided name for the AppConnector. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): ID of the AppConnector.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the AppConnector. When `null`, the `region` field will be omitted from the resulting object.
  - `principal_info` (`list[obj]`): Principal information about the Identity of the AppConnector. When `null`, the `principal_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.principal_info.new](#fn-principal_infonew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.beyondcorp_app_connector.newAttrs` constructs a new object with attributes and blocks configured for the `beyondcorp_app_connector`
Terraform resource.

Unlike [google.beyondcorp_app_connector.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): An arbitrary user-provided name for the AppConnector. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): ID of the AppConnector.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the AppConnector. When `null`, the `region` field will be omitted from the resulting object.
  - `principal_info` (`list[obj]`): Principal information about the Identity of the AppConnector. When `null`, the `principal_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.principal_info.new](#fn-principal_infonew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `beyondcorp_app_connector` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPrincipalInfo

```ts
withPrincipalInfo()
```

`google.list[obj].withPrincipalInfo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the principal_info field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPrincipalInfoMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `principal_info` field.


### fn withPrincipalInfoMixin

```ts
withPrincipalInfoMixin()
```

`google.list[obj].withPrincipalInfoMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the principal_info field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPrincipalInfo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `principal_info` field.


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


## obj principal_info



### fn principal_info.new

```ts
new()
```


`google.beyondcorp_app_connector.principal_info.new` constructs a new object with attributes and blocks configured for the `principal_info`
Terraform sub block.



**Args**:
  - `service_account` (`list[obj]`): ServiceAccount represents a GCP service account. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.principal_info.service_account.new](#fn-beyondcorp_app_connectorservice_accountnew) constructor.

**Returns**:
  - An attribute object that represents the `principal_info` sub block.


## obj principal_info.service_account



### fn principal_info.service_account.new

```ts
new()
```


`google.beyondcorp_app_connector.principal_info.service_account.new` constructs a new object with attributes and blocks configured for the `service_account`
Terraform sub block.



**Args**:
  - `email` (`string`): Email address of the service account.

**Returns**:
  - An attribute object that represents the `service_account` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.beyondcorp_app_connector.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
