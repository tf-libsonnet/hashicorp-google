local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name=null,
    project=null,
    self_link=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_instance',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      self_link=self_link,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name=null,
    project=null,
    self_link=null,
    zone=null
  ):: std.prune(a={
    name: name,
    project: project,
    self_link: self_link,
    zone: zone,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withSelfLink(dataSrcLabel, value):: {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          self_link: value,
        },
      },
    },
  },
  withZone(dataSrcLabel, value):: {
    data+: {
      google_compute_instance+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
