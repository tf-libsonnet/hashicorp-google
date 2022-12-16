local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    host_project,
    service_project,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_shared_vpc_service_project',
    label=resourceLabel,
    attrs=self.newAttrs(host_project=host_project, service_project=service_project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    host_project,
    service_project,
    timeouts=null
  ):: std.prune(a={
    host_project: host_project,
    service_project: service_project,
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
  withHostProject(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          host_project: value,
        },
      },
    },
  },
  withServiceProject(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          service_project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
