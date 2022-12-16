local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  cluster_config:: {
    autoscaling_config:: {
      new(
        policy_uri
      ):: std.prune(a={
        policy_uri: policy_uri,
      }),
    },
    encryption_config:: {
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    endpoint_config:: {
      new(
        enable_http_port_access
      ):: std.prune(a={
        enable_http_port_access: enable_http_port_access,
      }),
    },
    gce_cluster_config:: {
      new(
        internal_ip_only=null,
        metadata=null,
        network=null,
        service_account=null,
        service_account_scopes=null,
        shielded_instance_config=null,
        subnetwork=null,
        tags=null,
        zone=null
      ):: std.prune(a={
        internal_ip_only: internal_ip_only,
        metadata: metadata,
        network: network,
        service_account: service_account,
        service_account_scopes: service_account_scopes,
        shielded_instance_config: shielded_instance_config,
        subnetwork: subnetwork,
        tags: tags,
        zone: zone,
      }),
      shielded_instance_config:: {
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null,
          enable_vtpm=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
          enable_vtpm: enable_vtpm,
        }),
      },
    },
    initialization_action:: {
      new(
        script,
        timeout_sec=null
      ):: std.prune(a={
        script: script,
        timeout_sec: timeout_sec,
      }),
    },
    lifecycle_config:: {
      new(
        auto_delete_time=null,
        idle_delete_ttl=null
      ):: std.prune(a={
        auto_delete_time: auto_delete_time,
        idle_delete_ttl: idle_delete_ttl,
      }),
    },
    master_config:: {
      accelerators:: {
        new(
          accelerator_count,
          accelerator_type
        ):: std.prune(a={
          accelerator_count: accelerator_count,
          accelerator_type: accelerator_type,
        }),
      },
      disk_config:: {
        new(
          boot_disk_size_gb=null,
          boot_disk_type=null,
          num_local_ssds=null
        ):: std.prune(a={
          boot_disk_size_gb: boot_disk_size_gb,
          boot_disk_type: boot_disk_type,
          num_local_ssds: num_local_ssds,
        }),
      },
      new(
        accelerators=null,
        disk_config=null,
        image_uri=null,
        machine_type=null,
        min_cpu_platform=null,
        num_instances=null
      ):: std.prune(a={
        accelerators: accelerators,
        disk_config: disk_config,
        image_uri: image_uri,
        machine_type: machine_type,
        min_cpu_platform: min_cpu_platform,
        num_instances: num_instances,
      }),
    },
    metastore_config:: {
      new(
        dataproc_metastore_service
      ):: std.prune(a={
        dataproc_metastore_service: dataproc_metastore_service,
      }),
    },
    new(
      autoscaling_config=null,
      encryption_config=null,
      endpoint_config=null,
      gce_cluster_config=null,
      initialization_action=null,
      lifecycle_config=null,
      master_config=null,
      metastore_config=null,
      preemptible_worker_config=null,
      security_config=null,
      software_config=null,
      staging_bucket=null,
      temp_bucket=null,
      worker_config=null
    ):: std.prune(a={
      autoscaling_config: autoscaling_config,
      encryption_config: encryption_config,
      endpoint_config: endpoint_config,
      gce_cluster_config: gce_cluster_config,
      initialization_action: initialization_action,
      lifecycle_config: lifecycle_config,
      master_config: master_config,
      metastore_config: metastore_config,
      preemptible_worker_config: preemptible_worker_config,
      security_config: security_config,
      software_config: software_config,
      staging_bucket: staging_bucket,
      temp_bucket: temp_bucket,
      worker_config: worker_config,
    }),
    preemptible_worker_config:: {
      disk_config:: {
        new(
          boot_disk_size_gb=null,
          boot_disk_type=null,
          num_local_ssds=null
        ):: std.prune(a={
          boot_disk_size_gb: boot_disk_size_gb,
          boot_disk_type: boot_disk_type,
          num_local_ssds: num_local_ssds,
        }),
      },
      new(
        disk_config=null,
        num_instances=null,
        preemptibility=null
      ):: std.prune(a={
        disk_config: disk_config,
        num_instances: num_instances,
        preemptibility: preemptibility,
      }),
    },
    security_config:: {
      kerberos_config:: {
        new(
          kms_key_uri,
          root_principal_password_uri,
          cross_realm_trust_admin_server=null,
          cross_realm_trust_kdc=null,
          cross_realm_trust_realm=null,
          cross_realm_trust_shared_password_uri=null,
          enable_kerberos=null,
          kdc_db_key_uri=null,
          key_password_uri=null,
          keystore_password_uri=null,
          keystore_uri=null,
          realm=null,
          tgt_lifetime_hours=null,
          truststore_password_uri=null,
          truststore_uri=null
        ):: std.prune(a={
          cross_realm_trust_admin_server: cross_realm_trust_admin_server,
          cross_realm_trust_kdc: cross_realm_trust_kdc,
          cross_realm_trust_realm: cross_realm_trust_realm,
          cross_realm_trust_shared_password_uri: cross_realm_trust_shared_password_uri,
          enable_kerberos: enable_kerberos,
          kdc_db_key_uri: kdc_db_key_uri,
          key_password_uri: key_password_uri,
          keystore_password_uri: keystore_password_uri,
          keystore_uri: keystore_uri,
          kms_key_uri: kms_key_uri,
          realm: realm,
          root_principal_password_uri: root_principal_password_uri,
          tgt_lifetime_hours: tgt_lifetime_hours,
          truststore_password_uri: truststore_password_uri,
          truststore_uri: truststore_uri,
        }),
      },
      new(
        kerberos_config=null
      ):: std.prune(a={
        kerberos_config: kerberos_config,
      }),
    },
    software_config:: {
      new(
        image_version=null,
        optional_components=null,
        override_properties=null
      ):: std.prune(a={
        image_version: image_version,
        optional_components: optional_components,
        override_properties: override_properties,
      }),
    },
    worker_config:: {
      accelerators:: {
        new(
          accelerator_count,
          accelerator_type
        ):: std.prune(a={
          accelerator_count: accelerator_count,
          accelerator_type: accelerator_type,
        }),
      },
      disk_config:: {
        new(
          boot_disk_size_gb=null,
          boot_disk_type=null,
          num_local_ssds=null
        ):: std.prune(a={
          boot_disk_size_gb: boot_disk_size_gb,
          boot_disk_type: boot_disk_type,
          num_local_ssds: num_local_ssds,
        }),
      },
      new(
        accelerators=null,
        disk_config=null,
        image_uri=null,
        machine_type=null,
        min_cpu_platform=null,
        num_instances=null
      ):: std.prune(a={
        accelerators: accelerators,
        disk_config: disk_config,
        image_uri: image_uri,
        machine_type: machine_type,
        min_cpu_platform: min_cpu_platform,
        num_instances: num_instances,
      }),
    },
  },
  new(
    resourceLabel,
    name,
    cluster_config=null,
    graceful_decommission_timeout=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    virtual_cluster_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster_config=cluster_config,
      graceful_decommission_timeout=graceful_decommission_timeout,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      virtual_cluster_config=virtual_cluster_config
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    cluster_config=null,
    graceful_decommission_timeout=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    virtual_cluster_config=null
  ):: std.prune(a={
    cluster_config: cluster_config,
    graceful_decommission_timeout: graceful_decommission_timeout,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    virtual_cluster_config: virtual_cluster_config,
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
  virtual_cluster_config:: {
    auxiliary_services_config:: {
      metastore_config:: {
        new(
          dataproc_metastore_service=null
        ):: std.prune(a={
          dataproc_metastore_service: dataproc_metastore_service,
        }),
      },
      new(
        metastore_config=null,
        spark_history_server_config=null
      ):: std.prune(a={
        metastore_config: metastore_config,
        spark_history_server_config: spark_history_server_config,
      }),
      spark_history_server_config:: {
        new(
          dataproc_cluster=null
        ):: std.prune(a={
          dataproc_cluster: dataproc_cluster,
        }),
      },
    },
    kubernetes_cluster_config:: {
      gke_cluster_config:: {
        new(
          gke_cluster_target=null,
          node_pool_target=null
        ):: std.prune(a={
          gke_cluster_target: gke_cluster_target,
          node_pool_target: node_pool_target,
        }),
        node_pool_target:: {
          new(
            node_pool,
            roles,
            node_pool_config=null
          ):: std.prune(a={
            node_pool: node_pool,
            node_pool_config: node_pool_config,
            roles: roles,
          }),
          node_pool_config:: {
            autoscaling:: {
              new(
                max_node_count=null,
                min_node_count=null
              ):: std.prune(a={
                max_node_count: max_node_count,
                min_node_count: min_node_count,
              }),
            },
            config:: {
              new(
                local_ssd_count=null,
                machine_type=null,
                min_cpu_platform=null,
                preemptible=null,
                spot=null
              ):: std.prune(a={
                local_ssd_count: local_ssd_count,
                machine_type: machine_type,
                min_cpu_platform: min_cpu_platform,
                preemptible: preemptible,
                spot: spot,
              }),
            },
            new(
              locations,
              autoscaling=null,
              config=null
            ):: std.prune(a={
              autoscaling: autoscaling,
              config: config,
              locations: locations,
            }),
          },
        },
      },
      kubernetes_software_config:: {
        new(
          component_version,
          properties=null
        ):: std.prune(a={
          component_version: component_version,
          properties: properties,
        }),
      },
      new(
        gke_cluster_config=null,
        kubernetes_namespace=null,
        kubernetes_software_config=null
      ):: std.prune(a={
        gke_cluster_config: gke_cluster_config,
        kubernetes_namespace: kubernetes_namespace,
        kubernetes_software_config: kubernetes_software_config,
      }),
    },
    new(
      auxiliary_services_config=null,
      kubernetes_cluster_config=null,
      staging_bucket=null
    ):: std.prune(a={
      auxiliary_services_config: auxiliary_services_config,
      kubernetes_cluster_config: kubernetes_cluster_config,
      staging_bucket: staging_bucket,
    }),
  },
  withClusterConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          cluster_config: value,
        },
      },
    },
  },
  withClusterConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGracefulDecommissionTimeout(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          graceful_decommission_timeout: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVirtualClusterConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          virtual_cluster_config: value,
        },
      },
    },
  },
  withVirtualClusterConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          virtual_cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
