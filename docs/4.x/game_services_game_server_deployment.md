---
permalink: /game_services_game_server_deployment/
---

# game_services_game_server_deployment

`game_services_game_server_deployment` represents the `google_game_services_game_server_deployment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeploymentId()`](#fn-withdeploymentid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.game_services_game_server_deployment.new` injects a new `google_game_services_game_server_deployment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.game_services_game_server_deployment.new('some_id')

You can get the reference to the `id` field of the created `google.game_services_game_server_deployment` using the reference:

    $._ref.google_game_services_game_server_deployment.some_id.get('id')

This is the same as directly entering `"${ google_game_services_game_server_deployment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `deployment_id` (`string`): A unique id for the deployment.
  - `description` (`string`): Human readable description of the game server deployment. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this game server deployment. Each label is a
key-value pair. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Deployment. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment.timeouts.new](#fn-gameservicesgameserverdeploymenttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.game_services_game_server_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_deployment`
Terraform resource.

Unlike [google.game_services_game_server_deployment.new](#fn-gameservicesgameserverdeploymentnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deployment_id` (`string`): A unique id for the deployment.
  - `description` (`string`): Human readable description of the game server deployment. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this game server deployment. Each label is a
key-value pair. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Deployment. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment.timeouts.new](#fn-gameservicesgameserverdeploymenttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_deployment` resource into the root Terraform configuration.


### fn withDeploymentId

```ts
withDeploymentId()
```

`google.game_services_game_server_deployment.withDeploymentId` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the deployment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `deployment_id` field.


### fn withDescription

```ts
withDescription()
```

`google.game_services_game_server_deployment.withDescription` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.game_services_game_server_deployment.withLabels` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.game_services_game_server_deployment.withLocation` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.game_services_game_server_deployment.withProject` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.game_services_game_server_deployment.withTimeouts` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.game_services_game_server_deployment.withTimeoutsMixin` constructs a mixin object that can be merged into the `game_services_game_server_deployment`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.game_services_game_server_deployment.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.game_services_game_server_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
