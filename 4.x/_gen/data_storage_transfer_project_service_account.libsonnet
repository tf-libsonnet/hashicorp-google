local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_transfer_project_service_account',
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
      google_storage_transfer_project_service_account+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
