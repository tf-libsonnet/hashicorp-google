---
permalink: /beyondcorp_app_connection/
---

# beyondcorp_app_connection

`beyondcorp_app_connection` represents the `google_beyondcorp_app_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApplicationEndpoint()`](#fn-withapplicationendpoint)
* [`fn withApplicationEndpointMixin()`](#fn-withapplicationendpointmixin)
* [`fn withConnectors()`](#fn-withconnectors)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withGateway()`](#fn-withgateway)
* [`fn withGatewayMixin()`](#fn-withgatewaymixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj application_endpoint`](#obj-application_endpoint)
  * [`fn new()`](#fn-application_endpointnew)
* [`obj gateway`](#obj-gateway)
  * [`fn new()`](#fn-gatewaynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.beyondcorp_app_connection.new` injects a new `google_beyondcorp_app_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.beyondcorp_app_connection.new('some_id')

You can get the reference to the `id` field of the created `google.beyondcorp_app_connection` using the reference:

    $._ref.google_beyondcorp_app_connection.some_id.get('id')

This is the same as directly entering `"${ google_beyondcorp_app_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connectors` (`list`): List of AppConnectors that are authorised to be associated with this AppConnection When `null`, the `connectors` field will be omitted from the resulting object.
  - `display_name` (`string`): An arbitrary user-provided name for the AppConnection. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): ID of the AppConnection.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the AppConnection. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): The type of network connectivity used by the AppConnection. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
for a list of possible values. When `null`, the `type` field will be omitted from the resulting object.
  - `application_endpoint` (`list[obj]`): Address of the remote application endpoint for the BeyondCorp AppConnection. When `null`, the `application_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.application_endpoint.new](#fn-application_endpointnew) constructor.
  - `gateway` (`list[obj]`): Gateway used by the AppConnection. When `null`, the `gateway` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.gateway.new](#fn-gatewaynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.beyondcorp_app_connection.newAttrs` constructs a new object with attributes and blocks configured for the `beyondcorp_app_connection`
Terraform resource.

Unlike [google.beyondcorp_app_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connectors` (`list`): List of AppConnectors that are authorised to be associated with this AppConnection When `null`, the `connectors` field will be omitted from the resulting object.
  - `display_name` (`string`): An arbitrary user-provided name for the AppConnection. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): ID of the AppConnection.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the AppConnection. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): The type of network connectivity used by the AppConnection. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
for a list of possible values. When `null`, the `type` field will be omitted from the resulting object.
  - `application_endpoint` (`list[obj]`): Address of the remote application endpoint for the BeyondCorp AppConnection. When `null`, the `application_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.application_endpoint.new](#fn-application_endpointnew) constructor.
  - `gateway` (`list[obj]`): Gateway used by the AppConnection. When `null`, the `gateway` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.gateway.new](#fn-gatewaynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `beyondcorp_app_connection` resource into the root Terraform configuration.


### fn withApplicationEndpoint

```ts
withApplicationEndpoint()
```

`google.list[obj].withApplicationEndpoint` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the application_endpoint field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withApplicationEndpointMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `application_endpoint` field.


### fn withApplicationEndpointMixin

```ts
withApplicationEndpointMixin()
```

`google.list[obj].withApplicationEndpointMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the application_endpoint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withApplicationEndpoint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `application_endpoint` field.


### fn withConnectors

```ts
withConnectors()
```

`google.list.withConnectors` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the connectors field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `connectors` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withGateway

```ts
withGateway()
```

`google.list[obj].withGateway` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGatewayMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway` field.


### fn withGatewayMixin

```ts
withGatewayMixin()
```

`google.list[obj].withGatewayMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGateway](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj application_endpoint



### fn application_endpoint.new

```ts
new()
```


`google.beyondcorp_app_connection.application_endpoint.new` constructs a new object with attributes and blocks configured for the `application_endpoint`
Terraform sub block.



**Args**:
  - `host` (`string`): Hostname or IP address of the remote application endpoint.
  - `port` (`number`): Port of the remote application endpoint.

**Returns**:
  - An attribute object that represents the `application_endpoint` sub block.


## obj gateway



### fn gateway.new

```ts
new()
```


`google.beyondcorp_app_connection.gateway.new` constructs a new object with attributes and blocks configured for the `gateway`
Terraform sub block.



**Args**:
  - `app_gateway` (`string`): AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  - `type` (`string`): The type of hosting used by the gateway. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
for a list of possible values. When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gateway` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.beyondcorp_app_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
