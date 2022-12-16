local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_vpn_gateway',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project, region=region),
    _meta=_meta
  ),
  newAttrs(
    name,
    project=null,
    region=null
  ):: std.prune(a={
    name: name,
    project: project,
    region: region,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_vpn_gateway+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_vpn_gateway+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_compute_vpn_gateway+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}
