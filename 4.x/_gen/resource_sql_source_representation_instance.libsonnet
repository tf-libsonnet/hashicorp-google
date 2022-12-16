local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    database_version,
    host,
    name,
    port=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_source_representation_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      database_version=database_version,
      host=host,
      name=name,
      port=port,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    database_version,
    host,
    name,
    port=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    database_version: database_version,
    host: host,
    name: name,
    port: port,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withDatabaseVersion(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          database_version: value,
        },
      },
    },
  },
  withHost(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
