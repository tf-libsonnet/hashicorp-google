local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  api_config:: {
    new(
      script,
      auth_fail_action=null,
      login=null,
      security_level=null,
      url=null
    ):: std.prune(a={
      auth_fail_action: auth_fail_action,
      login: login,
      script: script,
      security_level: security_level,
      url: url,
    }),
  },
  automatic_scaling:: {
    cpu_utilization:: {
      new(
        target_utilization,
        aggregation_window_length=null
      ):: std.prune(a={
        aggregation_window_length: aggregation_window_length,
        target_utilization: target_utilization,
      }),
    },
    disk_utilization:: {
      new(
        target_read_bytes_per_second=null,
        target_read_ops_per_second=null,
        target_write_bytes_per_second=null,
        target_write_ops_per_second=null
      ):: std.prune(a={
        target_read_bytes_per_second: target_read_bytes_per_second,
        target_read_ops_per_second: target_read_ops_per_second,
        target_write_bytes_per_second: target_write_bytes_per_second,
        target_write_ops_per_second: target_write_ops_per_second,
      }),
    },
    network_utilization:: {
      new(
        target_received_bytes_per_second=null,
        target_received_packets_per_second=null,
        target_sent_bytes_per_second=null,
        target_sent_packets_per_second=null
      ):: std.prune(a={
        target_received_bytes_per_second: target_received_bytes_per_second,
        target_received_packets_per_second: target_received_packets_per_second,
        target_sent_bytes_per_second: target_sent_bytes_per_second,
        target_sent_packets_per_second: target_sent_packets_per_second,
      }),
    },
    new(
      cool_down_period=null,
      cpu_utilization=null,
      disk_utilization=null,
      max_concurrent_requests=null,
      max_idle_instances=null,
      max_pending_latency=null,
      max_total_instances=null,
      min_idle_instances=null,
      min_pending_latency=null,
      min_total_instances=null,
      network_utilization=null,
      request_utilization=null
    ):: std.prune(a={
      cool_down_period: cool_down_period,
      cpu_utilization: cpu_utilization,
      disk_utilization: disk_utilization,
      max_concurrent_requests: max_concurrent_requests,
      max_idle_instances: max_idle_instances,
      max_pending_latency: max_pending_latency,
      max_total_instances: max_total_instances,
      min_idle_instances: min_idle_instances,
      min_pending_latency: min_pending_latency,
      min_total_instances: min_total_instances,
      network_utilization: network_utilization,
      request_utilization: request_utilization,
    }),
    request_utilization:: {
      new(
        target_concurrent_requests=null,
        target_request_count_per_second=null
      ):: std.prune(a={
        target_concurrent_requests: target_concurrent_requests,
        target_request_count_per_second: target_request_count_per_second,
      }),
    },
  },
  deployment:: {
    cloud_build_options:: {
      new(
        app_yaml_path,
        cloud_build_timeout=null
      ):: std.prune(a={
        app_yaml_path: app_yaml_path,
        cloud_build_timeout: cloud_build_timeout,
      }),
    },
    container:: {
      new(
        image
      ):: std.prune(a={
        image: image,
      }),
    },
    files:: {
      new(
        name,
        source_url,
        sha1_sum=null
      ):: std.prune(a={
        name: name,
        sha1_sum: sha1_sum,
        source_url: source_url,
      }),
    },
    new(
      cloud_build_options=null,
      container=null,
      files=null,
      zip=null
    ):: std.prune(a={
      cloud_build_options: cloud_build_options,
      container: container,
      files: files,
      zip: zip,
    }),
    zip:: {
      new(
        source_url,
        files_count=null
      ):: std.prune(a={
        files_count: files_count,
        source_url: source_url,
      }),
    },
  },
  endpoints_api_service:: {
    new(
      name,
      config_id=null,
      disable_trace_sampling=null,
      rollout_strategy=null
    ):: std.prune(a={
      config_id: config_id,
      disable_trace_sampling: disable_trace_sampling,
      name: name,
      rollout_strategy: rollout_strategy,
    }),
  },
  entrypoint:: {
    new(
      shell
    ):: std.prune(a={
      shell: shell,
    }),
  },
  handlers:: {
    new(
      auth_fail_action=null,
      login=null,
      redirect_http_response_code=null,
      script=null,
      security_level=null,
      static_files=null,
      url_regex=null
    ):: std.prune(a={
      auth_fail_action: auth_fail_action,
      login: login,
      redirect_http_response_code: redirect_http_response_code,
      script: script,
      security_level: security_level,
      static_files: static_files,
      url_regex: url_regex,
    }),
    script:: {
      new(
        script_path
      ):: std.prune(a={
        script_path: script_path,
      }),
    },
    static_files:: {
      new(
        application_readable=null,
        expiration=null,
        http_headers=null,
        mime_type=null,
        path=null,
        require_matching_file=null,
        upload_path_regex=null
      ):: std.prune(a={
        application_readable: application_readable,
        expiration: expiration,
        http_headers: http_headers,
        mime_type: mime_type,
        path: path,
        require_matching_file: require_matching_file,
        upload_path_regex: upload_path_regex,
      }),
    },
  },
  liveness_check:: {
    new(
      path,
      check_interval=null,
      failure_threshold=null,
      host=null,
      initial_delay=null,
      success_threshold=null,
      timeout=null
    ):: std.prune(a={
      check_interval: check_interval,
      failure_threshold: failure_threshold,
      host: host,
      initial_delay: initial_delay,
      path: path,
      success_threshold: success_threshold,
      timeout: timeout,
    }),
  },
  manual_scaling:: {
    new(
      instances
    ):: std.prune(a={
      instances: instances,
    }),
  },
  network:: {
    new(
      name,
      forwarded_ports=null,
      instance_tag=null,
      session_affinity=null,
      subnetwork=null
    ):: std.prune(a={
      forwarded_ports: forwarded_ports,
      instance_tag: instance_tag,
      name: name,
      session_affinity: session_affinity,
      subnetwork: subnetwork,
    }),
  },
  new(
    resourceLabel,
    runtime,
    service,
    api_config=null,
    automatic_scaling=null,
    beta_settings=null,
    default_expiration=null,
    delete_service_on_destroy=null,
    deployment=null,
    endpoints_api_service=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    liveness_check=null,
    manual_scaling=null,
    network=null,
    nobuild_files_regex=null,
    noop_on_destroy=null,
    project=null,
    readiness_check=null,
    resources=null,
    runtime_api_version=null,
    runtime_channel=null,
    runtime_main_executable_path=null,
    service_account=null,
    serving_status=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_flexible_app_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_config=api_config,
      automatic_scaling=automatic_scaling,
      beta_settings=beta_settings,
      default_expiration=default_expiration,
      delete_service_on_destroy=delete_service_on_destroy,
      deployment=deployment,
      endpoints_api_service=endpoints_api_service,
      entrypoint=entrypoint,
      env_variables=env_variables,
      handlers=handlers,
      inbound_services=inbound_services,
      instance_class=instance_class,
      liveness_check=liveness_check,
      manual_scaling=manual_scaling,
      network=network,
      nobuild_files_regex=nobuild_files_regex,
      noop_on_destroy=noop_on_destroy,
      project=project,
      readiness_check=readiness_check,
      resources=resources,
      runtime=runtime,
      runtime_api_version=runtime_api_version,
      runtime_channel=runtime_channel,
      runtime_main_executable_path=runtime_main_executable_path,
      service=service,
      service_account=service_account,
      serving_status=serving_status,
      timeouts=timeouts,
      version_id=version_id,
      vpc_access_connector=vpc_access_connector
    ),
    _meta=_meta
  ),
  newAttrs(
    runtime,
    service,
    api_config=null,
    automatic_scaling=null,
    beta_settings=null,
    default_expiration=null,
    delete_service_on_destroy=null,
    deployment=null,
    endpoints_api_service=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    liveness_check=null,
    manual_scaling=null,
    network=null,
    nobuild_files_regex=null,
    noop_on_destroy=null,
    project=null,
    readiness_check=null,
    resources=null,
    runtime_api_version=null,
    runtime_channel=null,
    runtime_main_executable_path=null,
    service_account=null,
    serving_status=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null
  ):: std.prune(a={
    api_config: api_config,
    automatic_scaling: automatic_scaling,
    beta_settings: beta_settings,
    default_expiration: default_expiration,
    delete_service_on_destroy: delete_service_on_destroy,
    deployment: deployment,
    endpoints_api_service: endpoints_api_service,
    entrypoint: entrypoint,
    env_variables: env_variables,
    handlers: handlers,
    inbound_services: inbound_services,
    instance_class: instance_class,
    liveness_check: liveness_check,
    manual_scaling: manual_scaling,
    network: network,
    nobuild_files_regex: nobuild_files_regex,
    noop_on_destroy: noop_on_destroy,
    project: project,
    readiness_check: readiness_check,
    resources: resources,
    runtime: runtime,
    runtime_api_version: runtime_api_version,
    runtime_channel: runtime_channel,
    runtime_main_executable_path: runtime_main_executable_path,
    service: service,
    service_account: service_account,
    serving_status: serving_status,
    timeouts: timeouts,
    version_id: version_id,
    vpc_access_connector: vpc_access_connector,
  }),
  readiness_check:: {
    new(
      path,
      app_start_timeout=null,
      check_interval=null,
      failure_threshold=null,
      host=null,
      success_threshold=null,
      timeout=null
    ):: std.prune(a={
      app_start_timeout: app_start_timeout,
      check_interval: check_interval,
      failure_threshold: failure_threshold,
      host: host,
      path: path,
      success_threshold: success_threshold,
      timeout: timeout,
    }),
  },
  resources:: {
    new(
      cpu=null,
      disk_gb=null,
      memory_gb=null,
      volumes=null
    ):: std.prune(a={
      cpu: cpu,
      disk_gb: disk_gb,
      memory_gb: memory_gb,
      volumes: volumes,
    }),
    volumes:: {
      new(
        name,
        size_gb,
        volume_type
      ):: std.prune(a={
        name: name,
        size_gb: size_gb,
        volume_type: volume_type,
      }),
    },
  },
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
  vpc_access_connector:: {
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  withApiConfig(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          api_config: value,
        },
      },
    },
  },
  withApiConfigMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          api_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAutomaticScaling(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          automatic_scaling: value,
        },
      },
    },
  },
  withAutomaticScalingMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          automatic_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBetaSettings(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          beta_settings: value,
        },
      },
    },
  },
  withDefaultExpiration(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          default_expiration: value,
        },
      },
    },
  },
  withDeleteServiceOnDestroy(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          delete_service_on_destroy: value,
        },
      },
    },
  },
  withDeployment(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          deployment: value,
        },
      },
    },
  },
  withDeploymentMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          deployment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEndpointsApiService(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          endpoints_api_service: value,
        },
      },
    },
  },
  withEndpointsApiServiceMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          endpoints_api_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEntrypoint(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          entrypoint: value,
        },
      },
    },
  },
  withEntrypointMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          entrypoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnvVariables(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          env_variables: value,
        },
      },
    },
  },
  withHandlers(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          handlers: value,
        },
      },
    },
  },
  withHandlersMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInboundServices(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          inbound_services: value,
        },
      },
    },
  },
  withInstanceClass(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          instance_class: value,
        },
      },
    },
  },
  withLivenessCheck(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          liveness_check: value,
        },
      },
    },
  },
  withLivenessCheckMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          liveness_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withManualScaling(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          manual_scaling: value,
        },
      },
    },
  },
  withManualScalingMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          manual_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          network+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNobuildFilesRegex(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          nobuild_files_regex: value,
        },
      },
    },
  },
  withNoopOnDestroy(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          noop_on_destroy: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReadinessCheck(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          readiness_check: value,
        },
      },
    },
  },
  withReadinessCheckMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          readiness_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withResources(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          resources: value,
        },
      },
    },
  },
  withResourcesMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          resources+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRuntime(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime: value,
        },
      },
    },
  },
  withRuntimeApiVersion(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime_api_version: value,
        },
      },
    },
  },
  withRuntimeChannel(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime_channel: value,
        },
      },
    },
  },
  withRuntimeMainExecutablePath(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          runtime_main_executable_path: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withServingStatus(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          serving_status: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersionId(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          version_id: value,
        },
      },
    },
  },
  withVpcAccessConnector(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector: value,
        },
      },
    },
  },
  withVpcAccessConnectorMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_flexible_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
