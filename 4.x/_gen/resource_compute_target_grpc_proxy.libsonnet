local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    description=null,
    project=null,
    timeouts=null,
    url_map=null,
    validate_for_proxyless=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_grpc_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      project=project,
      timeouts=timeouts,
      url_map=url_map,
      validate_for_proxyless=validate_for_proxyless
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    project=null,
    timeouts=null,
    url_map=null,
    validate_for_proxyless=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
    timeouts: timeouts,
    url_map: url_map,
    validate_for_proxyless: validate_for_proxyless,
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
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUrlMap(resourceLabel, value):: {
    resource+: {
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          url_map: value,
        },
      },
    },
  },
  withValidateForProxyless(resourceLabel, value):: {
    resource+: {
      google_compute_target_grpc_proxy+: {
        [resourceLabel]+: {
          validate_for_proxyless: value,
        },
      },
    },
  },
}
