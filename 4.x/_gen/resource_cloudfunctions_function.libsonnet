local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  event_trigger:: {
    failure_policy:: {
      new(
        retry
      ):: std.prune(a={
        retry: retry,
      }),
    },
    new(
      event_type,
      resource,
      failure_policy=null
    ):: std.prune(a={
      event_type: event_type,
      failure_policy: failure_policy,
      resource: resource,
    }),
  },
  new(
    resourceLabel,
    name,
    runtime,
    available_memory_mb=null,
    build_environment_variables=null,
    build_worker_pool=null,
    description=null,
    docker_registry=null,
    docker_repository=null,
    entry_point=null,
    environment_variables=null,
    event_trigger=null,
    https_trigger_security_level=null,
    https_trigger_url=null,
    ingress_settings=null,
    kms_key_name=null,
    labels=null,
    max_instances=null,
    min_instances=null,
    project=null,
    region=null,
    secret_environment_variables=null,
    secret_volumes=null,
    service_account_email=null,
    source_archive_bucket=null,
    source_archive_object=null,
    source_repository=null,
    timeout=null,
    timeouts=null,
    trigger_http=null,
    vpc_connector=null,
    vpc_connector_egress_settings=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions_function',
    label=resourceLabel,
    attrs=self.newAttrs(
      available_memory_mb=available_memory_mb,
      build_environment_variables=build_environment_variables,
      build_worker_pool=build_worker_pool,
      description=description,
      docker_registry=docker_registry,
      docker_repository=docker_repository,
      entry_point=entry_point,
      environment_variables=environment_variables,
      event_trigger=event_trigger,
      https_trigger_security_level=https_trigger_security_level,
      https_trigger_url=https_trigger_url,
      ingress_settings=ingress_settings,
      kms_key_name=kms_key_name,
      labels=labels,
      max_instances=max_instances,
      min_instances=min_instances,
      name=name,
      project=project,
      region=region,
      runtime=runtime,
      secret_environment_variables=secret_environment_variables,
      secret_volumes=secret_volumes,
      service_account_email=service_account_email,
      source_archive_bucket=source_archive_bucket,
      source_archive_object=source_archive_object,
      source_repository=source_repository,
      timeout=timeout,
      timeouts=timeouts,
      trigger_http=trigger_http,
      vpc_connector=vpc_connector,
      vpc_connector_egress_settings=vpc_connector_egress_settings
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    runtime,
    available_memory_mb=null,
    build_environment_variables=null,
    build_worker_pool=null,
    description=null,
    docker_registry=null,
    docker_repository=null,
    entry_point=null,
    environment_variables=null,
    event_trigger=null,
    https_trigger_security_level=null,
    https_trigger_url=null,
    ingress_settings=null,
    kms_key_name=null,
    labels=null,
    max_instances=null,
    min_instances=null,
    project=null,
    region=null,
    secret_environment_variables=null,
    secret_volumes=null,
    service_account_email=null,
    source_archive_bucket=null,
    source_archive_object=null,
    source_repository=null,
    timeout=null,
    timeouts=null,
    trigger_http=null,
    vpc_connector=null,
    vpc_connector_egress_settings=null
  ):: std.prune(a={
    available_memory_mb: available_memory_mb,
    build_environment_variables: build_environment_variables,
    build_worker_pool: build_worker_pool,
    description: description,
    docker_registry: docker_registry,
    docker_repository: docker_repository,
    entry_point: entry_point,
    environment_variables: environment_variables,
    event_trigger: event_trigger,
    https_trigger_security_level: https_trigger_security_level,
    https_trigger_url: https_trigger_url,
    ingress_settings: ingress_settings,
    kms_key_name: kms_key_name,
    labels: labels,
    max_instances: max_instances,
    min_instances: min_instances,
    name: name,
    project: project,
    region: region,
    runtime: runtime,
    secret_environment_variables: secret_environment_variables,
    secret_volumes: secret_volumes,
    service_account_email: service_account_email,
    source_archive_bucket: source_archive_bucket,
    source_archive_object: source_archive_object,
    source_repository: source_repository,
    timeout: timeout,
    timeouts: timeouts,
    trigger_http: trigger_http,
    vpc_connector: vpc_connector,
    vpc_connector_egress_settings: vpc_connector_egress_settings,
  }),
  secret_environment_variables:: {
    new(
      key,
      secret,
      version,
      project_id=null
    ):: std.prune(a={
      key: key,
      project_id: project_id,
      secret: secret,
      version: version,
    }),
  },
  secret_volumes:: {
    new(
      mount_path,
      secret,
      project_id=null,
      versions=null
    ):: std.prune(a={
      mount_path: mount_path,
      project_id: project_id,
      secret: secret,
      versions: versions,
    }),
    versions:: {
      new(
        path,
        version
      ):: std.prune(a={
        path: path,
        version: version,
      }),
    },
  },
  source_repository:: {
    new(
      url
    ):: std.prune(a={
      url: url,
    }),
  },
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
  withAvailableMemoryMb(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          available_memory_mb: value,
        },
      },
    },
  },
  withBuildEnvironmentVariables(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          build_environment_variables: value,
        },
      },
    },
  },
  withBuildWorkerPool(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          build_worker_pool: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDockerRegistry(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          docker_registry: value,
        },
      },
    },
  },
  withDockerRepository(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          docker_repository: value,
        },
      },
    },
  },
  withEntryPoint(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          entry_point: value,
        },
      },
    },
  },
  withEnvironmentVariables(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          environment_variables: value,
        },
      },
    },
  },
  withEventTrigger(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          event_trigger: value,
        },
      },
    },
  },
  withEventTriggerMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          event_trigger+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHttpsTriggerSecurityLevel(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          https_trigger_security_level: value,
        },
      },
    },
  },
  withHttpsTriggerUrl(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          https_trigger_url: value,
        },
      },
    },
  },
  withIngressSettings(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          ingress_settings: value,
        },
      },
    },
  },
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMaxInstances(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          max_instances: value,
        },
      },
    },
  },
  withMinInstances(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          min_instances: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRuntime(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          runtime: value,
        },
      },
    },
  },
  withSecretEnvironmentVariables(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_environment_variables: value,
        },
      },
    },
  },
  withSecretEnvironmentVariablesMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_environment_variables+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSecretVolumes(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_volumes: value,
        },
      },
    },
  },
  withSecretVolumesMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          secret_volumes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceAccountEmail(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  withSourceArchiveBucket(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_archive_bucket: value,
        },
      },
    },
  },
  withSourceArchiveObject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_archive_object: value,
        },
      },
    },
  },
  withSourceRepository(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_repository: value,
        },
      },
    },
  },
  withSourceRepositoryMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          source_repository+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeout(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTriggerHttp(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          trigger_http: value,
        },
      },
    },
  },
  withVpcConnector(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          vpc_connector: value,
        },
      },
    },
  },
  withVpcConnectorEgressSettings(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function+: {
        [resourceLabel]+: {
          vpc_connector_egress_settings: value,
        },
      },
    },
  },
}
