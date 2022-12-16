local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  automatic_scaling:: {
    new(
      max_concurrent_requests=null,
      max_idle_instances=null,
      max_pending_latency=null,
      min_idle_instances=null,
      min_pending_latency=null,
      standard_scheduler_settings=null
    ):: std.prune(a={
      max_concurrent_requests: max_concurrent_requests,
      max_idle_instances: max_idle_instances,
      max_pending_latency: max_pending_latency,
      min_idle_instances: min_idle_instances,
      min_pending_latency: min_pending_latency,
      standard_scheduler_settings: standard_scheduler_settings,
    }),
    standard_scheduler_settings:: {
      new(
        max_instances=null,
        min_instances=null,
        target_cpu_utilization=null,
        target_throughput_utilization=null
      ):: std.prune(a={
        max_instances: max_instances,
        min_instances: min_instances,
        target_cpu_utilization: target_cpu_utilization,
        target_throughput_utilization: target_throughput_utilization,
      }),
    },
  },
  basic_scaling:: {
    new(
      max_instances,
      idle_timeout=null
    ):: std.prune(a={
      idle_timeout: idle_timeout,
      max_instances: max_instances,
    }),
  },
  deployment:: {
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
      files=null,
      zip=null
    ):: std.prune(a={
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
  libraries:: {
    new(
      name=null,
      version=null
    ):: std.prune(a={
      name: name,
      version: version,
    }),
  },
  manual_scaling:: {
    new(
      instances
    ):: std.prune(a={
      instances: instances,
    }),
  },
  new(
    resourceLabel,
    runtime,
    service,
    app_engine_apis=null,
    automatic_scaling=null,
    basic_scaling=null,
    delete_service_on_destroy=null,
    deployment=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    libraries=null,
    manual_scaling=null,
    noop_on_destroy=null,
    project=null,
    runtime_api_version=null,
    service_account=null,
    threadsafe=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_standard_app_version',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine_apis=app_engine_apis,
      automatic_scaling=automatic_scaling,
      basic_scaling=basic_scaling,
      delete_service_on_destroy=delete_service_on_destroy,
      deployment=deployment,
      entrypoint=entrypoint,
      env_variables=env_variables,
      handlers=handlers,
      inbound_services=inbound_services,
      instance_class=instance_class,
      libraries=libraries,
      manual_scaling=manual_scaling,
      noop_on_destroy=noop_on_destroy,
      project=project,
      runtime=runtime,
      runtime_api_version=runtime_api_version,
      service=service,
      service_account=service_account,
      threadsafe=threadsafe,
      timeouts=timeouts,
      version_id=version_id,
      vpc_access_connector=vpc_access_connector
    ),
    _meta=_meta
  ),
  newAttrs(
    runtime,
    service,
    app_engine_apis=null,
    automatic_scaling=null,
    basic_scaling=null,
    delete_service_on_destroy=null,
    deployment=null,
    entrypoint=null,
    env_variables=null,
    handlers=null,
    inbound_services=null,
    instance_class=null,
    libraries=null,
    manual_scaling=null,
    noop_on_destroy=null,
    project=null,
    runtime_api_version=null,
    service_account=null,
    threadsafe=null,
    timeouts=null,
    version_id=null,
    vpc_access_connector=null
  ):: std.prune(a={
    app_engine_apis: app_engine_apis,
    automatic_scaling: automatic_scaling,
    basic_scaling: basic_scaling,
    delete_service_on_destroy: delete_service_on_destroy,
    deployment: deployment,
    entrypoint: entrypoint,
    env_variables: env_variables,
    handlers: handlers,
    inbound_services: inbound_services,
    instance_class: instance_class,
    libraries: libraries,
    manual_scaling: manual_scaling,
    noop_on_destroy: noop_on_destroy,
    project: project,
    runtime: runtime,
    runtime_api_version: runtime_api_version,
    service: service,
    service_account: service_account,
    threadsafe: threadsafe,
    timeouts: timeouts,
    version_id: version_id,
    vpc_access_connector: vpc_access_connector,
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
  vpc_access_connector:: {
    new(
      name,
      egress_setting=null
    ):: std.prune(a={
      egress_setting: egress_setting,
      name: name,
    }),
  },
  withAppEngineApis(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          app_engine_apis: value,
        },
      },
    },
  },
  withAutomaticScaling(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          automatic_scaling: value,
        },
      },
    },
  },
  withAutomaticScalingMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          automatic_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBasicScaling(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          basic_scaling: value,
        },
      },
    },
  },
  withBasicScalingMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          basic_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDeleteServiceOnDestroy(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          delete_service_on_destroy: value,
        },
      },
    },
  },
  withDeployment(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          deployment: value,
        },
      },
    },
  },
  withDeploymentMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          deployment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEntrypoint(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          entrypoint: value,
        },
      },
    },
  },
  withEntrypointMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          entrypoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnvVariables(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          env_variables: value,
        },
      },
    },
  },
  withHandlers(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          handlers: value,
        },
      },
    },
  },
  withHandlersMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInboundServices(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          inbound_services: value,
        },
      },
    },
  },
  withInstanceClass(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          instance_class: value,
        },
      },
    },
  },
  withLibraries(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          libraries: value,
        },
      },
    },
  },
  withLibrariesMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          libraries+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withManualScaling(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          manual_scaling: value,
        },
      },
    },
  },
  withManualScalingMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          manual_scaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNoopOnDestroy(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          noop_on_destroy: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRuntime(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          runtime: value,
        },
      },
    },
  },
  withRuntimeApiVersion(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          runtime_api_version: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withThreadsafe(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          threadsafe: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersionId(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          version_id: value,
        },
      },
    },
  },
  withVpcAccessConnector(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector: value,
        },
      },
    },
  },
  withVpcAccessConnectorMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_standard_app_version+: {
        [resourceLabel]+: {
          vpc_access_connector+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
