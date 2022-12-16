local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    instance,
    backup_id=null,
    most_recent=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_sql_backup_run',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      backup_id=backup_id,
      instance=instance,
      most_recent=most_recent,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    backup_id=null,
    most_recent=null,
    project=null
  ):: std.prune(a={
    backup_id: backup_id,
    instance: instance,
    most_recent: most_recent,
    project: project,
  }),
  withBackupId(dataSrcLabel, value):: {
    data+: {
      google_sql_backup_run+: {
        [dataSrcLabel]+: {
          backup_id: value,
        },
      },
    },
  },
  withInstance(dataSrcLabel, value):: {
    data+: {
      google_sql_backup_run+: {
        [dataSrcLabel]+: {
          instance: value,
        },
      },
    },
  },
  withMostRecent(dataSrcLabel, value):: {
    data+: {
      google_sql_backup_run+: {
        [dataSrcLabel]+: {
          most_recent: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_sql_backup_run+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
