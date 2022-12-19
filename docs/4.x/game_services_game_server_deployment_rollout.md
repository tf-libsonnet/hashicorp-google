---
permalink: /game_services_game_server_deployment_rollout/
---

# game_services_game_server_deployment_rollout

`game_services_game_server_deployment_rollout` represents the `google_game_services_game_server_deployment_rollout` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDefaultGameServerConfig()`](#fn-withdefaultgameserverconfig)
* [`fn withDeploymentId()`](#fn-withdeploymentid)
* [`fn withGameServerConfigOverrides()`](#fn-withgameserverconfigoverrides)
* [`fn withGameServerConfigOverridesMixin()`](#fn-withgameserverconfigoverridesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj game_server_config_overrides`](#obj-game_server_config_overrides)
  * [`fn new()`](#fn-game_server_config_overridesnew)
  * [`obj game_server_config_overrides.realms_selector`](#obj-game_server_config_overridesrealms_selector)
    * [`fn new()`](#fn-game_server_config_overridesrealms_selectornew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.game_services_game_server_deployment_rollout.new` injects a new `google_game_services_game_server_deployment_rollout` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.game_services_game_server_deployment_rollout.new('some_id')

You can get the reference to the `id` field of the created `google.game_services_game_server_deployment_rollout` using the reference:

    $._ref.google_game_services_game_server_deployment_rollout.some_id.get('id')

This is the same as directly entering `"${ google_game_services_game_server_deployment_rollout.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `default_game_server_config` (`string`): This field points to the game server config that is
applied by default to all realms and clusters. For example,

&#39;projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config&#39;.
  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `game_server_config_overrides` (`list[obj]`): The game_server_config_overrides contains the per game server config
overrides. The overrides are processed in the order they are listed. As
soon as a match is found for a cluster, the rest of the list is not
processed. When `null`, the `game_server_config_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.game_server_config_overrides.new](#fn-game_server_config_overridesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.game_services_game_server_deployment_rollout.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_deployment_rollout`
Terraform resource.

Unlike [google.game_services_game_server_deployment_rollout.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `default_game_server_config` (`string`): This field points to the game server config that is
applied by default to all realms and clusters. For example,

&#39;projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config&#39;.
  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `game_server_config_overrides` (`list[obj]`): The game_server_config_overrides contains the per game server config
overrides. The overrides are processed in the order they are listed. As
soon as a match is found for a cluster, the rest of the list is not
processed. When `null`, the `game_server_config_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.game_server_config_overrides.new](#fn-game_server_config_overridesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_deployment_rollout` resource into the root Terraform configuration.


### fn withDefaultGameServerConfig

```ts
withDefaultGameServerConfig()
```

`google.string.withDefaultGameServerConfig` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the default_game_server_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `default_game_server_config` field.


### fn withDeploymentId

```ts
withDeploymentId()
```

`google.string.withDeploymentId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deployment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deployment_id` field.


### fn withGameServerConfigOverrides

```ts
withGameServerConfigOverrides()
```

`google.list[obj].withGameServerConfigOverrides` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the game_server_config_overrides field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGameServerConfigOverridesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `game_server_config_overrides` field.


### fn withGameServerConfigOverridesMixin

```ts
withGameServerConfigOverridesMixin()
```

`google.list[obj].withGameServerConfigOverridesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the game_server_config_overrides field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGameServerConfigOverrides](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `game_server_config_overrides` field.


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


## obj game_server_config_overrides



### fn game_server_config_overrides.new

```ts
new()
```


`google.game_services_game_server_deployment_rollout.game_server_config_overrides.new` constructs a new object with attributes and blocks configured for the `game_server_config_overrides`
Terraform sub block.



**Args**:
  - `config_version` (`string`): Version of the configuration. When `null`, the `config_version` field will be omitted from the resulting object.
  - `realms_selector` (`list[obj]`): Selection by realms. When `null`, the `realms_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.game_server_config_overrides.realms_selector.new](#fn-game_server_config_overridesrealms_selectornew) constructor.

**Returns**:
  - An attribute object that represents the `game_server_config_overrides` sub block.


## obj game_server_config_overrides.realms_selector



### fn game_server_config_overrides.realms_selector.new

```ts
new()
```


`google.game_services_game_server_deployment_rollout.game_server_config_overrides.realms_selector.new` constructs a new object with attributes and blocks configured for the `realms_selector`
Terraform sub block.



**Args**:
  - `realms` (`list`): List of realms to match against. When `null`, the `realms` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `realms_selector` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.game_services_game_server_deployment_rollout.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
