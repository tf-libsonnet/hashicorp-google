local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_tasks_queue', url='', help='`cloud_tasks_queue` represents the `google_cloud_tasks_queue` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  app_engine_routing_override:: {
    '#new':: d.fn(help='\n`google.cloud_tasks_queue.app_engine_routing_override.new` constructs a new object with attributes and blocks configured for the `app_engine_routing_override`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance` (`string`): App instance.\n\nBy default, the task is sent to an instance which is available when the task is attempted. When `null`, the `instance` field will be omitted from the resulting object.\n  - `service` (`string`): App service.\n\nBy default, the task is sent to the service which is the default service when the task is attempted. When `null`, the `service` field will be omitted from the resulting object.\n  - `version` (`string`): App version.\n\nBy default, the task is sent to the version which is the default version when the task is attempted. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `app_engine_routing_override` sub block.\n', args=[]),
    new(
      instance=null,
      service=null,
      version=null
    ):: std.prune(a={
      instance: instance,
      service: service,
      version: version,
    }),
  },
  '#new':: d.fn(help="\n`google.cloud_tasks_queue.new` injects a new `google_cloud_tasks_queue` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloud_tasks_queue.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloud_tasks_queue` using the reference:\n\n    $._ref.google_cloud_tasks_queue.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloud_tasks_queue.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location of the queue\n  - `name` (`string`): The queue name. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `app_engine_routing_override` (`list[obj]`): Overrides for task-level appEngineRouting. These settings apply only\nto App Engine tasks in this queue When `null`, the `app_engine_routing_override` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.app_engine_routing_override.new](#fn-app_engine_routing_overridenew) constructor.\n  - `rate_limits` (`list[obj]`): Rate limits for task dispatches.\n\nThe queue\u0026#39;s actual dispatch rate is the result of:\n\n* Number of tasks in the queue\n* User-specified throttling: rateLimits, retryConfig, and the queue\u0026#39;s state.\n* System throttling due to 429 (Too Many Requests) or 503 (Service\n  Unavailable) responses from the worker, high error rates, or to\n  smooth sudden large traffic spikes. When `null`, the `rate_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.rate_limits.new](#fn-rate_limitsnew) constructor.\n  - `retry_config` (`list[obj]`): Settings that determine the retry behavior. When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.retry_config.new](#fn-retry_confignew) constructor.\n  - `stackdriver_logging_config` (`list[obj]`): Configuration options for writing logs to Stackdriver Logging. When `null`, the `stackdriver_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.stackdriver_logging_config.new](#fn-stackdriver_logging_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    app_engine_routing_override=null,
    name=null,
    project=null,
    rate_limits=null,
    retry_config=null,
    stackdriver_logging_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_tasks_queue',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine_routing_override=app_engine_routing_override,
      location=location,
      name=name,
      project=project,
      rate_limits=rate_limits,
      retry_config=retry_config,
      stackdriver_logging_config=stackdriver_logging_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloud_tasks_queue.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_tasks_queue`\nTerraform resource.\n\nUnlike [google.cloud_tasks_queue.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location of the queue\n  - `name` (`string`): The queue name. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `app_engine_routing_override` (`list[obj]`): Overrides for task-level appEngineRouting. These settings apply only\nto App Engine tasks in this queue When `null`, the `app_engine_routing_override` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.app_engine_routing_override.new](#fn-app_engine_routing_overridenew) constructor.\n  - `rate_limits` (`list[obj]`): Rate limits for task dispatches.\n\nThe queue&#39;s actual dispatch rate is the result of:\n\n* Number of tasks in the queue\n* User-specified throttling: rateLimits, retryConfig, and the queue&#39;s state.\n* System throttling due to 429 (Too Many Requests) or 503 (Service\n  Unavailable) responses from the worker, high error rates, or to\n  smooth sudden large traffic spikes. When `null`, the `rate_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.rate_limits.new](#fn-rate_limitsnew) constructor.\n  - `retry_config` (`list[obj]`): Settings that determine the retry behavior. When `null`, the `retry_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.retry_config.new](#fn-retry_confignew) constructor.\n  - `stackdriver_logging_config` (`list[obj]`): Configuration options for writing logs to Stackdriver Logging. When `null`, the `stackdriver_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.stackdriver_logging_config.new](#fn-stackdriver_logging_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_tasks_queue.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_tasks_queue` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    app_engine_routing_override=null,
    name=null,
    project=null,
    rate_limits=null,
    retry_config=null,
    stackdriver_logging_config=null,
    timeouts=null
  ):: std.prune(a={
    app_engine_routing_override: app_engine_routing_override,
    location: location,
    name: name,
    project: project,
    rate_limits: rate_limits,
    retry_config: retry_config,
    stackdriver_logging_config: stackdriver_logging_config,
    timeouts: timeouts,
  }),
  rate_limits:: {
    '#new':: d.fn(help='\n`google.cloud_tasks_queue.rate_limits.new` constructs a new object with attributes and blocks configured for the `rate_limits`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_concurrent_dispatches` (`number`): The maximum number of concurrent tasks that Cloud Tasks allows to\nbe dispatched for this queue. After this threshold has been\nreached, Cloud Tasks stops dispatching tasks until the number of\nconcurrent requests decreases. When `null`, the `max_concurrent_dispatches` field will be omitted from the resulting object.\n  - `max_dispatches_per_second` (`number`): The maximum rate at which tasks are dispatched from this queue.\n\nIf unspecified when the queue is created, Cloud Tasks will pick the default. When `null`, the `max_dispatches_per_second` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `rate_limits` sub block.\n', args=[]),
    new(
      max_concurrent_dispatches=null,
      max_dispatches_per_second=null
    ):: std.prune(a={
      max_concurrent_dispatches: max_concurrent_dispatches,
      max_dispatches_per_second: max_dispatches_per_second,
    }),
  },
  retry_config:: {
    '#new':: d.fn(help='\n`google.cloud_tasks_queue.retry_config.new` constructs a new object with attributes and blocks configured for the `retry_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_attempts` (`number`): Number of attempts per task.\n\nCloud Tasks will attempt the task maxAttempts times (that is, if\nthe first attempt fails, then there will be maxAttempts - 1\nretries). Must be &gt;= -1.\n\nIf unspecified when the queue is created, Cloud Tasks will pick\nthe default.\n\n-1 indicates unlimited attempts. When `null`, the `max_attempts` field will be omitted from the resulting object.\n  - `max_backoff` (`string`): A task will be scheduled for retry between minBackoff and\nmaxBackoff duration after it fails, if the queue&#39;s RetryConfig\nspecifies that the task should be retried. When `null`, the `max_backoff` field will be omitted from the resulting object.\n  - `max_doublings` (`number`): The time between retries will double maxDoublings times.\n\nA task&#39;s retry interval starts at minBackoff, then doubles maxDoublings times,\nthen increases linearly, and finally retries retries at intervals of maxBackoff\nup to maxAttempts times. When `null`, the `max_doublings` field will be omitted from the resulting object.\n  - `max_retry_duration` (`string`): If positive, maxRetryDuration specifies the time limit for\nretrying a failed task, measured from when the task was first\nattempted. Once maxRetryDuration time has passed and the task has\nbeen attempted maxAttempts times, no further attempts will be\nmade and the task will be deleted.\n\nIf zero, then the task age is unlimited. When `null`, the `max_retry_duration` field will be omitted from the resulting object.\n  - `min_backoff` (`string`): A task will be scheduled for retry between minBackoff and\nmaxBackoff duration after it fails, if the queue&#39;s RetryConfig\nspecifies that the task should be retried. When `null`, the `min_backoff` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retry_config` sub block.\n', args=[]),
    new(
      max_attempts=null,
      max_backoff=null,
      max_doublings=null,
      max_retry_duration=null,
      min_backoff=null
    ):: std.prune(a={
      max_attempts: max_attempts,
      max_backoff: max_backoff,
      max_doublings: max_doublings,
      max_retry_duration: max_retry_duration,
      min_backoff: min_backoff,
    }),
  },
  stackdriver_logging_config:: {
    '#new':: d.fn(help='\n`google.cloud_tasks_queue.stackdriver_logging_config.new` constructs a new object with attributes and blocks configured for the `stackdriver_logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sampling_ratio` (`number`): Specifies the fraction of operations to write to Stackdriver Logging.\nThis field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the\ndefault and means that no operations are logged.\n\n**Returns**:\n  - An attribute object that represents the `stackdriver_logging_config` sub block.\n', args=[]),
    new(
      sampling_ratio
    ):: std.prune(a={
      sampling_ratio: sampling_ratio,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloud_tasks_queue.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withAppEngineRoutingOverride':: d.fn(help='`google.list[obj].withAppEngineRoutingOverride` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the app_engine_routing_override field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAppEngineRoutingOverrideMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `app_engine_routing_override` field.\n', args=[]),
  withAppEngineRoutingOverride(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          app_engine_routing_override: value,
        },
      },
    },
  },
  '#withAppEngineRoutingOverrideMixin':: d.fn(help='`google.list[obj].withAppEngineRoutingOverrideMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the app_engine_routing_override field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAppEngineRoutingOverride](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `app_engine_routing_override` field.\n', args=[]),
  withAppEngineRoutingOverrideMixin(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          app_engine_routing_override+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRateLimits':: d.fn(help='`google.list[obj].withRateLimits` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rate_limits field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRateLimitsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rate_limits` field.\n', args=[]),
  withRateLimits(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          rate_limits: value,
        },
      },
    },
  },
  '#withRateLimitsMixin':: d.fn(help='`google.list[obj].withRateLimitsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rate_limits field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRateLimits](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rate_limits` field.\n', args=[]),
  withRateLimitsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          rate_limits+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRetryConfig':: d.fn(help='`google.list[obj].withRetryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retry_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRetryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retry_config` field.\n', args=[]),
  withRetryConfig(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          retry_config: value,
        },
      },
    },
  },
  '#withRetryConfigMixin':: d.fn(help='`google.list[obj].withRetryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retry_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRetryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retry_config` field.\n', args=[]),
  withRetryConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          retry_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStackdriverLoggingConfig':: d.fn(help='`google.list[obj].withStackdriverLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stackdriver_logging_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withStackdriverLoggingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stackdriver_logging_config` field.\n', args=[]),
  withStackdriverLoggingConfig(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          stackdriver_logging_config: value,
        },
      },
    },
  },
  '#withStackdriverLoggingConfigMixin':: d.fn(help='`google.list[obj].withStackdriverLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stackdriver_logging_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withStackdriverLoggingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stackdriver_logging_config` field.\n', args=[]),
  withStackdriverLoggingConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          stackdriver_logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
