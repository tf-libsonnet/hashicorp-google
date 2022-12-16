local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  jobs:: {
    hadoop_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        archive_uris=null,
        args=null,
        file_uris=null,
        jar_file_uris=null,
        logging_config=null,
        main_class=null,
        main_jar_file_uri=null,
        properties=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        main_class: main_class,
        main_jar_file_uri: main_jar_file_uri,
        properties: properties,
      }),
    },
    hive_job:: {
      new(
        continue_on_failure=null,
        jar_file_uris=null,
        properties=null,
        query_file_uri=null,
        query_list=null,
        script_variables=null
      ):: std.prune(a={
        continue_on_failure: continue_on_failure,
        jar_file_uris: jar_file_uris,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
        script_variables: script_variables,
      }),
      query_list:: {
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
    new(
      step_id,
      hadoop_job=null,
      hive_job=null,
      labels=null,
      pig_job=null,
      prerequisite_step_ids=null,
      presto_job=null,
      pyspark_job=null,
      scheduling=null,
      spark_job=null,
      spark_r_job=null,
      spark_sql_job=null
    ):: std.prune(a={
      hadoop_job: hadoop_job,
      hive_job: hive_job,
      labels: labels,
      pig_job: pig_job,
      prerequisite_step_ids: prerequisite_step_ids,
      presto_job: presto_job,
      pyspark_job: pyspark_job,
      scheduling: scheduling,
      spark_job: spark_job,
      spark_r_job: spark_r_job,
      spark_sql_job: spark_sql_job,
      step_id: step_id,
    }),
    pig_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        continue_on_failure=null,
        jar_file_uris=null,
        logging_config=null,
        properties=null,
        query_file_uri=null,
        query_list=null,
        script_variables=null
      ):: std.prune(a={
        continue_on_failure: continue_on_failure,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
        script_variables: script_variables,
      }),
      query_list:: {
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
    presto_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        client_tags=null,
        continue_on_failure=null,
        logging_config=null,
        output_format=null,
        properties=null,
        query_file_uri=null,
        query_list=null
      ):: std.prune(a={
        client_tags: client_tags,
        continue_on_failure: continue_on_failure,
        logging_config: logging_config,
        output_format: output_format,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
      }),
      query_list:: {
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
    pyspark_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        main_python_file_uri,
        archive_uris=null,
        args=null,
        file_uris=null,
        jar_file_uris=null,
        logging_config=null,
        properties=null,
        python_file_uris=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        main_python_file_uri: main_python_file_uri,
        properties: properties,
        python_file_uris: python_file_uris,
      }),
    },
    scheduling:: {
      new(
        max_failures_per_hour=null,
        max_failures_total=null
      ):: std.prune(a={
        max_failures_per_hour: max_failures_per_hour,
        max_failures_total: max_failures_total,
      }),
    },
    spark_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        archive_uris=null,
        args=null,
        file_uris=null,
        jar_file_uris=null,
        logging_config=null,
        main_class=null,
        main_jar_file_uri=null,
        properties=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        main_class: main_class,
        main_jar_file_uri: main_jar_file_uri,
        properties: properties,
      }),
    },
    spark_r_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        main_r_file_uri,
        archive_uris=null,
        args=null,
        file_uris=null,
        logging_config=null,
        properties=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        logging_config: logging_config,
        main_r_file_uri: main_r_file_uri,
        properties: properties,
      }),
    },
    spark_sql_job:: {
      logging_config:: {
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      new(
        jar_file_uris=null,
        logging_config=null,
        properties=null,
        query_file_uri=null,
        query_list=null,
        script_variables=null
      ):: std.prune(a={
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
        script_variables: script_variables,
      }),
      query_list:: {
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
  },
  new(
    resourceLabel,
    location,
    name,
    dag_timeout=null,
    jobs=null,
    labels=null,
    parameters=null,
    placement=null,
    project=null,
    timeouts=null,
    version=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_workflow_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      dag_timeout=dag_timeout,
      jobs=jobs,
      labels=labels,
      location=location,
      name=name,
      parameters=parameters,
      placement=placement,
      project=project,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    dag_timeout=null,
    jobs=null,
    labels=null,
    parameters=null,
    placement=null,
    project=null,
    timeouts=null,
    version=null
  ):: std.prune(a={
    dag_timeout: dag_timeout,
    jobs: jobs,
    labels: labels,
    location: location,
    name: name,
    parameters: parameters,
    placement: placement,
    project: project,
    timeouts: timeouts,
    version: version,
  }),
  parameters:: {
    new(
      fields,
      name,
      description=null,
      validation=null
    ):: std.prune(a={
      description: description,
      fields: fields,
      name: name,
      validation: validation,
    }),
    validation:: {
      new(
        regex=null,
        values=null
      ):: std.prune(a={
        regex: regex,
        values: values,
      }),
      regex:: {
        new(
          regexes
        ):: std.prune(a={
          regexes: regexes,
        }),
      },
      values:: {
        new(
          values
        ):: std.prune(a={
          values: values,
        }),
      },
    },
  },
  placement:: {
    cluster_selector:: {
      new(
        cluster_labels,
        zone=null
      ):: std.prune(a={
        cluster_labels: cluster_labels,
        zone: zone,
      }),
    },
    managed_cluster:: {
      config:: {
        autoscaling_config:: {
          new(
            policy=null
          ):: std.prune(a={
            policy: policy,
          }),
        },
        encryption_config:: {
          new(
            gce_pd_kms_key_name=null
          ):: std.prune(a={
            gce_pd_kms_key_name: gce_pd_kms_key_name,
          }),
        },
        endpoint_config:: {
          new(
            enable_http_port_access=null
          ):: std.prune(a={
            enable_http_port_access: enable_http_port_access,
          }),
        },
        gce_cluster_config:: {
          new(
            internal_ip_only=null,
            metadata=null,
            network=null,
            node_group_affinity=null,
            private_ipv6_google_access=null,
            reservation_affinity=null,
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
            node_group_affinity: node_group_affinity,
            private_ipv6_google_access: private_ipv6_google_access,
            reservation_affinity: reservation_affinity,
            service_account: service_account,
            service_account_scopes: service_account_scopes,
            shielded_instance_config: shielded_instance_config,
            subnetwork: subnetwork,
            tags: tags,
            zone: zone,
          }),
          node_group_affinity:: {
            new(
              node_group
            ):: std.prune(a={
              node_group: node_group,
            }),
          },
          reservation_affinity:: {
            new(
              consume_reservation_type=null,
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
              enable_secure_boot=null,
              enable_vtpm=null
            ):: std.prune(a={
              enable_integrity_monitoring: enable_integrity_monitoring,
              enable_secure_boot: enable_secure_boot,
              enable_vtpm: enable_vtpm,
            }),
          },
        },
        initialization_actions:: {
          new(
            executable_file=null,
            execution_timeout=null
          ):: std.prune(a={
            executable_file: executable_file,
            execution_timeout: execution_timeout,
          }),
        },
        lifecycle_config:: {
          new(
            auto_delete_time=null,
            auto_delete_ttl=null,
            idle_delete_ttl=null
          ):: std.prune(a={
            auto_delete_time: auto_delete_time,
            auto_delete_ttl: auto_delete_ttl,
            idle_delete_ttl: idle_delete_ttl,
          }),
        },
        master_config:: {
          accelerators:: {
            new(
              accelerator_count=null,
              accelerator_type=null
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
            image=null,
            machine_type=null,
            min_cpu_platform=null,
            num_instances=null,
            preemptibility=null
          ):: std.prune(a={
            accelerators: accelerators,
            disk_config: disk_config,
            image: image,
            machine_type: machine_type,
            min_cpu_platform: min_cpu_platform,
            num_instances: num_instances,
            preemptibility: preemptibility,
          }),
        },
        new(
          autoscaling_config=null,
          encryption_config=null,
          endpoint_config=null,
          gce_cluster_config=null,
          initialization_actions=null,
          lifecycle_config=null,
          master_config=null,
          secondary_worker_config=null,
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
          initialization_actions: initialization_actions,
          lifecycle_config: lifecycle_config,
          master_config: master_config,
          secondary_worker_config: secondary_worker_config,
          security_config: security_config,
          software_config: software_config,
          staging_bucket: staging_bucket,
          temp_bucket: temp_bucket,
          worker_config: worker_config,
        }),
        secondary_worker_config:: {
          accelerators:: {
            new(
              accelerator_count=null,
              accelerator_type=null
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
            image=null,
            machine_type=null,
            min_cpu_platform=null,
            num_instances=null,
            preemptibility=null
          ):: std.prune(a={
            accelerators: accelerators,
            disk_config: disk_config,
            image: image,
            machine_type: machine_type,
            min_cpu_platform: min_cpu_platform,
            num_instances: num_instances,
            preemptibility: preemptibility,
          }),
        },
        security_config:: {
          kerberos_config:: {
            new(
              cross_realm_trust_admin_server=null,
              cross_realm_trust_kdc=null,
              cross_realm_trust_realm=null,
              cross_realm_trust_shared_password=null,
              enable_kerberos=null,
              kdc_db_key=null,
              key_password=null,
              keystore=null,
              keystore_password=null,
              kms_key=null,
              realm=null,
              root_principal_password=null,
              tgt_lifetime_hours=null,
              truststore=null,
              truststore_password=null
            ):: std.prune(a={
              cross_realm_trust_admin_server: cross_realm_trust_admin_server,
              cross_realm_trust_kdc: cross_realm_trust_kdc,
              cross_realm_trust_realm: cross_realm_trust_realm,
              cross_realm_trust_shared_password: cross_realm_trust_shared_password,
              enable_kerberos: enable_kerberos,
              kdc_db_key: kdc_db_key,
              key_password: key_password,
              keystore: keystore,
              keystore_password: keystore_password,
              kms_key: kms_key,
              realm: realm,
              root_principal_password: root_principal_password,
              tgt_lifetime_hours: tgt_lifetime_hours,
              truststore: truststore,
              truststore_password: truststore_password,
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
            properties=null
          ):: std.prune(a={
            image_version: image_version,
            optional_components: optional_components,
            properties: properties,
          }),
        },
        worker_config:: {
          accelerators:: {
            new(
              accelerator_count=null,
              accelerator_type=null
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
            image=null,
            machine_type=null,
            min_cpu_platform=null,
            num_instances=null,
            preemptibility=null
          ):: std.prune(a={
            accelerators: accelerators,
            disk_config: disk_config,
            image: image,
            machine_type: machine_type,
            min_cpu_platform: min_cpu_platform,
            num_instances: num_instances,
            preemptibility: preemptibility,
          }),
        },
      },
      new(
        cluster_name,
        config=null,
        labels=null
      ):: std.prune(a={
        cluster_name: cluster_name,
        config: config,
        labels: labels,
      }),
    },
    new(
      cluster_selector=null,
      managed_cluster=null
    ):: std.prune(a={
      cluster_selector: cluster_selector,
      managed_cluster: managed_cluster,
    }),
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
  withDagTimeout(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          dag_timeout: value,
        },
      },
    },
  },
  withJobs(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          jobs: value,
        },
      },
    },
  },
  withJobsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          jobs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParameters(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  withParametersMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          parameters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPlacement(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          placement: value,
        },
      },
    },
  },
  withPlacementMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          placement+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
