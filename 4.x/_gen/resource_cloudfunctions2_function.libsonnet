local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  build_config:: {
    new(
      docker_repository=null,
      entry_point=null,
      environment_variables=null,
      runtime=null,
      source=null,
      worker_pool=null
    ):: std.prune(a={
      docker_repository: docker_repository,
      entry_point: entry_point,
      environment_variables: environment_variables,
      runtime: runtime,
      source: source,
      worker_pool: worker_pool,
    }),
    source:: {
      new(
        repo_source=null,
        storage_source=null
      ):: std.prune(a={
        repo_source: repo_source,
        storage_source: storage_source,
      }),
      repo_source:: {
        new(
          branch_name=null,
          commit_sha=null,
          dir=null,
          invert_regex=null,
          project_id=null,
          repo_name=null,
          tag_name=null
        ):: std.prune(a={
          branch_name: branch_name,
          commit_sha: commit_sha,
          dir: dir,
          invert_regex: invert_regex,
          project_id: project_id,
          repo_name: repo_name,
          tag_name: tag_name,
        }),
      },
      storage_source:: {
        new(
          bucket=null,
          generation=null,
          object=null
        ):: std.prune(a={
          bucket: bucket,
          generation: generation,
          object: object,
        }),
      },
    },
  },
  event_trigger:: {
    event_filters:: {
      new(
        attribute,
        value,
        operator=null
      ):: std.prune(a={
        attribute: attribute,
        operator: operator,
        value: value,
      }),
    },
    new(
      event_filters=null,
      event_type=null,
      pubsub_topic=null,
      retry_policy=null,
      service_account_email=null,
      trigger_region=null
    ):: std.prune(a={
      event_filters: event_filters,
      event_type: event_type,
      pubsub_topic: pubsub_topic,
      retry_policy: retry_policy,
      service_account_email: service_account_email,
      trigger_region: trigger_region,
    }),
  },
  new(
    resourceLabel,
    name,
    build_config=null,
    description=null,
    event_trigger=null,
    labels=null,
    location=null,
    project=null,
    service_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions2_function',
    label=resourceLabel,
    attrs=self.newAttrs(
      build_config=build_config,
      description=description,
      event_trigger=event_trigger,
      labels=labels,
      location=location,
      name=name,
      project=project,
      service_config=service_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    build_config=null,
    description=null,
    event_trigger=null,
    labels=null,
    location=null,
    project=null,
    service_config=null,
    timeouts=null
  ):: std.prune(a={
    build_config: build_config,
    description: description,
    event_trigger: event_trigger,
    labels: labels,
    location: location,
    name: name,
    project: project,
    service_config: service_config,
    timeouts: timeouts,
  }),
  service_config:: {
    new(
      all_traffic_on_latest_revision=null,
      available_memory=null,
      environment_variables=null,
      ingress_settings=null,
      max_instance_count=null,
      min_instance_count=null,
      secret_environment_variables=null,
      secret_volumes=null,
      service=null,
      service_account_email=null,
      timeout_seconds=null,
      vpc_connector=null,
      vpc_connector_egress_settings=null
    ):: std.prune(a={
      all_traffic_on_latest_revision: all_traffic_on_latest_revision,
      available_memory: available_memory,
      environment_variables: environment_variables,
      ingress_settings: ingress_settings,
      max_instance_count: max_instance_count,
      min_instance_count: min_instance_count,
      secret_environment_variables: secret_environment_variables,
      secret_volumes: secret_volumes,
      service: service,
      service_account_email: service_account_email,
      timeout_seconds: timeout_seconds,
      vpc_connector: vpc_connector,
      vpc_connector_egress_settings: vpc_connector_egress_settings,
    }),
    secret_environment_variables:: {
      new(
        key,
        project_id,
        secret,
        version
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
        project_id,
        secret,
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
  withBuildConfig(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          build_config: value,
        },
      },
    },
  },
  withBuildConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          build_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEventTrigger(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          event_trigger: value,
        },
      },
    },
  },
  withEventTriggerMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          event_trigger+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceConfig(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          service_config: value,
        },
      },
    },
  },
  withServiceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          service_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
