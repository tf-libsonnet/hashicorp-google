local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    url_map,
    description=null,
    project=null,
    proxy_bind=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_http_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      project=project,
      proxy_bind=proxy_bind,
      timeouts=timeouts,
      url_map=url_map
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    url_map,
    description=null,
    project=null,
    proxy_bind=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
    proxy_bind: proxy_bind,
    timeouts: timeouts,
    url_map: url_map,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProxyBind(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          proxy_bind: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUrlMap(resourceLabel, value):: {
    resource+: {
      google_compute_target_http_proxy+: {
        [resourceLabel]+: {
          url_map: value,
        },
      },
    },
  },
}
