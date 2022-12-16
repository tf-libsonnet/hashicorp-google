local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    application_id,
    location,
    name,
    tenant_id,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_azure_client',
    label=resourceLabel,
    attrs=self.newAttrs(
      application_id=application_id,
      location=location,
      name=name,
      project=project,
      tenant_id=tenant_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    application_id,
    location,
    name,
    tenant_id,
    project=null,
    timeouts=null
  ):: std.prune(a={
    application_id: application_id,
    location: location,
    name: name,
    project: project,
    tenant_id: tenant_id,
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
  withApplicationId(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          application_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTenantId(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          tenant_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
