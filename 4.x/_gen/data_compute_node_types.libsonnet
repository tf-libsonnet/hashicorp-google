local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_node_types',
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
      google_compute_node_types+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(dataSrcLabel, value):: {
    data+: {
      google_compute_node_types+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
