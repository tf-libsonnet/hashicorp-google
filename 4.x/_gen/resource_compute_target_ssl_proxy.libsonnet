local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    backend_service,
    name,
    certificate_map=null,
    description=null,
    project=null,
    proxy_header=null,
    ssl_certificates=null,
    ssl_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_ssl_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_service=backend_service,
      certificate_map=certificate_map,
      description=description,
      name=name,
      project=project,
      proxy_header=proxy_header,
      ssl_certificates=ssl_certificates,
      ssl_policy=ssl_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    backend_service,
    name,
    certificate_map=null,
    description=null,
    project=null,
    proxy_header=null,
    ssl_certificates=null,
    ssl_policy=null,
    timeouts=null
  ):: std.prune(a={
    backend_service: backend_service,
    certificate_map: certificate_map,
    description: description,
    name: name,
    project: project,
    proxy_header: proxy_header,
    ssl_certificates: ssl_certificates,
    ssl_policy: ssl_policy,
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
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          backend_service: value,
        },
      },
    },
  },
  withCertificateMap(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          certificate_map: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProxyHeader(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          proxy_header: value,
        },
      },
    },
  },
  withSslCertificates(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          ssl_certificates: value,
        },
      },
    },
  },
  withSslPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          ssl_policy: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_ssl_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
