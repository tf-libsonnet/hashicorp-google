local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    status=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_regions',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, status=status),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    status=null
  ):: std.prune(a={
    project: project,
    status: status,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_regions+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withStatus(dataSrcLabel, value):: {
    data+: {
      google_compute_regions+: {
        [dataSrcLabel]+: {
          status: value,
        },
      },
    },
  },
}
