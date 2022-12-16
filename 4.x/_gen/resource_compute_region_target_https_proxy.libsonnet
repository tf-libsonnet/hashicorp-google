local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    ssl_certificates,
    url_map,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_target_https_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      project=project,
      region=region,
      ssl_certificates=ssl_certificates,
      timeouts=timeouts,
      url_map=url_map
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    ssl_certificates,
    url_map,
    description=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
    region: region,
    ssl_certificates: ssl_certificates,
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
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSslCertificates(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          ssl_certificates: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUrlMap(resourceLabel, value):: {
    resource+: {
      google_compute_region_target_https_proxy+: {
        [resourceLabel]+: {
          url_map: value,
        },
      },
    },
  },
}
