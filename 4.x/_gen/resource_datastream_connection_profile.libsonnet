local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bigquery_profile:: {
    new(

    ):: std.prune(a={}),
  },
  forward_ssh_connectivity:: {
    new(
      hostname,
      username,
      password=null,
      port=null,
      private_key=null
    ):: std.prune(a={
      hostname: hostname,
      password: password,
      port: port,
      private_key: private_key,
      username: username,
    }),
  },
  gcs_profile:: {
    new(
      bucket,
      root_path=null
    ):: std.prune(a={
      bucket: bucket,
      root_path: root_path,
    }),
  },
  mysql_profile:: {
    new(
      hostname,
      password,
      username,
      port=null,
      ssl_config=null
    ):: std.prune(a={
      hostname: hostname,
      password: password,
      port: port,
      ssl_config: ssl_config,
      username: username,
    }),
    ssl_config:: {
      new(
        ca_certificate=null,
        client_certificate=null,
        client_key=null
      ):: std.prune(a={
        ca_certificate: ca_certificate,
        client_certificate: client_certificate,
        client_key: client_key,
      }),
    },
  },
  new(
    resourceLabel,
    connection_profile_id,
    display_name,
    location,
    bigquery_profile=null,
    forward_ssh_connectivity=null,
    gcs_profile=null,
    labels=null,
    mysql_profile=null,
    oracle_profile=null,
    postgresql_profile=null,
    private_connectivity=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_datastream_connection_profile',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_profile=bigquery_profile,
      connection_profile_id=connection_profile_id,
      display_name=display_name,
      forward_ssh_connectivity=forward_ssh_connectivity,
      gcs_profile=gcs_profile,
      labels=labels,
      location=location,
      mysql_profile=mysql_profile,
      oracle_profile=oracle_profile,
      postgresql_profile=postgresql_profile,
      private_connectivity=private_connectivity,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    connection_profile_id,
    display_name,
    location,
    bigquery_profile=null,
    forward_ssh_connectivity=null,
    gcs_profile=null,
    labels=null,
    mysql_profile=null,
    oracle_profile=null,
    postgresql_profile=null,
    private_connectivity=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bigquery_profile: bigquery_profile,
    connection_profile_id: connection_profile_id,
    display_name: display_name,
    forward_ssh_connectivity: forward_ssh_connectivity,
    gcs_profile: gcs_profile,
    labels: labels,
    location: location,
    mysql_profile: mysql_profile,
    oracle_profile: oracle_profile,
    postgresql_profile: postgresql_profile,
    private_connectivity: private_connectivity,
    project: project,
    timeouts: timeouts,
  }),
  oracle_profile:: {
    new(
      database_service,
      hostname,
      password,
      username,
      connection_attributes=null,
      port=null
    ):: std.prune(a={
      connection_attributes: connection_attributes,
      database_service: database_service,
      hostname: hostname,
      password: password,
      port: port,
      username: username,
    }),
  },
  postgresql_profile:: {
    new(
      database,
      hostname,
      password,
      username,
      port=null
    ):: std.prune(a={
      database: database,
      hostname: hostname,
      password: password,
      port: port,
      username: username,
    }),
  },
  private_connectivity:: {
    new(
      private_connection
    ):: std.prune(a={
      private_connection: private_connection,
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
  withBigqueryProfile(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          bigquery_profile: value,
        },
      },
    },
  },
  withBigqueryProfileMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          bigquery_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConnectionProfileId(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          connection_profile_id: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withForwardSshConnectivity(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          forward_ssh_connectivity: value,
        },
      },
    },
  },
  withForwardSshConnectivityMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          forward_ssh_connectivity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGcsProfile(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          gcs_profile: value,
        },
      },
    },
  },
  withGcsProfileMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          gcs_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMysqlProfile(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          mysql_profile: value,
        },
      },
    },
  },
  withMysqlProfileMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          mysql_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOracleProfile(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          oracle_profile: value,
        },
      },
    },
  },
  withOracleProfileMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          oracle_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPostgresqlProfile(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          postgresql_profile: value,
        },
      },
    },
  },
  withPostgresqlProfileMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          postgresql_profile+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPrivateConnectivity(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          private_connectivity: value,
        },
      },
    },
  },
  withPrivateConnectivityMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          private_connectivity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_connection_profile+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
