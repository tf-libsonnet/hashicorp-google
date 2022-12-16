local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    certificate,
    private_key,
    description=null,
    name=null,
    name_prefix=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_ssl_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate=certificate,
      description=description,
      name=name,
      name_prefix=name_prefix,
      private_key=private_key,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    certificate,
    private_key,
    description=null,
    name=null,
    name_prefix=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    certificate: certificate,
    description: description,
    name: name,
    name_prefix: name_prefix,
    private_key: private_key,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withCertificate(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          certificate: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNamePrefix(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  withPrivateKey(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          private_key: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
