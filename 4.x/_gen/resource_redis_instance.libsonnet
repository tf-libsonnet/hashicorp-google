local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  maintenance_policy:: {
    new(
      description=null,
      weekly_maintenance_window=null
    ):: std.prune(a={
      description: description,
      weekly_maintenance_window: weekly_maintenance_window,
    }),
    weekly_maintenance_window:: {
      new(
        day,
        start_time=null
      ):: std.prune(a={
        day: day,
        start_time: start_time,
      }),
      start_time:: {
        new(
          hours=null,
          minutes=null,
          nanos=null,
          seconds=null
        ):: std.prune(a={
          hours: hours,
          minutes: minutes,
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
  },
  maintenance_schedule:: {
    new(

    ):: std.prune(a={}),
  },
  new(
    resourceLabel,
    memory_size_gb,
    name,
    alternative_location_id=null,
    auth_enabled=null,
    authorized_network=null,
    connect_mode=null,
    customer_managed_key=null,
    display_name=null,
    labels=null,
    location_id=null,
    maintenance_policy=null,
    maintenance_schedule=null,
    persistence_config=null,
    project=null,
    read_replicas_mode=null,
    redis_configs=null,
    redis_version=null,
    region=null,
    replica_count=null,
    reserved_ip_range=null,
    secondary_ip_range=null,
    tier=null,
    timeouts=null,
    transit_encryption_mode=null,
    _meta={}
  ):: tf.withResource(
    type='google_redis_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      alternative_location_id=alternative_location_id,
      auth_enabled=auth_enabled,
      authorized_network=authorized_network,
      connect_mode=connect_mode,
      customer_managed_key=customer_managed_key,
      display_name=display_name,
      labels=labels,
      location_id=location_id,
      maintenance_policy=maintenance_policy,
      maintenance_schedule=maintenance_schedule,
      memory_size_gb=memory_size_gb,
      name=name,
      persistence_config=persistence_config,
      project=project,
      read_replicas_mode=read_replicas_mode,
      redis_configs=redis_configs,
      redis_version=redis_version,
      region=region,
      replica_count=replica_count,
      reserved_ip_range=reserved_ip_range,
      secondary_ip_range=secondary_ip_range,
      tier=tier,
      timeouts=timeouts,
      transit_encryption_mode=transit_encryption_mode
    ),
    _meta=_meta
  ),
  newAttrs(
    memory_size_gb,
    name,
    alternative_location_id=null,
    auth_enabled=null,
    authorized_network=null,
    connect_mode=null,
    customer_managed_key=null,
    display_name=null,
    labels=null,
    location_id=null,
    maintenance_policy=null,
    maintenance_schedule=null,
    persistence_config=null,
    project=null,
    read_replicas_mode=null,
    redis_configs=null,
    redis_version=null,
    region=null,
    replica_count=null,
    reserved_ip_range=null,
    secondary_ip_range=null,
    tier=null,
    timeouts=null,
    transit_encryption_mode=null
  ):: std.prune(a={
    alternative_location_id: alternative_location_id,
    auth_enabled: auth_enabled,
    authorized_network: authorized_network,
    connect_mode: connect_mode,
    customer_managed_key: customer_managed_key,
    display_name: display_name,
    labels: labels,
    location_id: location_id,
    maintenance_policy: maintenance_policy,
    maintenance_schedule: maintenance_schedule,
    memory_size_gb: memory_size_gb,
    name: name,
    persistence_config: persistence_config,
    project: project,
    read_replicas_mode: read_replicas_mode,
    redis_configs: redis_configs,
    redis_version: redis_version,
    region: region,
    replica_count: replica_count,
    reserved_ip_range: reserved_ip_range,
    secondary_ip_range: secondary_ip_range,
    tier: tier,
    timeouts: timeouts,
    transit_encryption_mode: transit_encryption_mode,
  }),
  persistence_config:: {
    new(
      persistence_mode=null,
      rdb_snapshot_period=null,
      rdb_snapshot_start_time=null
    ):: std.prune(a={
      persistence_mode: persistence_mode,
      rdb_snapshot_period: rdb_snapshot_period,
      rdb_snapshot_start_time: rdb_snapshot_start_time,
    }),
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
  withAlternativeLocationId(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          alternative_location_id: value,
        },
      },
    },
  },
  withAuthEnabled(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          auth_enabled: value,
        },
      },
    },
  },
  withAuthorizedNetwork(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  withConnectMode(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          connect_mode: value,
        },
      },
    },
  },
  withCustomerManagedKey(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          customer_managed_key: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocationId(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          location_id: value,
        },
      },
    },
  },
  withMaintenancePolicy(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  withMaintenancePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMaintenanceSchedule(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          maintenance_schedule: value,
        },
      },
    },
  },
  withMaintenanceScheduleMixin(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          maintenance_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMemorySizeGb(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          memory_size_gb: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPersistenceConfig(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          persistence_config: value,
        },
      },
    },
  },
  withPersistenceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          persistence_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReadReplicasMode(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          read_replicas_mode: value,
        },
      },
    },
  },
  withRedisConfigs(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          redis_configs: value,
        },
      },
    },
  },
  withRedisVersion(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          redis_version: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withReplicaCount(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          replica_count: value,
        },
      },
    },
  },
  withReservedIpRange(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          reserved_ip_range: value,
        },
      },
    },
  },
  withSecondaryIpRange(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          secondary_ip_range: value,
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransitEncryptionMode(resourceLabel, value):: {
    resource+: {
      google_redis_instance+: {
        [resourceLabel]+: {
          transit_encryption_mode: value,
        },
      },
    },
  },
}
