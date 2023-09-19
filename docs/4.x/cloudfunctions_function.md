---
permalink: /cloudfunctions_function/
---

# cloudfunctions_function

`cloudfunctions_function` represents the `google_cloudfunctions_function` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAvailableMemoryMb()`](#fn-withavailablememorymb)
* [`fn withBuildEnvironmentVariables()`](#fn-withbuildenvironmentvariables)
* [`fn withBuildWorkerPool()`](#fn-withbuildworkerpool)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDockerRegistry()`](#fn-withdockerregistry)
* [`fn withDockerRepository()`](#fn-withdockerrepository)
* [`fn withEntryPoint()`](#fn-withentrypoint)
* [`fn withEnvironmentVariables()`](#fn-withenvironmentvariables)
* [`fn withEventTrigger()`](#fn-witheventtrigger)
* [`fn withEventTriggerMixin()`](#fn-witheventtriggermixin)
* [`fn withHttpsTriggerSecurityLevel()`](#fn-withhttpstriggersecuritylevel)
* [`fn withHttpsTriggerUrl()`](#fn-withhttpstriggerurl)
* [`fn withIngressSettings()`](#fn-withingresssettings)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMaxInstances()`](#fn-withmaxinstances)
* [`fn withMinInstances()`](#fn-withmininstances)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRuntime()`](#fn-withruntime)
* [`fn withSecretEnvironmentVariables()`](#fn-withsecretenvironmentvariables)
* [`fn withSecretEnvironmentVariablesMixin()`](#fn-withsecretenvironmentvariablesmixin)
* [`fn withSecretVolumes()`](#fn-withsecretvolumes)
* [`fn withSecretVolumesMixin()`](#fn-withsecretvolumesmixin)
* [`fn withServiceAccountEmail()`](#fn-withserviceaccountemail)
* [`fn withSourceArchiveBucket()`](#fn-withsourcearchivebucket)
* [`fn withSourceArchiveObject()`](#fn-withsourcearchiveobject)
* [`fn withSourceRepository()`](#fn-withsourcerepository)
* [`fn withSourceRepositoryMixin()`](#fn-withsourcerepositorymixin)
* [`fn withTimeout()`](#fn-withtimeout)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTriggerHttp()`](#fn-withtriggerhttp)
* [`fn withVpcConnector()`](#fn-withvpcconnector)
* [`fn withVpcConnectorEgressSettings()`](#fn-withvpcconnectoregresssettings)
* [`obj event_trigger`](#obj-event_trigger)
  * [`fn new()`](#fn-event_triggernew)
  * [`obj event_trigger.failure_policy`](#obj-event_triggerfailure_policy)
    * [`fn new()`](#fn-event_triggerfailure_policynew)
* [`obj secret_environment_variables`](#obj-secret_environment_variables)
  * [`fn new()`](#fn-secret_environment_variablesnew)
* [`obj secret_volumes`](#obj-secret_volumes)
  * [`fn new()`](#fn-secret_volumesnew)
  * [`obj secret_volumes.versions`](#obj-secret_volumesversions)
    * [`fn new()`](#fn-secret_volumesversionsnew)
* [`obj source_repository`](#obj-source_repository)
  * [`fn new()`](#fn-source_repositorynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloudfunctions_function.new` injects a new `google_cloudfunctions_function` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudfunctions_function.new('some_id')

You can get the reference to the `id` field of the created `google.cloudfunctions_function` using the reference:

    $._ref.google_cloudfunctions_function.some_id.get('id')

This is the same as directly entering `"${ google_cloudfunctions_function.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `available_memory_mb` (`number`): Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. When `null`, the `available_memory_mb` field will be omitted from the resulting object.
  - `build_environment_variables` (`obj`):  A set of key/value environment variable pairs available during build time. When `null`, the `build_environment_variables` field will be omitted from the resulting object.
  - `build_worker_pool` (`string`): Name of the Cloud Build Custom Worker Pool that should be used to build the function. When `null`, the `build_worker_pool` field will be omitted from the resulting object.
  - `description` (`string`): Description of the function. When `null`, the `description` field will be omitted from the resulting object.
  - `docker_registry` (`string`): Docker Registry to use for storing the function&#39;s Docker images. Allowed values are CONTAINER_REGISTRY (default) and ARTIFACT_REGISTRY. When `null`, the `docker_registry` field will be omitted from the resulting object.
  - `docker_repository` (`string`): User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry for storing images built with Cloud Build. When `null`, the `docker_repository` field will be omitted from the resulting object.
  - `entry_point` (`string`): Name of the function that will be executed when the Google Cloud Function is triggered. When `null`, the `entry_point` field will be omitted from the resulting object.
  - `environment_variables` (`obj`): A set of key/value environment variable pairs to assign to the function. When `null`, the `environment_variables` field will be omitted from the resulting object.
  - `https_trigger_security_level` (`string`): The security level for the function. Defaults to SECURE_OPTIONAL. Valid only if trigger_http is used. When `null`, the `https_trigger_security_level` field will be omitted from the resulting object.
  - `https_trigger_url` (`string`): URL which triggers function execution. Returned only if trigger_http is used. When `null`, the `https_trigger_url` field will be omitted from the resulting object.
  - `ingress_settings` (`string`): String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function. When `null`, the `ingress_settings` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements. When `null`, the `labels` field will be omitted from the resulting object.
  - `max_instances` (`number`): The limit on the maximum number of function instances that may coexist at a given time. When `null`, the `max_instances` field will be omitted from the resulting object.
  - `min_instances` (`number`): The limit on the minimum number of function instances that may coexist at a given time. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the function. Function names must be unique globally.
  - `project` (`string`): Project of the function. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region of function. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `runtime` (`string`): The runtime in which the function is going to run. Eg. &#34;nodejs12&#34;, &#34;nodejs14&#34;, &#34;python37&#34;, &#34;go111&#34;.
  - `service_account_email` (`string`):  If provided, the self-provided service account to run the function with. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `source_archive_bucket` (`string`): The GCS bucket containing the zip archive which contains the function. When `null`, the `source_archive_bucket` field will be omitted from the resulting object.
  - `source_archive_object` (`string`): The source archive object (file) in archive bucket. When `null`, the `source_archive_object` field will be omitted from the resulting object.
  - `timeout` (`number`): Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds. When `null`, the `timeout` field will be omitted from the resulting object.
  - `trigger_http` (`bool`): Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic. When `null`, the `trigger_http` field will be omitted from the resulting object.
  - `vpc_connector` (`string`): The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*. When `null`, the `vpc_connector` field will be omitted from the resulting object.
  - `vpc_connector_egress_settings` (`string`): The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value. When `null`, the `vpc_connector_egress_settings` field will be omitted from the resulting object.
  - `event_trigger` (`list[obj]`): A source that fires events in response to a condition in another service. Cannot be used with trigger_http. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.event_trigger.new](#fn-event_triggernew) constructor.
  - `secret_environment_variables` (`list[obj]`): Secret environment variables configuration When `null`, the `secret_environment_variables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_environment_variables.new](#fn-secret_environment_variablesnew) constructor.
  - `secret_volumes` (`list[obj]`): Secret volumes configuration. When `null`, the `secret_volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_volumes.new](#fn-secret_volumesnew) constructor.
  - `source_repository` (`list[obj]`): Represents parameters related to source repository where a function is hosted. Cannot be set alongside source_archive_bucket or source_archive_object. When `null`, the `source_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.source_repository.new](#fn-source_repositorynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudfunctions_function.newAttrs` constructs a new object with attributes and blocks configured for the `cloudfunctions_function`
Terraform resource.

Unlike [google.cloudfunctions_function.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `available_memory_mb` (`number`): Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. When `null`, the `available_memory_mb` field will be omitted from the resulting object.
  - `build_environment_variables` (`obj`):  A set of key/value environment variable pairs available during build time. When `null`, the `build_environment_variables` field will be omitted from the resulting object.
  - `build_worker_pool` (`string`): Name of the Cloud Build Custom Worker Pool that should be used to build the function. When `null`, the `build_worker_pool` field will be omitted from the resulting object.
  - `description` (`string`): Description of the function. When `null`, the `description` field will be omitted from the resulting object.
  - `docker_registry` (`string`): Docker Registry to use for storing the function&#39;s Docker images. Allowed values are CONTAINER_REGISTRY (default) and ARTIFACT_REGISTRY. When `null`, the `docker_registry` field will be omitted from the resulting object.
  - `docker_repository` (`string`): User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry for storing images built with Cloud Build. When `null`, the `docker_repository` field will be omitted from the resulting object.
  - `entry_point` (`string`): Name of the function that will be executed when the Google Cloud Function is triggered. When `null`, the `entry_point` field will be omitted from the resulting object.
  - `environment_variables` (`obj`): A set of key/value environment variable pairs to assign to the function. When `null`, the `environment_variables` field will be omitted from the resulting object.
  - `https_trigger_security_level` (`string`): The security level for the function. Defaults to SECURE_OPTIONAL. Valid only if trigger_http is used. When `null`, the `https_trigger_security_level` field will be omitted from the resulting object.
  - `https_trigger_url` (`string`): URL which triggers function execution. Returned only if trigger_http is used. When `null`, the `https_trigger_url` field will be omitted from the resulting object.
  - `ingress_settings` (`string`): String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function. When `null`, the `ingress_settings` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements. When `null`, the `labels` field will be omitted from the resulting object.
  - `max_instances` (`number`): The limit on the maximum number of function instances that may coexist at a given time. When `null`, the `max_instances` field will be omitted from the resulting object.
  - `min_instances` (`number`): The limit on the minimum number of function instances that may coexist at a given time. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the function. Function names must be unique globally.
  - `project` (`string`): Project of the function. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region of function. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `runtime` (`string`): The runtime in which the function is going to run. Eg. &#34;nodejs12&#34;, &#34;nodejs14&#34;, &#34;python37&#34;, &#34;go111&#34;.
  - `service_account_email` (`string`):  If provided, the self-provided service account to run the function with. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `source_archive_bucket` (`string`): The GCS bucket containing the zip archive which contains the function. When `null`, the `source_archive_bucket` field will be omitted from the resulting object.
  - `source_archive_object` (`string`): The source archive object (file) in archive bucket. When `null`, the `source_archive_object` field will be omitted from the resulting object.
  - `timeout` (`number`): Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds. When `null`, the `timeout` field will be omitted from the resulting object.
  - `trigger_http` (`bool`): Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic. When `null`, the `trigger_http` field will be omitted from the resulting object.
  - `vpc_connector` (`string`): The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*. When `null`, the `vpc_connector` field will be omitted from the resulting object.
  - `vpc_connector_egress_settings` (`string`): The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value. When `null`, the `vpc_connector_egress_settings` field will be omitted from the resulting object.
  - `event_trigger` (`list[obj]`): A source that fires events in response to a condition in another service. Cannot be used with trigger_http. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.event_trigger.new](#fn-event_triggernew) constructor.
  - `secret_environment_variables` (`list[obj]`): Secret environment variables configuration When `null`, the `secret_environment_variables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_environment_variables.new](#fn-secret_environment_variablesnew) constructor.
  - `secret_volumes` (`list[obj]`): Secret volumes configuration. When `null`, the `secret_volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_volumes.new](#fn-secret_volumesnew) constructor.
  - `source_repository` (`list[obj]`): Represents parameters related to source repository where a function is hosted. Cannot be set alongside source_archive_bucket or source_archive_object. When `null`, the `source_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.source_repository.new](#fn-source_repositorynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudfunctions_function` resource into the root Terraform configuration.


### fn withAvailableMemoryMb

```ts
withAvailableMemoryMb()
```

`google.number.withAvailableMemoryMb` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the available_memory_mb field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `available_memory_mb` field.


### fn withBuildEnvironmentVariables

```ts
withBuildEnvironmentVariables()
```

`google.obj.withBuildEnvironmentVariables` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the build_environment_variables field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `build_environment_variables` field.


### fn withBuildWorkerPool

```ts
withBuildWorkerPool()
```

`google.string.withBuildWorkerPool` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the build_worker_pool field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `build_worker_pool` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDockerRegistry

```ts
withDockerRegistry()
```

`google.string.withDockerRegistry` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the docker_registry field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `docker_registry` field.


### fn withDockerRepository

```ts
withDockerRepository()
```

`google.string.withDockerRepository` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the docker_repository field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `docker_repository` field.


### fn withEntryPoint

```ts
withEntryPoint()
```

`google.string.withEntryPoint` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the entry_point field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `entry_point` field.


### fn withEnvironmentVariables

```ts
withEnvironmentVariables()
```

`google.obj.withEnvironmentVariables` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the environment_variables field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `environment_variables` field.


### fn withEventTrigger

```ts
withEventTrigger()
```

`google.list[obj].withEventTrigger` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_trigger field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEventTriggerMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_trigger` field.


### fn withEventTriggerMixin

```ts
withEventTriggerMixin()
```

`google.list[obj].withEventTriggerMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_trigger field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEventTrigger](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_trigger` field.


### fn withHttpsTriggerSecurityLevel

```ts
withHttpsTriggerSecurityLevel()
```

`google.string.withHttpsTriggerSecurityLevel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the https_trigger_security_level field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `https_trigger_security_level` field.


### fn withHttpsTriggerUrl

```ts
withHttpsTriggerUrl()
```

`google.string.withHttpsTriggerUrl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the https_trigger_url field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `https_trigger_url` field.


### fn withIngressSettings

```ts
withIngressSettings()
```

`google.string.withIngressSettings` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ingress_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ingress_settings` field.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMaxInstances

```ts
withMaxInstances()
```

`google.number.withMaxInstances` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_instances` field.


### fn withMinInstances

```ts
withMinInstances()
```

`google.number.withMinInstances` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the min_instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `min_instances` field.


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


### fn withRuntime

```ts
withRuntime()
```

`google.string.withRuntime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime` field.


### fn withSecretEnvironmentVariables

```ts
withSecretEnvironmentVariables()
```

`google.list[obj].withSecretEnvironmentVariables` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secret_environment_variables field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSecretEnvironmentVariablesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secret_environment_variables` field.


### fn withSecretEnvironmentVariablesMixin

```ts
withSecretEnvironmentVariablesMixin()
```

`google.list[obj].withSecretEnvironmentVariablesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secret_environment_variables field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSecretEnvironmentVariables](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secret_environment_variables` field.


### fn withSecretVolumes

```ts
withSecretVolumes()
```

`google.list[obj].withSecretVolumes` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secret_volumes field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSecretVolumesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secret_volumes` field.


### fn withSecretVolumesMixin

```ts
withSecretVolumesMixin()
```

`google.list[obj].withSecretVolumesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secret_volumes field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSecretVolumes](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secret_volumes` field.


### fn withServiceAccountEmail

```ts
withServiceAccountEmail()
```

`google.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account_email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account_email` field.


### fn withSourceArchiveBucket

```ts
withSourceArchiveBucket()
```

`google.string.withSourceArchiveBucket` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_archive_bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_archive_bucket` field.


### fn withSourceArchiveObject

```ts
withSourceArchiveObject()
```

`google.string.withSourceArchiveObject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_archive_object field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_archive_object` field.


### fn withSourceRepository

```ts
withSourceRepository()
```

`google.list[obj].withSourceRepository` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_repository field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceRepositoryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_repository` field.


### fn withSourceRepositoryMixin

```ts
withSourceRepositoryMixin()
```

`google.list[obj].withSourceRepositoryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_repository field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceRepository](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_repository` field.


### fn withTimeout

```ts
withTimeout()
```

`google.number.withTimeout` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `timeout` field.


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


### fn withTriggerHttp

```ts
withTriggerHttp()
```

`google.bool.withTriggerHttp` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the trigger_http field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `trigger_http` field.


### fn withVpcConnector

```ts
withVpcConnector()
```

`google.string.withVpcConnector` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vpc_connector field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vpc_connector` field.


### fn withVpcConnectorEgressSettings

```ts
withVpcConnectorEgressSettings()
```

`google.string.withVpcConnectorEgressSettings` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vpc_connector_egress_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vpc_connector_egress_settings` field.


## obj event_trigger



### fn event_trigger.new

```ts
new()
```


`google.cloudfunctions_function.event_trigger.new` constructs a new object with attributes and blocks configured for the `event_trigger`
Terraform sub block.



**Args**:
  - `event_type` (`string`): The type of event to observe. For example: &#34;google.storage.object.finalize&#34;. See the documentation on calling Cloud Functions for a full reference of accepted triggers.
  - `resource` (`string`): The name or partial URI of the resource from which to observe events. For example, &#34;myBucket&#34; or &#34;projects/my-project/topics/my-topic&#34;
  - `failure_policy` (`list[obj]`): Specifies policy for failed executions When `null`, the `failure_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.event_trigger.failure_policy.new](#fn-event_triggerfailure_policynew) constructor.

**Returns**:
  - An attribute object that represents the `event_trigger` sub block.


## obj event_trigger.failure_policy



### fn event_trigger.failure_policy.new

```ts
new()
```


`google.cloudfunctions_function.event_trigger.failure_policy.new` constructs a new object with attributes and blocks configured for the `failure_policy`
Terraform sub block.



**Args**:
  - `retry` (`bool`): Whether the function should be retried on failure. Defaults to false.

**Returns**:
  - An attribute object that represents the `failure_policy` sub block.


## obj secret_environment_variables



### fn secret_environment_variables.new

```ts
new()
```


`google.cloudfunctions_function.secret_environment_variables.new` constructs a new object with attributes and blocks configured for the `secret_environment_variables`
Terraform sub block.



**Args**:
  - `key` (`string`): Name of the environment variable.
  - `project_id` (`string`): Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function&#39;s project, assuming that the secret exists in the same project as of the function. When `null`, the `project_id` field will be omitted from the resulting object.
  - `secret` (`string`): ID of the secret in secret manager (not the full resource name).
  - `version` (`string`): Version of the secret (version number or the string &#34;latest&#34;). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start.

**Returns**:
  - An attribute object that represents the `secret_environment_variables` sub block.


## obj secret_volumes



### fn secret_volumes.new

```ts
new()
```


`google.cloudfunctions_function.secret_volumes.new` constructs a new object with attributes and blocks configured for the `secret_volumes`
Terraform sub block.



**Args**:
  - `mount_path` (`string`): The path within the container to mount the secret volume. For example, setting the mount_path as &#34;/etc/secrets&#34; would mount the secret value files under the &#34;/etc/secrets&#34; directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: &#34;/etc/secrets&#34; Restricted mount paths: &#34;/cloudsql&#34;, &#34;/dev/log&#34;, &#34;/pod&#34;, &#34;/proc&#34;, &#34;/var/log&#34;.
  - `project_id` (`string`): Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function&#39;s project, assuming that the secret exists in the same project as of the function. When `null`, the `project_id` field will be omitted from the resulting object.
  - `secret` (`string`): ID of the secret in secret manager (not the full resource name).
  - `versions` (`list[obj]`): List of secret versions to mount for this secret. If empty, the &#34;latest&#34; version of the secret will be made available in a file named after the secret under the mount point. When `null`, the `versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions_function.secret_volumes.versions.new](#fn-secret_volumesversionsnew) constructor.

**Returns**:
  - An attribute object that represents the `secret_volumes` sub block.


## obj secret_volumes.versions



### fn secret_volumes.versions.new

```ts
new()
```


`google.cloudfunctions_function.secret_volumes.versions.new` constructs a new object with attributes and blocks configured for the `versions`
Terraform sub block.



**Args**:
  - `path` (`string`): Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as &#34;/etc/secrets&#34; and path as &#34;/secret_foo&#34; would mount the secret value file at &#34;/etc/secrets/secret_foo&#34;.
  - `version` (`string`): Version of the secret (version number or the string &#34;latest&#34;). It is preferable to use &#34;latest&#34; version with secret volumes as secret value changes are reflected immediately.

**Returns**:
  - An attribute object that represents the `versions` sub block.


## obj source_repository



### fn source_repository.new

```ts
new()
```


`google.cloudfunctions_function.source_repository.new` constructs a new object with attributes and blocks configured for the `source_repository`
Terraform sub block.



**Args**:
  - `url` (`string`): The URL pointing to the hosted repository where the function is defined.

**Returns**:
  - An attribute object that represents the `source_repository` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudfunctions_function.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
