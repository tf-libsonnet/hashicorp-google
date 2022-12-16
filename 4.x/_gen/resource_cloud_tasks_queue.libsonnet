local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  app_engine_routing_override:: {
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
    new(
      max_concurrent_dispatches=null,
      max_dispatches_per_second=null
    ):: std.prune(a={
      max_concurrent_dispatches: max_concurrent_dispatches,
      max_dispatches_per_second: max_dispatches_per_second,
    }),
  },
  retry_config:: {
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
    new(
      sampling_ratio
    ):: std.prune(a={
      sampling_ratio: sampling_ratio,
    }),
  },
  timeouts:: {
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
  withAppEngineRoutingOverride(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          app_engine_routing_override: value,
        },
      },
    },
  },
  withAppEngineRoutingOverrideMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          app_engine_routing_override+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRateLimits(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          rate_limits: value,
        },
      },
    },
  },
  withRateLimitsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          rate_limits+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRetryConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          retry_config: value,
        },
      },
    },
  },
  withRetryConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          retry_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStackdriverLoggingConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          stackdriver_logging_config: value,
        },
      },
    },
  },
  withStackdriverLoggingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          stackdriver_logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_tasks_queue+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
