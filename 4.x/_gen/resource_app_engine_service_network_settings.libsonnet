local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  network_settings:: {
    new(
      ingress_traffic_allowed=null
    ):: std.prune(a={
      ingress_traffic_allowed: ingress_traffic_allowed,
    }),
  },
  new(
    resourceLabel,
    service,
    network_settings=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_service_network_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      network_settings=network_settings,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service,
    network_settings=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    network_settings: network_settings,
    project: project,
    service: service,
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
  withNetworkSettings(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          network_settings: value,
        },
      },
    },
  },
  withNetworkSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          network_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
