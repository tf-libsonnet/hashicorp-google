local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    network,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_router',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      name=name,
      network=network,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    network,
    project=null,
    region=null
  ):: std.prune(a={
    name: name,
    network: network,
    project: project,
    region: region,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_router+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(dataSrcLabel, value):: {
    data+: {
      google_compute_router+: {
        [dataSrcLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_router+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_compute_router+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}
