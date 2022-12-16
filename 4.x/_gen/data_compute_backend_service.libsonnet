local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_backend_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project),
    _meta=_meta
  ),
  newAttrs(
    name,
    project=null
  ):: std.prune(a={
    name: name,
    project: project,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_backend_service+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_backend_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
