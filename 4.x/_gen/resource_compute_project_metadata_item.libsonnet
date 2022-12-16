local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    key,
    value,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_project_metadata_item',
    label=resourceLabel,
    attrs=self.newAttrs(
      key=key,
      project=project,
      timeouts=timeouts,
      value=value
    ),
    _meta=_meta
  ),
  newAttrs(
    key,
    value,
    project=null,
    timeouts=null
  ):: std.prune(a={
    key: key,
    project: project,
    timeouts: timeouts,
    value: value,
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
  withKey(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          key: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withValue(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          value: value,
        },
      },
    },
  },
}
