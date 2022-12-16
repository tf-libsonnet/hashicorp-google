local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    url_map,
    certificate_map=null,
    description=null,
    project=null,
    proxy_bind=null,
    quic_override=null,
    ssl_certificates=null,
    ssl_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_https_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_map=certificate_map,
      description=description,
      name=name,
      project=project,
      proxy_bind=proxy_bind,
      quic_override=quic_override,
      ssl_certificates=ssl_certificates,
      ssl_policy=ssl_policy,
      timeouts=timeouts,
      url_map=url_map
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    url_map,
    certificate_map=null,
    description=null,
    project=null,
    proxy_bind=null,
    quic_override=null,
    ssl_certificates=null,
    ssl_policy=null,
    timeouts=null
  ):: std.prune(a={
    certificate_map: certificate_map,
    description: description,
    name: name,
    project: project,
    proxy_bind: proxy_bind,
    quic_override: quic_override,
    ssl_certificates: ssl_certificates,
    ssl_policy: ssl_policy,
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
  withCertificateMap(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          certificate_map: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProxyBind(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          proxy_bind: value,
        },
      },
    },
  },
  withQuicOverride(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          quic_override: value,
        },
      },
    },
  },
  withSslCertificates(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          ssl_certificates: value,
        },
      },
    },
  },
  withSslPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          ssl_policy: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUrlMap(resourceLabel, value):: {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          url_map: value,
        },
      },
    },
  },
}
