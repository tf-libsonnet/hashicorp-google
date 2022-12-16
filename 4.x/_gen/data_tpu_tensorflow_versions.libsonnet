local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_tpu_tensorflow_versions',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, zone=zone),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    zone=null
  ):: std.prune(a={
    project: project,
    zone: zone,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_tpu_tensorflow_versions+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(dataSrcLabel, value):: {
    data+: {
      google_tpu_tensorflow_versions+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
