local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    secret,
    project=null,
    version=null,
    _meta={}
  ):: tf.withData(
    type='google_secret_manager_secret_version',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, secret=secret, version=version),
    _meta=_meta
  ),
  newAttrs(
    secret,
    project=null,
    version=null
  ):: std.prune(a={
    project: project,
    secret: secret,
    version: version,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret_version+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withSecret(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret_version+: {
        [dataSrcLabel]+: {
          secret: value,
        },
      },
    },
  },
  withVersion(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret_version+: {
        [dataSrcLabel]+: {
          version: value,
        },
      },
    },
  },
}
