local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project_id=null,
    _meta={}
  ):: tf.withData(
    type='google_project',
    label=dataSrcLabel,
    attrs=self.newAttrs(project_id=project_id),
    _meta=_meta
  ),
  newAttrs(
    project_id=null
  ):: std.prune(a={
    project_id: project_id,
  }),
  withProjectId(dataSrcLabel, value):: {
    data+: {
      google_project+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
}
