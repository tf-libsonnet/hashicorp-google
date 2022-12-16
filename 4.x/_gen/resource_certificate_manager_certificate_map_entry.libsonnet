local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    certificates,
    map,
    name,
    description=null,
    hostname=null,
    labels=null,
    matcher=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_certificate_map_entry',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificates=certificates,
      description=description,
      hostname=hostname,
      labels=labels,
      map=map,
      matcher=matcher,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    certificates,
    map,
    name,
    description=null,
    hostname=null,
    labels=null,
    matcher=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    certificates: certificates,
    description: description,
    hostname: hostname,
    labels: labels,
    map: map,
    matcher: matcher,
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
  withCertificates(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          certificates: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withHostname(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          hostname: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMap(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          map: value,
        },
      },
    },
  },
  withMatcher(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          matcher: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
