local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    name,
    charset=null,
    collation=null,
    deletion_policy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_database',
    label=resourceLabel,
    attrs=self.newAttrs(
      charset=charset,
      collation=collation,
      deletion_policy=deletion_policy,
      instance=instance,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    name,
    charset=null,
    collation=null,
    deletion_policy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    charset: charset,
    collation: collation,
    deletion_policy: deletion_policy,
    instance: instance,
    name: name,
    project: project,
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
  withCharset(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          charset: value,
        },
      },
    },
  },
  withCollation(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          collation: value,
        },
      },
    },
  },
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
