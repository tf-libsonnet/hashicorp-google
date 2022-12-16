local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  encryption_config:: {
    new(
      kms_key
    ):: std.prune(a={
      kms_key: kms_key,
    }),
  },
  hive_metastore_config:: {
    kerberos_config:: {
      keytab:: {
        new(
          cloud_secret
        ):: std.prune(a={
          cloud_secret: cloud_secret,
        }),
      },
      new(
        krb5_config_gcs_uri,
        principal,
        keytab=null
      ):: std.prune(a={
        keytab: keytab,
        krb5_config_gcs_uri: krb5_config_gcs_uri,
        principal: principal,
      }),
    },
    new(
      version,
      config_overrides=null,
      kerberos_config=null
    ):: std.prune(a={
      config_overrides: config_overrides,
      kerberos_config: kerberos_config,
      version: version,
    }),
  },
  maintenance_window:: {
    new(
      day_of_week,
      hour_of_day
    ):: std.prune(a={
      day_of_week: day_of_week,
      hour_of_day: hour_of_day,
    }),
  },
  network_config:: {
    consumers:: {
      new(
        subnetwork
      ):: std.prune(a={
        subnetwork: subnetwork,
      }),
    },
    new(
      consumers=null
    ):: std.prune(a={
      consumers: consumers,
    }),
  },
  new(
    resourceLabel,
    service_id,
    database_type=null,
    encryption_config=null,
    hive_metastore_config=null,
    labels=null,
    location=null,
    maintenance_window=null,
    network=null,
    network_config=null,
    port=null,
    project=null,
    release_channel=null,
    tier=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_metastore_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      database_type=database_type,
      encryption_config=encryption_config,
      hive_metastore_config=hive_metastore_config,
      labels=labels,
      location=location,
      maintenance_window=maintenance_window,
      network=network,
      network_config=network_config,
      port=port,
      project=project,
      release_channel=release_channel,
      service_id=service_id,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service_id,
    database_type=null,
    encryption_config=null,
    hive_metastore_config=null,
    labels=null,
    location=null,
    maintenance_window=null,
    network=null,
    network_config=null,
    port=null,
    project=null,
    release_channel=null,
    tier=null,
    timeouts=null
  ):: std.prune(a={
    database_type: database_type,
    encryption_config: encryption_config,
    hive_metastore_config: hive_metastore_config,
    labels: labels,
    location: location,
    maintenance_window: maintenance_window,
    network: network,
    network_config: network_config,
    port: port,
    project: project,
    release_channel: release_channel,
    service_id: service_id,
    tier: tier,
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
  withDatabaseType(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          database_type: value,
        },
      },
    },
  },
  withEncryptionConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  withEncryptionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHiveMetastoreConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          hive_metastore_config: value,
        },
      },
    },
  },
  withHiveMetastoreConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          hive_metastore_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMaintenanceWindow(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          maintenance_window: value,
        },
      },
    },
  },
  withMaintenanceWindowMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          maintenance_window+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  withNetworkConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReleaseChannel(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          release_channel: value,
        },
      },
    },
  },
  withServiceId(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
