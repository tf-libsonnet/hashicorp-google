local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  encryption_config:: {
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  new(
    resourceLabel,
    instance,
    name,
    database_dialect=null,
    ddl=null,
    deletion_protection=null,
    encryption_config=null,
    project=null,
    timeouts=null,
    version_retention_period=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_database',
    label=resourceLabel,
    attrs=self.newAttrs(
      database_dialect=database_dialect,
      ddl=ddl,
      deletion_protection=deletion_protection,
      encryption_config=encryption_config,
      instance=instance,
      name=name,
      project=project,
      timeouts=timeouts,
      version_retention_period=version_retention_period
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    name,
    database_dialect=null,
    ddl=null,
    deletion_protection=null,
    encryption_config=null,
    project=null,
    timeouts=null,
    version_retention_period=null
  ):: std.prune(a={
    database_dialect: database_dialect,
    ddl: ddl,
    deletion_protection: deletion_protection,
    encryption_config: encryption_config,
    instance: instance,
    name: name,
    project: project,
    timeouts: timeouts,
    version_retention_period: version_retention_period,
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
  withDatabaseDialect(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          database_dialect: value,
        },
      },
    },
  },
  withDdl(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          ddl: value,
        },
      },
    },
  },
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  withEncryptionConfig(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  withEncryptionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersionRetentionPeriod(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          version_retention_period: value,
        },
      },
    },
  },
}
