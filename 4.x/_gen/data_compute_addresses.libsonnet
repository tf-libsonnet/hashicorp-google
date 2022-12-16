local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    filter=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_addresses',
    label=dataSrcLabel,
    attrs=self.newAttrs(filter=filter, project=project, region=region),
    _meta=_meta
  ),
  newAttrs(
    filter=null,
    project=null,
    region=null
  ):: std.prune(a={
    filter: filter,
    project: project,
    region: region,
  }),
  withFilter(dataSrcLabel, value):: {
    data+: {
      google_compute_addresses+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_addresses+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_compute_addresses+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}
