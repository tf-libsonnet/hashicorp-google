local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    service,
    disable_dependent_services=null,
    disable_on_destroy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      disable_dependent_services=disable_dependent_services,
      disable_on_destroy=disable_on_destroy,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service,
    disable_dependent_services=null,
    disable_on_destroy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    disable_dependent_services: disable_dependent_services,
    disable_on_destroy: disable_on_destroy,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  withDisableDependentServices(resourceLabel, value):: {
    resource+: {
      google_project_service+: {
        [resourceLabel]+: {
          disable_dependent_services: value,
        },
      },
    },
  },
  withDisableOnDestroy(resourceLabel, value):: {
    resource+: {
      google_project_service+: {
        [resourceLabel]+: {
          disable_on_destroy: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_project_service+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
