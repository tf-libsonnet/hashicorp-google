---
permalink: /cloud_tasks_queue/
---

# cloud_tasks_queue

`cloud_tasks_queue` represents the `google_cloud_tasks_queue` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppEngineRoutingOverride()`](#fn-withappengineroutingoverride)
* [`fn withAppEngineRoutingOverrideMixin()`](#fn-withappengineroutingoverridemixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRateLimits()`](#fn-withratelimits)
* [`fn withRateLimitsMixin()`](#fn-withratelimitsmixin)
* [`fn withRetryConfig()`](#fn-withretryconfig)
* [`fn withRetryConfigMixin()`](#fn-withretryconfigmixin)
* [`fn withStackdriverLoggingConfig()`](#fn-withstackdriverloggingconfig)
* [`fn withStackdriverLoggingConfigMixin()`](#fn-withstackdriverloggingconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj app_engine_routing_override`](#obj-app_engine_routing_override)
  * [`fn new()`](#fn-app_engine_routing_overridenew)
* [`obj rate_limits`](#obj-rate_limits)
  * [`fn new()`](#fn-rate_limitsnew)
* [`obj retry_config`](#obj-retry_config)
  * [`fn new()`](#fn-retry_confignew)
* [`obj stackdriver_logging_config`](#obj-stackdriver_logging_config)
  * [`fn new()`](#fn-stackdriver_logging_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_tasks_queue.new` injects a new `google_cloud_tasks_queue` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_tasks_queue.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_tasks_queue` using the reference:

    $._ref.google_cloud_tasks_queue.some_id.get('id')

This is the same as directly entering `"${ google_cloud_tasks_queue.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `location` (`string`): The location of the queue
  - `name` (`string`): The queue name. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `app_engine_routing_override` (`list[obj]`): Overrides for task-level appEngineRouting. These settings apply only
to App Engine tasks in this queue When `null`, the `app_engine_routing_override` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.app_engine_routing_override.new](#fn-cloud_tasks_queueapp_engine_routing_overridenew) constructor.
  - `rate_limits` (`list[obj]`): Rate limits for task dispatches.

The queue&#39;s actual dispatch rate is the result of:

* Number of tasks in the queue
* User-specified throttling: rateLimits, retryConfig, and the queue&#39;s state.
* System throttling due to 429 (Too Many Requests) or 503 (Service
  Unavailable) responses from the worker, high error rates, or to
  smooth sudden large traffic spikes. When `null`, the `rate_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.rate_limits.new](#fn-cloud_tasks_queuerate_limitsnew) constructor.
  - `retry_config` (`list[obj]`): Settings that determine the retry behavior. When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.retry_config.new](#fn-cloud_tasks_queueretry_confignew) constructor.
  - `stackdriver_logging_config` (`list[obj]`): Configuration options for writing logs to Stackdriver Logging. When `null`, the `stackdriver_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.stackdriver_logging_config.new](#fn-cloud_tasks_queuestackdriver_logging_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.timeouts.new](#fn-cloud_tasks_queuetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_tasks_queue.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_tasks_queue`
Terraform resource.

Unlike [google.cloud_tasks_queue.new](#fn-cloud_tasks_queuenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The location of the queue
  - `name` (`string`): The queue name. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `app_engine_routing_override` (`list[obj]`): Overrides for task-level appEngineRouting. These settings apply only
to App Engine tasks in this queue When `null`, the `app_engine_routing_override` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.app_engine_routing_override.new](#fn-cloud_tasks_queueapp_engine_routing_overridenew) constructor.
  - `rate_limits` (`list[obj]`): Rate limits for task dispatches.

The queue&#39;s actual dispatch rate is the result of:

* Number of tasks in the queue
* User-specified throttling: rateLimits, retryConfig, and the queue&#39;s state.
* System throttling due to 429 (Too Many Requests) or 503 (Service
  Unavailable) responses from the worker, high error rates, or to
  smooth sudden large traffic spikes. When `null`, the `rate_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.rate_limits.new](#fn-cloud_tasks_queuerate_limitsnew) constructor.
  - `retry_config` (`list[obj]`): Settings that determine the retry behavior. When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.retry_config.new](#fn-cloud_tasks_queueretry_confignew) constructor.
  - `stackdriver_logging_config` (`list[obj]`): Configuration options for writing logs to Stackdriver Logging. When `null`, the `stackdriver_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.stackdriver_logging_config.new](#fn-cloud_tasks_queuestackdriver_logging_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.timeouts.new](#fn-cloud_tasks_queuetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_tasks_queue` resource into the root Terraform configuration.


### fn withAppEngineRoutingOverride

```ts
withAppEngineRoutingOverride()
```

`google.list[obj].withAppEngineRoutingOverride` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the app_engine_routing_override field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAppEngineRoutingOverrideMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `app_engine_routing_override` field.


### fn withAppEngineRoutingOverrideMixin

```ts
withAppEngineRoutingOverrideMixin()
```

`google.list[obj].withAppEngineRoutingOverrideMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the app_engine_routing_override field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAppEngineRoutingOverride](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `app_engine_routing_override` field.


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


### fn withRateLimits

```ts
withRateLimits()
```

`google.list[obj].withRateLimits` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rate_limits field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRateLimitsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rate_limits` field.


### fn withRateLimitsMixin

```ts
withRateLimitsMixin()
```

`google.list[obj].withRateLimitsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rate_limits field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRateLimits](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rate_limits` field.


### fn withRetryConfig

```ts
withRetryConfig()
```

`google.list[obj].withRetryConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retry_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRetryConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retry_config` field.


### fn withRetryConfigMixin

```ts
withRetryConfigMixin()
```

`google.list[obj].withRetryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retry_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRetryConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retry_config` field.


### fn withStackdriverLoggingConfig

```ts
withStackdriverLoggingConfig()
```

`google.list[obj].withStackdriverLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stackdriver_logging_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withStackdriverLoggingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stackdriver_logging_config` field.


### fn withStackdriverLoggingConfigMixin

```ts
withStackdriverLoggingConfigMixin()
```

`google.list[obj].withStackdriverLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stackdriver_logging_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withStackdriverLoggingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stackdriver_logging_config` field.


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


## obj app_engine_routing_override



### fn app_engine_routing_override.new

```ts
new()
```


`google.cloud_tasks_queue.app_engine_routing_override.new` constructs a new object with attributes and blocks configured for the `app_engine_routing_override`
Terraform sub block.



**Args**:
  - `instance` (`string`): App instance.

By default, the task is sent to an instance which is available when the task is attempted. When `null`, the `instance` field will be omitted from the resulting object.
  - `service` (`string`): App service.

By default, the task is sent to the service which is the default service when the task is attempted. When `null`, the `service` field will be omitted from the resulting object.
  - `version` (`string`): App version.

By default, the task is sent to the version which is the default version when the task is attempted. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `app_engine_routing_override` sub block.


## obj rate_limits



### fn rate_limits.new

```ts
new()
```


`google.cloud_tasks_queue.rate_limits.new` constructs a new object with attributes and blocks configured for the `rate_limits`
Terraform sub block.



**Args**:
  - `max_concurrent_dispatches` (`number`): The maximum number of concurrent tasks that Cloud Tasks allows to
be dispatched for this queue. After this threshold has been
reached, Cloud Tasks stops dispatching tasks until the number of
concurrent requests decreases. When `null`, the `max_concurrent_dispatches` field will be omitted from the resulting object.
  - `max_dispatches_per_second` (`number`): The maximum rate at which tasks are dispatched from this queue.

If unspecified when the queue is created, Cloud Tasks will pick the default. When `null`, the `max_dispatches_per_second` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `rate_limits` sub block.


## obj retry_config



### fn retry_config.new

```ts
new()
```


`google.cloud_tasks_queue.retry_config.new` constructs a new object with attributes and blocks configured for the `retry_config`
Terraform sub block.



**Args**:
  - `max_attempts` (`number`): Number of attempts per task.

Cloud Tasks will attempt the task maxAttempts times (that is, if
the first attempt fails, then there will be maxAttempts - 1
retries). Must be &gt;= -1.

If unspecified when the queue is created, Cloud Tasks will pick
the default.

-1 indicates unlimited attempts. When `null`, the `max_attempts` field will be omitted from the resulting object.
  - `max_backoff` (`string`): A task will be scheduled for retry between minBackoff and
maxBackoff duration after it fails, if the queue&#39;s RetryConfig
specifies that the task should be retried. When `null`, the `max_backoff` field will be omitted from the resulting object.
  - `max_doublings` (`number`): The time between retries will double maxDoublings times.

A task&#39;s retry interval starts at minBackoff, then doubles maxDoublings times,
then increases linearly, and finally retries retries at intervals of maxBackoff
up to maxAttempts times. When `null`, the `max_doublings` field will be omitted from the resulting object.
  - `max_retry_duration` (`string`): If positive, maxRetryDuration specifies the time limit for
retrying a failed task, measured from when the task was first
attempted. Once maxRetryDuration time has passed and the task has
been attempted maxAttempts times, no further attempts will be
made and the task will be deleted.

If zero, then the task age is unlimited. When `null`, the `max_retry_duration` field will be omitted from the resulting object.
  - `min_backoff` (`string`): A task will be scheduled for retry between minBackoff and
maxBackoff duration after it fails, if the queue&#39;s RetryConfig
specifies that the task should be retried. When `null`, the `min_backoff` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retry_config` sub block.


## obj stackdriver_logging_config



### fn stackdriver_logging_config.new

```ts
new()
```


`google.cloud_tasks_queue.stackdriver_logging_config.new` constructs a new object with attributes and blocks configured for the `stackdriver_logging_config`
Terraform sub block.



**Args**:
  - `sampling_ratio` (`number`): Specifies the fraction of operations to write to Stackdriver Logging.
This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the
default and means that no operations are logged.

**Returns**:
  - An attribute object that represents the `stackdriver_logging_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_tasks_queue.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
