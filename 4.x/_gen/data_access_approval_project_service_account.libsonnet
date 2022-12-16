local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project_id,
    _meta={}
  ):: tf.withData(
    type='google_access_approval_project_service_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(project_id=project_id),
    _meta=_meta
  ),
  newAttrs(
    project_id
  ):: std.prune(a={
    project_id: project_id,
  }),
  withProjectId(dataSrcLabel, value):: {
    data+: {
      google_access_approval_project_service_account+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
}
