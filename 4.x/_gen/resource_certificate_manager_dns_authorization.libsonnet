local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    domain,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_dns_authorization',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      domain=domain,
      labels=labels,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    domain,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    domain: domain,
    labels: labels,
    name: name,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDomain(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          domain: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_dns_authorization+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
