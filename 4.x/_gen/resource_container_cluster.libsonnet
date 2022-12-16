local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  addons_config:: {
    cloudrun_config:: {
      new(
        disabled,
        load_balancer_type=null
      ):: std.prune(a={
        disabled: disabled,
        load_balancer_type: load_balancer_type,
      }),
    },
    dns_cache_config:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gce_persistent_disk_csi_driver_config:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    gcp_filestore_csi_driver_config:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    horizontal_pod_autoscaling:: {
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
    http_load_balancing:: {
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
    network_policy_config:: {
      new(
        disabled
      ):: std.prune(a={
        disabled: disabled,
      }),
    },
    new(
      cloudrun_config=null,
      dns_cache_config=null,
      gce_persistent_disk_csi_driver_config=null,
      gcp_filestore_csi_driver_config=null,
      horizontal_pod_autoscaling=null,
      http_load_balancing=null,
      network_policy_config=null
    ):: std.prune(a={
      cloudrun_config: cloudrun_config,
      dns_cache_config: dns_cache_config,
      gce_persistent_disk_csi_driver_config: gce_persistent_disk_csi_driver_config,
      gcp_filestore_csi_driver_config: gcp_filestore_csi_driver_config,
      horizontal_pod_autoscaling: horizontal_pod_autoscaling,
      http_load_balancing: http_load_balancing,
      network_policy_config: network_policy_config,
    }),
  },
  authenticator_groups_config:: {
    new(
      security_group
    ):: std.prune(a={
      security_group: security_group,
    }),
  },
  binary_authorization:: {
    new(
      enabled=null,
      evaluation_mode=null
    ):: std.prune(a={
      enabled: enabled,
      evaluation_mode: evaluation_mode,
    }),
  },
  cluster_autoscaling:: {
    auto_provisioning_defaults:: {
      management:: {
        new(
          auto_repair=null,
          auto_upgrade=null
        ):: std.prune(a={
          auto_repair: auto_repair,
          auto_upgrade: auto_upgrade,
        }),
      },
      new(
        boot_disk_kms_key=null,
        disk_size=null,
        disk_type=null,
        image_type=null,
        management=null,
        oauth_scopes=null,
        service_account=null,
        shielded_instance_config=null
      ):: std.prune(a={
        boot_disk_kms_key: boot_disk_kms_key,
        disk_size: disk_size,
        disk_type: disk_type,
        image_type: image_type,
        management: management,
        oauth_scopes: oauth_scopes,
        service_account: service_account,
        shielded_instance_config: shielded_instance_config,
      }),
      shielded_instance_config:: {
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
        }),
      },
    },
    new(
      auto_provisioning_defaults=null,
      enabled=null,
      resource_limits=null
    ):: std.prune(a={
      auto_provisioning_defaults: auto_provisioning_defaults,
      enabled: enabled,
      resource_limits: resource_limits,
    }),
    resource_limits:: {
      new(
        resource_type,
        maximum=null,
        minimum=null
      ):: std.prune(a={
        maximum: maximum,
        minimum: minimum,
        resource_type: resource_type,
      }),
    },
  },
  confidential_nodes:: {
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  cost_management_config:: {
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  database_encryption:: {
    new(
      state,
      key_name=null
    ):: std.prune(a={
      key_name: key_name,
      state: state,
    }),
  },
  default_snat_status:: {
    new(
      disabled
    ):: std.prune(a={
      disabled: disabled,
    }),
  },
  dns_config:: {
    new(
      cluster_dns=null,
      cluster_dns_domain=null,
      cluster_dns_scope=null
    ):: std.prune(a={
      cluster_dns: cluster_dns,
      cluster_dns_domain: cluster_dns_domain,
      cluster_dns_scope: cluster_dns_scope,
    }),
  },
  ip_allocation_policy:: {
    new(
      cluster_ipv4_cidr_block=null,
      cluster_secondary_range_name=null,
      services_ipv4_cidr_block=null,
      services_secondary_range_name=null
    ):: std.prune(a={
      cluster_ipv4_cidr_block: cluster_ipv4_cidr_block,
      cluster_secondary_range_name: cluster_secondary_range_name,
      services_ipv4_cidr_block: services_ipv4_cidr_block,
      services_secondary_range_name: services_secondary_range_name,
    }),
  },
  logging_config:: {
    new(
      enable_components
    ):: std.prune(a={
      enable_components: enable_components,
    }),
  },
  maintenance_policy:: {
    daily_maintenance_window:: {
      new(
        start_time
      ):: std.prune(a={
        start_time: start_time,
      }),
    },
    maintenance_exclusion:: {
      exclusion_options:: {
        new(
          scope
        ):: std.prune(a={
          scope: scope,
        }),
      },
      new(
        end_time,
        exclusion_name,
        start_time,
        exclusion_options=null
      ):: std.prune(a={
        end_time: end_time,
        exclusion_name: exclusion_name,
        exclusion_options: exclusion_options,
        start_time: start_time,
      }),
    },
    new(
      daily_maintenance_window=null,
      maintenance_exclusion=null,
      recurring_window=null
    ):: std.prune(a={
      daily_maintenance_window: daily_maintenance_window,
      maintenance_exclusion: maintenance_exclusion,
      recurring_window: recurring_window,
    }),
    recurring_window:: {
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
  },
  master_auth:: {
    client_certificate_config:: {
      new(
        issue_client_certificate
      ):: std.prune(a={
        issue_client_certificate: issue_client_certificate,
      }),
    },
    new(
      client_certificate_config=null
    ):: std.prune(a={
      client_certificate_config: client_certificate_config,
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
      cidr_blocks=null,
      gcp_public_cidrs_access_enabled=null
    ):: std.prune(a={
      cidr_blocks: cidr_blocks,
      gcp_public_cidrs_access_enabled: gcp_public_cidrs_access_enabled,
    }),
  },
  mesh_certificates:: {
    new(
      enable_certificates
    ):: std.prune(a={
      enable_certificates: enable_certificates,
    }),
  },
  monitoring_config:: {
    managed_prometheus:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    new(
      enable_components,
      managed_prometheus=null
    ):: std.prune(a={
      enable_components: enable_components,
      managed_prometheus: managed_prometheus,
    }),
  },
  network_policy:: {
    new(
      enabled,
      provider=null
    ):: std.prune(a={
      enabled: enabled,
      provider: provider,
    }),
  },
  new(
    resourceLabel,
    name,
    addons_config=null,
    authenticator_groups_config=null,
    binary_authorization=null,
    cluster_autoscaling=null,
    cluster_ipv4_cidr=null,
    confidential_nodes=null,
    cost_management_config=null,
    database_encryption=null,
    datapath_provider=null,
    default_max_pods_per_node=null,
    default_snat_status=null,
    description=null,
    dns_config=null,
    enable_autopilot=null,
    enable_binary_authorization=null,
    enable_intranode_visibility=null,
    enable_kubernetes_alpha=null,
    enable_l4_ilb_subsetting=null,
    enable_legacy_abac=null,
    enable_shielded_nodes=null,
    enable_tpu=null,
    initial_node_count=null,
    ip_allocation_policy=null,
    location=null,
    logging_config=null,
    logging_service=null,
    maintenance_policy=null,
    master_auth=null,
    master_authorized_networks_config=null,
    mesh_certificates=null,
    min_master_version=null,
    monitoring_config=null,
    monitoring_service=null,
    network=null,
    network_policy=null,
    networking_mode=null,
    node_config=null,
    node_locations=null,
    node_pool=null,
    node_pool_defaults=null,
    node_version=null,
    notification_config=null,
    private_cluster_config=null,
    private_ipv6_google_access=null,
    project=null,
    release_channel=null,
    remove_default_node_pool=null,
    resource_labels=null,
    resource_usage_export_config=null,
    service_external_ips_config=null,
    subnetwork=null,
    timeouts=null,
    vertical_pod_autoscaling=null,
    workload_identity_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      addons_config=addons_config,
      authenticator_groups_config=authenticator_groups_config,
      binary_authorization=binary_authorization,
      cluster_autoscaling=cluster_autoscaling,
      cluster_ipv4_cidr=cluster_ipv4_cidr,
      confidential_nodes=confidential_nodes,
      cost_management_config=cost_management_config,
      database_encryption=database_encryption,
      datapath_provider=datapath_provider,
      default_max_pods_per_node=default_max_pods_per_node,
      default_snat_status=default_snat_status,
      description=description,
      dns_config=dns_config,
      enable_autopilot=enable_autopilot,
      enable_binary_authorization=enable_binary_authorization,
      enable_intranode_visibility=enable_intranode_visibility,
      enable_kubernetes_alpha=enable_kubernetes_alpha,
      enable_l4_ilb_subsetting=enable_l4_ilb_subsetting,
      enable_legacy_abac=enable_legacy_abac,
      enable_shielded_nodes=enable_shielded_nodes,
      enable_tpu=enable_tpu,
      initial_node_count=initial_node_count,
      ip_allocation_policy=ip_allocation_policy,
      location=location,
      logging_config=logging_config,
      logging_service=logging_service,
      maintenance_policy=maintenance_policy,
      master_auth=master_auth,
      master_authorized_networks_config=master_authorized_networks_config,
      mesh_certificates=mesh_certificates,
      min_master_version=min_master_version,
      monitoring_config=monitoring_config,
      monitoring_service=monitoring_service,
      name=name,
      network=network,
      network_policy=network_policy,
      networking_mode=networking_mode,
      node_config=node_config,
      node_locations=node_locations,
      node_pool=node_pool,
      node_pool_defaults=node_pool_defaults,
      node_version=node_version,
      notification_config=notification_config,
      private_cluster_config=private_cluster_config,
      private_ipv6_google_access=private_ipv6_google_access,
      project=project,
      release_channel=release_channel,
      remove_default_node_pool=remove_default_node_pool,
      resource_labels=resource_labels,
      resource_usage_export_config=resource_usage_export_config,
      service_external_ips_config=service_external_ips_config,
      subnetwork=subnetwork,
      timeouts=timeouts,
      vertical_pod_autoscaling=vertical_pod_autoscaling,
      workload_identity_config=workload_identity_config
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    addons_config=null,
    authenticator_groups_config=null,
    binary_authorization=null,
    cluster_autoscaling=null,
    cluster_ipv4_cidr=null,
    confidential_nodes=null,
    cost_management_config=null,
    database_encryption=null,
    datapath_provider=null,
    default_max_pods_per_node=null,
    default_snat_status=null,
    description=null,
    dns_config=null,
    enable_autopilot=null,
    enable_binary_authorization=null,
    enable_intranode_visibility=null,
    enable_kubernetes_alpha=null,
    enable_l4_ilb_subsetting=null,
    enable_legacy_abac=null,
    enable_shielded_nodes=null,
    enable_tpu=null,
    initial_node_count=null,
    ip_allocation_policy=null,
    location=null,
    logging_config=null,
    logging_service=null,
    maintenance_policy=null,
    master_auth=null,
    master_authorized_networks_config=null,
    mesh_certificates=null,
    min_master_version=null,
    monitoring_config=null,
    monitoring_service=null,
    network=null,
    network_policy=null,
    networking_mode=null,
    node_config=null,
    node_locations=null,
    node_pool=null,
    node_pool_defaults=null,
    node_version=null,
    notification_config=null,
    private_cluster_config=null,
    private_ipv6_google_access=null,
    project=null,
    release_channel=null,
    remove_default_node_pool=null,
    resource_labels=null,
    resource_usage_export_config=null,
    service_external_ips_config=null,
    subnetwork=null,
    timeouts=null,
    vertical_pod_autoscaling=null,
    workload_identity_config=null
  ):: std.prune(a={
    addons_config: addons_config,
    authenticator_groups_config: authenticator_groups_config,
    binary_authorization: binary_authorization,
    cluster_autoscaling: cluster_autoscaling,
    cluster_ipv4_cidr: cluster_ipv4_cidr,
    confidential_nodes: confidential_nodes,
    cost_management_config: cost_management_config,
    database_encryption: database_encryption,
    datapath_provider: datapath_provider,
    default_max_pods_per_node: default_max_pods_per_node,
    default_snat_status: default_snat_status,
    description: description,
    dns_config: dns_config,
    enable_autopilot: enable_autopilot,
    enable_binary_authorization: enable_binary_authorization,
    enable_intranode_visibility: enable_intranode_visibility,
    enable_kubernetes_alpha: enable_kubernetes_alpha,
    enable_l4_ilb_subsetting: enable_l4_ilb_subsetting,
    enable_legacy_abac: enable_legacy_abac,
    enable_shielded_nodes: enable_shielded_nodes,
    enable_tpu: enable_tpu,
    initial_node_count: initial_node_count,
    ip_allocation_policy: ip_allocation_policy,
    location: location,
    logging_config: logging_config,
    logging_service: logging_service,
    maintenance_policy: maintenance_policy,
    master_auth: master_auth,
    master_authorized_networks_config: master_authorized_networks_config,
    mesh_certificates: mesh_certificates,
    min_master_version: min_master_version,
    monitoring_config: monitoring_config,
    monitoring_service: monitoring_service,
    name: name,
    network: network,
    network_policy: network_policy,
    networking_mode: networking_mode,
    node_config: node_config,
    node_locations: node_locations,
    node_pool: node_pool,
    node_pool_defaults: node_pool_defaults,
    node_version: node_version,
    notification_config: notification_config,
    private_cluster_config: private_cluster_config,
    private_ipv6_google_access: private_ipv6_google_access,
    project: project,
    release_channel: release_channel,
    remove_default_node_pool: remove_default_node_pool,
    resource_labels: resource_labels,
    resource_usage_export_config: resource_usage_export_config,
    service_external_ips_config: service_external_ips_config,
    subnetwork: subnetwork,
    timeouts: timeouts,
    vertical_pod_autoscaling: vertical_pod_autoscaling,
    workload_identity_config: workload_identity_config,
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
  node_pool:: {
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
      autoscaling=null,
      initial_node_count=null,
      management=null,
      max_pods_per_node=null,
      name=null,
      name_prefix=null,
      network_config=null,
      node_config=null,
      node_count=null,
      node_locations=null,
      upgrade_settings=null,
      version=null
    ):: std.prune(a={
      autoscaling: autoscaling,
      initial_node_count: initial_node_count,
      management: management,
      max_pods_per_node: max_pods_per_node,
      name: name,
      name_prefix: name_prefix,
      network_config: network_config,
      node_config: node_config,
      node_count: node_count,
      node_locations: node_locations,
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
  },
  node_pool_defaults:: {
    new(
      node_config_defaults=null
    ):: std.prune(a={
      node_config_defaults: node_config_defaults,
    }),
    node_config_defaults:: {
      new(
        logging_variant=null
      ):: std.prune(a={
        logging_variant: logging_variant,
      }),
    },
  },
  notification_config:: {
    new(
      pubsub=null
    ):: std.prune(a={
      pubsub: pubsub,
    }),
    pubsub:: {
      filter:: {
        new(
          event_type
        ):: std.prune(a={
          event_type: event_type,
        }),
      },
      new(
        enabled,
        filter=null,
        topic=null
      ):: std.prune(a={
        enabled: enabled,
        filter: filter,
        topic: topic,
      }),
    },
  },
  private_cluster_config:: {
    master_global_access_config:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    new(
      enable_private_endpoint=null,
      enable_private_nodes=null,
      master_global_access_config=null,
      master_ipv4_cidr_block=null,
      private_endpoint_subnetwork=null
    ):: std.prune(a={
      enable_private_endpoint: enable_private_endpoint,
      enable_private_nodes: enable_private_nodes,
      master_global_access_config: master_global_access_config,
      master_ipv4_cidr_block: master_ipv4_cidr_block,
      private_endpoint_subnetwork: private_endpoint_subnetwork,
    }),
  },
  release_channel:: {
    new(
      channel
    ):: std.prune(a={
      channel: channel,
    }),
  },
  resource_usage_export_config:: {
    bigquery_destination:: {
      new(
        dataset_id
      ):: std.prune(a={
        dataset_id: dataset_id,
      }),
    },
    new(
      bigquery_destination=null,
      enable_network_egress_metering=null,
      enable_resource_consumption_metering=null
    ):: std.prune(a={
      bigquery_destination: bigquery_destination,
      enable_network_egress_metering: enable_network_egress_metering,
      enable_resource_consumption_metering: enable_resource_consumption_metering,
    }),
  },
  service_external_ips_config:: {
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
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
  vertical_pod_autoscaling:: {
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  withAddonsConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          addons_config: value,
        },
      },
    },
  },
  withAddonsConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          addons_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAuthenticatorGroupsConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          authenticator_groups_config: value,
        },
      },
    },
  },
  withAuthenticatorGroupsConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          authenticator_groups_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBinaryAuthorization(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          binary_authorization: value,
        },
      },
    },
  },
  withBinaryAuthorizationMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          binary_authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClusterAutoscaling(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cluster_autoscaling: value,
        },
      },
    },
  },
  withClusterAutoscalingMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cluster_autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClusterIpv4Cidr(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cluster_ipv4_cidr: value,
        },
      },
    },
  },
  withConfidentialNodes(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          confidential_nodes: value,
        },
      },
    },
  },
  withConfidentialNodesMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          confidential_nodes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCostManagementConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cost_management_config: value,
        },
      },
    },
  },
  withCostManagementConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          cost_management_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatabaseEncryption(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          database_encryption: value,
        },
      },
    },
  },
  withDatabaseEncryptionMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          database_encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatapathProvider(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          datapath_provider: value,
        },
      },
    },
  },
  withDefaultMaxPodsPerNode(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          default_max_pods_per_node: value,
        },
      },
    },
  },
  withDefaultSnatStatus(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          default_snat_status: value,
        },
      },
    },
  },
  withDefaultSnatStatusMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          default_snat_status+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDnsConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          dns_config: value,
        },
      },
    },
  },
  withDnsConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          dns_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnableAutopilot(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_autopilot: value,
        },
      },
    },
  },
  withEnableBinaryAuthorization(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_binary_authorization: value,
        },
      },
    },
  },
  withEnableIntranodeVisibility(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_intranode_visibility: value,
        },
      },
    },
  },
  withEnableKubernetesAlpha(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_kubernetes_alpha: value,
        },
      },
    },
  },
  withEnableL4IlbSubsetting(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_l4_ilb_subsetting: value,
        },
      },
    },
  },
  withEnableLegacyAbac(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_legacy_abac: value,
        },
      },
    },
  },
  withEnableShieldedNodes(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_shielded_nodes: value,
        },
      },
    },
  },
  withEnableTpu(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          enable_tpu: value,
        },
      },
    },
  },
  withInitialNodeCount(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          initial_node_count: value,
        },
      },
    },
  },
  withIpAllocationPolicy(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          ip_allocation_policy: value,
        },
      },
    },
  },
  withIpAllocationPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          ip_allocation_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withLoggingConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          logging_config: value,
        },
      },
    },
  },
  withLoggingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLoggingService(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          logging_service: value,
        },
      },
    },
  },
  withMaintenancePolicy(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  withMaintenancePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMasterAuth(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_auth: value,
        },
      },
    },
  },
  withMasterAuthMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_auth+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMasterAuthorizedNetworksConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_authorized_networks_config: value,
        },
      },
    },
  },
  withMasterAuthorizedNetworksConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          master_authorized_networks_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMeshCertificates(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          mesh_certificates: value,
        },
      },
    },
  },
  withMeshCertificatesMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          mesh_certificates+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMinMasterVersion(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          min_master_version: value,
        },
      },
    },
  },
  withMonitoringConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          monitoring_config: value,
        },
      },
    },
  },
  withMonitoringConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          monitoring_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMonitoringService(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          monitoring_service: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkPolicy(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          network_policy: value,
        },
      },
    },
  },
  withNetworkPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          network_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNetworkingMode(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          networking_mode: value,
        },
      },
    },
  },
  withNodeConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  withNodeConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNodeLocations(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_locations: value,
        },
      },
    },
  },
  withNodePool(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool: value,
        },
      },
    },
  },
  withNodePoolDefaults(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool_defaults: value,
        },
      },
    },
  },
  withNodePoolDefaultsMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool_defaults+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNodePoolMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_pool+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNodeVersion(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          node_version: value,
        },
      },
    },
  },
  withNotificationConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  withNotificationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPrivateClusterConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          private_cluster_config: value,
        },
      },
    },
  },
  withPrivateClusterConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          private_cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPrivateIpv6GoogleAccess(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          private_ipv6_google_access: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReleaseChannel(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          release_channel: value,
        },
      },
    },
  },
  withReleaseChannelMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          release_channel+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRemoveDefaultNodePool(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          remove_default_node_pool: value,
        },
      },
    },
  },
  withResourceLabels(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          resource_labels: value,
        },
      },
    },
  },
  withResourceUsageExportConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          resource_usage_export_config: value,
        },
      },
    },
  },
  withResourceUsageExportConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          resource_usage_export_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceExternalIpsConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          service_external_ips_config: value,
        },
      },
    },
  },
  withServiceExternalIpsConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          service_external_ips_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVerticalPodAutoscaling(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          vertical_pod_autoscaling: value,
        },
      },
    },
  },
  withVerticalPodAutoscalingMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          vertical_pod_autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withWorkloadIdentityConfig(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          workload_identity_config: value,
        },
      },
    },
  },
  withWorkloadIdentityConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_cluster+: {
        [resourceLabel]+: {
          workload_identity_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  workload_identity_config:: {
    new(
      workload_pool=null
    ):: std.prune(a={
      workload_pool: workload_pool,
    }),
  },
}
