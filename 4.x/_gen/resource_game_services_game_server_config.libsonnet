local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  fleet_configs:: {
    new(
      fleet_spec,
      name=null
    ):: std.prune(a={
      fleet_spec: fleet_spec,
      name: name,
    }),
  },
  new(
    resourceLabel,
    config_id,
    deployment_id,
    description=null,
    fleet_configs=null,
    labels=null,
    location=null,
    project=null,
    scaling_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_game_server_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      config_id=config_id,
      deployment_id=deployment_id,
      description=description,
      fleet_configs=fleet_configs,
      labels=labels,
      location=location,
      project=project,
      scaling_configs=scaling_configs,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    config_id,
    deployment_id,
    description=null,
    fleet_configs=null,
    labels=null,
    location=null,
    project=null,
    scaling_configs=null,
    timeouts=null
  ):: std.prune(a={
    config_id: config_id,
    deployment_id: deployment_id,
    description: description,
    fleet_configs: fleet_configs,
    labels: labels,
    location: location,
    project: project,
    scaling_configs: scaling_configs,
    timeouts: timeouts,
  }),
  scaling_configs:: {
    new(
      fleet_autoscaler_spec,
      name,
      schedules=null,
      selectors=null
    ):: std.prune(a={
      fleet_autoscaler_spec: fleet_autoscaler_spec,
      name: name,
      schedules: schedules,
      selectors: selectors,
    }),
    schedules:: {
      new(
        cron_job_duration=null,
        cron_spec=null,
        end_time=null,
        start_time=null
      ):: std.prune(a={
        cron_job_duration: cron_job_duration,
        cron_spec: cron_spec,
        end_time: end_time,
        start_time: start_time,
      }),
    },
    selectors:: {
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withConfigId(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          config_id: value,
        },
      },
    },
  },
  withDeploymentId(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          deployment_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFleetConfigs(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          fleet_configs: value,
        },
      },
    },
  },
  withFleetConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          fleet_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withScalingConfigs(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          scaling_configs: value,
        },
      },
    },
  },
  withScalingConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          scaling_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
