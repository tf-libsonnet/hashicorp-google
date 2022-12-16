local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    region=null,
    status=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_zones',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, region=region, status=status),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    region=null,
    status=null
  ):: std.prune(a={
    project: project,
    region: region,
    status: status,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_zones+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_compute_zones+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  withStatus(dataSrcLabel, value):: {
    data+: {
      google_compute_zones+: {
        [dataSrcLabel]+: {
          status: value,
        },
      },
    },
  },
}
