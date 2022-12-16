local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    location,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_filestore_snapshot',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      instance=instance,
      labels=labels,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    location,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    instance: instance,
    labels: labels,
    location: location,
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
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_filestore_snapshot+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
