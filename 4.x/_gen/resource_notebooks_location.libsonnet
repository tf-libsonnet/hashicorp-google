local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_location',
    label=resourceLabel,
    attrs=self.newAttrs(name=name, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
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
  withName(resourceLabel, value):: {
    resource+: {
      google_notebooks_location+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_location+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_notebooks_location+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_location+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
