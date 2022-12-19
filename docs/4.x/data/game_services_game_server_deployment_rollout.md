---
permalink: /data/game_services_game_server_deployment_rollout/
---

# data.game_services_game_server_deployment_rollout

`game_services_game_server_deployment_rollout` represents the `google_game_services_game_server_deployment_rollout` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeploymentId()`](#fn-withdeploymentid)

## Fields

### fn new

```ts
new()
```


`google.data.game_services_game_server_deployment_rollout.new` injects a new `data_google_game_services_game_server_deployment_rollout` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.game_services_game_server_deployment_rollout.new('some_id')

You can get the reference to the `id` field of the created `google.data.game_services_game_server_deployment_rollout` using the reference:

    $._ref.data_google_game_services_game_server_deployment_rollout.some_id.get('id')

This is the same as directly entering `"${ data_google_game_services_game_server_deployment_rollout.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.game_services_game_server_deployment_rollout.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_deployment_rollout`
Terraform data source.

Unlike [google.data.game_services_game_server_deployment_rollout.new](#fn-gameservicesgameserverdeploymentrolloutnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `game_services_game_server_deployment_rollout` data source into the root Terraform configuration.


### fn withDeploymentId

```ts
withDeploymentId()
```

`google.game_services_game_server_deployment_rollout.withDeploymentId` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`
Terraform data source block to set or update the deployment_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `deployment_id` field.
