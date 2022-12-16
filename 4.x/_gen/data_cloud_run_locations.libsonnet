local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_cloud_run_locations',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project),
    _meta=_meta
  ),
  newAttrs(
    project=null
  ):: std.prune(a={
    project: project,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_cloud_run_locations+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
