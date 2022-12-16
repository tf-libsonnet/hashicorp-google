local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    perimeter_name,
    resource,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_service_perimeter_resource',
    label=resourceLabel,
    attrs=self.newAttrs(perimeter_name=perimeter_name, resource=resource, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    perimeter_name,
    resource,
    timeouts=null
  ):: std.prune(a={
    perimeter_name: perimeter_name,
    resource: resource,
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
  withPerimeterName(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter_resource+: {
        [resourceLabel]+: {
          perimeter_name: value,
        },
      },
    },
  },
  withResource(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter_resource+: {
        [resourceLabel]+: {
          resource: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter_resource+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter_resource+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
