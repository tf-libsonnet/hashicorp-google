local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_container_registry_repository',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, region=region),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    region=null
  ):: std.prune(a={
    project: project,
    region: region,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_container_registry_repository+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_container_registry_repository+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}
