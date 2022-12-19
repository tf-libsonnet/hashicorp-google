---
permalink: /dialogflow_fulfillment/
---

# dialogflow_fulfillment

`dialogflow_fulfillment` represents the `google_dialogflow_fulfillment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withFeatures()`](#fn-withfeatures)
* [`fn withFeaturesMixin()`](#fn-withfeaturesmixin)
* [`fn withGenericWebService()`](#fn-withgenericwebservice)
* [`fn withGenericWebServiceMixin()`](#fn-withgenericwebservicemixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj features`](#obj-features)
  * [`fn new()`](#fn-featuresnew)
* [`obj generic_web_service`](#obj-generic_web_service)
  * [`fn new()`](#fn-generic_web_servicenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_fulfillment.new` injects a new `google_dialogflow_fulfillment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_fulfillment.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_fulfillment` using the reference:

    $._ref.google_dialogflow_fulfillment.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_fulfillment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The human-readable name of the fulfillment, unique within the agent.
  - `enabled` (`bool`): Whether fulfillment is enabled. When `null`, the `enabled` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `features` (`list[obj]`): The field defines whether the fulfillment is enabled for certain features. When `null`, the `features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.features.new](#fn-dialogflowfulfillmentfeaturesnew) constructor.
  - `generic_web_service` (`list[obj]`): Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.generic_web_service.new](#fn-dialogflowfulfillmentgenericwebservicenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.timeouts.new](#fn-dialogflowfulfillmenttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_fulfillment.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_fulfillment`
Terraform resource.

Unlike [google.dialogflow_fulfillment.new](#fn-dialogflowfulfillmentnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The human-readable name of the fulfillment, unique within the agent.
  - `enabled` (`bool`): Whether fulfillment is enabled. When `null`, the `enabled` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `features` (`list[obj]`): The field defines whether the fulfillment is enabled for certain features. When `null`, the `features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.features.new](#fn-dialogflowfulfillmentfeaturesnew) constructor.
  - `generic_web_service` (`list[obj]`): Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.generic_web_service.new](#fn-dialogflowfulfillmentgenericwebservicenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.timeouts.new](#fn-dialogflowfulfillmenttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_fulfillment` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withFeatures

```ts
withFeatures()
```

`google.list[obj].withFeatures` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the features field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFeaturesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `features` field.


### fn withFeaturesMixin

```ts
withFeaturesMixin()
```

`google.list[obj].withFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the features field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFeatures](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `features` field.


### fn withGenericWebService

```ts
withGenericWebService()
```

`google.list[obj].withGenericWebService` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the generic_web_service field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGenericWebServiceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `generic_web_service` field.


### fn withGenericWebServiceMixin

```ts
withGenericWebServiceMixin()
```

`google.list[obj].withGenericWebServiceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the generic_web_service field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGenericWebService](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `generic_web_service` field.


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


## obj features



### fn features.new

```ts
new()
```


`google.dialogflow_fulfillment.features.new` constructs a new object with attributes and blocks configured for the `features`
Terraform sub block.



**Args**:
  - `type` (`string`): The type of the feature that enabled for fulfillment.
* SMALLTALK: Fulfillment is enabled for SmallTalk. Possible values: [&#34;SMALLTALK&#34;]

**Returns**:
  - An attribute object that represents the `features` sub block.


## obj generic_web_service



### fn generic_web_service.new

```ts
new()
```


`google.dialogflow_fulfillment.generic_web_service.new` constructs a new object with attributes and blocks configured for the `generic_web_service`
Terraform sub block.



**Args**:
  - `password` (`string`): The password for HTTP Basic authentication. When `null`, the `password` field will be omitted from the resulting object.
  - `request_headers` (`obj`): The HTTP request headers to send together with fulfillment requests. When `null`, the `request_headers` field will be omitted from the resulting object.
  - `uri` (`string`): The fulfillment URI for receiving POST requests. It must use https protocol.
  - `username` (`string`): The user name for HTTP Basic authentication. When `null`, the `username` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `generic_web_service` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_fulfillment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
