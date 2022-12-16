local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  game_server_config_overrides:: {
    new(
      config_version=null,
      realms_selector=null
    ):: std.prune(a={
      config_version: config_version,
      realms_selector: realms_selector,
    }),
    realms_selector:: {
      new(
        realms=null
      ):: std.prune(a={
        realms: realms,
      }),
    },
  },
  new(
    resourceLabel,
    default_game_server_config,
    deployment_id,
    game_server_config_overrides=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_game_server_deployment_rollout',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_game_server_config=default_game_server_config,
      deployment_id=deployment_id,
      game_server_config_overrides=game_server_config_overrides,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    default_game_server_config,
    deployment_id,
    game_server_config_overrides=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    default_game_server_config: default_game_server_config,
    deployment_id: deployment_id,
    game_server_config_overrides: game_server_config_overrides,
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
  withDefaultGameServerConfig(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          default_game_server_config: value,
        },
      },
    },
  },
  withDeploymentId(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          deployment_id: value,
        },
      },
    },
  },
  withGameServerConfigOverrides(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          game_server_config_overrides: value,
        },
      },
    },
  },
  withGameServerConfigOverridesMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          game_server_config_overrides+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
