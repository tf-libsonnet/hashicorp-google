---
permalink: /cloudfunctions2_function/
---

# cloudfunctions2_function

`cloudfunctions2_function` represents the `google_cloudfunctions2_function` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBuildConfig()`](#fn-withbuildconfig)
* [`fn withBuildConfigMixin()`](#fn-withbuildconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEventTrigger()`](#fn-witheventtrigger)
* [`fn withEventTriggerMixin()`](#fn-witheventtriggermixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceConfig()`](#fn-withserviceconfig)
* [`fn withServiceConfigMixin()`](#fn-withserviceconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj build_config`](#obj-build_config)
  * [`fn new()`](#fn-build_confignew)
  * [`obj build_config.source`](#obj-build_configsource)
    * [`fn new()`](#fn-build_configsourcenew)
    * [`obj build_config.source.repo_source`](#obj-build_configsourcerepo_source)
      * [`fn new()`](#fn-build_configsourcerepo_sourcenew)
    * [`obj build_config.source.storage_source`](#obj-build_configsourcestorage_source)
      * [`fn new()`](#fn-build_configsourcestorage_sourcenew)
* [`obj event_trigger`](#obj-event_trigger)
  * [`fn new()`](#fn-event_triggernew)
  * [`obj event_trigger.event_filters`](#obj-event_triggerevent_filters)
    * [`fn new()`](#fn-event_triggerevent_filtersnew)
* [`obj service_config`](#obj-service_config)
  * [`fn new()`](#fn-service_confignew)
  * [`obj service_config.secret_environment_variables`](#obj-service_configsecret_environment_variables)
    * [`fn new()`](#fn-service_configsecret_environment_variablesnew)
  * [`obj service_config.secret_volumes`](#obj-service_configsecret_volumes)
    * [`fn new()`](#fn-service_configsecret_volumesnew)
    * [`obj service_config.secret_volumes.versions`](#obj-service_configsecret_volumesversions)
      * [`fn new()`](#fn-service_configsecret_volumesversionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloudfunctions2_function.new` injects a new `google_cloudfunctions2_function` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudfunctions2_function.new('some_id')

You can get the reference to the `id` field of the created `google.cloudfunctions2_function` using the reference:

    $._ref.google_cloudfunctions2_function.some_id.get('id')

This is the same as directly entering `"${ google_cloudfunctions2_function.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): User-provided description of a function. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs associated with this Cloud Function. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of this cloud function. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the function. Function names must
be unique globally and match pattern &#39;projects/*/locations/*/functions/*&#39;.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `build_config` (`list[obj]`): Describes the Build step of the function that builds a container
from the given source. When `null`, the `build_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.new](#fn-build_confignew) constructor.
  - `event_trigger` (`list[obj]`): An Eventarc trigger managed by Google Cloud Functions that fires events in
response to a condition in another service. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.event_trigger.new](#fn-event_triggernew) constructor.
  - `service_config` (`list[obj]`): Describes the Service being deployed. When `null`, the `service_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.new](#fn-service_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudfunctions2_function.newAttrs` constructs a new object with attributes and blocks configured for the `cloudfunctions2_function`
Terraform resource.

Unlike [google.cloudfunctions2_function.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): User-provided description of a function. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs associated with this Cloud Function. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of this cloud function. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the function. Function names must
be unique globally and match pattern &#39;projects/*/locations/*/functions/*&#39;.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `build_config` (`list[obj]`): Describes the Build step of the function that builds a container
from the given source. When `null`, the `build_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.new](#fn-build_confignew) constructor.
  - `event_trigger` (`list[obj]`): An Eventarc trigger managed by Google Cloud Functions that fires events in
response to a condition in another service. When `null`, the `event_trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.event_trigger.new](#fn-event_triggernew) constructor.
  - `service_config` (`list[obj]`): Describes the Service being deployed. When `null`, the `service_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.new](#fn-service_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudfunctions2_function` resource into the root Terraform configuration.


### fn withBuildConfig

```ts
withBuildConfig()
```

`google.list[obj].withBuildConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the build_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBuildConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `build_config` field.


### fn withBuildConfigMixin

```ts
withBuildConfigMixin()
```

`google.list[obj].withBuildConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the build_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBuildConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `build_config` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withServiceConfig

```ts
withServiceConfig()
```

`google.list[obj].withServiceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withServiceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_config` field.


### fn withServiceConfigMixin

```ts
withServiceConfigMixin()
```

`google.list[obj].withServiceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withServiceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_config` field.


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


## obj build_config



### fn build_config.new

```ts
new()
```


`google.cloudfunctions2_function.build_config.new` constructs a new object with attributes and blocks configured for the `build_config`
Terraform sub block.



**Args**:
  - `docker_repository` (`string`): User managed repository created in Artifact Registry optionally with a customer managed encryption key. When `null`, the `docker_repository` field will be omitted from the resulting object.
  - `entry_point` (`string`): The name of the function (as defined in source code) that will be executed.
Defaults to the resource name suffix, if not specified. For backward
compatibility, if function with given name is not found, then the system
will try to use function named &#34;function&#34;. For Node.js this is name of a
function exported by the module specified in source_location. When `null`, the `entry_point` field will be omitted from the resulting object.
  - `environment_variables` (`obj`): User-provided build-time environment variables for the function. When `null`, the `environment_variables` field will be omitted from the resulting object.
  - `runtime` (`string`): The runtime in which to run the function. Required when deploying a new
function, optional when updating an existing function. When `null`, the `runtime` field will be omitted from the resulting object.
  - `worker_pool` (`string`): Name of the Cloud Build Custom Worker Pool that should be used to build the function. When `null`, the `worker_pool` field will be omitted from the resulting object.
  - `source` (`list[obj]`): The location of the function source code. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.source.new](#fn-build_configsourcenew) constructor.

**Returns**:
  - An attribute object that represents the `build_config` sub block.


## obj build_config.source



### fn build_config.source.new

```ts
new()
```


`google.cloudfunctions2_function.build_config.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `repo_source` (`list[obj]`): If provided, get the source from this location in a Cloud Source Repository. When `null`, the `repo_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.source.repo_source.new](#fn-build_configbuild_configrepo_sourcenew) constructor.
  - `storage_source` (`list[obj]`): If provided, get the source from this location in Google Cloud Storage. When `null`, the `storage_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.build_config.source.storage_source.new](#fn-build_configbuild_configstorage_sourcenew) constructor.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj build_config.source.repo_source



### fn build_config.source.repo_source.new

```ts
new()
```


`google.cloudfunctions2_function.build_config.source.repo_source.new` constructs a new object with attributes and blocks configured for the `repo_source`
Terraform sub block.



**Args**:
  - `branch_name` (`string`): Regex matching branches to build. When `null`, the `branch_name` field will be omitted from the resulting object.
  - `commit_sha` (`string`): Regex matching tags to build. When `null`, the `commit_sha` field will be omitted from the resulting object.
  - `dir` (`string`): Directory, relative to the source root, in which to run the build. When `null`, the `dir` field will be omitted from the resulting object.
  - `invert_regex` (`bool`): Only trigger a build if the revision regex does 
NOT match the revision regex. When `null`, the `invert_regex` field will be omitted from the resulting object.
  - `project_id` (`string`): ID of the project that owns the Cloud Source Repository. If omitted, the 
project ID requesting the build is assumed. When `null`, the `project_id` field will be omitted from the resulting object.
  - `repo_name` (`string`): Name of the Cloud Source Repository. When `null`, the `repo_name` field will be omitted from the resulting object.
  - `tag_name` (`string`): Regex matching tags to build. When `null`, the `tag_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `repo_source` sub block.


## obj build_config.source.storage_source



### fn build_config.source.storage_source.new

```ts
new()
```


`google.cloudfunctions2_function.build_config.source.storage_source.new` constructs a new object with attributes and blocks configured for the `storage_source`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Google Cloud Storage bucket containing the source When `null`, the `bucket` field will be omitted from the resulting object.
  - `generation` (`number`): Google Cloud Storage generation for the object. If the generation 
is omitted, the latest generation will be used. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Google Cloud Storage object containing the source. When `null`, the `object` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `storage_source` sub block.


## obj event_trigger



### fn event_trigger.new

```ts
new()
```


`google.cloudfunctions2_function.event_trigger.new` constructs a new object with attributes and blocks configured for the `event_trigger`
Terraform sub block.



**Args**:
  - `event_type` (`string`): Required. The type of event to observe. When `null`, the `event_type` field will be omitted from the resulting object.
  - `pubsub_topic` (`string`): The name of a Pub/Sub topic in the same project that will be used
as the transport topic for the event delivery. When `null`, the `pubsub_topic` field will be omitted from the resulting object.
  - `retry_policy` (`string`): Describes the retry policy in case of function&#39;s execution failure.
Retried execution is charged as any other execution. Possible values: [&#34;RETRY_POLICY_UNSPECIFIED&#34;, &#34;RETRY_POLICY_DO_NOT_RETRY&#34;, &#34;RETRY_POLICY_RETRY&#34;] When `null`, the `retry_policy` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The email of the service account for this function. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `trigger_region` (`string`): The region that the trigger will be in. The trigger will only receive
events originating in this region. It can be the same
region as the function, a different region or multi-region, or the global
region. If not provided, defaults to the same region as the function. When `null`, the `trigger_region` field will be omitted from the resulting object.
  - `event_filters` (`list[obj]`): Criteria used to filter events. When `null`, the `event_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.event_trigger.event_filters.new](#fn-event_triggerevent_filtersnew) constructor.

**Returns**:
  - An attribute object that represents the `event_trigger` sub block.


## obj event_trigger.event_filters



### fn event_trigger.event_filters.new

```ts
new()
```


`google.cloudfunctions2_function.event_trigger.event_filters.new` constructs a new object with attributes and blocks configured for the `event_filters`
Terraform sub block.



**Args**:
  - `attribute` (`string`): &#39;Required. The name of a CloudEvents attribute.
Currently, only a subset of attributes are supported for filtering. Use the &#39;gcloud eventarc providers describe&#39; command to learn more about events and their attributes.
Do not filter for the &#39;type&#39; attribute here, as this is already achieved by the resource&#39;s &#39;event_type&#39; attribute.
  - `operator` (`string`): Optional. The operator used for matching the events with the value of
the filter. If not specified, only events that have an exact key-value
pair specified in the filter are matched.
The only allowed value is &#39;match-path-pattern&#39;.
[See documentation on path patterns here](https://cloud.google.com/eventarc/docs/path-patterns)&#39; When `null`, the `operator` field will be omitted from the resulting object.
  - `value` (`string`): Required. The value for the attribute.
If the operator field is set as &#39;match-path-pattern&#39;, this value can be a path pattern instead of an exact value.

**Returns**:
  - An attribute object that represents the `event_filters` sub block.


## obj service_config



### fn service_config.new

```ts
new()
```


`google.cloudfunctions2_function.service_config.new` constructs a new object with attributes and blocks configured for the `service_config`
Terraform sub block.



**Args**:
  - `all_traffic_on_latest_revision` (`bool`): Whether 100% of traffic is routed to the latest revision. Defaults to true. When `null`, the `all_traffic_on_latest_revision` field will be omitted from the resulting object.
  - `available_cpu` (`string`): The number of CPUs used in a single container instance. Default value is calculated from available memory. When `null`, the `available_cpu` field will be omitted from the resulting object.
  - `available_memory` (`string`): The amount of memory available for a function.
Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
supplied the value is interpreted as bytes. When `null`, the `available_memory` field will be omitted from the resulting object.
  - `environment_variables` (`obj`): Environment variables that shall be available during function execution. When `null`, the `environment_variables` field will be omitted from the resulting object.
  - `ingress_settings` (`string`): Available ingress settings. Defaults to &#34;ALLOW_ALL&#34; if unspecified. Default value: &#34;ALLOW_ALL&#34; Possible values: [&#34;ALLOW_ALL&#34;, &#34;ALLOW_INTERNAL_ONLY&#34;, &#34;ALLOW_INTERNAL_AND_GCLB&#34;] When `null`, the `ingress_settings` field will be omitted from the resulting object.
  - `max_instance_count` (`number`): The limit on the maximum number of function instances that may coexist at a
given time. When `null`, the `max_instance_count` field will be omitted from the resulting object.
  - `max_instance_request_concurrency` (`number`): Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1. When `null`, the `max_instance_request_concurrency` field will be omitted from the resulting object.
  - `min_instance_count` (`number`): The limit on the minimum number of function instances that may coexist at a
given time. When `null`, the `min_instance_count` field will be omitted from the resulting object.
  - `service` (`string`): Name of the service associated with a Function. When `null`, the `service` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The email of the service account for this function. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `timeout_seconds` (`number`): The function execution timeout. Execution is considered failed and
can be terminated if the function is not completed at the end of the
timeout period. Defaults to 60 seconds. When `null`, the `timeout_seconds` field will be omitted from the resulting object.
  - `vpc_connector` (`string`): The Serverless VPC Access connector that this cloud function can connect to. When `null`, the `vpc_connector` field will be omitted from the resulting object.
  - `vpc_connector_egress_settings` (`string`): Available egress settings. Possible values: [&#34;VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED&#34;, &#34;PRIVATE_RANGES_ONLY&#34;, &#34;ALL_TRAFFIC&#34;] When `null`, the `vpc_connector_egress_settings` field will be omitted from the resulting object.
  - `secret_environment_variables` (`list[obj]`): Secret environment variables configuration. When `null`, the `secret_environment_variables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.secret_environment_variables.new](#fn-service_configsecret_environment_variablesnew) constructor.
  - `secret_volumes` (`list[obj]`): Secret volumes configuration. When `null`, the `secret_volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.secret_volumes.new](#fn-service_configsecret_volumesnew) constructor.

**Returns**:
  - An attribute object that represents the `service_config` sub block.


## obj service_config.secret_environment_variables



### fn service_config.secret_environment_variables.new

```ts
new()
```


`google.cloudfunctions2_function.service_config.secret_environment_variables.new` constructs a new object with attributes and blocks configured for the `secret_environment_variables`
Terraform sub block.



**Args**:
  - `key` (`string`): Name of the environment variable.
  - `project_id` (`string`): Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function&#39;s project assuming that the secret exists in the same project as of the function.
  - `secret` (`string`): Name of the secret in secret manager (not the full resource name).
  - `version` (`string`): Version of the secret (version number or the string &#39;latest&#39;). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.

**Returns**:
  - An attribute object that represents the `secret_environment_variables` sub block.


## obj service_config.secret_volumes



### fn service_config.secret_volumes.new

```ts
new()
```


`google.cloudfunctions2_function.service_config.secret_volumes.new` constructs a new object with attributes and blocks configured for the `secret_volumes`
Terraform sub block.



**Args**:
  - `mount_path` (`string`): The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  - `project_id` (`string`): Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function&#39;s project assuming that the secret exists in the same project as of the function.
  - `secret` (`string`): Name of the secret in secret manager (not the full resource name).
  - `versions` (`list[obj]`): List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.&#39; When `null`, the `versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudfunctions2_function.service_config.secret_volumes.versions.new](#fn-service_configservice_configversionsnew) constructor.

**Returns**:
  - An attribute object that represents the `secret_volumes` sub block.


## obj service_config.secret_volumes.versions



### fn service_config.secret_volumes.versions.new

```ts
new()
```


`google.cloudfunctions2_function.service_config.secret_volumes.versions.new` constructs a new object with attributes and blocks configured for the `versions`
Terraform sub block.



**Args**:
  - `path` (`string`): Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mountPath as &#39;/etc/secrets&#39; and path as secret_foo would mount the secret value file at /etc/secrets/secret_foo.
  - `version` (`string`): Version of the secret (version number or the string &#39;latest&#39;). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately.

**Returns**:
  - An attribute object that represents the `versions` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudfunctions2_function.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
