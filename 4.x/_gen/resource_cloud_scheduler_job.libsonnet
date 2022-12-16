local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  app_engine_http_target:: {
    app_engine_routing:: {
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
      relative_uri,
      app_engine_routing=null,
      body=null,
      headers=null,
      http_method=null
    ):: std.prune(a={
      app_engine_routing: app_engine_routing,
      body: body,
      headers: headers,
      http_method: http_method,
      relative_uri: relative_uri,
    }),
  },
  http_target:: {
    new(
      uri,
      body=null,
      headers=null,
      http_method=null,
      oauth_token=null,
      oidc_token=null
    ):: std.prune(a={
      body: body,
      headers: headers,
      http_method: http_method,
      oauth_token: oauth_token,
      oidc_token: oidc_token,
      uri: uri,
    }),
    oauth_token:: {
      new(
        service_account_email,
        scope=null
      ):: std.prune(a={
        scope: scope,
        service_account_email: service_account_email,
      }),
    },
    oidc_token:: {
      new(
        service_account_email,
        audience=null
      ):: std.prune(a={
        audience: audience,
        service_account_email: service_account_email,
      }),
    },
  },
  new(
    resourceLabel,
    name,
    app_engine_http_target=null,
    attempt_deadline=null,
    description=null,
    http_target=null,
    paused=null,
    project=null,
    pubsub_target=null,
    region=null,
    retry_config=null,
    schedule=null,
    time_zone=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_scheduler_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine_http_target=app_engine_http_target,
      attempt_deadline=attempt_deadline,
      description=description,
      http_target=http_target,
      name=name,
      paused=paused,
      project=project,
      pubsub_target=pubsub_target,
      region=region,
      retry_config=retry_config,
      schedule=schedule,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    app_engine_http_target=null,
    attempt_deadline=null,
    description=null,
    http_target=null,
    paused=null,
    project=null,
    pubsub_target=null,
    region=null,
    retry_config=null,
    schedule=null,
    time_zone=null,
    timeouts=null
  ):: std.prune(a={
    app_engine_http_target: app_engine_http_target,
    attempt_deadline: attempt_deadline,
    description: description,
    http_target: http_target,
    name: name,
    paused: paused,
    project: project,
    pubsub_target: pubsub_target,
    region: region,
    retry_config: retry_config,
    schedule: schedule,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  pubsub_target:: {
    new(
      topic_name,
      attributes=null,
      data=null
    ):: std.prune(a={
      attributes: attributes,
      data: data,
      topic_name: topic_name,
    }),
  },
  retry_config:: {
    new(
      max_backoff_duration=null,
      max_doublings=null,
      max_retry_duration=null,
      min_backoff_duration=null,
      retry_count=null
    ):: std.prune(a={
      max_backoff_duration: max_backoff_duration,
      max_doublings: max_doublings,
      max_retry_duration: max_retry_duration,
      min_backoff_duration: min_backoff_duration,
      retry_count: retry_count,
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
  withAppEngineHttpTarget(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          app_engine_http_target: value,
        },
      },
    },
  },
  withAppEngineHttpTargetMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          app_engine_http_target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAttemptDeadline(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          attempt_deadline: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withHttpTarget(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          http_target: value,
        },
      },
    },
  },
  withHttpTargetMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          http_target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPaused(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          paused: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPubsubTarget(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          pubsub_target: value,
        },
      },
    },
  },
  withPubsubTargetMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          pubsub_target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRetryConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          retry_config: value,
        },
      },
    },
  },
  withRetryConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          retry_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSchedule(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          schedule: value,
        },
      },
    },
  },
  withTimeZone(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_scheduler_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
