---
permalink: /apigee_flowhook/
---

# apigee_flowhook

`apigee_flowhook` represents the `google_apigee_flowhook` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withContinueOnError()`](#fn-withcontinueonerror)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnvironment()`](#fn-withenvironment)
* [`fn withFlowHookPoint()`](#fn-withflowhookpoint)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withSharedflow()`](#fn-withsharedflow)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_flowhook.new` injects a new `google_apigee_flowhook` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_flowhook.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_flowhook` using the reference:

    $._ref.google_apigee_flowhook.some_id.get('id')

This is the same as directly entering `"${ google_apigee_flowhook.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `continue_on_error` (`bool`): Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true. When `null`, the `continue_on_error` field will be omitted from the resulting object.
  - `description` (`string`): Description of the flow hook. When `null`, the `description` field will be omitted from the resulting object.
  - `environment` (`string`): The resource ID of the environment.
  - `flow_hook_point` (`string`): Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  - `org_id` (`string`): The Apigee Organization associated with the environment
  - `sharedflow` (`string`): Id of the Sharedflow attaching to a flowhook point.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_flowhook.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_flowhook.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_flowhook`
Terraform resource.

Unlike [google.apigee_flowhook.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `continue_on_error` (`bool`): Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true. When `null`, the `continue_on_error` field will be omitted from the resulting object.
  - `description` (`string`): Description of the flow hook. When `null`, the `description` field will be omitted from the resulting object.
  - `environment` (`string`): The resource ID of the environment.
  - `flow_hook_point` (`string`): Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  - `org_id` (`string`): The Apigee Organization associated with the environment
  - `sharedflow` (`string`): Id of the Sharedflow attaching to a flowhook point.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_flowhook.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_flowhook` resource into the root Terraform configuration.


### fn withContinueOnError

```ts
withContinueOnError()
```

`google.bool.withContinueOnError` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the continue_on_error field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `continue_on_error` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnvironment

```ts
withEnvironment()
```

`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the environment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `environment` field.


### fn withFlowHookPoint

```ts
withFlowHookPoint()
```

`google.string.withFlowHookPoint` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the flow_hook_point field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `flow_hook_point` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withSharedflow

```ts
withSharedflow()
```

`google.string.withSharedflow` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the sharedflow field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `sharedflow` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_flowhook.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
