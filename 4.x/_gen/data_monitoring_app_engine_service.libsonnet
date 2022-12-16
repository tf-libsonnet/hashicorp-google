local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    module_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_app_engine_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(module_id=module_id, project=project),
    _meta=_meta
  ),
  newAttrs(
    module_id,
    project=null
  ):: std.prune(a={
    module_id: module_id,
    project: project,
  }),
  withModuleId(dataSrcLabel, value):: {
    data+: {
      google_monitoring_app_engine_service+: {
        [dataSrcLabel]+: {
          module_id: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_monitoring_app_engine_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
