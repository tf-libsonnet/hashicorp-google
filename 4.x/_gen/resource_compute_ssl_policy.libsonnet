local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    custom_features=null,
    description=null,
    min_tls_version=null,
    profile=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_ssl_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      custom_features=custom_features,
      description=description,
      min_tls_version=min_tls_version,
      name=name,
      profile=profile,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    custom_features=null,
    description=null,
    min_tls_version=null,
    profile=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    custom_features: custom_features,
    description: description,
    min_tls_version: min_tls_version,
    name: name,
    profile: profile,
    project: project,
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
  withCustomFeatures(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          custom_features: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withMinTlsVersion(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          min_tls_version: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProfile(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          profile: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
