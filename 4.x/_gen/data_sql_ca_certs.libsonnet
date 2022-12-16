local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    instance,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_sql_ca_certs',
    label=dataSrcLabel,
    attrs=self.newAttrs(instance=instance, project=project),
    _meta=_meta
  ),
  newAttrs(
    instance,
    project=null
  ):: std.prune(a={
    instance: instance,
    project: project,
  }),
  withInstance(dataSrcLabel, value):: {
    data+: {
      google_sql_ca_certs+: {
        [dataSrcLabel]+: {
          instance: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_sql_ca_certs+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
