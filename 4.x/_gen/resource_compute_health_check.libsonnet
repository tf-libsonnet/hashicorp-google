local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  grpc_health_check:: {
    new(
      grpc_service_name=null,
      port=null,
      port_name=null,
      port_specification=null
    ):: std.prune(a={
      grpc_service_name: grpc_service_name,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
    }),
  },
  http2_health_check:: {
    new(
      host=null,
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request_path=null,
      response=null
    ):: std.prune(a={
      host: host,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request_path: request_path,
      response: response,
    }),
  },
  http_health_check:: {
    new(
      host=null,
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request_path=null,
      response=null
    ):: std.prune(a={
      host: host,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request_path: request_path,
      response: response,
    }),
  },
  https_health_check:: {
    new(
      host=null,
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request_path=null,
      response=null
    ):: std.prune(a={
      host: host,
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request_path: request_path,
      response: response,
    }),
  },
  log_config:: {
    new(
      enable=null
    ):: std.prune(a={
      enable: enable,
    }),
  },
  new(
    resourceLabel,
    name,
    check_interval_sec=null,
    description=null,
    grpc_health_check=null,
    healthy_threshold=null,
    http2_health_check=null,
    http_health_check=null,
    https_health_check=null,
    log_config=null,
    project=null,
    ssl_health_check=null,
    tcp_health_check=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_health_check',
    label=resourceLabel,
    attrs=self.newAttrs(
      check_interval_sec=check_interval_sec,
      description=description,
      grpc_health_check=grpc_health_check,
      healthy_threshold=healthy_threshold,
      http2_health_check=http2_health_check,
      http_health_check=http_health_check,
      https_health_check=https_health_check,
      log_config=log_config,
      name=name,
      project=project,
      ssl_health_check=ssl_health_check,
      tcp_health_check=tcp_health_check,
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
    grpc_health_check=null,
    healthy_threshold=null,
    http2_health_check=null,
    http_health_check=null,
    https_health_check=null,
    log_config=null,
    project=null,
    ssl_health_check=null,
    tcp_health_check=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null
  ):: std.prune(a={
    check_interval_sec: check_interval_sec,
    description: description,
    grpc_health_check: grpc_health_check,
    healthy_threshold: healthy_threshold,
    http2_health_check: http2_health_check,
    http_health_check: http_health_check,
    https_health_check: https_health_check,
    log_config: log_config,
    name: name,
    project: project,
    ssl_health_check: ssl_health_check,
    tcp_health_check: tcp_health_check,
    timeout_sec: timeout_sec,
    timeouts: timeouts,
    unhealthy_threshold: unhealthy_threshold,
  }),
  ssl_health_check:: {
    new(
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request=null,
      response=null
    ):: std.prune(a={
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request: request,
      response: response,
    }),
  },
  tcp_health_check:: {
    new(
      port=null,
      port_name=null,
      port_specification=null,
      proxy_header=null,
      request=null,
      response=null
    ):: std.prune(a={
      port: port,
      port_name: port_name,
      port_specification: port_specification,
      proxy_header: proxy_header,
      request: request,
      response: response,
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
  withCheckIntervalSec(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          check_interval_sec: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withGrpcHealthCheck(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          grpc_health_check: value,
        },
      },
    },
  },
  withGrpcHealthCheckMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          grpc_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHealthyThreshold(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          healthy_threshold: value,
        },
      },
    },
  },
  withHttp2HealthCheck(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          http2_health_check: value,
        },
      },
    },
  },
  withHttp2HealthCheckMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          http2_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHttpHealthCheck(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          http_health_check: value,
        },
      },
    },
  },
  withHttpHealthCheckMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          http_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHttpsHealthCheck(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          https_health_check: value,
        },
      },
    },
  },
  withHttpsHealthCheckMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          https_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLogConfig(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  withLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSslHealthCheck(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          ssl_health_check: value,
        },
      },
    },
  },
  withSslHealthCheckMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          ssl_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTcpHealthCheck(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          tcp_health_check: value,
        },
      },
    },
  },
  withTcpHealthCheckMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          tcp_health_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          timeout_sec: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUnhealthyThreshold(resourceLabel, value):: {
    resource+: {
      google_compute_health_check+: {
        [resourceLabel]+: {
          unhealthy_threshold: value,
        },
      },
    },
  },
}
