local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    secret_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_secret_manager_secret',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, secret_id=secret_id),
    _meta=_meta
  ),
  newAttrs(
    secret_id,
    project=null
  ):: std.prune(a={
    project: project,
    secret_id: secret_id,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withSecretId(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret+: {
        [dataSrcLabel]+: {
          secret_id: value,
        },
      },
    },
  },
}
