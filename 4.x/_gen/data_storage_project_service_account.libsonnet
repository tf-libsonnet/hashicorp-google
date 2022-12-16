local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    user_project=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_project_service_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, user_project=user_project),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    user_project=null
  ):: std.prune(a={
    project: project,
    user_project: user_project,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_storage_project_service_account+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withUserProject(dataSrcLabel, value):: {
    data+: {
      google_storage_project_service_account+: {
        [dataSrcLabel]+: {
          user_project: value,
        },
      },
    },
  },
}
