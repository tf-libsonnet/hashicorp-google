local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  clone:: {
    new(
      source_instance_name,
      allocated_ip_range=null,
      point_in_time=null
    ):: std.prune(a={
      allocated_ip_range: allocated_ip_range,
      point_in_time: point_in_time,
      source_instance_name: source_instance_name,
    }),
  },
  new(
    resourceLabel,
    database_version,
    clone=null,
    deletion_protection=null,
    encryption_key_name=null,
    maintenance_version=null,
    master_instance_name=null,
    name=null,
    project=null,
    region=null,
    replica_configuration=null,
    restore_backup_context=null,
    root_password=null,
    settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_database_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      clone=clone,
      database_version=database_version,
      deletion_protection=deletion_protection,
      encryption_key_name=encryption_key_name,
      maintenance_version=maintenance_version,
      master_instance_name=master_instance_name,
      name=name,
      project=project,
      region=region,
      replica_configuration=replica_configuration,
      restore_backup_context=restore_backup_context,
      root_password=root_password,
      settings=settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    database_version,
    clone=null,
    deletion_protection=null,
    encryption_key_name=null,
    maintenance_version=null,
    master_instance_name=null,
    name=null,
    project=null,
    region=null,
    replica_configuration=null,
    restore_backup_context=null,
    root_password=null,
    settings=null,
    timeouts=null
  ):: std.prune(a={
    clone: clone,
    database_version: database_version,
    deletion_protection: deletion_protection,
    encryption_key_name: encryption_key_name,
    maintenance_version: maintenance_version,
    master_instance_name: master_instance_name,
    name: name,
    project: project,
    region: region,
    replica_configuration: replica_configuration,
    restore_backup_context: restore_backup_context,
    root_password: root_password,
    settings: settings,
    timeouts: timeouts,
  }),
  replica_configuration:: {
    new(
      ca_certificate=null,
      client_certificate=null,
      client_key=null,
      connect_retry_interval=null,
      dump_file_path=null,
      failover_target=null,
      master_heartbeat_period=null,
      password=null,
      ssl_cipher=null,
      username=null,
      verify_server_certificate=null
    ):: std.prune(a={
      ca_certificate: ca_certificate,
      client_certificate: client_certificate,
      client_key: client_key,
      connect_retry_interval: connect_retry_interval,
      dump_file_path: dump_file_path,
      failover_target: failover_target,
      master_heartbeat_period: master_heartbeat_period,
      password: password,
      ssl_cipher: ssl_cipher,
      username: username,
      verify_server_certificate: verify_server_certificate,
    }),
  },
  restore_backup_context:: {
    new(
      backup_run_id,
      instance_id=null,
      project=null
    ):: std.prune(a={
      backup_run_id: backup_run_id,
      instance_id: instance_id,
      project: project,
    }),
  },
  settings:: {
    active_directory_config:: {
      new(
        domain
      ):: std.prune(a={
        domain: domain,
      }),
    },
    backup_configuration:: {
      backup_retention_settings:: {
        new(
          retained_backups,
          retention_unit=null
        ):: std.prune(a={
          retained_backups: retained_backups,
          retention_unit: retention_unit,
        }),
      },
      new(
        backup_retention_settings=null,
        binary_log_enabled=null,
        enabled=null,
        location=null,
        point_in_time_recovery_enabled=null,
        start_time=null,
        transaction_log_retention_days=null
      ):: std.prune(a={
        backup_retention_settings: backup_retention_settings,
        binary_log_enabled: binary_log_enabled,
        enabled: enabled,
        location: location,
        point_in_time_recovery_enabled: point_in_time_recovery_enabled,
        start_time: start_time,
        transaction_log_retention_days: transaction_log_retention_days,
      }),
    },
    database_flags:: {
      new(
        name,
        value
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
    deny_maintenance_period:: {
      new(
        end_date,
        start_date,
        time
      ):: std.prune(a={
        end_date: end_date,
        start_date: start_date,
        time: time,
      }),
    },
    insights_config:: {
      new(
        query_insights_enabled=null,
        query_plans_per_minute=null,
        query_string_length=null,
        record_application_tags=null,
        record_client_address=null
      ):: std.prune(a={
        query_insights_enabled: query_insights_enabled,
        query_plans_per_minute: query_plans_per_minute,
        query_string_length: query_string_length,
        record_application_tags: record_application_tags,
        record_client_address: record_client_address,
      }),
    },
    ip_configuration:: {
      authorized_networks:: {
        new(
          value,
          expiration_time=null,
          name=null
        ):: std.prune(a={
          expiration_time: expiration_time,
          name: name,
          value: value,
        }),
      },
      new(
        allocated_ip_range=null,
        authorized_networks=null,
        ipv4_enabled=null,
        private_network=null,
        require_ssl=null
      ):: std.prune(a={
        allocated_ip_range: allocated_ip_range,
        authorized_networks: authorized_networks,
        ipv4_enabled: ipv4_enabled,
        private_network: private_network,
        require_ssl: require_ssl,
      }),
    },
    location_preference:: {
      new(
        follow_gae_application=null,
        secondary_zone=null,
        zone=null
      ):: std.prune(a={
        follow_gae_application: follow_gae_application,
        secondary_zone: secondary_zone,
        zone: zone,
      }),
    },
    maintenance_window:: {
      new(
        day=null,
        hour=null,
        update_track=null
      ):: std.prune(a={
        day: day,
        hour: hour,
        update_track: update_track,
      }),
    },
    new(
      tier,
      activation_policy=null,
      active_directory_config=null,
      availability_type=null,
      backup_configuration=null,
      collation=null,
      connector_enforcement=null,
      database_flags=null,
      deny_maintenance_period=null,
      disk_autoresize=null,
      disk_autoresize_limit=null,
      disk_size=null,
      disk_type=null,
      insights_config=null,
      ip_configuration=null,
      location_preference=null,
      maintenance_window=null,
      password_validation_policy=null,
      pricing_plan=null,
      sql_server_audit_config=null,
      time_zone=null,
      user_labels=null
    ):: std.prune(a={
      activation_policy: activation_policy,
      active_directory_config: active_directory_config,
      availability_type: availability_type,
      backup_configuration: backup_configuration,
      collation: collation,
      connector_enforcement: connector_enforcement,
      database_flags: database_flags,
      deny_maintenance_period: deny_maintenance_period,
      disk_autoresize: disk_autoresize,
      disk_autoresize_limit: disk_autoresize_limit,
      disk_size: disk_size,
      disk_type: disk_type,
      insights_config: insights_config,
      ip_configuration: ip_configuration,
      location_preference: location_preference,
      maintenance_window: maintenance_window,
      password_validation_policy: password_validation_policy,
      pricing_plan: pricing_plan,
      sql_server_audit_config: sql_server_audit_config,
      tier: tier,
      time_zone: time_zone,
      user_labels: user_labels,
    }),
    password_validation_policy:: {
      new(
        enable_password_policy,
        complexity=null,
        disallow_username_substring=null,
        min_length=null,
        password_change_interval=null,
        reuse_interval=null
      ):: std.prune(a={
        complexity: complexity,
        disallow_username_substring: disallow_username_substring,
        enable_password_policy: enable_password_policy,
        min_length: min_length,
        password_change_interval: password_change_interval,
        reuse_interval: reuse_interval,
      }),
    },
    sql_server_audit_config:: {
      new(
        bucket,
        retention_interval=null,
        upload_interval=null
      ):: std.prune(a={
        bucket: bucket,
        retention_interval: retention_interval,
        upload_interval: upload_interval,
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
  withClone(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          clone: value,
        },
      },
    },
  },
  withCloneMixin(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          clone+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatabaseVersion(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          database_version: value,
        },
      },
    },
  },
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  withEncryptionKeyName(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          encryption_key_name: value,
        },
      },
    },
  },
  withMaintenanceVersion(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          maintenance_version: value,
        },
      },
    },
  },
  withMasterInstanceName(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          master_instance_name: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withReplicaConfiguration(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          replica_configuration: value,
        },
      },
    },
  },
  withReplicaConfigurationMixin(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          replica_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRestoreBackupContext(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          restore_backup_context: value,
        },
      },
    },
  },
  withRestoreBackupContextMixin(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          restore_backup_context+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRootPassword(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          root_password: value,
        },
      },
    },
  },
  withSettings(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          settings: value,
        },
      },
    },
  },
  withSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_sql_database_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
