local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    check_interval_sec=null,
    description=null,
    healthy_threshold=null,
    host=null,
    port=null,
    project=null,
    request_path=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_http_health_check',
    label=resourceLabel,
    attrs=self.newAttrs(
      check_interval_sec=check_interval_sec,
      description=description,
      healthy_threshold=healthy_threshold,
      host=host,
      name=name,
      port=port,
      project=project,
      request_path=request_path,
      timeout_sec=timeout_sec,
      timeouts=timeouts,
      unhealthy_threshold=unhealthy_threshold
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    check_interval_sec=null,
    description=null,
    healthy_threshold=null,
    host=null,
    port=null,
    project=null,
    request_path=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null
  ):: std.prune(a={
    check_interval_sec: check_interval_sec,
    description: description,
    healthy_threshold: healthy_threshold,
    host: host,
    name: name,
    port: port,
    project: project,
    request_path: request_path,
    timeout_sec: timeout_sec,
    timeouts: timeouts,
    unhealthy_threshold: unhealthy_threshold,
  }),
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
  withCheckIntervalSec(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          check_interval_sec: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withHealthyThreshold(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          healthy_threshold: value,
        },
      },
    },
  },
  withHost(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRequestPath(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          request_path: value,
        },
      },
    },
  },
  withTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          timeout_sec: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUnhealthyThreshold(resourceLabel, value):: {
    resource+: {
      google_compute_http_health_check+: {
        [resourceLabel]+: {
          unhealthy_threshold: value,
        },
      },
    },
  },
}
