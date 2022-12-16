local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    metadata,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_project_metadata',
    label=resourceLabel,
    attrs=self.newAttrs(metadata=metadata, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    metadata,
    project=null,
    timeouts=null
  ):: std.prune(a={
    metadata: metadata,
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
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
