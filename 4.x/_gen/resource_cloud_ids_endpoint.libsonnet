local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    network,
    severity,
    description=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_ids_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      location=location,
      name=name,
      network=network,
      project=project,
      severity=severity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    network,
    severity,
    description=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    location: location,
    name: name,
    network: network,
    project: project,
    severity: severity,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSeverity(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          severity: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
