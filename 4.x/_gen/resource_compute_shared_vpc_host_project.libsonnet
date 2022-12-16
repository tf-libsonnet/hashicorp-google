local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    project,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_shared_vpc_host_project',
    label=resourceLabel,
    attrs=self.newAttrs(project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    project,
    timeouts=null
  ):: std.prune(a={
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
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_host_project+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_host_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_host_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
