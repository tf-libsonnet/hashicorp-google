---
permalink: /game_services_game_server_config/
---

# game_services_game_server_config

`game_services_game_server_config` represents the `google_game_services_game_server_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfigId()`](#fn-withconfigid)
* [`fn withDeploymentId()`](#fn-withdeploymentid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFleetConfigs()`](#fn-withfleetconfigs)
* [`fn withFleetConfigsMixin()`](#fn-withfleetconfigsmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withScalingConfigs()`](#fn-withscalingconfigs)
* [`fn withScalingConfigsMixin()`](#fn-withscalingconfigsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj fleet_configs`](#obj-fleet_configs)
  * [`fn new()`](#fn-fleet_configsnew)
* [`obj scaling_configs`](#obj-scaling_configs)
  * [`fn new()`](#fn-scaling_configsnew)
  * [`obj scaling_configs.schedules`](#obj-scaling_configsschedules)
    * [`fn new()`](#fn-scaling_configsschedulesnew)
  * [`obj scaling_configs.selectors`](#obj-scaling_configsselectors)
    * [`fn new()`](#fn-scaling_configsselectorsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.game_services_game_server_config.new` injects a new `google_game_services_game_server_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.game_services_game_server_config.new('some_id')

You can get the reference to the `id` field of the created `google.game_services_game_server_config` using the reference:

    $._ref.google_game_services_game_server_config.some_id.get('id')

This is the same as directly entering `"${ google_game_services_game_server_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `config_id` (`string`): A unique id for the deployment config.
  - `deployment_id` (`string`): A unique id for the deployment.
  - `description` (`string`): The description of the game server config. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this game server config. Each label is a
key-value pair. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Deployment. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `fleet_configs` (`list[obj]`): The fleet config contains list of fleet specs. In the Single Cloud, there
will be only one. When `null`, the `fleet_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.fleet_configs.new](#fn-game_services_game_server_configfleet_configsnew) constructor.
  - `scaling_configs` (`list[obj]`): Optional. This contains the autoscaling settings. When `null`, the `scaling_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.new](#fn-game_services_game_server_configscaling_configsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.timeouts.new](#fn-game_services_game_server_configtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.game_services_game_server_config.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_config`
Terraform resource.

Unlike [google.game_services_game_server_config.new](#fn-game_services_game_server_confignew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config_id` (`string`): A unique id for the deployment config.
  - `deployment_id` (`string`): A unique id for the deployment.
  - `description` (`string`): The description of the game server config. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this game server config. Each label is a
key-value pair. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Deployment. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `fleet_configs` (`list[obj]`): The fleet config contains list of fleet specs. In the Single Cloud, there
will be only one. When `null`, the `fleet_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.fleet_configs.new](#fn-game_services_game_server_configfleet_configsnew) constructor.
  - `scaling_configs` (`list[obj]`): Optional. This contains the autoscaling settings. When `null`, the `scaling_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.new](#fn-game_services_game_server_configscaling_configsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.timeouts.new](#fn-game_services_game_server_configtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_config` resource into the root Terraform configuration.


### fn withConfigId

```ts
withConfigId()
```

`google.string.withConfigId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the config_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `config_id` field.


### fn withDeploymentId

```ts
withDeploymentId()
```

`google.string.withDeploymentId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deployment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deployment_id` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFleetConfigs

```ts
withFleetConfigs()
```

`google.list[obj].withFleetConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFleetConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet_configs` field.


### fn withFleetConfigsMixin

```ts
withFleetConfigsMixin()
```

`google.list[obj].withFleetConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFleetConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet_configs` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withScalingConfigs

```ts
withScalingConfigs()
```

`google.list[obj].withScalingConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scaling_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withScalingConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scaling_configs` field.


### fn withScalingConfigsMixin

```ts
withScalingConfigsMixin()
```

`google.list[obj].withScalingConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scaling_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withScalingConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scaling_configs` field.


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


## obj fleet_configs



### fn fleet_configs.new

```ts
new()
```


`google.game_services_game_server_config.fleet_configs.new` constructs a new object with attributes and blocks configured for the `fleet_configs`
Terraform sub block.



**Args**:
  - `fleet_spec` (`string`): The fleet spec, which is sent to Agones to configure fleet.
The spec can be passed as inline json but it is recommended to use a file reference
instead. File references can contain the json or yaml format of the fleet spec. Eg:

* fleet_spec = jsonencode(yamldecode(file(&#34;fleet_configs.yaml&#34;)))
* fleet_spec = file(&#34;fleet_configs.json&#34;)

The format of the spec can be found :
&#39;https://agones.dev/site/docs/reference/fleet/&#39;.
  - `name` (`string`): The name of the FleetConfig. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fleet_configs` sub block.


## obj scaling_configs



### fn scaling_configs.new

```ts
new()
```


`google.game_services_game_server_config.scaling_configs.new` constructs a new object with attributes and blocks configured for the `scaling_configs`
Terraform sub block.



**Args**:
  - `fleet_autoscaler_spec` (`string`): Fleet autoscaler spec, which is sent to Agones.
Example spec can be found :
https://agones.dev/site/docs/reference/fleetautoscaler/
  - `name` (`string`): The name of the ScalingConfig
  - `schedules` (`list[obj]`): The schedules to which this scaling config applies. When `null`, the `schedules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.schedules.new](#fn-scaling_configsschedulesnew) constructor.
  - `selectors` (`list[obj]`): Labels used to identify the clusters to which this scaling config
applies. A cluster is subject to this scaling config if its labels match
any of the selector entries. When `null`, the `selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.selectors.new](#fn-scaling_configsselectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `scaling_configs` sub block.


## obj scaling_configs.schedules



### fn scaling_configs.schedules.new

```ts
new()
```


`google.game_services_game_server_config.scaling_configs.schedules.new` constructs a new object with attributes and blocks configured for the `schedules`
Terraform sub block.



**Args**:
  - `cron_job_duration` (`string`): The duration for the cron job event. The duration of the event is effective
after the cron job&#39;s start time.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `cron_job_duration` field will be omitted from the resulting object.
  - `cron_spec` (`string`): The cron definition of the scheduled event. See
https://en.wikipedia.org/wiki/Cron. Cron spec specifies the local time as
defined by the realm. When `null`, the `cron_spec` field will be omitted from the resulting object.
  - `end_time` (`string`): The end time of the event.

A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `end_time` field will be omitted from the resulting object.
  - `start_time` (`string`): The start time of the event.

A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `start_time` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schedules` sub block.


## obj scaling_configs.selectors



### fn scaling_configs.selectors.new

```ts
new()
```


`google.game_services_game_server_config.scaling_configs.selectors.new` constructs a new object with attributes and blocks configured for the `selectors`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Set of labels to group by. When `null`, the `labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `selectors` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.game_services_game_server_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
