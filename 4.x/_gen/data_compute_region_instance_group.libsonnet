local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name=null,
    project=null,
    region=null,
    self_link=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_region_instance_group',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      region=region,
      self_link=self_link
    ),
    _meta=_meta
  ),
  newAttrs(
    name=null,
    project=null,
    region=null,
    self_link=null
  ):: std.prune(a={
    name: name,
    project: project,
    region: region,
    self_link: self_link,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_region_instance_group+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_region_instance_group+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_compute_region_instance_group+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  withSelfLink(dataSrcLabel, value):: {
    data+: {
      google_compute_region_instance_group+: {
        [dataSrcLabel]+: {
          self_link: value,
        },
      },
    },
  },
}
