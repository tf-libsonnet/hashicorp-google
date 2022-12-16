local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_disk',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project, zone=zone),
    _meta=_meta
  ),
  newAttrs(
    name,
    project=null,
    zone=null
  ):: std.prune(a={
    name: name,
    project: project,
    zone: zone,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_disk+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_disk+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(dataSrcLabel, value):: {
    data+: {
      google_compute_disk+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
