local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  managed:: {
    new(
      domains
    ):: std.prune(a={
      domains: domains,
    }),
  },
  new(
    resourceLabel,
    certificate_id=null,
    description=null,
    managed=null,
    name=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_managed_ssl_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_id=certificate_id,
      description=description,
      managed=managed,
      name=name,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    certificate_id=null,
    description=null,
    managed=null,
    name=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    certificate_id: certificate_id,
    description: description,
    managed: managed,
    name: name,
    project: project,
    timeouts: timeouts,
    type: type,
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
  withCertificateId(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          certificate_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withManaged(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          managed: value,
        },
      },
    },
  },
  withManagedMixin(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          managed+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
