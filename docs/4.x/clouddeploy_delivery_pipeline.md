---
permalink: /clouddeploy_delivery_pipeline/
---

# clouddeploy_delivery_pipeline

`clouddeploy_delivery_pipeline` represents the `google_clouddeploy_delivery_pipeline` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSerialPipeline()`](#fn-withserialpipeline)
* [`fn withSerialPipelineMixin()`](#fn-withserialpipelinemixin)
* [`fn withSuspended()`](#fn-withsuspended)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj serial_pipeline`](#obj-serial_pipeline)
  * [`fn new()`](#fn-serial_pipelinenew)
  * [`obj serial_pipeline.stages`](#obj-serial_pipelinestages)
    * [`fn new()`](#fn-serial_pipelinestagesnew)
    * [`obj serial_pipeline.stages.deploy_parameters`](#obj-serial_pipelinestagesdeploy_parameters)
      * [`fn new()`](#fn-serial_pipelinestagesdeploy_parametersnew)
    * [`obj serial_pipeline.stages.strategy`](#obj-serial_pipelinestagesstrategy)
      * [`fn new()`](#fn-serial_pipelinestagesstrategynew)
      * [`obj serial_pipeline.stages.strategy.canary`](#obj-serial_pipelinestagesstrategycanary)
        * [`fn new()`](#fn-serial_pipelinestagesstrategycanarynew)
        * [`obj serial_pipeline.stages.strategy.canary.canary_deployment`](#obj-serial_pipelinestagesstrategycanarycanary_deployment)
          * [`fn new()`](#fn-serial_pipelinestagesstrategycanarycanary_deploymentnew)
        * [`obj serial_pipeline.stages.strategy.canary.custom_canary_deployment`](#obj-serial_pipelinestagesstrategycanarycustom_canary_deployment)
          * [`fn new()`](#fn-serial_pipelinestagesstrategycanarycustom_canary_deploymentnew)
          * [`obj serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs`](#obj-serial_pipelinestagesstrategycanarycustom_canary_deploymentphase_configs)
            * [`fn new()`](#fn-serial_pipelinestagesstrategycanarycustom_canary_deploymentphase_configsnew)
        * [`obj serial_pipeline.stages.strategy.canary.runtime_config`](#obj-serial_pipelinestagesstrategycanaryruntime_config)
          * [`fn new()`](#fn-serial_pipelinestagesstrategycanaryruntime_confignew)
          * [`obj serial_pipeline.stages.strategy.canary.runtime_config.cloud_run`](#obj-serial_pipelinestagesstrategycanaryruntime_configcloud_run)
            * [`fn new()`](#fn-serial_pipelinestagesstrategycanaryruntime_configcloud_runnew)
          * [`obj serial_pipeline.stages.strategy.canary.runtime_config.kubernetes`](#obj-serial_pipelinestagesstrategycanaryruntime_configkubernetes)
            * [`fn new()`](#fn-serial_pipelinestagesstrategycanaryruntime_configkubernetesnew)
            * [`obj serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh`](#obj-serial_pipelinestagesstrategycanaryruntime_configkubernetesgateway_service_mesh)
              * [`fn new()`](#fn-serial_pipelinestagesstrategycanaryruntime_configkubernetesgateway_service_meshnew)
            * [`obj serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.service_networking`](#obj-serial_pipelinestagesstrategycanaryruntime_configkubernetesservice_networking)
              * [`fn new()`](#fn-serial_pipelinestagesstrategycanaryruntime_configkubernetesservice_networkingnew)
      * [`obj serial_pipeline.stages.strategy.standard`](#obj-serial_pipelinestagesstrategystandard)
        * [`fn new()`](#fn-serial_pipelinestagesstrategystandardnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.new` injects a new `google_clouddeploy_delivery_pipeline` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.clouddeploy_delivery_pipeline.new('some_id')

You can get the reference to the `id` field of the created `google.clouddeploy_delivery_pipeline` using the reference:

    $._ref.google_clouddeploy_delivery_pipeline.some_id.get('id')

This is the same as directly entering `"${ google_clouddeploy_delivery_pipeline.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): Description of the `DeliveryPipeline`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\-]{0,62}.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `suspended` (`bool`): When suspended, no new releases or rollouts can be created, but in-progress ones will complete. When `null`, the `suspended` field will be omitted from the resulting object.
  - `serial_pipeline` (`list[obj]`): SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. When `null`, the `serial_pipeline` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.new](#fn-serial_pipelinenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.clouddeploy_delivery_pipeline.newAttrs` constructs a new object with attributes and blocks configured for the `clouddeploy_delivery_pipeline`
Terraform resource.

Unlike [google.clouddeploy_delivery_pipeline.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): Description of the `DeliveryPipeline`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\-]{0,62}.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `suspended` (`bool`): When suspended, no new releases or rollouts can be created, but in-progress ones will complete. When `null`, the `suspended` field will be omitted from the resulting object.
  - `serial_pipeline` (`list[obj]`): SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. When `null`, the `serial_pipeline` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.new](#fn-serial_pipelinenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `clouddeploy_delivery_pipeline` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withSerialPipeline

```ts
withSerialPipeline()
```

`google.list[obj].withSerialPipeline` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the serial_pipeline field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSerialPipelineMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `serial_pipeline` field.


### fn withSerialPipelineMixin

```ts
withSerialPipelineMixin()
```

`google.list[obj].withSerialPipelineMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the serial_pipeline field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSerialPipeline](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `serial_pipeline` field.


### fn withSuspended

```ts
withSuspended()
```

`google.bool.withSuspended` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the suspended field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `suspended` field.


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


## obj serial_pipeline



### fn serial_pipeline.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.new` constructs a new object with attributes and blocks configured for the `serial_pipeline`
Terraform sub block.



**Args**:
  - `stages` (`list[obj]`): Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow. When `null`, the `stages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.new](#fn-serial_pipelinestagesnew) constructor.

**Returns**:
  - An attribute object that represents the `serial_pipeline` sub block.


## obj serial_pipeline.stages



### fn serial_pipeline.stages.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.new` constructs a new object with attributes and blocks configured for the `stages`
Terraform sub block.



**Args**:
  - `profiles` (`list`): Skaffold profiles to use when rendering the manifest for this stage&#39;s `Target`. When `null`, the `profiles` field will be omitted from the resulting object.
  - `target_id` (`string`): The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`. When `null`, the `target_id` field will be omitted from the resulting object.
  - `deploy_parameters` (`list[obj]`): Optional. The deploy parameters to use for the target in this stage. When `null`, the `deploy_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.deploy_parameters.new](#fn-serial_pipelineserial_pipelinedeploy_parametersnew) constructor.
  - `strategy` (`list[obj]`): Optional. The strategy to use for a `Rollout` to this stage. When `null`, the `strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.new](#fn-serial_pipelineserial_pipelinestrategynew) constructor.

**Returns**:
  - An attribute object that represents the `stages` sub block.


## obj serial_pipeline.stages.deploy_parameters



### fn serial_pipeline.stages.deploy_parameters.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.deploy_parameters.new` constructs a new object with attributes and blocks configured for the `deploy_parameters`
Terraform sub block.



**Args**:
  - `match_target_labels` (`obj`): Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target). When `null`, the `match_target_labels` field will be omitted from the resulting object.
  - `values` (`obj`): Required. Values are deploy parameters in key-value pairs.

**Returns**:
  - An attribute object that represents the `deploy_parameters` sub block.


## obj serial_pipeline.stages.strategy



### fn serial_pipeline.stages.strategy.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.new` constructs a new object with attributes and blocks configured for the `strategy`
Terraform sub block.



**Args**:
  - `canary` (`list[obj]`): Canary deployment strategy provides progressive percentage based deployments to a Target. When `null`, the `canary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.new](#fn-serial_pipelineserial_pipelinestagescanarynew) constructor.
  - `standard` (`list[obj]`): Standard deployment strategy executes a single deploy and allows verifying the deployment. When `null`, the `standard` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.standard.new](#fn-serial_pipelineserial_pipelinestagesstandardnew) constructor.

**Returns**:
  - An attribute object that represents the `strategy` sub block.


## obj serial_pipeline.stages.strategy.canary



### fn serial_pipeline.stages.strategy.canary.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.new` constructs a new object with attributes and blocks configured for the `canary`
Terraform sub block.



**Args**:
  - `canary_deployment` (`list[obj]`): Configures the progressive based deployment for a Target. When `null`, the `canary_deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.canary_deployment.new](#fn-serial_pipelineserial_pipelinestagesstrategycanary_deploymentnew) constructor.
  - `custom_canary_deployment` (`list[obj]`): Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments. When `null`, the `custom_canary_deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.custom_canary_deployment.new](#fn-serial_pipelineserial_pipelinestagesstrategycustom_canary_deploymentnew) constructor.
  - `runtime_config` (`list[obj]`): Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment. When `null`, the `runtime_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.new](#fn-serial_pipelineserial_pipelinestagesstrategyruntime_confignew) constructor.

**Returns**:
  - An attribute object that represents the `canary` sub block.


## obj serial_pipeline.stages.strategy.canary.canary_deployment



### fn serial_pipeline.stages.strategy.canary.canary_deployment.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.canary_deployment.new` constructs a new object with attributes and blocks configured for the `canary_deployment`
Terraform sub block.



**Args**:
  - `percentages` (`list`): Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  - `verify` (`bool`): Whether to run verify tests after each percentage deployment. When `null`, the `verify` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `canary_deployment` sub block.


## obj serial_pipeline.stages.strategy.canary.custom_canary_deployment



### fn serial_pipeline.stages.strategy.canary.custom_canary_deployment.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.custom_canary_deployment.new` constructs a new object with attributes and blocks configured for the `custom_canary_deployment`
Terraform sub block.



**Args**:
  - `phase_configs` (`list[obj]`): Required. Configuration for each phase in the canary deployment in the order executed. When `null`, the `phase_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.new](#fn-serial_pipelineserial_pipelinestagesstrategycanaryphase_configsnew) constructor.

**Returns**:
  - An attribute object that represents the `custom_canary_deployment` sub block.


## obj serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs



### fn serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.new` constructs a new object with attributes and blocks configured for the `phase_configs`
Terraform sub block.



**Args**:
  - `percentage` (`number`): Required. Percentage deployment for the phase.
  - `phase_id` (`string`): Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  - `profiles` (`list`): Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage. When `null`, the `profiles` field will be omitted from the resulting object.
  - `verify` (`bool`): Whether to run verify tests after the deployment. When `null`, the `verify` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `phase_configs` sub block.


## obj serial_pipeline.stages.strategy.canary.runtime_config



### fn serial_pipeline.stages.strategy.canary.runtime_config.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.new` constructs a new object with attributes and blocks configured for the `runtime_config`
Terraform sub block.



**Args**:
  - `cloud_run` (`list[obj]`): Cloud Run runtime configuration. When `null`, the `cloud_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.cloud_run.new](#fn-serial_pipelineserial_pipelinestagesstrategycanarycloud_runnew) constructor.
  - `kubernetes` (`list[obj]`): Kubernetes runtime configuration. When `null`, the `kubernetes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.new](#fn-serial_pipelineserial_pipelinestagesstrategycanarykubernetesnew) constructor.

**Returns**:
  - An attribute object that represents the `runtime_config` sub block.


## obj serial_pipeline.stages.strategy.canary.runtime_config.cloud_run



### fn serial_pipeline.stages.strategy.canary.runtime_config.cloud_run.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.cloud_run.new` constructs a new object with attributes and blocks configured for the `cloud_run`
Terraform sub block.



**Args**:
  - `automatic_traffic_control` (`bool`): Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user&#39;s behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments. When `null`, the `automatic_traffic_control` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloud_run` sub block.


## obj serial_pipeline.stages.strategy.canary.runtime_config.kubernetes



### fn serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.new` constructs a new object with attributes and blocks configured for the `kubernetes`
Terraform sub block.



**Args**:
  - `gateway_service_mesh` (`list[obj]`): Kubernetes Gateway API service mesh configuration. When `null`, the `gateway_service_mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh.new](#fn-serial_pipelineserial_pipelinestagesstrategycanaryruntime_configgateway_service_meshnew) constructor.
  - `service_networking` (`list[obj]`): Kubernetes Service networking configuration. When `null`, the `service_networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.service_networking.new](#fn-serial_pipelineserial_pipelinestagesstrategycanaryruntime_configservice_networkingnew) constructor.

**Returns**:
  - An attribute object that represents the `kubernetes` sub block.


## obj serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh



### fn serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh.new` constructs a new object with attributes and blocks configured for the `gateway_service_mesh`
Terraform sub block.



**Args**:
  - `deployment` (`string`): Required. Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  - `http_route` (`string`): Required. Name of the Gateway API HTTPRoute.
  - `service` (`string`): Required. Name of the Kubernetes Service.

**Returns**:
  - An attribute object that represents the `gateway_service_mesh` sub block.


## obj serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.service_networking



### fn serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.service_networking.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.service_networking.new` constructs a new object with attributes and blocks configured for the `service_networking`
Terraform sub block.



**Args**:
  - `deployment` (`string`): Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  - `disable_pod_overprovisioning` (`bool`): Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster. When `null`, the `disable_pod_overprovisioning` field will be omitted from the resulting object.
  - `service` (`string`): Required. Name of the Kubernetes Service.

**Returns**:
  - An attribute object that represents the `service_networking` sub block.


## obj serial_pipeline.stages.strategy.standard



### fn serial_pipeline.stages.strategy.standard.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.standard.new` constructs a new object with attributes and blocks configured for the `standard`
Terraform sub block.



**Args**:
  - `verify` (`bool`): Whether to verify a deployment. When `null`, the `verify` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `standard` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.clouddeploy_delivery_pipeline.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
