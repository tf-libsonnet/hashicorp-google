local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  autoscaling:: {
    new(
      location_policy=null,
      max_node_count=null,
      min_node_count=null,
      total_max_node_count=null,
      total_min_node_count=null
    ):: std.prune(a={
      location_policy: location_policy,
      max_node_count: max_node_count,
      min_node_count: min_node_count,
      total_max_node_count: total_max_node_count,
      total_min_node_count: total_min_node_count,
    }),
  },
  management:: {
    new(
      auto_repair=null,
      auto_upgrade=null
    ):: std.prune(a={
      auto_repair: auto_repair,
      auto_upgrade: auto_upgrade,
    }),
  },
  network_config:: {
    new(
      create_pod_range=null,
      enable_private_nodes=null,
      pod_ipv4_cidr_block=null,
      pod_range=null
    ):: std.prune(a={
      create_pod_range: create_pod_range,
      enable_private_nodes: enable_private_nodes,
      pod_ipv4_cidr_block: pod_ipv4_cidr_block,
      pod_range: pod_range,
    }),
  },
  new(
    resourceLabel,
    cluster,
    autoscaling=null,
    initial_node_count=null,
    location=null,
    management=null,
    max_pods_per_node=null,
    name=null,
    name_prefix=null,
    network_config=null,
    node_config=null,
    node_count=null,
    node_locations=null,
    project=null,
    timeouts=null,
    upgrade_settings=null,
    version=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling=autoscaling,
      cluster=cluster,
      initial_node_count=initial_node_count,
      location=location,
      management=management,
      max_pods_per_node=max_pods_per_node,
      name=name,
      name_prefix=name_prefix,
      network_config=network_config,
      node_config=node_config,
      node_count=node_count,
      node_locations=node_locations,
      project=project,
      timeouts=timeouts,
      upgrade_settings=upgrade_settings,
      version=version
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster,
    autoscaling=null,
    initial_node_count=null,
    location=null,
    management=null,
    max_pods_per_node=null,
    name=null,
    name_prefix=null,
    network_config=null,
    node_config=null,
    node_count=null,
    node_locations=null,
    project=null,
    timeouts=null,
    upgrade_settings=null,
    version=null
  ):: std.prune(a={
    autoscaling: autoscaling,
    cluster: cluster,
    initial_node_count: initial_node_count,
    location: location,
    management: management,
    max_pods_per_node: max_pods_per_node,
    name: name,
    name_prefix: name_prefix,
    network_config: network_config,
    node_config: node_config,
    node_count: node_count,
    node_locations: node_locations,
    project: project,
    timeouts: timeouts,
    upgrade_settings: upgrade_settings,
    version: version,
  }),
  node_config:: {
    gcfs_config:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gvnic:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    new(
      boot_disk_kms_key=null,
      disk_size_gb=null,
      disk_type=null,
      gcfs_config=null,
      guest_accelerator=null,
      gvnic=null,
      image_type=null,
      labels=null,
      local_ssd_count=null,
      logging_variant=null,
      machine_type=null,
      metadata=null,
      min_cpu_platform=null,
      node_group=null,
      oauth_scopes=null,
      preemptible=null,
      reservation_affinity=null,
      resource_labels=null,
      service_account=null,
      shielded_instance_config=null,
      spot=null,
      tags=null,
      taint=null,
      workload_metadata_config=null
    ):: std.prune(a={
      boot_disk_kms_key: boot_disk_kms_key,
      disk_size_gb: disk_size_gb,
      disk_type: disk_type,
      gcfs_config: gcfs_config,
      guest_accelerator: guest_accelerator,
      gvnic: gvnic,
      image_type: image_type,
      labels: labels,
      local_ssd_count: local_ssd_count,
      logging_variant: logging_variant,
      machine_type: machine_type,
      metadata: metadata,
      min_cpu_platform: min_cpu_platform,
      node_group: node_group,
      oauth_scopes: oauth_scopes,
      preemptible: preemptible,
      reservation_affinity: reservation_affinity,
      resource_labels: resource_labels,
      service_account: service_account,
      shielded_instance_config: shielded_instance_config,
      spot: spot,
      tags: tags,
      taint: taint,
      workload_metadata_config: workload_metadata_config,
    }),
    reservation_affinity:: {
      new(
        consume_reservation_type,
        key=null,
        values=null
      ):: std.prune(a={
        consume_reservation_type: consume_reservation_type,
        key: key,
        values: values,
      }),
    },
    shielded_instance_config:: {
      new(
        enable_integrity_monitoring=null,
        enable_secure_boot=null
      ):: std.prune(a={
        enable_integrity_monitoring: enable_integrity_monitoring,
        enable_secure_boot: enable_secure_boot,
      }),
    },
    workload_metadata_config:: {
      new(
        mode
      ):: std.prune(a={
        mode: mode,
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
  upgrade_settings:: {
    blue_green_settings:: {
      new(
        node_pool_soak_duration=null,
        standard_rollout_policy=null
      ):: std.prune(a={
        node_pool_soak_duration: node_pool_soak_duration,
        standard_rollout_policy: standard_rollout_policy,
      }),
      standard_rollout_policy:: {
        new(
          batch_node_count=null,
          batch_percentage=null,
          batch_soak_duration=null
        ):: std.prune(a={
          batch_node_count: batch_node_count,
          batch_percentage: batch_percentage,
          batch_soak_duration: batch_soak_duration,
        }),
      },
    },
    new(
      blue_green_settings=null,
      max_surge=null,
      max_unavailable=null,
      strategy=null
    ):: std.prune(a={
      blue_green_settings: blue_green_settings,
      max_surge: max_surge,
      max_unavailable: max_unavailable,
      strategy: strategy,
    }),
  },
  withAutoscaling(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          autoscaling: value,
        },
      },
    },
  },
  withAutoscalingMixin(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCluster(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withInitialNodeCount(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          initial_node_count: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withManagement(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          management: value,
        },
      },
    },
  },
  withManagementMixin(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          management+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMaxPodsPerNode(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          max_pods_per_node: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNamePrefix(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  withNetworkConfig(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  withNetworkConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNodeConfig(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  withNodeConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNodeCount(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_count: value,
        },
      },
    },
  },
  withNodeLocations(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          node_locations: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUpgradeSettings(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          upgrade_settings: value,
        },
      },
    },
  },
  withUpgradeSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          upgrade_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_container_node_pool+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
