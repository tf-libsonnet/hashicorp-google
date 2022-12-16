local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  managed:: {
    new(
      dns_authorizations=null,
      domains=null
    ):: std.prune(a={
      dns_authorizations: dns_authorizations,
      domains: domains,
    }),
  },
  new(
    resourceLabel,
    name,
    description=null,
    labels=null,
    managed=null,
    project=null,
    scope=null,
    self_managed=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      managed=managed,
      name=name,
      project=project,
      scope=scope,
      self_managed=self_managed,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    labels=null,
    managed=null,
    project=null,
    scope=null,
    self_managed=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    managed: managed,
    name: name,
    project: project,
    scope: scope,
    self_managed: self_managed,
    timeouts: timeouts,
  }),
  self_managed:: {
    new(
      certificate_pem=null,
      pem_certificate=null,
      pem_private_key=null,
      private_key_pem=null
    ):: std.prune(a={
      certificate_pem: certificate_pem,
      pem_certificate: pem_certificate,
      pem_private_key: pem_private_key,
      private_key_pem: private_key_pem,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withManaged(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          managed: value,
        },
      },
    },
  },
  withManagedMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          managed+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withScope(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          scope: value,
        },
      },
    },
  },
  withSelfManaged(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          self_managed: value,
        },
      },
    },
  },
  withSelfManagedMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          self_managed+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
