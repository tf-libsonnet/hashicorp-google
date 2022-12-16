local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  config:: {
    database_config:: {
      new(
        machine_type
      ):: std.prune(a={
        machine_type: machine_type,
      }),
    },
    encryption_config:: {
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    maintenance_window:: {
      new(
        end_time,
        recurrence,
        start_time
      ):: std.prune(a={
        end_time: end_time,
        recurrence: recurrence,
        start_time: start_time,
      }),
    },
    master_authorized_networks_config:: {
      cidr_blocks:: {
        new(
          cidr_block,
          display_name=null
        ):: std.prune(a={
          cidr_block: cidr_block,
          display_name: display_name,
        }),
      },
      new(
        enabled,
        cidr_blocks=null
      ):: std.prune(a={
        cidr_blocks: cidr_blocks,
        enabled: enabled,
      }),
    },
    new(
      database_config=null,
      encryption_config=null,
      environment_size=null,
      maintenance_window=null,
      master_authorized_networks_config=null,
      node_config=null,
      node_count=null,
      private_environment_config=null,
      software_config=null,
      web_server_config=null,
      web_server_network_access_control=null,
      workloads_config=null
    ):: std.prune(a={
      database_config: database_config,
      encryption_config: encryption_config,
      environment_size: environment_size,
      maintenance_window: maintenance_window,
      master_authorized_networks_config: master_authorized_networks_config,
      node_config: node_config,
      node_count: node_count,
      private_environment_config: private_environment_config,
      software_config: software_config,
      web_server_config: web_server_config,
      web_server_network_access_control: web_server_network_access_control,
      workloads_config: workloads_config,
    }),
    node_config:: {
      new(
        disk_size_gb=null,
        enable_ip_masq_agent=null,
        ip_allocation_policy=null,
        machine_type=null,
        network=null,
        oauth_scopes=null,
        service_account=null,
        subnetwork=null,
        tags=null,
        zone=null
      ):: std.prune(a={
        disk_size_gb: disk_size_gb,
        enable_ip_masq_agent: enable_ip_masq_agent,
        ip_allocation_policy: ip_allocation_policy,
        machine_type: machine_type,
        network: network,
        oauth_scopes: oauth_scopes,
        service_account: service_account,
        subnetwork: subnetwork,
        tags: tags,
        zone: zone,
      }),
    },
    private_environment_config:: {
      new(
        cloud_composer_connection_subnetwork=null,
        cloud_composer_network_ipv4_cidr_block=null,
        cloud_sql_ipv4_cidr_block=null,
        enable_private_endpoint=null,
        enable_privately_used_public_ips=null,
        master_ipv4_cidr_block=null,
        web_server_ipv4_cidr_block=null
      ):: std.prune(a={
        cloud_composer_connection_subnetwork: cloud_composer_connection_subnetwork,
        cloud_composer_network_ipv4_cidr_block: cloud_composer_network_ipv4_cidr_block,
        cloud_sql_ipv4_cidr_block: cloud_sql_ipv4_cidr_block,
        enable_private_endpoint: enable_private_endpoint,
        enable_privately_used_public_ips: enable_privately_used_public_ips,
        master_ipv4_cidr_block: master_ipv4_cidr_block,
        web_server_ipv4_cidr_block: web_server_ipv4_cidr_block,
      }),
    },
    software_config:: {
      new(
        airflow_config_overrides=null,
        env_variables=null,
        image_version=null,
        pypi_packages=null,
        python_version=null,
        scheduler_count=null
      ):: std.prune(a={
        airflow_config_overrides: airflow_config_overrides,
        env_variables: env_variables,
        image_version: image_version,
        pypi_packages: pypi_packages,
        python_version: python_version,
        scheduler_count: scheduler_count,
      }),
    },
    web_server_config:: {
      new(
        machine_type
      ):: std.prune(a={
        machine_type: machine_type,
      }),
    },
    web_server_network_access_control:: {
      allowed_ip_range:: {
        new(
          value,
          description=null
        ):: std.prune(a={
          description: description,
          value: value,
        }),
      },
      new(
        allowed_ip_range=null
      ):: std.prune(a={
        allowed_ip_range: allowed_ip_range,
      }),
    },
    workloads_config:: {
      new(
        scheduler=null,
        web_server=null,
        worker=null
      ):: std.prune(a={
        scheduler: scheduler,
        web_server: web_server,
        worker: worker,
      }),
      scheduler:: {
        new(
          count=null,
          cpu=null,
          memory_gb=null,
          storage_gb=null
        ):: std.prune(a={
          count: count,
          cpu: cpu,
          memory_gb: memory_gb,
          storage_gb: storage_gb,
        }),
      },
      web_server:: {
        new(
          cpu=null,
          memory_gb=null,
          storage_gb=null
        ):: std.prune(a={
          cpu: cpu,
          memory_gb: memory_gb,
          storage_gb: storage_gb,
        }),
      },
      worker:: {
        new(
          cpu=null,
          max_count=null,
          memory_gb=null,
          min_count=null,
          storage_gb=null
        ):: std.prune(a={
          cpu: cpu,
          max_count: max_count,
          memory_gb: memory_gb,
          min_count: min_count,
          storage_gb: storage_gb,
        }),
      },
    },
  },
  new(
    resourceLabel,
    name,
    config=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_composer_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      config=config,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    config=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    config: config,
    labels: labels,
    name: name,
    project: project,
    region: region,
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
  withConfig(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
