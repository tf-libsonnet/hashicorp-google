local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    backend_service,
    name,
    description=null,
    project=null,
    proxy_bind=null,
    proxy_header=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_tcp_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_service=backend_service,
      description=description,
      name=name,
      project=project,
      proxy_bind=proxy_bind,
      proxy_header=proxy_header,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    backend_service,
    name,
    description=null,
    project=null,
    proxy_bind=null,
    proxy_header=null,
    timeouts=null
  ):: std.prune(a={
    backend_service: backend_service,
    description: description,
    name: name,
    project: project,
    proxy_bind: proxy_bind,
    proxy_header: proxy_header,
    timeouts: timeouts,
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
  withBackendService(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          backend_service: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProxyBind(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          proxy_bind: value,
        },
      },
    },
  },
  withProxyHeader(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          proxy_header: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_tcp_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
